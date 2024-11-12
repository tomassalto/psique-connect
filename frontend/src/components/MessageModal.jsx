import React, { useState } from "react";
import Button from "./Button";

const MensajeModal = ({
  showModal,
  onClose,
  matriculaPsicologo,
  nombrePsicologo,
}) => {
  const [mensaje, setMensaje] = useState("");

  const handleSendMensaje = async () => {
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
          contenido: mensaje,
        }),
      });
      if (response.ok) {
        alert("Mensaje enviado exitosamente");
        setMensaje("");
        onClose();
      } else {
        alert("Error al enviar el mensaje");
      }
    } catch (error) {
      console.error("Error:", error);
    }
  };

  if (!showModal) return null;

  return (
    <div className="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50">
      <div className="bg-white p-6 rounded-lg shadow-lg w-[55%] flex flex-col gap-10">
        <h2 className="text-2xl text-center">
          Enviar Mensaje a{" "}
          <span className="text-[#75B781]">{nombrePsicologo}</span>
        </h2>
        <textarea
          value={mensaje}
          onChange={(e) => setMensaje(e.target.value)}
          placeholder="Escribe tu mensaje..."
          className="w-full p-2 border border-gray-300 rounded h-[150px] max-h-[150px]"
        />
        <div className="flex gap-4">
          <div>
            <Button text="Enviar" color="primary" onClick={handleSendMensaje} />
          </div>
          <div>
            <Button text="Cancelar" color="secondary" onClick={onClose} />
          </div>
        </div>
      </div>
    </div>
  );
};

export default MensajeModal;
