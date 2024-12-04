import React, { useEffect, useState } from "react";
import { Calendar, dateFnsLocalizer } from "react-big-calendar";
import Loader from "../Loader";
import moment from "moment";
import "react-big-calendar/lib/css/react-big-calendar.css";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import { toastService } from "../../services/toastService";
import "./Calendar.css";

import format from "date-fns/format";
import parse from "date-fns/parse";
import startOfWeek from "date-fns/startOfWeek";
import getDay from "date-fns/getDay";
import { es } from "date-fns/locale";

const locales = { es };

const localizer = dateFnsLocalizer({
  format,
  parse,
  startOfWeek: () => startOfWeek(new Date(), { locale: es }),
  getDay,
  locales,
});

const messages = {
  today: "Hoy",
  previous: "Atrás",
  next: "Siguiente",
  month: "Mes",
  week: "Semana",
  day: "Día",
  agenda: "Agenda",
  date: "Fecha",
  time: "Hora",
  event: "Evento",
  allDay: "Todo el día",
  noEventsInRange: "No hay eventos en este rango",
  showMore: (total) => `+ Ver más (${total})`,
};

const capitalizeFirstLetter = (string) => {
  return string.charAt(0).toUpperCase() + string.slice(1);
};

const formats = {
  dateFormat: (date, culture, localizer) =>
    capitalizeFirstLetter(localizer.format(date, "dd", culture)),
  dayFormat: (date, culture, localizer) =>
    capitalizeFirstLetter(localizer.format(date, "eeee", culture)),
  weekdayFormat: (date, culture, localizer) =>
    capitalizeFirstLetter(localizer.format(date, "eeee", culture)),
  monthHeaderFormat: (date, culture, localizer) =>
    capitalizeFirstLetter(localizer.format(date, "MMMM yyyy", culture)),
};

