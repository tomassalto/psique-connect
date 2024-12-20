import React, { useEffect, useState } from "react";
import ModalSesionesHoy from "./ModalSesionesHoy";
import Loader from "./Loader";

const DailyReport = () => {
  const [mostrarModal, setMostrarModal] = useState(false);
  const [sesiones, setSesiones] = useState([]);
  const [loading, setLoading] = useState(true);

  const mostrarModalHoy = () => {
    const reporteHoy = localStorage.getItem("reporte_mostrado");
    const hoy = new Date().toLocaleDateString();
    return reporteHoy !== hoy;
  };

  const abrirModalReporte = () => {
    const hoy = new Date().toLocaleDateString();
    localStorage.setItem("reporte_mostrado", hoy);
    setMostrarModal(true);
  };

  const fetchSesionesHoy = async () => {
    try {
      const token = localStorage.getItem("token");
      const response = await fetch(
        "http://127.0.0.1:8000/api/sesiones-de-hoy",
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      const data = await response.json();
      setSesiones(data);
    } catch (error) {
      console.error("Error al obtener las sesiones de hoy:", error);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const ahora = new Date();
    const horaActual = ahora.getHours();

    if (horaActual >= 8 && mostrarModalHoy()) {
      abrirModalReporte();
    }

    fetchSesionesHoy();
  }, []);

  const handleCloseModal = () => setMostrarModal(false);

  if (loading) {
    return <Loader />;
  }
  return (
    <>
      {mostrarModal && (
        <ModalSesionesHoy
          sesiones={sesiones}
          setMostrarModal={handleCloseModal}
        />
      )}
    </>
  );
};

export default DailyReport;
