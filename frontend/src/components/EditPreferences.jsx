import React, { useEffect, useState } from "react";
import OnBoarding from "./OnBoarding"; // Asegúrate de que la ruta es correcta

const EditPreferences = () => {
  const [preferences, setPreferences] = useState(null);
  const [loading, setLoading] = useState(true);
  const [dni, setDni] = useState(null);
  const [showOnboarding, setShowOnboarding] = useState(false); // Estado para el modal

  useEffect(() => {
    const token = localStorage.getItem("token");

    if (token) {
      fetch("http://127.0.0.1:8000/api/perfil", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
        .then((response) => response.json())
        .then((data) => {
          if (data.dni) {
            setDni(data.dni);
            fetchPreferences(data.dni);
          } else {
            console.error("DNI not found in user data:", data);
          }
        })
        .catch((error) => {
          console.error("Error fetching user data:", error);
        })
        .finally(() => setLoading(false));
    } else {
      setLoading(false);
    }
  }, []);

  const fetchPreferences = async (dni) => {
    try {
      const token = localStorage.getItem("token");

      if (!token) {
        window.location.href = "/login";
        return;
      }
      const response = await fetch(
        `http://127.0.0.1:8000/api/user/preferences/${dni}`,
        {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      const data = await response.json();
      setPreferences(data);
    } catch (error) {
      console.error("Error fetching preferences:", error);
    }
  };

  const handleOnboardingComplete = () => {
    // Lógica para cerrar el modal
    setShowOnboarding(false);
    fetchPreferences(dni); // Recargar preferencias después de editar
  };

  if (loading) {
    return <div>Cargando preferencias...</div>;
  }

  return (
    <section className="flex flex-col justify-center items-center pt-[120px] pb-[70px]">
      <div className="flex flex-col p-8 w-[400px]  bg-white rounded-lg shadow-md">
        <h1 className="text-2xl font-bold mb-4">Editar Preferencias</h1>
        {preferences ? (
          <ul className="list-disc list-inside mb-4">
            <li>Patología: {preferences.patologia}</li>
            <li>Corriente: {preferences.corriente}</li>
            <li>Temática: {preferences.tematica}</li>
          </ul>
        ) : (
          <p>No hay preferencias para mostrar.</p>
        )}
        <button
          onClick={() => setShowOnboarding(true)}
          className="bg-[#75B781] text-white py-2 px-4 rounded hover:bg-green-600 transition"
        >
          Editar Preferencias
        </button>

        {showOnboarding && (
          <div className="fixed inset-0 h-full w-full bg-gray-900 bg-opacity-75 flex items-center justify-center z-50">
            <div className="bg-white h-full  p-8 rounded-lg w-full relative flex items-center justify-center">
              <OnBoarding onComplete={handleOnboardingComplete} />
            </div>
          </div>
        )}
      </div>
    </section>
  );
};

export default EditPreferences;
