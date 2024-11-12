import React, { useState, useEffect } from "react";

const Messages = () => {
  const [messages, setMessages] = useState([]);
  const [selectedMessage, setSelectedMessage] = useState(null);
  const [showModal, setShowModal] = useState(false);

  useEffect(() => {
    const fetchMessages = async () => {
      try {
        const token = localStorage.getItem("token");
        const response = await fetch(
          "http://127.0.0.1:8000/api/psychologist/messages",
          {
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${token}`,
            },
          }
        );
        const data = await response.json();
        console.log(data);
        setMessages(data);
      } catch (error) {
        console.error("Error al obtener los mensajes:", error);
      }
    };

    fetchMessages();
  }, []);

  const handleOpenModal = async (message) => {
    setSelectedMessage(message);
    setShowModal(true);

    const token = localStorage.getItem("token");
    await fetch(
      `http://127.0.0.1:8000/api/messages/${message.id_mensaje}/marcarLeido`,
      {
        method: "PUT",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
      }
    );
  };

  const handleCloseModal = () => {
    setSelectedMessage(null);
    setShowModal(false);
  };

  const handleTakePatient = async (dni_paciente) => {
    const token = localStorage.getItem("token");
    try {
      const response = await fetch(
        "http://127.0.0.1:8000/api/psychologist/takePatient",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
          body: JSON.stringify({ dni_paciente }),
        }
      );
      const data = await response.json();
      if (response.ok) {
        alert("Paciente tomado exitosamente");
      } else {
        alert(data.message || "Error al tomar paciente");
      }
    } catch (error) {
      console.error("Error:", error);
    }
  };

  return (
    <section className="flex flex-col items-center pt-10">
      <h1 className="text-2xl font-bold mb-5">Mensajes de Pacientes</h1>
      <div className="w-full max-w-3xl">
        {messages.map((message, index) => (
          <div
            key={message.id_mensaje || index}
            className="p-4 border mb-4 rounded-lg shadow-md"
          >
            <p>
              <strong>Paciente:</strong> {message.paciente.nombre}{" "}
              {message.paciente.apellido}
            </p>
            <p>
              <strong>Mensaje:</strong>{" "}
              {message.contenido
                ? message.contenido.substring(0, 50)
                : "Sin mensaje"}
              ...
            </p>
            <button
              onClick={() => handleOpenModal(message)}
              className="mt-2 bg-blue-500 text-white px-4 py-2 rounded"
            >
              Ver Detalles
            </button>
          </div>
        ))}
      </div>

      {showModal && selectedMessage && (
        <div className="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50">
          <div className="bg-white p-6 rounded-lg shadow-lg w-80">
            <h2 className="text-xl font-bold mb-4">Detalles del Mensaje</h2>
            <p>
              <strong>Fecha:</strong>{" "}
              {new Date(selectedMessage.created_at).toLocaleDateString(
                "es-AR",
                { year: "numeric", month: "long", day: "numeric" }
              )}
            </p>
            <p>
              <strong>Hora:</strong>{" "}
              {new Date(selectedMessage.created_at).toLocaleTimeString(
                "es-AR",
                { hour: "2-digit", minute: "2-digit" }
              )}
            </p>
            <p>
              <strong>Paciente:</strong> {selectedMessage.paciente.nombre}{" "}
              {selectedMessage.paciente.apellido}
            </p>
            <p>
              <strong>Mensaje Completo:</strong>{" "}
              {selectedMessage.contenido || "Sin mensaje"}
            </p>
            <div className="flex justify-between">
              <button
                onClick={() => handleTakePatient(selectedMessage.paciente.dni)}
                className="mt-4 bg-[#75B781] text-white px-4 py-2 rounded"
              >
                Tomar Paciente
              </button>

              <button
                onClick={handleCloseModal}
                className="mt-4 bg-red-500 text-white px-4 py-2 rounded"
              >
                Cerrar
              </button>
            </div>
          </div>
        </div>
      )}
    </section>
  );
};

export default Messages;
