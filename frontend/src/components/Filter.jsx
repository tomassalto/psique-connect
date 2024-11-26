import React, { useState, useEffect } from "react";
import Button from "./Button";

const Filter = ({
  onFilter,
  selectedFilters,
  setSelectedFilters,
  clearAllFilters,
}) => {
  const [searchTerm, setSearchTerm] = useState("");
  const [corrientes, setCorrientes] = useState([]);
  const [tematicas, setTematicas] = useState([]);
  const [patologias, setPatologias] = useState([]);
  const [showPatologiasModal, setShowPatologiasModal] = useState(false);
  const [selectedPatologias, setSelectedPatologias] = useState([]);

  const [selectedCorriente, setSelectedCorriente] = useState("");
  const [selectedTematica, setSelectedTematica] = useState("");
  const [selectedPatologia, setSelectedPatologia] = useState("");

  const handleClearFilters = () => {
    setSearchTerm("");
    setSelectedCorriente("");
    setSelectedTematica("");
    setSelectedPatologias([]);

    setSelectedFilters({
      corriente: "",
      tematica: "",
      patologia: "",
      searchTerm: "",
    });

    handleSearch(new Event("submit"));
  };
  useEffect(() => {
    if (clearAllFilters) {
      setSearchTerm("");
      setSelectedCorriente("");
      setSelectedTematica("");
      setSelectedPatologias([]);
    }
  }, [clearAllFilters]);
  useEffect(() => {
    const fetchOptions = async () => {
      try {
        const corrienteResponse = await fetch(
          "http://127.0.0.1:8000/api/corrientes"
        );
        const tematicaResponse = await fetch(
          "http://127.0.0.1:8000/api/tematicas"
        );
        const patologiaResponse = await fetch(
          "http://127.0.0.1:8000/api/patologias"
        );

        setCorrientes(await corrienteResponse.json());
        setTematicas(await tematicaResponse.json());
        setPatologias(await patologiaResponse.json());
      } catch (error) {
        console.error("Error fetching options", error);
      }
    };

    fetchOptions();
  }, []);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setSelectedFilters({
      ...selectedFilters,
      [name]: value,
    });
  };

  const handleSearch = async (e) => {
    e.preventDefault();
    const token = localStorage.getItem("token");

    if (!token) {
      window.location.href = "/login";
      return;
    }

    console.log("Valor de búsqueda:", searchTerm);
    try {
      const queryParams = new URLSearchParams({
        search: searchTerm,
        corriente: selectedCorriente,
        tematica: selectedTematica,
        patologias: selectedPatologias.join(","),
      }).toString();

      const response = await fetch(
        `http://127.0.0.1:8000/api/psicologos/search?${queryParams}`,
        {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );

      if (!response.ok) {
        throw new Error("Error al buscar psicólogos");
      }

      const data = await response.json();
      onFilter(data);
    } catch (error) {
      console.error("Error:", error);
    }
  };

  useEffect(() => {
    setSelectedCorriente(selectedFilters.corriente);
    setSelectedTematica(selectedFilters.tematica);
    setSelectedPatologia(selectedFilters.patologia);
    setSearchTerm(selectedFilters.searchTerm);
  }, [selectedFilters]);

  const handlePatologiaChange = (patologiaId) => {
    setSelectedPatologias((prev) => {
      if (prev.includes(patologiaId)) {
        return prev.filter((id) => id !== patologiaId);
      } else {
        return [...prev, patologiaId];
      }
    });
  };
  return (
    <div className="filter-section">
      <form
        onSubmit={handleSearch}
        className="flex items-center gap-10 flex-wrap justify-center"
      >
        <input
          type="text"
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          placeholder="Buscar psicólogo por nombre o matrícula"
          className="truncate border-[1px] border-greenPsique p-2 h-[48px]"
        />

        <select
          value={selectedCorriente}
          onChange={(e) => setSelectedCorriente(e.target.value)}
          className="truncate border-[1px] border-greenPsique p-2 h-[48px]"
        >
          <option value="">Seleccione corriente</option>
          {corrientes.map((corriente) => (
            <option key={corriente.id_corriente} value={corriente.id_corriente}>
              {corriente.nombre}
            </option>
          ))}
        </select>

        <select
          value={selectedTematica}
          onChange={(e) => setSelectedTematica(e.target.value)}
          className="truncate border-[1px] border-greenPsique p-2 h-[48px]"
        >
          <option value="">Seleccione temática</option>
          {tematicas.map((tematica) => (
            <option key={tematica.id_tematica} value={tematica.id_tematica}>
              {tematica.nombre}
            </option>
          ))}
        </select>

        <button
          type="button"
          onClick={() => setShowPatologiasModal(true)}
          className="truncate border-[1px] border-greenPsique p-2 h-[48px] min-w-[200px] text-left relative"
        >
          {selectedPatologias.length > 0
            ? `${selectedPatologias.length} patologías seleccionadas`
            : "Seleccionar patologías"}
        </button>

        <div>
          <Button text="Buscar" color="primary" type="submit" />
        </div>
      </form>
      {showPatologiasModal && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white p-6 rounded-lg w-[500px] max-h-[80vh] overflow-y-auto">
            <h3 className="text-xl font-bold mb-4 text-greenPsique">
              Seleccionar Patologías
            </h3>
            <div className="grid grid-cols-2 gap-4">
              {patologias.map((patologia) => (
                <div
                  key={patologia.id_patologia}
                  className="flex items-center gap-2"
                >
                  <input
                    type="checkbox"
                    id={`patologia-${patologia.id_patologia}`}
                    checked={selectedPatologias.includes(
                      patologia.id_patologia
                    )}
                    onChange={() =>
                      handlePatologiaChange(patologia.id_patologia)
                    }
                    className="w-4 h-4"
                  />
                  <label htmlFor={`patologia-${patologia.id_patologia}`}>
                    {patologia.nombre}
                  </label>
                </div>
              ))}
            </div>
            <div className="mt-6 flex justify-end gap-4">
              <button
                type="button"
                onClick={() => setShowPatologiasModal(false)}
                className="bg-gray-500 text-white px-4 py-2 rounded"
              >
                Cerrar
              </button>
              <button
                type="button"
                onClick={() => {
                  setShowPatologiasModal(false);
                }}
                className="bg-greenPsique text-white px-4 py-2 rounded"
              >
                Aplicar
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default Filter;
