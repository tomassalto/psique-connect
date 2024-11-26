import React, { useState, useEffect } from "react";
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend,
  ArcElement,
} from "chart.js";
import { Bar, Pie } from "react-chartjs-2";
import { toastService } from "../services/toastService";
import Loader from "./Loader";

ChartJS.register(
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend,
  ArcElement
);

const MetricasPsicologo = () => {
  const [loading, setLoading] = useState(true);
  const [metricas, setMetricas] = useState(null);

  useEffect(() => {
    fetchMetricas();
  }, []);

  const fetchMetricas = async () => {
    try {
      const response = await fetch(
        "http://127.0.0.1:8000/api/metricas-psicologo",
        {
          headers: {
            Authorization: `Bearer ${localStorage.getItem("token")}`,
          },
        }
      );
      const data = await response.json();
      setMetricas(data);
    } catch (error) {
      toastService.error("Error al cargar las métricas");
    } finally {
      setLoading(false);
    }
  };

  if (loading) return <Loader />;
  if (!metricas) return null;

  // Datos para el gráfico de sesiones por mes
  const sesionesXMesData = {
    labels: metricas.sesionesXMes.map((item) => {
      const [year, month] = item.mes.split("-");
      return new Date(year, month - 1).toLocaleString("es-ES", {
        month: "long",
        year: "numeric",
      });
    }),
    datasets: [
      {
        label: "Sesiones por Mes",
        data: metricas.sesionesXMes.map((item) => item.total_sesiones),
        backgroundColor: "rgba(75, 192, 192, 0.6)",
      },
    ],
  };

  // Datos para el gráfico de sesiones por año
  const sesionesXAnoData = {
    labels: metricas.sesionesXAno.map((item) => item.ano),
    datasets: [
      {
        label: "Sesiones por Año",
        data: metricas.sesionesXAno.map((item) => item.total_sesiones),
        backgroundColor: "rgba(54, 162, 235, 0.6)",
      },
    ],
  };

  // Datos para el gráfico de modalidad de sesiones
  const modalidadSesionesData = {
    labels: ["Presenciales", "Virtuales"],
    datasets: [
      {
        data: [
          metricas.modalidadSesiones.presenciales,
          metricas.modalidadSesiones.virtuales,
        ],
        backgroundColor: ["rgba(255, 99, 132, 0.6)", "rgba(54, 162, 235, 0.6)"],
      },
    ],
  };

  return (
    <div className="container mx-auto px-4 py-8">
      <h2 className="text-3xl font-Muli text-center font-bold mb-6 text-greenPsique">
        Métricas y Estadísticas
      </h2>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
        {/* Gráfico de Sesiones por Mes */}
        <div className="bg-white p-6 rounded-lg shadow">
          <h3 className="text-xl font-semibold mb-4">Sesiones por Mes</h3>
          <Bar
            data={sesionesXMesData}
            options={{
              responsive: true,
              plugins: {
                legend: { position: "top" },
                title: { display: true, text: "Últimos 12 meses" },
              },
            }}
          />
        </div>

        {/* Gráfico de Sesiones por Año */}
        <div className="bg-white p-6 rounded-lg shadow">
          <h3 className="text-xl font-semibold mb-4">Sesiones por Año</h3>
          <Bar
            data={sesionesXAnoData}
            options={{
              responsive: true,
              plugins: {
                legend: { position: "top" },
              },
            }}
          />
        </div>

        {/* Gráfico de Modalidad de Sesiones */}
        <div className="bg-white p-6 rounded-lg shadow">
          <h3 className="text-xl font-semibold mb-4">Modalidad de Sesiones</h3>
          <div className="h-[300px] flex items-center justify-center">
            <Pie
              data={modalidadSesionesData}
              options={{
                responsive: true,
                plugins: {
                  legend: { position: "top" },
                },
              }}
            />
          </div>
        </div>

        {/* Resumen numérico */}
        <div className="bg-white p-6 rounded-lg shadow">
          <h3 className="text-xl font-semibold mb-4">Resumen de Sesiones</h3>
          <div className="space-y-4">
            <div className="flex justify-between items-center">
              <span className="font-medium">Total Presenciales:</span>
              <span className="text-lg">
                {Number(metricas.modalidadSesiones.presenciales)}
              </span>
            </div>
            <div className="flex justify-between items-center">
              <span className="font-medium">Total Virtuales:</span>
              <span className="text-lg">
                {Number(metricas.modalidadSesiones.virtuales)}
              </span>
            </div>
            <div className="flex justify-between items-center pt-4 border-t">
              <span className="font-medium">Total General:</span>
              <span className="text-xl font-bold">
                {Number(metricas.modalidadSesiones.presenciales) +
                  Number(metricas.modalidadSesiones.virtuales)}
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default MetricasPsicologo;
