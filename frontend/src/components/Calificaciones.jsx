import React, { useEffect, useState } from "react";
import Loader from "./Loader";

const StarRating = ({ rating }) => {
  const renderStar = (value) => {
    const isFullStar = rating >= value;
    const isHalfStar = rating >= value - 0.5 && rating < value;

    return (
      <svg
        key={value}
        className="size-6 inline-block "
        fill={
          isFullStar ? "#FFD700" : isHalfStar ? "url(#halfGradient)" : "#D1D5DB"
        }
        xmlns="http://www.w3.org/2000/svg"
        viewBox="0 0 24 24"
      >
        <defs>
          <linearGradient id="halfGradient">
            <stop offset="50%" stopColor="#FFD700" />
            <stop offset="50%" stopColor="#D1D5DB" />
          </linearGradient>
        </defs>
        <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z" />
      </svg>
    );
  };

  return (
    <div className="inline-flex items-center">
      {[1, 2, 3, 4, 5].map((value) => renderStar(value))}
      <span className="ml-2 text-gray-600">({rating.toFixed(1)})</span>
    </div>
  );
};

const Calificaciones = ({ matricula }) => {
  const [ratings, setRatings] = useState([]);
  const [average, setAverage] = useState(null);
  const [loading, setLoading] = useState(true);
  const [psychologist, setPsychologist] = useState(null);

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
        setPsychologist(data.psychologist);
      } catch (error) {
        console.error("Error fetching ratings:", error);
      } finally {
        setLoading(false);
      }
    };

    fetchRatings();
  }, [matricula]);

  if (loading) return <Loader />;

  return (
    <section className="flex flex-col gap-[30px] justify-center items-center pt-[120px] pb-[70px]">
      <h2 className="text-3xl font-semibold mb-4 text-greenPsique text-center font-Muli">
        <span className="text-black">Calificaciones de</span>{" "}
        {psychologist && `${psychologist.nombre} ${psychologist.apellido}`}
      </h2>
      {average !== null && (
        <div className="flex items-center text-lg font-semibold mb-4 text-center">
          <div>Valoración promedio: </div>
          <div className="flex items-center gap-2">
            <StarRating rating={average} />
            <span className="text-gray-600">
              ({ratings.length}{" "}
              {ratings.length === 1 ? "valoración" : "valoraciones"})
            </span>
          </div>
        </div>
      )}
      <ul className="space-y-4 w-full max-w-3xl">
        {ratings.map((rating) => (
          <li
            key={rating.id_calificacion}
            className="bg-white p-4 shadow rounded-lg"
          >
            <p>
              <strong>Calificado por:</strong> {rating.paciente.nombre}{" "}
              {rating.paciente.apellido}
            </p>
            <div className="flex items-center">
              <strong>Calificación:</strong>{" "}
              <StarRating rating={rating.valor} />
            </div>
            {rating.comentario && (
              <p>
                <strong>Comentario:</strong> {rating.comentario}
              </p>
            )}
          </li>
        ))}
      </ul>
    </section>
  );
};

export default Calificaciones;
