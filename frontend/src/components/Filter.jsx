import React, { useState, useEffect } from "react";
import Button from "./Button";

const Filter = ({ onFilter, selectedFilters, setSelectedFilters }) => {
  const [searchTerm, setSearchTerm] = useState("");
  const [corrientes, setCorrientes] = useState([]);
  const [tematicas, setTematicas] = useState([]);
  const [patologias, setPatologias] = useState([]);

  const [selectedCorriente, setSelectedCorriente] = useState("");
  const [selectedTematica, setSelectedTematica] = useState("");
  const [selectedPatologia, setSelectedPatologia] = useState("");

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
        patologia: selectedPatologia,
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
          className="truncate border-[1px] border-[#75B781] p-2 h-[48px]"
        />

        <select
          value={selectedCorriente}
          onChange={(e) => setSelectedCorriente(e.target.value)}
          className="truncate border-[1px] border-[#75B781] p-2 h-[48px]"
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
          className="truncate border-[1px] border-[#75B781] p-2 h-[48px]"
        >
          <option value="">Seleccione temática</option>
          {tematicas.map((tematica) => (
            <option key={tematica.id_tematica} value={tematica.id_tematica}>
              {tematica.nombre}
            </option>
          ))}
        </select>

        <select
          value={selectedPatologia}
          onChange={(e) => setSelectedPatologia(e.target.value)}
          className="truncate border-[1px] border-[#75B781] p-2 h-[48px]"
        >
          <option value="">Seleccione patología</option>
          {patologias.map((patologia) => (
            <option key={patologia.id_patologia} value={patologia.id_patologia}>
              {patologia.nombre}
            </option>
          ))}
        </select>
        <div>
          <Button text="Buscar" color="primary" type="submit" />
        </div>
      </form>
    </div>
  );
};

export default Filter;
