import React, { useState } from "react";

const OnBoarding = ({ onComplete }) => {
  const [currentStep, setCurrentStep] = useState(0);
  const [preferences, setPreferences] = useState({
    tematica: null,
    corriente: null,
    patologia: null,
  });

  const questions = [
    {
      title: "¿Qué tipo de modalidad prefieres?",
      options: [
        { label: "Online", value: 1 }, // id_tematica = 1
        { label: "Presencial", value: 2 }, // id_tematica = 2
      ],
      key: "tematica",
    },
    {
      title: "¿Qué corriente psicológica prefieres?",
      options: [
        { label: "Cognitivo-conductual", value: 1 }, // id_corriente = 1
        { label: "Psicoanalítica", value: 2 }, // id_corriente = 2
        { label: "Terapia-introspectiva", value: 3 }, // id_corriente = 2
      ],
      key: "corriente",
    },
    {
      title: "¿Qué patología quieres tratar?",
      options: [
        { label: "Depresión", value: 1 }, // id_patologia = 1
        { label: "Suicidio", value: 2 }, // id_patologia = 2
        { label: "Drogas", value: 3 }, // id_patologia = 2
      ],
      key: "patologia",
    },
  ];

  const handleOptionSelect = (value) => {
    const key = questions[currentStep].key;

    // Actualiza las preferencias antes de avanzar
    setPreferences((prev) => {
      const updatedPreferences = { ...prev, [key]: value };

      // Imprime las preferencias actualizadas
      console.log("Preferencias actualizadas:", updatedPreferences);

      // Si estás en la última pregunta, llama a handleSubmit
      if (currentStep === questions.length - 1) {
        handleSubmit(updatedPreferences); // Pasar las preferencias actualizadas
      }

      return updatedPreferences;
    });

    // Avanza a la siguiente pregunta si no es la última
    if (currentStep < questions.length - 1) {
      setCurrentStep((prev) => prev + 1);
    }
  };

  const handleBack = () => {
    if (currentStep > 0) {
      setCurrentStep((prev) => prev - 1);
    }
  };

  const handleSubmit = async (preferences) => {
    try {
      const token = localStorage.getItem("token");

      if (!token) {
        window.location.href = "/login";
        return;
      }

      await fetch("http://127.0.0.1:8000/api/guardar_preferencias_y_match", {
        method: "POST",
        body: JSON.stringify(preferences), // Usa las preferencias pasadas
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
      <h2 className="text-3xl font-bold text-center text-[#75B781]">
        {questions[currentStep].title}
      </h2>
      <div className="options flex gap-10 h-[62px]">
        {questions[currentStep].options.map((option) => (
          <button
            key={option.value}
            onClick={() => handleOptionSelect(option.value)}
            className="bg-[#75B781] px-5 py-3 w-full h-full font-Muli rounded flex items-center text-[16px] justify-center sm:px-5 text-white text-lg"
          >
            {option.label}
          </button>
        ))}
        {currentStep > 0 && (
          <button
            onClick={handleBack}
            className="bg-red-500 w-[150px] text-white py-2 px-6 rounded hover:bg-red-600 h-full"
          >
            Atrás
          </button>
        )}
      </div>
    </div>
  );
};

export default OnBoarding;