const MyCalendar = () => {
  const [savingSession, setSavingSession] = useState(false);
  const [events, setEvents] = useState([]);
  const [loading, setLoading] = useState(true);
  const [matriculaPsicologo, setMatriculaPsicologo] = useState("");
  const [createModalVisible, setCreateModalVisible] = useState(false);
  const [detailsModalVisible, setDetailsModalVisible] = useState(false);
  const [selectedEvent, setSelectedEvent] = useState(null);
  const [newEventComment, setNewEventComment] = useState("");
  const [newEventTitle, setNewEventTitle] = useState("");
  const [newEventDNI, setNewEventDNI] = useState("");
  const [newEventDate, setNewEventDate] = useState(
    moment().format("YYYY-MM-DD")
  );
  const [newEventTime, setNewEventTime] = useState(moment().format("HH:mm"));
  const [pacientes, setPacientes] = useState([]);

  const fetchPacientesDNI = async () => {
    const token = localStorage.getItem("token");
    const response = await fetch(
      "http://127.0.0.1:8000/api/psychologist/pacientes-dni",
      {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      }
    );
    const data = await response.json();
    setPacientes(data);
  };

  useEffect(() => {
    fetchSessions();
    fetchUserProfile();
    fetchPacientesDNI();
  }, []);

  const fetchUserProfile = async () => {
    const token = localStorage.getItem("token");
    if (token) {
      try {
        const response = await fetch("http://127.0.0.1:8000/api/perfil", {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });
        const data = await response.json();
        if (data.rol === "psicologo") {
          setMatriculaPsicologo(data.matricula);
        } else {
          toastService.error(
            "No tienes permiso para acceder a este calendario."
          );
        }
      } catch (error) {
        console.error("Error fetching user profile:", error);
      }
    }
  };

  const fetchSessions = async () => {
    const token = localStorage.getItem("token");
    const response = await fetch("http://127.0.0.1:8000/api/sesion", {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    });
    const data = await response.json();

    setEvents(
      data
        .filter((event) => event.fecha !== "0000-00-00")
        .map((event) => ({
          ...event,
          id_sesion: event.id_sesion,
          title: `Sesion con paciente ${event.nombre} ${event.apellido} - ${event.dni_paciente}`,
          comentario: event.comentario,
          start: new Date(`${event.fecha}T${event.hora}`),
          end: new Date(`${event.fecha}T${event.hora}`),
        }))
    );
    setLoading(false);
  };

  const handleSelect = ({ start }) => {
    setCreateModalVisible(true);
    setNewEventDNI("");
    setNewEventTitle("");
    setNewEventDate(moment(start).format("YYYY-MM-DD"));
    setNewEventTime(moment(start).format("HH:mm"));
  };

  const saveNewSession = async () => {
    if (newEventDNI) {
      setSavingSession(true);
      const sessionData = {
        dni_paciente: parseInt(newEventDNI, 10),
        matricula_psicologo: matriculaPsicologo,
        fecha: newEventDate,
        hora: newEventTime,
        comentario: newEventComment,
        presencial: true,
        cancelado: false,
      };

      await saveSession(sessionData);
      await fetchSessions();
      setSavingSession(false);
      setCreateModalVisible(false);
    } else {
      toastService.error("Por favor, selecciona un DNI para la sesión.");
    }
  };

  const saveSession = async (sessionData) => {
    const token = localStorage.getItem("token");
    try {
      const response = await fetch("http://127.0.0.1:8000/api/guardar_sesion", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(sessionData),
      });

      if (response.ok) {
        toast.success("¡Sesión creada con éxito!", {
          position: "bottom-center",
          autoClose: 2000,
          hideProgressBar: false,
          closeOnClick: true,
          pauseOnHover: true,
          draggable: true,
          progress: undefined,
          theme: "light",
        });
      } else if (response.status === 409) {
        toast.error("Ya existe una sesión en este horario.", {
          position: "bottom-center",
          autoClose: 2000,
          hideProgressBar: false,
          closeOnClick: true,
          pauseOnHover: true,
          draggable: true,
          progress: undefined,
          theme: "light",
        });
      } else if (response.status === 404) {
        toast.error("DNI del paciente incorrecto.", {
          position: "bottom-center",
          autoClose: 2000,
          hideProgressBar: false,
          closeOnClick: true,
          pauseOnHover: true,
          draggable: true,
          progress: undefined,
          theme: "light",
        });
      } else {
        toast.error("Error al guardar la sesión. Intenta de nuevo.", {
          position: "bottom-center",
          autoClose: 2000,
          hideProgressBar: false,
          closeOnClick: true,
          pauseOnHover: true,
          draggable: true,
          progress: undefined,
          theme: "light",
        });
      }
    } catch (error) {
      console.error("Error al guardar la sesión:", error);
      toast.error("Error de conexión. Intenta de nuevo.", {
        position: "bottom-center",
        autoClose: 2000,
        hideProgressBar: false,
        closeOnClick: true,
        pauseOnHover: true,
        draggable: true,
        progress: undefined,
        theme: "light",
      });
    }
  };

  const handleEventClick = (event) => {
    setSelectedEvent(event);
    setDetailsModalVisible(true);
  };

  const cancelSession = async (id_sesion) => {
    const token = localStorage.getItem("token");
    await fetch(`http://127.0.0.1:8000/api/sesion/${id_sesion}`, {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    });
    toast.success("Sesión cancelada correctamente.", {
      position: "bottom-center",
      autoClose: 2000,
      hideProgressBar: false,
      closeOnClick: true,
      pauseOnHover: true,
      draggable: true,
      progress: undefined,
      theme: "light",
    });
    setDetailsModalVisible(false);
    fetchSessions();
  };

  const eventStyleGetter = (event) => {
    const now = new Date();
    const eventDate = new Date(event.start);

    if (event.cancelado) {
      return {
        style: {
          backgroundColor: "red",
          textDecoration: "line-through",
          color: "white",
        },
      };
    }

    if (eventDate < now) {
      return {
        style: {
          backgroundColor: "lightgray",
          textDecoration: "line-through",
        },
      };
    }

    return { style: {} };
  };

  if (loading) {
    return <Loader />;
  }

  return (
    <div className="calendar-container">
      {(loading || savingSession) && <Loader />}

      {createModalVisible && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-50">
          <div className="bg-white p-6 rounded-lg shadow-lg w-96">
            <h2 className="text-xl font-semibold mb-4 text-center text-greenPsique">
              Nueva Sesión
            </h2>

            <div className="space-y-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  Comentario:
                </label>
                <textarea
                  className="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-1 focus:ring-greenPsique focus:border-greenPsique"
                  onChange={(e) => setNewEventComment(e.target.value)}
                  placeholder="Ingrese un comentario (opcional)"
                  disabled={savingSession}
                />
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  DNI del Paciente:
                </label>
                <select
                  className="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-1 focus:ring-greenPsique focus:border-greenPsique"
                  value={newEventDNI}
                  onChange={(e) => setNewEventDNI(e.target.value)}
                  disabled={savingSession}
                >
                  <option value="">Seleccione un paciente</option>
                  {pacientes.map((paciente) => (
                    <option key={paciente.dni} value={paciente.dni}>
                      {paciente.nombre} {paciente.apellido} - {paciente.dni}
                    </option>
                  ))}
                </select>
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  Fecha:
                </label>
                <input
                  type="date"
                  className="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-1 focus:ring-greenPsique focus:border-greenPsique"
                  value={newEventDate}
                  onChange={(e) => setNewEventDate(e.target.value)}
                  disabled={savingSession}
                />
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  Hora:
                </label>
                <input
                  type="time"
                  className="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-1 focus:ring-greenPsique focus:border-greenPsique"
                  value={newEventTime}
                  onChange={(e) => setNewEventTime(e.target.value)}
                  disabled={savingSession}
                />
              </div>

              <div className="flex justify-end space-x-3 mt-6">
                <button
                  onClick={saveNewSession}
                  disabled={savingSession}
                  className={`px-4 py-2 rounded-md text-white transition-colors duration-200 
                    ${
                      savingSession
                        ? "bg-gray-400 cursor-not-allowed"
                        : "bg-greenPsique hover:bg-greenPsiqueHover"
                    }`}
                >
                  {savingSession ? "Guardando..." : "Guardar Sesión"}
                </button>

                <button
                  onClick={() => setCreateModalVisible(false)}
                  disabled={savingSession}
                  className={`px-4 py-2 rounded-md transition-colors duration-200 
                    ${
                      savingSession
                        ? "bg-gray-200 text-gray-400 cursor-not-allowed"
                        : "bg-gray-200 text-gray-700 hover:bg-gray-300"
                    }`}
                >
                  Cancelar
                </button>
              </div>
            </div>
          </div>
        </div>
      )}

      {detailsModalVisible && selectedEvent && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-50">
          <div className="bg-white p-6 rounded-lg shadow-lg w-96">
            <h2 className="text-xl font-semibold mb-4 text-center text-greenPsique">
              Detalles de la sesión
            </h2>
            <p>
              <strong>Paciente:</strong> {selectedEvent.nombre}{" "}
              {selectedEvent.apellido} - {selectedEvent.dni_paciente}
            </p>
            <p>
              <strong>Fecha:</strong>{" "}
              {moment(selectedEvent.start).format("DD/MM/YYYY")}
            </p>
            <p>
              <strong>Hora:</strong>{" "}
              {moment(selectedEvent.start).format("HH:mm")}
            </p>
            <p>
              <strong>Comentario:</strong>{" "}
              {selectedEvent.comentario || "Ninguno"}
            </p>
            <div className="flex justify-end space-x-3 mt-6">
              <button
                onClick={() => cancelSession(selectedEvent.id_sesion)}
                className="bg-red-500 w-[150px] font-Muli text-white py-2 px-4 rounded hover:bg-red-600 h-[48px]"
              >
                Cancelar sesión
              </button>
              <button
                onClick={() => setDetailsModalVisible(false)}
                className="px-4 py-2 rounded-md transition-colors duration-200 bg-darkGreen text-white"
              >
                Cerrar
              </button>
            </div>
          </div>
        </div>
      )}

      <Calendar
        localizer={localizer}
        events={events}
        messages={messages}
        formats={formats}
        culture="es"
        startAccessor="start"
        endAccessor="end"
        style={{ flexGrow: 1, margin: "50px" }}
        selectable
        onSelectEvent={handleEventClick}
        onSelectSlot={handleSelect}
        eventPropGetter={eventStyleGetter}
      />
      <ToastContainer className="!bottom-10" />
    </div>
  );
};

export default MyCalendar;
