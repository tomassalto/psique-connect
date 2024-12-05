import React, { useEffect, useState } from "react";
import Loader from "./Loader";
import Button from "./Button";
const SessionList = ({ variant = "list" }) => {
  const [sesiones, setSesiones] = useState([]);
  const [loading, setLoading] = useState(true);
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
    fetchSesionesHoy();
  }, []);

  const obtenerFechaHoy = () => {
    const hoy = new Date();
    const dia = hoy.getDate().toString().padStart(2, "0");
    const mes = (hoy.getMonth() + 1).toString().padStart(2, "0");
    const año = hoy.getFullYear();
    return `${dia}/${mes}/${año}`;
  };

  if (loading) {
    return <Loader />;
  }

  return (
    <div
      className={
        variant === "modal"
          ? "flex flex-col w-full gap-5"
          : "w-[80%] flex flex-col gap-5 items-center justify-center mx-auto"
      }
    >
      <h2
        className={`text-3xl font-semibold text-greenPsique text-center font-Muli ${
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
        <p className="text-3xl text-red-600 font-Muli text-center">
          No hay sesiones programadas para hoy.
          <img src="../../../images/without_data/pic.png"></img>
        </p>
      )}
      {variant === "list" && (
        <div className="flex flex-col gap-10 items-center">
          <div className="w-[350px] m-4">
            <Button
              color="primary"
              text="Ver Agenda"
              onClick={() => (window.location.href = `/mi-agenda`)}
            />
          </div>
        </div>
      )}
    </div>
  );
};

export default SessionList;
