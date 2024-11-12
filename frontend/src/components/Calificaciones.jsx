import React, { useEffect, useState } from "react";

const Calificaciones = ({ matricula }) => {
  const [ratings, setRatings] = useState([]);
  const [average, setAverage] = useState(null);

  useEffect(() => {
    const fetchRatings = async () => {
      try {
        const token = localStorage.getItem("token");
        const response = await fetch(
          `http://127.0.0.1:8000/api/calificaciones/${matricula}`,
          {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          }
        );
        const data = await response.json();
        setRatings(data.ratings);
        setAverage(data.average);
      } catch (error) {
        console.error("Error fetching ratings:", error);
      }
    };

    fetchRatings();
  }, [matricula]);

  return (
    <div className="container mx-auto p-4">
      <h2 className="text-2xl font-semibold mb-4">Calificaciones</h2>
      {average !== null && (
        <h2 className="text-lg font-semibold mb-4">
          El promedio de calificaciones de este psicólogo es:{" "}
          {average.toFixed(2)}
        </h2>
      )}
      <ul className="space-y-4">
        {ratings.map((rating) => (
          <li
            key={rating.id_calificacion}
            className="bg-white p-4 shadow rounded-lg"
          >
            <p>
              <strong>Calificado por:</strong> {rating.paciente.nombre}{" "}
              {rating.paciente.apellido}
            </p>
            <p>
              <strong>Calificación:</strong> {rating.valor} / 5
            </p>
            {rating.comentario && (
              <p>
                <strong>Comentario:</strong> {rating.comentario}
              </p>
            )}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Calificaciones;
