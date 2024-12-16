import React, { useEffect, useState } from "react";
import OnBoarding from "./OnBoarding";
import Loader from "./Loader";
import Button from "./Button";

const questions = [
  {
    title: "¿Qué tipo de modalidad prefieres?",
    options: [
      { label: "Online", value: "Online" },
      { label: "Presencial", value: "Presencial" },
      { label: "Ambas", value: "Ambas" },
    ],
    key: "tematica",
    type: "single",
  },
  {
    title: "¿Qué esperas de tu terapia?",
    options: [
      {
        label: "Que intervengan y me guíen activamente",
        value: "Intervencion activa",
      },
      {
        label: "Que me escuchen y apoyen sin juzgarme",
        value: "Escucha y apoyo",
      },
      { label: "No estoy seguro/a", value: "Indiferente" },
    ],
    key: "corriente",
    type: "single",
  },
  {
    title:
      "¿Con qué de estas situaciones o sentimientos te identificas más en este momento?",
    options: [
      {
        label: "Me siento triste o desmotivado la mayor parte del tiempo",
        value: "Depresión",
      },
      {
        label: "Siento nerviosismo constante o me cuesta relajarme",
        value: "Ansiedad",
      },
      {
        label: "Tengo miedos intensos o ataques de pánico",
        value: "Trastorno de pánico",
      },
      {
        label: "Mis emociones cambian drásticamente de un momento a otro",
        value: "Trastorno bipolar",
      },
      {
        label: "A veces escucho o percibo cosas que otros no ven",
        value: "Esquizofrenia",
      },
      {
        label:
          "Tengo pensamientos repetitivos y me cuesta dejar de hacer ciertas cosas",
        value: "TOC (Trastorno Obsesivo Compulsivo)",
      },
      {
        label: "Me cuesta concentrarme o mantener mi atención en tareas",
        value: "TDAH (Déficit de Atención e Hiperactividad)",
      },
    ],
    key: "situacionesActuales",
    type: "multiple",
  },
  {
    title: "¿Con qué situaciones sientes que necesitas más ayuda?",
    options: [
      {
        label: "Dificultad para enfrentar cambios o pérdidas en mi vida",
        value: "Duelo patológico",
      },
      {
        label: "Siento miedo extremo en lugares abiertos o llenos de gente",
        value: "Agorafobia",
      },
      {
        label: "Me cuesta conectar con otras personas o confiar en ellas",
        value: "Trastornos de apego",
      },
      {
        label: "A veces siento que no soy yo mismo o que mi entorno es irreal",
        value: "Trastorno de despersonalización",
      },
    ],
    key: "necesidadesAyuda",
    type: "multiple",
  },
  {
    title: "¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?",
    options: [
      {
        label: "Sentirme más tranquilo/a y en control de mis emociones",
        value: "Ansiedad",
      },
      {
        label: "Dejar de sentirme atrapado/a en pensamientos negativos",
        value: "Depresión",
      },
      {
        label: "Mejorar mi relación conmigo mismo/a o con los demás",
        value: "Trastornos de apego",
      },
      { label: "Superar un miedo o una experiencia difícil", value: "Fobias" },
    ],
    key: "objetivosMejorar",
    type: "multiple",
  },
];

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

  const getLabelForValue = (key, value) => {
    const question = questions.find((q) => q.key === key);
    if (!question) return null;

    // Si es una lista separada por comas, procesa cada valor
    if (Array.isArray(value)) {
      return value
        .map((v) => {
          const option = question.options.find((o) => o.value === v);
          return option ? option.label : v;
        })
        .join(", ");
    }

    const option = question.options.find((o) => o.value === value);
    return option ? option.label : value;
  };
  if (loading) {
    return <Loader />;
  }

  return (
    <section className="flex flex-col justify-center items-center pt-[120px] pb-[70px]">
      {preferences ? (
        <div className="flex flex-col p-8 w-[600px] bg-white rounded-lg shadow-md gap-5">
          <h1 className="text-3xl font-bold font-Muli text-center text-greenPsique">
            Editar Preferencias
          </h1>
          <div className="flex flex-col gap-[20px] text-[20px]">
            <div className="flex flex-col gap-5">
              <p className="text-[25px]">
                <strong>Preguntas y Respuestas:</strong>
              </p>
              <ul className="list-disc pl-8 mt-2">
                {preferences.respuestas &&
                  preferences.respuestas.map((respuesta, index) => (
                    <li key={index}>
                      <strong>{respuesta.pregunta}:</strong>
                      <ul className="pl-4 list-disc">
                        {respuesta.respuesta === "sinrespuesta" ? (
                          <li>Prefiero no responder</li>
                        ) : (
                          respuesta.respuesta
                            .split(", ")
                            .map((item, subIndex) => (
                              <li key={`${index}-${subIndex}`}>
                                {item.trim()}
                              </li>
                            ))
                        )}
                      </ul>
                    </li>
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
