import React, { useState, useEffect } from "react";

const OnBoarding = ({ onComplete }) => {
  const [currentStep, setCurrentStep] = useState(0);
  const [patologias, setPatologias] = useState([]);
  const [preferences, setPreferences] = useState({
    tematica: null,
    corriente: null,
    patologias: [],
  });

  useEffect(() => {
    // Cargar las patologías desde la API
    const fetchPatologias = async () => {
      try {
        const response = await fetch("http://127.0.0.1:8000/api/patologias");
        const data = await response.json();
        setPatologias(data);
      } catch (error) {
        console.error("Error fetching patologias:", error);
      }
    };
    fetchPatologias();
  }, []);

  const questions = [
    {
      title: "¿Qué tipo de modalidad prefieres?",
      options: [
        { label: "Online", value: 1 },
        { label: "Presencial", value: 2 },
      ],
      key: "tematica",
    },
    {
      title: "¿Qué corriente psicológica prefieres?",
      options: [
        { label: "Cognitivo-conductual", value: 1 },
        { label: "Psicoanalítica", value: 2 },
        { label: "Terapia-introspectiva", value: 3 },
      ],
      key: "corriente",
    },
    {
      title: "¿Qué patología quieres tratar?",
      options: patologias.map((p) => ({
        label: p.nombre,
        value: p.id_patologia,
      })),
      key: "patologias",
      type: "multiple",
    },
  ];

  const handleOptionSelect = (value, type) => {
    const key = questions[currentStep].key;

    setPreferences((prev) => {
      if (type === "multiple") {
        const updatedPatologias = prev.patologias.includes(value)
          ? prev.patologias.filter((id) => id !== value)
          : [...prev.patologias, value];
        return { ...prev, [key]: updatedPatologias };
      }
      return { ...prev, [key]: value };
    });

    if (type === "single" && currentStep < questions.length - 1) {
      setCurrentStep((prev) => prev + 1);
    }
  };

  const handleBack = () => {
    if (currentStep > 0) {
      setCurrentStep((prev) => prev - 1);
    }
  };

  const handleSubmit = async () => {
    if (preferences.patologias.length === 0) {
      alert("Por favor, selecciona al menos una patología");
      return;
    }

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
    } catch (error) {
      console.error("Error al guardar las preferencias", error);
    }
  };

  return (
    <div className="flex flex-col gap-20">
      <h2 className="text-3xl font-bold text-center text-greenPsique">
        {questions[currentStep].title}
      </h2>

      <div className="flex flex-col gap-6">
        <div
          className={`options flex ${
            questions[currentStep].type === "multiple"
              ? "grid grid-cols-4"
              : "flex-row justify-evenly"
          } gap-4`}
        >
          {questions[currentStep].options.map((option) => (
            <div key={option.value} className="flex wrapper items-center gap-2">
              {questions[currentStep].type === "multiple" ? (
                <>
                  <input
                    type="checkbox"
                    id={`patologia-${option.value}`}
                    checked={preferences.patologias.includes(option.value)}
                    onChange={() =>
                      handleOptionSelect(option.value, "multiple")
                    }
                    className="w-4 h-4"
                  />
                  <label
                    className="text-black"
                    htmlFor={`patologia-${option.value}`}
                  >
                    {option.label}
                  </label>
                </>
              ) : (
                <button
                  onClick={() => handleOptionSelect(option.value, "single")}
                  className="bg-greenPsique px-5 py-3 w-full font-Muli rounded text-white"
                >
                  {option.label}
                </button>
              )}
            </div>
          ))}
        </div>

        <div className="flex justify-between gap-4">
          {currentStep > 0 && (
            <button
              onClick={handleBack}
              className="bg-gray-500 px-5 py-3 w-full font-Muli rounded text-white"
            >
              Atrás
            </button>
          )}

          {currentStep === questions.length - 1 && (
            <button
              onClick={handleSubmit}
              className="bg-greenPsique px-5 py-3 w-full font-Muli rounded text-white"
            >
              Guardar Preferencias
            </button>
          )}
        </div>
      </div>
    </div>
  );
};

export default OnBoarding;
