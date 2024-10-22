import React, { useState, useEffect } from "react";
import Button from "./Button";

const MatchPsicologos = () => {
  const [psicologos, setPsicologos] = useState([]);

  useEffect(() => {
    const fetchPsicologos = async () => {
      try {
        const token = localStorage.getItem("token");

        if (!token) {
          window.location.href = "/login";
          return;
        }
        const response = await fetch(
          "http://127.0.0.1:8000/api/match-psicologos",
          {
            method: "GET",
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${token}`,
            },
          }
        );
        const data = await response.json();
        setPsicologos(data);
      } catch (error) {
        console.error("Error al obtener los psicólogos:", error);
      }
    };

    fetchPsicologos();
  }, []);

  return (
    <section className="flex flex-col gap-[30px] justify-center items-center pt-[120px] pb-[70px]">
      <h1 className="text-3xl font-bold text-center text-[#75B781]">
        ¡Felicidades! Hiciste match con estos psicólogos:
      </h1>
      <div className="flex flex-col gap-[30px] w-[340px] sm:w-[590px] lg:w-[990px] xl:w-[980px] mac:w-[1040px] hd:w-[1036px] fullhd:w-[1120px]">
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {psicologos.length > 0
            ? psicologos.map((psicologo) => (
                <div
                  key={psicologo.matricula}
                  className="p-4 border border-[#75B781] rounded-lg shadow-md hover:shadow-lg transition-shadow"
                >
                  <div className="flex flex-col gap-5">
                    <div>
                      <p>
                        <strong>Nombre:</strong> {psicologo.nombre}
                      </p>
                      <p>
                        <strong>Apellido:</strong> {psicologo.apellido}
                      </p>
                      <p>
                        <strong>Email:</strong> {psicologo.email}
                      </p>
                      <p>
                        <strong>Matrícula:</strong> {psicologo.matricula}
                      </p>
                      <p>
                        <strong>Patología:</strong> {psicologo.nombre_patologia}
                      </p>
                      <p>
                        <strong>Corriente:</strong> {psicologo.nombre_corriente}
                      </p>
                      <p>
                        <strong>Temática:</strong> {psicologo.nombre_tematica}
                      </p>
                    </div>
                    <Button text="Contactar" color="primary" />
                  </div>
                </div>
              ))
            : null}{" "}
        </div>
      </div>
    </section>
  );
};

export default MatchPsicologos;
