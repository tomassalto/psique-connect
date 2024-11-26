import { useEffect, useState } from "react";
import RatingForm from "./RatingForm";
import Loader from "./Loader";
import Button from "./Button";
import { toastService } from "../services/toastService";

const MisPsicologos = () => {
  const [psychologists, setPsychologists] = useState([]);
  const [selectedPsychologist, setSelectedPsychologist] = useState(null);
  const [loading, setLoading] = useState(true);
  const [endingRelation, setEndingRelation] = useState(false);

  useEffect(() => {
    fetchPsychologists();
  }, []);

  const fetchPsychologists = async () => {
    const token = localStorage.getItem("token");

    try {
      const response = await fetch("http://127.0.0.1:8000/api/mis-psicologos", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      const data = await response.json();
      const psychologistsWithSessions = await Promise.all(
        data.map(async (psychologist) => {
          const sessionCount = await fetchSessionCount(psychologist.matricula);
          return { ...psychologist, sesion_count: sessionCount };
        })
      );

      setPsychologists(psychologistsWithSessions);
    } catch (error) {
      console.error("Error fetching psychologists:", error);
    } finally {
      setLoading(false);
    }
  };

  const fetchSessionCount = async (matriculaPsicologo) => {
    const token = localStorage.getItem("token");
    const response = await fetch(
      `http://127.0.0.1:8000/api/count-sessions/${matriculaPsicologo}`,
      {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      }
    );
    const data = await response.json();
    return data.session_count;
  };

  const handleRate = (psychologist) => {
    setSelectedPsychologist(psychologist);
  };

  const handleEndRelation = async (matricula_psicologo) => {
    setEndingRelation(true);
    try {
      const response = await fetch(
        "http://127.0.0.1:8000/api/terminar-relacion",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${localStorage.getItem("token")}`,
          },
          body: JSON.stringify({ matricula_psicologo }),
        }
      );
      const data = await response.json();
      if (data.success) {
        await fetchPsychologists();
        toastService.success("Relación terminada con éxito.");
      } else {
        toastService.error("Error al terminar la relación.");
      }
    } catch (error) {
      toastService.error("Error al terminar la relación.");
    } finally {
      setEndingRelation(false);
    }
  };
  if (loading) return <Loader />;
  return (
    <section className="flex flex-col gap-[30px] justify-center items-center pt-[120px] pb-[70px]">
      {(loading || endingRelation) && <Loader />}
      <h2 className="text-3xl font-semibold mb-4 font-Muli text-greenPsique">
        Mis Psicólogos
      </h2>
      <ul className="space-y-4 w-full max-w-3xl">
        {psychologists.length > 0 ? (
          psychologists.map((psychologist) => (
            <li
              key={psychologist.matricula}
              className="flex items-center justify-between bg-white p-4 shadow rounded-lg w-full"
            >
              <div>
                <h3 className="font-semibold text-lg">{psychologist.nombre}</h3>
                <p className="text-gray-600">
                  Sesiones hasta la fecha: {psychologist.sesion_count}
                </p>
              </div>
              <div className="space-x-2">
                <button
                  onClick={() => handleRate(psychologist)}
                  className="px-4 py-2 bg-blue-500 text-white rounded disabled:opacity-50"
                  disabled={
                    psychologist.actual === 1 && psychologist.sesion_count < 5
                  }
                >
                  Calificar
                </button>
                {psychologist.actual === 1 && (
                  <button
                    onClick={() => handleEndRelation(psychologist.matricula)}
                    className="px-4 py-2 bg-red-500 text-white rounded"
                  >
                    Terminar Relación
                  </button>
                )}
              </div>
            </li>
          ))
        ) : (
          <div className="flex flex-col gap-10 items-center">
            <p className="text-3xl text-red-600 font-Muli text-center">
              No se encontraron Psicólogos relacionados con usted.
            </p>
            <div className="w-[350px]">
              <Button
                onClick={() => (window.location.href = `/encontrar-psicologo`)}
                color="primary"
                text="Encontrar Psicólogo"
              />
            </div>
          </div>
        )}
      </ul>
      {selectedPsychologist && (
        <RatingForm
          psychologist={selectedPsychologist}
          onClose={() => setSelectedPsychologist(null)}
        />
      )}
    </section>
  );
};

export default MisPsicologos;
