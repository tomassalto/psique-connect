import React, { useEffect, useState } from "react";
import Filter from "./Filter";

const PsychologistCard = () => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [psychologists, setPsychologists] = useState([]);
  const [psicologos, setPsicologos] = useState([]);
  const [filteredPsicologos, setFilteredPsicologos] = useState([]);
  const [selectedFilters, setSelectedFilters] = useState({
    corriente: "",
    tematica: "",
    patologia: "",
    searchTerm: "",
  });

  useEffect(() => {
    const token = localStorage.getItem("token");

    if (!token) {
      window.location.href = "/login";
      return;
    }

    fetch("http://127.0.0.1:8000/api/perfil", {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    })
      .then((response) => {
        if (!response.ok) {
          throw new Error("Error fetching user profile");
        }
        return response.json();
      })
      .then((data) => {
        console.log("Data received from API:", data);
        if (data.nombre) {
          setUser(data);
        } else {
          console.error("User data is not in the expected format:", data);
        }
      })
      .catch((error) => {
        console.error("Error fetching user data:", error);
      })
      .finally(() => setLoading(false));

    const fetchPsychologists = async () => {
      try {
        const token = localStorage.getItem("token");
        const currency = localStorage.getItem("currency") || "ARS";
        const response = await fetch(
          `http://127.0.0.1:8000/api/psicologos?currency=${currency}`,
          {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          }
        );

        if (response.status === 403) {
          console.log(response.status);
          window.location.href = "/";
        } else if (!response.ok) {
          throw new Error("Error fetching psychologists");
        }
        const data = await response.json();
        setPsicologos(data);
        setFilteredPsicologos(data);
      } catch (error) {
        console.error("Error al fetch:", error);
      }
    };

    fetchPsychologists();
  }, []);

  const handleFilteredResults = (results) => {
    setFilteredPsicologos(results);
  };

  const clearFilters = () => {
    setSelectedFilters({
      corriente: "",
      tematica: "",
      patologia: "",
      searchTerm: "",
    });
    setFilteredPsicologos(psicologos);
  };

  return (
    <section className="flex flex-col gap-[30px] justify-center items-center pt-[120px] pb-[70px]">
      <h1 className="text-3xl font-bold text-center text-[#75B781]">
        Encontrá tu psicólogo ideal
      </h1>
      <div className="flex flex-col justify-center items-center gap-10 mac:flex-row">
        <Filter
          onFilter={handleFilteredResults}
          selectedFilters={selectedFilters}
          setSelectedFilters={setSelectedFilters}
        />

        <div className="flex justify-end">
          <button
            onClick={clearFilters}
            className="bg-red-500 w-[150px] text-white py-2 px-4 rounded hover:bg-red-600 h-[48px]"
          >
            Limpiar Filtros
          </button>
        </div>
      </div>
      <div className="flex flex-col gap-[30px] w-[340px] sm:w-[590px] lg:w-[990px] xl:w-[980px] mac:w-[1040px] hd:w-[1036px] fullhd:w-[1120px]">
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredPsicologos.length > 0
            ? filteredPsicologos.map((psicologo) => (
                <div
                  key={psicologo.matricula}
                  className="p-4 border border-[#75B781] rounded-lg shadow-md hover:shadow-lg transition-shadow"
                >
                  <p>
                    <strong>Nombre:</strong> {psicologo.nombre}
                  </p>
                  <p>
                    <strong>Apellido:</strong> {psicologo.apellido}
                  </p>
                  <p>
                    <strong>Email:</strong> {psicologo.email}
                  </p>
                  <p>
                    <strong>Matrícula:</strong> {psicologo.matricula}
                  </p>
                  <p>
                    <strong>Teléfono:</strong> {psicologo.telefono}
                  </p>
                  <p>
                    <strong>Patología:</strong> {psicologo.patologia?.nombre}
                  </p>
                  <p>
                    <strong>Corriente:</strong> {psicologo.corriente?.nombre}
                  </p>
                  <p>
                    <strong>Temática:</strong> {psicologo.tematica?.nombre}
                  </p>
                  <p>
                    <strong>Precio:</strong> $ {psicologo.precio}
                  </p>
                </div>
              ))
            : null}{" "}
        </div>

        {filteredPsicologos.length === 0 && (
          <p className="text-2xl text-red-600 font-Muli text-center">
            No se encontraron psicólogos.
          </p>
        )}
      </div>
    </section>
  );
};

export default PsychologistCard;
