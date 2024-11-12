import React, { useEffect, useState } from "react";

const SessionList = ({ variant = "list" }) => {
  const [sesiones, setSesiones] = useState([]);

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
    }
  };

  useEffect(() => {
    fetchSesionesHoy();
  }, []);

  const obtenerFechaHoy = () => {
    const hoy = new Date();
    const dia = hoy.getDate().toString().padStart(2, "0");
    const mes = (hoy.getMonth() + 1).toString().padStart(2, "0");
    const año = hoy.getFullYear();
    return `${dia}/${mes}/${año}`;
  };

  return (
    <div className={variant === "modal" ? "w-full" : "w-[80%] mx-auto mt-6"}>
      <h2
        className={`text-3xl font-semibold mb-4 text-[#75B781] text-center font-Muli ${
          variant === "modal" ? "" : "mt-4"
        }`}
      >
        Sesiones de Hoy - {obtenerFechaHoy()}
      </h2>
      {sesiones.length ? (
        <ul className={`${variant === "modal" ? "" : "space-y-4"}`}>
          {sesiones.map((sesion) => (
            <li key={sesion.id_sesion} className="border-b p-4 text-black">
              <p>
                <strong>Paciente DNI:</strong> {sesion.dni_paciente}
              </p>
              <p>
                <strong>Hora:</strong> {sesion.hora}
              </p>
              <p>
                <strong>Modalidad:</strong>{" "}
                {sesion.presencial === 0 ? "Presencial" : "Virtual"}
              </p>
            </li>
          ))}
        </ul>
      ) : (
        <p className="text-2xl text-red-600 font-Muli text-center">
          No hay sesiones programadas para hoy.
        </p>
      )}
      {variant === "list" && (
        <div className="text-center mt-4">
          <a
            href="/mi-agenda"
            className="inline-block bg-blue-500 text-white py-2 px-4 rounded"
          >
            Ver Agenda
          </a>
        </div>
      )}
    </div>
  );
};

export default SessionList;
