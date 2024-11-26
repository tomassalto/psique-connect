import React, { useState, useEffect } from "react";
import { toastService } from "../services/toastService";
import Loader from "./Loader";
import Button from "./Button";

const MisSesiones = () => {
  const [sesiones, setSesiones] = useState([]);
  const [loading, setLoading] = useState(true);
  const [processingPayment, setProcessingPayment] = useState(false);

  useEffect(() => {
    fetchSesiones();
  }, []);

  const fetchSesiones = async () => {
    try {
      const response = await fetch("http://127.0.0.1:8000/api/mis-sesiones", {
        headers: {
          Authorization: `Bearer ${localStorage.getItem("token")}`,
        },
      });
      const data = await response.json();
      console.log("Sesiones:", data); // Agregar este log para ver los datos
      setSesiones(data);
    } catch (error) {
      toastService.error("Error al cargar las sesiones");
    } finally {
      setLoading(false);
    }
  };

  const handlePago = async (idSesion) => {
    setProcessingPayment(true);
    try {
      const response = await fetch("http://127.0.0.1:8000/api/crear-pago", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${localStorage.getItem("token")}`,
        },
        body: JSON.stringify({ id_sesion: idSesion }),
      });

      const data = await response.json();

      if (data.error) {
        toastService.error(data.error);
        return;
      }

      if (!data.init_point) {
        toastService.error("Error: No se pudo obtener el link de pago");
        return;
      }

      window.location.href = data.init_point;
    } catch (error) {
      toastService.error("Error al procesar el pago");
      console.error(error);
    } finally {
      setProcessingPayment(false);
    }
  };

  const verComprobante = async (idSesion) => {
    try {
      const response = await fetch(
        `http://127.0.0.1:8000/api/comprobante/${idSesion}`,
        {
          headers: {
            Authorization: `Bearer ${localStorage.getItem("token")}`,
          },
        }
      );

      if (!response.ok) {
        throw new Error("No se pudo obtener el comprobante");
      }

      const blob = await response.blob();
      const url = window.URL.createObjectURL(blob);
      window.open(url, "_blank");
    } catch (error) {
      toastService.error("Error al obtener el comprobante");
    }
  };

  return (
    <div className="container mx-auto px-4 py-8">
      {(loading || processingPayment) && <Loader />}

      <h2 className="text-3xl font-Muli text-center font-bold mb-6 text-greenPsique">
        Mis Sesiones
      </h2>

      <div className="grid gap-4">
        {sesiones.map((sesion) => (
          <div
            key={sesion.id_sesion}
            className="border rounded-lg p-4 shadow-sm"
          >
            <div className="flex justify-between items-center">
              <div>
                <p className="font-semibold">
                  Fecha: {new Date(sesion.fecha).toLocaleDateString()}
                </p>
                <p>Hora: {sesion.hora}</p>
                <p>Estado: {sesion.pago ? "Pagada" : "Pendiente"}</p>
                <p>Modalidad: {sesion.presencial ? "Presencial" : "Virtual"}</p>
                {sesion.fecha_pago && (
                  <p>
                    Fecha de pago:{" "}
                    {new Date(sesion.fecha_pago).toLocaleString()}
                  </p>
                )}
              </div>

              <div className="flex gap-2">
                {!sesion.pago && !sesion.cancelado ? (
                  <Button
                    text="Pagar Sesion"
                    color="primary"
                    onClick={() => handlePago(sesion.id_sesion)}
                    className="bg-greenPsique text-white px-4 py-2 rounded"
                    disabled={processingPayment}
                  />
                ) : null}
                {sesion.pago && sesion.comprobante_path ? (
                  <Button
                    text="Ver Comprobante"
                    onClick={() => verComprobante(sesion.id_sesion)}
                    className="bg-gray-500 text-white px-4 py-2 rounded hover:bg-gray-600"
                  />
                ) : null}
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default MisSesiones;
