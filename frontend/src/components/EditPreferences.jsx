import React, { useEffect, useState } from "react";
import OnBoarding from "./OnBoarding";
import Loader from "./Loader";
import Button from "./Button";

const EditPreferences = () => {
  const [preferences, setPreferences] = useState(null);
  const [loading, setLoading] = useState(true);
  const [dni, setDni] = useState(null);
  const [showOnboarding, setShowOnboarding] = useState(false);

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
        });
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
    } finally {
      setLoading(false);
    }
  };

  const handleOnboardingComplete = () => {
    setShowOnboarding(false);
    fetchPreferences(dni);
  };

  if (loading) {
    return <Loader />;
  }

  return (
    <section className="flex flex-col justify-center items-center pt-[120px] pb-[70px]">
      {preferences ? (
        <div className="flex flex-col p-8 w-[400px] bg-white rounded-lg shadow-md gap-5">
          <h1 className="text-3xl font-bold font-Muli text-center text-greenPsique">
            Editar Preferencias
          </h1>
          <div className="flex flex-col gap-[20px] text-[20px]">
            <div>
              <strong>Temática:</strong> {preferences.tematica}
            </div>
            <div>
              <strong>Corriente:</strong> {preferences.corriente}
            </div>
            <div>
              <strong>Patologías a tratar:</strong>
              <ul className="list-disc pl-8 mt-2">
                {preferences.patologias &&
                  preferences.patologias.map((patologia) => (
                    <li key={patologia.id_patologia}>{patologia.nombre}</li>
                  ))}
              </ul>
            </div>
          </div>
          <Button
            color="primary"
            text="Editar Preferencias"
            onClick={() => setShowOnboarding(true)}
          />
        </div>
      ) : (
        <div className="flex flex-col gap-10 items-center">
          <p className="text-3xl text-red-600 font-Muli text-center">
            No hay preferencias para mostrar.
          </p>
          <div className="w-[350px]">
            <Button
              color="primary"
              text="Agregar Preferencias"
              onClick={() => setShowOnboarding(true)}
            />
          </div>
        </div>
      )}

      {showOnboarding && (
        <div className="fixed inset-0 h-full w-full bg-gray-900 bg-opacity-75 flex items-center justify-center z-50">
          <div className="bg-white h-full p-8 rounded-lg w-full relative flex items-center justify-center">
            <OnBoarding onComplete={handleOnboardingComplete} />
          </div>
        </div>
      )}
    </section>
  );
};

export default EditPreferences;
