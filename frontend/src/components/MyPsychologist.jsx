import React, { useEffect, useState } from "react";
import RatingForm from "./RatingForm";

const MisPsicologos = () => {
  const [psychologists, setPsychologists] = useState([]);
  const [selectedPsychologist, setSelectedPsychologist] = useState(null);

  useEffect(() => {
    fetchPsychologists();
  }, []);

  const fetchPsychologists = async () => {
    const token = localStorage.getItem("token");
    const response = await fetch("http://127.0.0.1:8000/api/mis-psicologos", {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    });
    const data = await response.json();
    console.log(data);
    // Fetch session count for each psychologist
    const psychologistsWithSessions = await Promise.all(
      data.map(async (psychologist) => {
        const sessionCount = await fetchSessionCount(psychologist.matricula);
        return { ...psychologist, sesion_count: sessionCount };
      })
    );

    setPsychologists(psychologistsWithSessions);
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
      fetchPsychologists();
      alert("Relación terminada.");
    } else {
      alert("Error al terminar la relación.");
    }
  };

  return (
    <div className="container mx-auto p-4">
      <h2 className="text-2xl font-semibold mb-4">Mis Psicólogos</h2>
      <ul className="space-y-4">
        {psychologists.map((psychologist) => (
          <li
            key={psychologist.matricula}
            className="flex items-center justify-between bg-white p-4 shadow rounded-lg"
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
                  psychologist.actual === 1 && psychologist.sesion_count >= 5
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
        ))}
      </ul>
      {selectedPsychologist && (
        <RatingForm
          psychologist={selectedPsychologist}
          onClose={() => setSelectedPsychologist(null)}
        />
      )}
    </div>
  );
};

export default MisPsicologos;
