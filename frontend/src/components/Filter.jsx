import { useState, useEffect } from "react";
import Button from "./Button";

const Filter = ({
  onFilter,
  selectedFilters,
  setSelectedFilters,
  clearAllFilters,
}) => {
  const [searchTerm, setSearchTerm] = useState(
    selectedFilters.searchTerm || ""
  );
  const [corrientes, setCorrientes] = useState([]);
  const [tematicas, setTematicas] = useState([]);
  const [patologias, setPatologias] = useState([]);
  const [selectedPatologias, setSelectedPatologias] = useState(
    selectedFilters.patologias || []
  );
  const [showPatologiasModal, setShowPatologiasModal] = useState(false);

  useEffect(() => {
    if (clearAllFilters) {
      setSearchTerm("");
      setSelectedPatologias([]);
      setSelectedFilters({
        corriente: "",
        tematica: "",
        patologia: "",
        searchTerm: "",
        genero: "",
        minAge: "",
        maxAge: "",
        minPrice: "",
        maxPrice: "",
      });
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

  const handleSearch = (e) => {
    e.preventDefault();

    const filters = {
      search: searchTerm,
      corriente: selectedFilters.corriente,
      tematica: selectedFilters.tematica,
      patologias: selectedPatologias.join(","),
      genero: selectedFilters.genero,
      minAge: selectedFilters.minAge,
      maxAge: selectedFilters.maxAge,
      minPrice: selectedFilters.minPrice,
      maxPrice: selectedFilters.maxPrice,
    };

    onFilter(filters);
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setSelectedFilters((prevFilters) => ({
      ...prevFilters,
      [name]: value,
    }));
  };

  const handlePatologiaChange = (patologiaId) => {
    setSelectedPatologias((prev) =>
      prev.includes(patologiaId)
        ? prev.filter((id) => id !== patologiaId)
        : [...prev, patologiaId]
    );
  };

  return (
    <div className="filter-section flex items-center justify-center">
      <form
        onSubmit={handleSearch}
        className="flex justify-center w-min items-center gap-4 flex-wrap lg:gap-6 sm:flex-col"
      >
        <input
          type="text"
          name="searchTerm"
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          placeholder="Buscar psicólogo por nombre o matrícula"
          className="truncate border-[1px] border-greenPsique p-2 h-[48px] w-full"
        />

        <select
          name="corriente"
          value={selectedFilters.corriente || ""}
          onChange={handleInputChange}
          className="truncate border-[1px] border-greenPsique p-2 h-[48px] w-full"
        >
          <option value="">Seleccione corriente</option>
          {corrientes.map((corriente) => (
            <option key={corriente.id_corriente} value={corriente.id_corriente}>
              {corriente.nombre}
            </option>
          ))}
        </select>

        <select
          name="tematica"
          value={selectedFilters.tematica || ""}
          onChange={handleInputChange}
          className="truncate border-[1px] border-greenPsique p-2 h-[48px] w-full"
        >
          <option value="">Seleccione temática</option>
          {tematicas.map((tematica) => (
            <option key={tematica.id_tematica} value={tematica.id_tematica}>
              {tematica.nombre}
            </option>
          ))}
        </select>
        <div className="flex flex-col lg:flex-row gap-2">
          <input
            type="number"
            name="minAge"
            placeholder="Edad mínima"
            value={selectedFilters.minAge || ""}
            onChange={handleInputChange}
            className="truncate border-[1px] border-greenPsique p-2 h-[48px] w-full"
          />
          <input
            type="number"
            name="maxAge"
            placeholder="Edad máxima"
            value={selectedFilters.maxAge || ""}
            onChange={handleInputChange}
            className="truncate border-[1px] border-greenPsique p-2 h-[48px] w-full"
          />
        </div>
        <div className="flex flex-col lg:flex-row gap-2">
          <input
            type="number"
            name="minPrice"
            placeholder="Precio mínimo"
            value={selectedFilters.minPrice || ""}
            onChange={handleInputChange}
            className="truncate border-[1px] border-greenPsique p-2 h-[48px] w-full"
          />
          <input
            type="number"
            name="maxPrice"
            placeholder="Precio máximo"
            value={selectedFilters.maxPrice || ""}
            onChange={handleInputChange}
            className="truncate border-[1px] border-greenPsique p-2 h-[48px] w-full"
          />
        </div>
        <select
          name="genero"
          value={selectedFilters.genero || ""}
          onChange={handleInputChange}
          className="truncate border-[1px] border-greenPsique p-2 h-[48px] w-full"
        >
          <option value="">Seleccione género</option>
          <option value="Masculino">Masculino</option>
          <option value="Femenino">Femenino</option>
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
