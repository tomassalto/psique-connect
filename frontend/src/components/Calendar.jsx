import React, { useEffect, useState } from "react";
import { Calendar, momentLocalizer } from "react-big-calendar";
import moment from "moment";
import "react-big-calendar/lib/css/react-big-calendar.css";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

const localizer = momentLocalizer(moment);

const MyCalendar = () => {
  const [events, setEvents] = useState([]);
  const [loading, setLoading] = useState(true);
  const [matriculaPsicologo, setMatriculaPsicologo] = useState("");
  const [modalVisible, setModalVisible] = useState(false);
  const [newEventTitle, setNewEventTitle] = useState("");
  const [newEventDNI, setNewEventDNI] = useState("");
  const [newEventDate, setNewEventDate] = useState(
    moment().format("YYYY-MM-DD")
  );
  const [newEventTime, setNewEventTime] = useState(moment().format("HH:mm"));

  useEffect(() => {
    fetchSessions();
    fetchUserProfile();
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
          alert("No tienes permiso para acceder a este calendario.");
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
          title: `Sesion con paciente ${event.dni_paciente}`,
          start: new Date(`${event.fecha}T${event.hora}`),
          end: new Date(`${event.fecha}T${event.hora}`),
        }))
    );

    setLoading(false);
  };

  const handleSelect = ({ start }) => {
    setModalVisible(true);
    setNewEventDNI("");
    setNewEventTitle("");
    setNewEventDate(moment(start).format("YYYY-MM-DD"));
    setNewEventTime(moment(start).format("HH:mm"));
  };

  const saveNewSession = async () => {
    if (newEventTitle && newEventDNI) {
      const sessionData = {
        title: newEventTitle,
        dni_paciente: parseInt(newEventDNI, 10),
        matricula_psicologo: matriculaPsicologo,
        fecha: newEventDate,
        hora: newEventTime,
        presencial: true,
        cancelado: false,
      };

      await saveSession(sessionData);

      fetchSessions();
      setModalVisible(false);
    } else {
      alert("Por favor, proporciona un título y DNI para la sesión.");
    }
  };

  const saveSession = async (sessionData) => {
    const token = localStorage.getItem("token");
    const response = await fetch("http://127.0.0.1:8000/api/guardar_sesion", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify(sessionData),
    });
    if (response.status === 201) {
      toast.success("¡Sesion creada con éxito!", {
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
      toast.error("DNI incorrecto. Intenta de nuevo.", {
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

  const handleEventClick = async (event) => {
    if (window.confirm("¿Está seguro de que desea cancelar esta sesión?")) {
      if (event.id_sesion) {
        await cancelSession(event.id_sesion);
        fetchSessions();
      } else {
        alert("No se encontró el ID de la sesión.");
      }
    }
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
    return <div>Cargando sesiones...</div>;
  }

  return (
    <div>
      {modalVisible && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-50">
          <div className="bg-white p-6 rounded-lg shadow-lg w-96">
            <h2 className="text-lg font-semibold mb-4">Agregar Nueva Sesión</h2>
            <label className="block mb-2">Título:</label>
            <input
              type="text"
              className="border rounded-md p-2 mb-4 w-full"
              value={newEventTitle}
              onChange={(e) => setNewEventTitle(e.target.value)}
            />
            <label className="block mb-2">DNI Paciente:</label>
            <input
              type="text"
              className="border rounded-md p-2 mb-4 w-full"
              value={newEventDNI}
              onChange={(e) => setNewEventDNI(e.target.value)}
            />
            <label className="block mb-2">Fecha:</label>
            <input
              type="date"
              className="border rounded-md p-2 mb-4 w-full"
              value={newEventDate}
              onChange={(e) => setNewEventDate(e.target.value)}
            />
            <label className="block mb-2">Hora:</label>
            <input
              type="time"
              className="border rounded-md p-2 mb-4 w-full"
              value={newEventTime}
              onChange={(e) => setNewEventTime(e.target.value)}
            />
            <div className="flex justify-end">
              <button
                onClick={saveNewSession}
                className="bg-blue-500 text-white px-4 py-2 rounded-md mr-2"
              >
                Guardar Sesión
              </button>
              <button
                onClick={() => setModalVisible(false)}
                className="bg-gray-300 text-gray-700 px-4 py-2 rounded-md"
              >
                Cancelar
              </button>
            </div>
          </div>
        </div>
      )}

      <Calendar
        localizer={localizer}
        events={events}
        startAccessor="start"
        endAccessor="end"
        style={{ height: 500, margin: "50px" }}
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
