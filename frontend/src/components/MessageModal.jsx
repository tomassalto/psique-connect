import { useFormik } from "formik";
import Button from "./Button";
import { toastService } from "../services/toastService";
import { mensajeSchema } from "../schemas";

const MensajeModal = ({
  showModal,
  onClose,
  matriculaPsicologo,
  nombrePsicologo,
}) => {
  const formik = useFormik({
    initialValues: {
      mensaje: "",
    },
    validationSchema: mensajeSchema,
    onSubmit: async (values) => {
      const token = localStorage.getItem("token");
      try {
        const response = await fetch("http://127.0.0.1:8000/api/mensaje", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
          body: JSON.stringify({
            matricula_psicologo: matriculaPsicologo,
            contenido: values.mensaje,
          }),
        });
        if (response.status === 201) {
          toastService.success("¡Mensaje enviado con éxito!");
          formik.resetForm();
          onClose();
        } else {
          toastService.error("Error al enviar el mensaje");
        }
      } catch (error) {
        console.error("Error:", error);
      }
    },
  });

  if (!showModal) return null;

  return (
    <div className="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50">
      <div className="bg-white p-6 rounded-lg shadow-lg w-[55%] flex flex-col gap-10">
        <h2 className="text-2xl text-center">
          Enviar Mensaje a{" "}
          <span className="text-greenPsique">{nombrePsicologo}</span>
        </h2>
        <form onSubmit={formik.handleSubmit} className="flex flex-col gap-10">
          <div className="flex flex-col">
            <textarea
              id="mensaje"
              name="mensaje"
              value={formik.values.mensaje}
              onChange={formik.handleChange}
              onBlur={formik.handleBlur}
              placeholder="Escribe tu mensaje..."
              className={`w-full p-2 border rounded h-[150px] max-h-[150px] ${
                formik.touched.mensaje && formik.errors.mensaje
                  ? "border-[#E50505]"
                  : "border-gray-300"
              }`}
            />
            {formik.touched.mensaje && formik.errors.mensaje ? (
              <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins mt-1">
                <img
                  src="/icons/form/error.svg"
                  width={18}
                  height={18}
                  alt="error"
                />
                {formik.errors.mensaje}
              </div>
            ) : null}
          </div>
          <div className="flex gap-4">
            <div>
              <Button
                text="Enviar"
                color="primary"
                type="submit"
                disabled={formik.isSubmitting || !formik.isValid}
              />
            </div>
            <div>
              <Button text="Cancelar" color="secondary" onClick={onClose} />
            </div>
          </div>
        </form>
      </div>
    </div>
  );
};

export default MensajeModal;
