import { useState } from "react";
import { toastService } from "../services/toastService";

const OnBoarding = ({ onComplete }) => {
  const [currentStep, setCurrentStep] = useState(0);
  const [preferences, setPreferences] = useState({
    tematica: null,
    corriente: null,
    situacionesActuales: [],
    necesidadesAyuda: [],
    objetivosMejorar: [],
  });

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
      title: "¿Qué rango de edad prefieres que tenga tu psicólogo?",
      options: [
        { label: "Entre 18 y 35 años", value: "18-35" },
        { label: "Entre 36 y 45 años", value: "36-45" },
        { label: "Entre 46 y 65 años", value: "46-65" },
        { label: "Me da igual", value: "Indiferente" },
      ],
      key: "edadPsicologo",
      type: "single",
    },
    {
      title: "¿De qué género prefieres que sea tu psicólogo?",
      options: [
        { label: "Femenino", value: "Femenino" },
        { label: "Masculino", value: "Masculino" },
        { label: "Me da igual", value: "Indiferente" },
      ],
      key: "generoPsicologo",
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
          label:
            "A veces siento que no soy yo mismo o que mi entorno es irreal",
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
        {
          label: "Superar un miedo o una experiencia difícil",
          value: "Fobias",
        },
      ],
      key: "objetivosMejorar",
      type: "multiple",
    },
    {
      title: "¿Desea finalizar?",
      options: [],
      key: "confirmacion",
      type: "confirm",
    },
  ];

  const handleOptionSelect = (value, type) => {
    const key = questions[currentStep].key;

    setPreferences((prev) => {
      const updatedPreferences =
        type === "multiple"
          ? {
              ...prev,
              [key]: prev[key]?.includes(value)
                ? prev[key].filter((item) => item !== value)
                : [...(prev[key] || []), value],
            }
          : { ...prev, [key]: value };

      console.log("Preferencias actualizadas:", updatedPreferences);

      if (type === "single" && currentStep < questions.length - 1) {
        setCurrentStep((prev) => prev + 1);
      }

      return updatedPreferences;
    });
  };

  const handleNext = () => {
    const key = questions[currentStep].key;

    if (
      questions[currentStep].type === "multiple" &&
      (!preferences[key] || preferences[key].length === 0)
    ) {
      toastService.error("¡Seleccioná al menos una opción!");
      return;
    }

    setCurrentStep((prev) => prev + 1);
  };

  const handleSkip = () => {
    const key = questions[currentStep].key;

    setPreferences((prev) => ({
      ...prev,
      [key]: ["sinrespuesta"],
    }));

    setCurrentStep((prev) => prev + 1);
  };

  const handleBack = () => {
    if (currentStep > 0) {
      setCurrentStep((prev) => prev - 1);
    }
  };

  const handleSubmit = async () => {
    console.log("Preferencias finales:", preferences);
    try {
      const token = localStorage.getItem("token");
      await fetch("http://127.0.0.1:8000/api/guardar_preferencias_y_match", {
        method: "POST",
        body: JSON.stringify(preferences),
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
      });
      onComplete();
      window.location.href = "/match-psicologo";
    } catch (error) {
      console.error("Error al guardar las preferencias", error);
    }
  };

  return (
    <div className="flex flex-col gap-20 z-50">
      <h2 className="text-3xl font-bold text-center text-greenPsique">
        {questions[currentStep].title}
      </h2>

      <div className="flex flex-col gap-6 w-full">
        {questions[currentStep].type !== "confirm" && (
          <div
            className={`options flex ${
              questions[currentStep].type === "multiple"
                ? "flex-col justify-center items-center"
                : "flex-row justify-evenly"
            } gap-4`}
          >
            {questions[currentStep].options.map((option) => (
              <button
                key={option.value}
                onClick={() =>
                  handleOptionSelect(option.value, questions[currentStep].type)
                }
                className={`px-4 py-2 rounded-lg border border-greenPsique text-center ${
                  Array.isArray(preferences[questions[currentStep].key]) &&
                  preferences[questions[currentStep].key]?.includes(
                    option.value
                  )
                    ? "bg-greenPsique text-white"
                    : "bg-white border-gray-300 text-gray-800"
                }  ${
                  questions[currentStep].type === "multiple"
                    ? "w-[900px] h-[50px] text-[18px] "
                    : "w-[250px] h-[80px] font-semibold text-[18px]"
                }`}
              >
                {option.label}
              </button>
            ))}
          </div>
        )}

        <div className="flex justify-between gap-4 mt-6">
          {currentStep > 0 && (
            <button
              onClick={handleBack}
              className="bg-gray-500 px-5 py-3 w-full font-Muli rounded text-white"
            >
              Atrás
            </button>
          )}

          {questions[currentStep].type !== "confirm" && (
            <>
              {questions[currentStep].type === "multiple" && (
                <button
                  onClick={handleSkip}
                  className="bg-gray-400 px-5 py-3 w-full font-Muli rounded text-white"
                >
                  Prefiero no responder
                </button>
              )}
              <button
                onClick={handleNext}
                className="bg-greenPsique px-5 py-3 w-full font-Muli rounded text-white"
              >
                Siguiente
              </button>
            </>
          )}

          {questions[currentStep].type === "confirm" && (
            <>
              <button
                onClick={handleSubmit}
                className="bg-greenPsique px-5 py-3 w-full font-Muli rounded text-white"
              >
                Finalizar
              </button>
            </>
          )}
        </div>
      </div>
    </div>
  );
};

export default OnBoarding;
