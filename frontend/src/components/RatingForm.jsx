import { useState } from "react";
import { useFormik } from "formik";
import { ratingSchema } from "../schemas";
import { toastService } from "../services/toastService";
import Button from "./Button";

const RatingForm = ({ psychologist, onClose }) => {
  const [hoveredRating, setHoveredRating] = useState(null);

  const formik = useFormik({
    initialValues: {
      rating: 1,
      comment: "",
    },
    validationSchema: ratingSchema,
    onSubmit: async (values) => {
      const token = localStorage.getItem("token");
      try {
        const response = await fetch("http://127.0.0.1:8000/api/calificar", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
          body: JSON.stringify({
            matricula_psicologo: psychologist.matricula,
            valor: values.rating,
            comentario: values.comment,
          }),
        });

        const data = await response.json();
        if (data.success) {
          toastService.success("Calificación enviada con éxito");
          onClose();
        } else {
          toastService.error("Error al enviar la calificación");
        }
      } catch (error) {
        toastService.error("Error al enviar la calificación");
      }
    },
  });

  const renderStar = (index) => {
    const value = index + 0.5;
    const isHalfStar = hoveredRating === value;
    const isFullStar =
      hoveredRating >= index + 1 || formik.values.rating >= index + 1;
    const isHalfStarSelected = !isFullStar && formik.values.rating >= value;

    return (
      <div key={index} className="relative inline-block cursor-pointer">
        {/* Área para media estrella */}
        <div
          className="absolute w-1/2 h-full"
          onMouseEnter={() => setHoveredRating(value)}
          onClick={() => formik.setFieldValue("rating", value)}
        ></div>
        {/* Área para estrella completa */}
        <div
          className="absolute w-1/2 h-full right-0"
          onMouseEnter={() => setHoveredRating(index + 1)}
          onClick={() => formik.setFieldValue("rating", index + 1)}
        ></div>
        <svg
          className="w-8 h-8"
          fill={
            isFullStar || isHalfStar || isHalfStarSelected
              ? "#FFD700"
              : "#D1D5DB"
          }
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 24 24"
        >
          <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z" />
          {/* Máscara para media estrella */}
          {isHalfStar || isHalfStarSelected ? (
            <rect x="12" y="0" width="12" height="24" fill="#D1D5DB" />
          ) : null}
        </svg>
      </div>
    );
  };
  return (
    <div className="fixed inset-0 bg-gray-700 bg-opacity-75 flex items-center justify-center">
      <div className="bg-white p-6 rounded-lg shadow-lg w-96">
        <h3 className="text-3xl font-semibold mb-4 text-greenPsique text-center font-Muli">
          Calificar a {psychologist.nombre}
        </h3>
        <form onSubmit={formik.handleSubmit}>
          <div className="mb-4">
            <label className="block font-medium text-gray-700 mb-2">
              Valoración:
            </label>
            <div
              className="flex justify-center space-x-1"
              onMouseLeave={() => setHoveredRating(null)}
            >
              {[0, 1, 2, 3, 4].map((index) => renderStar(index))}
            </div>
            <div className="text-center mt-2 text-gray-600">
              {hoveredRating || formik.values.rating} de 5 estrellas
            </div>
          </div>
          <div className="mb-4">
            <label className="block font-medium text-gray-700">
              Comentario:
            </label>
            <textarea
              id="comment"
              name="comment"
              value={formik.values.comment}
              onChange={formik.handleChange}
              onBlur={formik.handleBlur}
              className={`w-full p-2 border rounded ${
                formik.touched.comment && formik.errors.comment
                  ? "border-[#E50505]"
                  : "border-gray-300"
              }`}
              rows="4"
            />
            {formik.touched.comment && formik.errors.comment ? (
              <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins mt-1">
                <img
                  src="/icons/form/error.svg"
                  width={18}
                  height={18}
                  alt="error"
                />
                {formik.errors.comment}
              </div>
            ) : null}
          </div>
          <div className="flex justify-end space-x-4">
            <Button
              type="submit"
              color="primary"
              disabled={formik.isSubmitting || !formik.isValid}
              text="Guardar Calificación"
            />
            <button
              type="button"
              onClick={onClose}
              className="px-4 py-2 bg-gray-300 text-gray-800 rounded hover:bg-gray-400"
            >
              Cancelar
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default RatingForm;
