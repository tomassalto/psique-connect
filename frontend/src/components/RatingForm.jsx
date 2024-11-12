import React, { useState } from "react";

const RatingForm = ({ psychologist, onClose }) => {
  const [rating, setRating] = useState(1);
  const [comment, setComment] = useState("");

  const handleSubmit = async (e) => {
    e.preventDefault();
    const token = localStorage.getItem("token");
    const response = await fetch("http://127.0.0.1:8000/api/calificar", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({
        matricula_psicologo: psychologist.matricula,
        valor: rating,
        comentario: comment,
      }),
    });

    const data = await response.json();
    if (data.success) {
      alert("Calificación enviada con éxito");
      onClose();
    } else {
      alert("Error al enviar la calificación");
    }
  };

  return (
    <div className="fixed inset-0 bg-gray-700 bg-opacity-75 flex items-center justify-center">
      <div className="bg-white p-6 rounded-lg shadow-lg w-96">
        <h3 className="text-xl font-semibold mb-4">
          Calificar a {psychologist.nombre}
        </h3>
        <form onSubmit={handleSubmit}>
          <div className="mb-4">
            <label className="block font-medium text-gray-700">Valor:</label>
            <input
              type="number"
              min="1"
              max="5"
              value={rating}
              onChange={(e) => setRating(Number(e.target.value))}
              className="w-full p-2 border border-gray-300 rounded"
            />
          </div>
          <div className="mb-4">
            <label className="block font-medium text-gray-700">
              Comentario:
            </label>
            <textarea
              value={comment}
              onChange={(e) => setComment(e.target.value)}
              className="w-full p-2 border border-gray-300 rounded"
              rows="4"
            />
          </div>
          <div className="flex justify-end space-x-4">
            <button
              type="button"
              onClick={onClose}
              className="px-4 py-2 bg-gray-300 text-gray-800 rounded hover:bg-gray-400"
            >
              Cancelar
            </button>
            <button
              type="submit"
              className="px-4 py-2 bg-green-600 text-white rounded hover:bg-green-500"
            >
              Guardar Calificación
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default RatingForm;
