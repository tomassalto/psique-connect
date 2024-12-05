import { useState, useEffect } from "react";
import Loader from "./Loader";
import { toastService } from "../services/toastService";

const Messages = () => {
  const [messages, setMessages] = useState([]);
  const [selectedMessage, setSelectedMessage] = useState(null);
  const [showModal, setShowModal] = useState(false);
  const [loading, setLoading] = useState(true);
  const [takenPatients, setTakenPatients] = useState([]); // Para almacenar los pacientes ya tomados

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

        // Ordenamos los mensajes por la fecha de creación (más recientes primero)
        const sortedMessages = data.sort((a, b) => {
          return new Date(b.created_at) - new Date(a.created_at);
        });

        setMessages(sortedMessages);
      } catch (error) {
        console.error("Error al obtener los mensajes:", error);
      } finally {
        setLoading(false);
      }
    };

    const fetchTakenPatients = async () => {
      try {
        const token = localStorage.getItem("token");
        const response = await fetch(
          "http://127.0.0.1:8000/api/mis-pacientes", // Suponiendo que esta ruta te da los pacientes ya tomados
          {
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${token}`,
            },
          }
        );
        const data = await response.json();
        setTakenPatients(data); // Almacenamos los pacientes ya tomados
      } catch (error) {
        console.error("Error al obtener los pacientes tomados:", error);
      }
    };

    fetchMessages();
    fetchTakenPatients();

    const interval = setInterval(fetchMessages, 10000);

    return () => clearInterval(interval);
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
        toastService.success("Paciente tomado exitosamente");
        setTimeout(() => {
          window.location.reload(); // Esto recarga la página después de 3 segundos
        }, 3000);
      } else {
        toastService.error(data.message || "Error al tomar paciente");
      }
    } catch (error) {
      console.error("Error:", error);
    }
  };

  const isPatientTaken = (dni_paciente) => {
    return takenPatients.some(patient => patient.dni === dni_paciente); // Verifica si el paciente ya está en la lista
  };

  if (loading) {
    return <Loader />;
  }

  return (
    <section className="flex flex-col gap-[30px] justify-center items-center pt-[60px] pb-[70px]">
      <h1 className="text-3xl font-bold font-Muli text-greenPsique">
        Mensajes de Pacientes
      </h1>
      <div className="w-full max-w-3xl">
        {messages.length > 0 ? (
          messages.map((message, index) => (
            <div
              key={message.id_mensaje || index}
              className="p-4 border mb-4 rounded-lg shadow-md relative"
            >
              <div className="flex items-center gap-2">
                <p className="flex-1">
                  <strong>Paciente:</strong> {message.paciente.nombre}{" "}
                  {message.paciente.apellido}
                </p>
                {message.leido === 0 && (
                  <div className="flex items-center gap-1">
                    <span className="w-3 h-3 bg-red-500 rounded-full"></span>
                    <span className="text-sm text-red-500">Nuevo</span>
                  </div>
                )}
              </div>
              <p>
                <strong>Mensaje:</strong>{" "}
                {message.contenido
                  ? message.contenido.substring(0, 50)
                  : "Sin mensaje"}{" "}
                ...
              </p>
              <button
                onClick={() => handleOpenModal(message)}
                className="mt-2 bg-blue-500 text-white px-4 py-2 rounded"
              >
                Ver Detalles
              </button>
            </div>
          ))
        ) : (
          <p className="text-3xl text-red-600 font-Muli text-center flex flex-col justify-center items-center w-full">
            Aún no tenes ningún mensaje.
            <img src="../../../images/without_data/pic.png"></img>
          </p>
        )}
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
              {/* Verifica si el paciente ya ha sido tomado */}
              {!isPatientTaken(selectedMessage.paciente.dni) && (
                <button
                  onClick={() => handleTakePatient(selectedMessage.paciente.dni)}
                  className="mt-4 bg-[#75B781] text-white px-4 py-2 rounded"
                >
                  Tomar Paciente
                </button>
              )}

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
