import { useState, useEffect } from "react";
import Button from "./Button";
import MessageModal from "./MessageModal";
import Loader from "./Loader";

const MatchPsicologos = () => {
  const [loading, setLoading] = useState(true);
  const [psicologos, setPsicologos] = useState([]);
  const [showModal, setShowModal] = useState(false);
  const [selectedPsicologo, setSelectedPsicologo] = useState(null);

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
      } finally {
        setLoading(false);
      }
    };
    fetchPsicologos();
  }, []);

  const handleContactar = (psicologo) => {
    setSelectedPsicologo(psicologo);
    setShowModal(true);
  };

  const calculateAge = (dateOfBirth) => {
    const birthDate = new Date(dateOfBirth);
    const today = new Date();
    let age = today.getFullYear() - birthDate.getFullYear();
    const monthDifference = today.getMonth() - birthDate.getMonth();

    if (
      monthDifference < 0 ||
      (monthDifference === 0 && today.getDate() < birthDate.getDate())
    ) {
      age--;
    }

    return age;
  };

  const formatPrice = (price) => {
    return new Intl.NumberFormat("es-AR", {
      style: "currency",
      currency: "ARS",
      minimumFractionDigits: 0,
    }).format(price);
  };

  return (
    <section className="flex flex-col gap-[30px] justify-center items-center pt-[120px] pb-[70px]">
      {loading ? (
        <Loader />
      ) : (
        <>
          {" "}
          <h1 className="text-3xl font-bold text-center text-greenPsique font-Muli">
            ¡Felicidades! Hiciste match con estos psicólogos:
          </h1>
          <div className="flex flex-col gap-[30px] w-[340px] sm:w-[590px] lg:w-[990px] xl:w-[980px] mac:w-[1040px] hd:w-[1036px] fullhd:w-[1120px]">
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
              {psicologos.length > 0
                ? psicologos.map((psicologo) => (
                    <div
                      key={psicologo.matricula}
                      className="flex flex-col p-4 border border-greenPsique rounded-lg shadow-md hover:shadow-lg transition-shadow gap-4 justify-between"
                    >
                      <div>
                        <div className="flex flex-col gap-4">
                          <div className="flex items-center justify-center">
                            <img
                              src={
                                psicologo.foto.startsWith("../../storage")
                                  ? `http://127.0.0.1:8000/storage/${psicologo.foto.replace(
                                      "../../storage/app/public/",
                                      ""
                                    )}`
                                  : `http://127.0.0.1:8000/storage/${psicologo.foto}`
                              }
                              alt={`Foto de ${psicologo.nombre}`} // Comillas invertidas para interpolación
                              className="h-[350px] w-full object-cover rounded-lg"
                            />
                          </div>
                          <div>
                            <p>
                              <strong>Nombre:</strong> {psicologo.nombre}
                            </p>
                            <p>
                              <strong>Apellido:</strong> {psicologo.apellido}
                            </p>
                            <p>
                              <strong>Edad: </strong>
                              {calculateAge(psicologo.fecha_nacimiento)} años
                            </p>
                            <p>
                              <strong>Genero:</strong> {psicologo.genero}
                            </p>
                            <p>
                              <strong>Email:</strong> {psicologo.email}
                            </p>
                            <p>
                              <strong>Matrícula:</strong> {psicologo.matricula}
                            </p>
                            <p>
                              <strong>Precio por hora:</strong>{" "}
                              {formatPrice(psicologo.precio)}
                            </p>
                            <p>
                              <strong>Patologías:</strong>{" "}
                              {psicologo.patologias
                                .map((p) => p.nombre)
                                .join(", ")}
                            </p>
                            <p>
                              <strong>Corriente:</strong>{" "}
                              {psicologo.corriente?.nombre}
                            </p>
                            <p>
                              <strong>Temática:</strong>{" "}
                              {psicologo.tematica?.nombre}
                            </p>
                          </div>
                        </div>
                      </div>
                      <div className="flex flex-col gap-5">
                        <Button
                          onClick={
                            () =>
                              (window.location.href = `/calificaciones/${psicologo.matricula}`) // Comillas invertidas para interpolación
                          }
                          color="secondary"
                          text="Ver Calificaciones"
                        />
                        <Button
                          text="Contactar"
                          color="primary"
                          onClick={() => handleContactar(psicologo)}
                        />
                      </div>
                    </div>
                  ))
                : null}
            </div>
          </div>
        </>
      )}

      <MessageModal
        showModal={showModal}
        onClose={() => setShowModal(false)}
        matriculaPsicologo={selectedPsicologo?.matricula}
        nombrePsicologo={selectedPsicologo?.nombre || ""}
      />
    </section>
  );
};

export default MatchPsicologos;
