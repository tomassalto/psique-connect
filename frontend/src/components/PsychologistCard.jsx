import { useEffect, useState } from "react";
import Loader from "./Loader";
import MessageModal from "./MessageModal";
import Filter from "./Filter";
import Button from "./Button";

const PsychologistCard = () => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [psicologos, setPsicologos] = useState([]);
  const [filteredPsicologos, setFilteredPsicologos] = useState([]);
  const [selectedPsicologo, setSelectedPsicologo] = useState(null);
  const [showModal, setShowModal] = useState(false);
  const [clearTrigger, setClearTrigger] = useState(false);
  const [selectedFilters, setSelectedFilters] = useState({
    corriente: "",
    tematica: "",
    patologia: "",
    searchTerm: "",
  });

  const clearFilters = () => {
    setSelectedFilters({
      corriente: "",
      tematica: "",
      patologia: "",
      searchTerm: "",
    });
    setClearTrigger((prev) => !prev); // Toggle para forzar la actualización
    setFilteredPsicologos(psicologos);
  };

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
        if (data.nombre) {
          setUser(data);
        } else {
          console.error("User data is not in the expected format:", data);
        }
      })
      .catch((error) => {
        console.error("Error fetching user data:", error);
      });

    const fetchPsychologists = async () => {
      try {
        const response = await fetch("http://127.0.0.1:8000/api/psicologos", {
          headers: { Authorization: `Bearer ${token}` },
        });

        if (response.status === 403) {
          window.location.href = "/";
        } else if (!response.ok) {
          throw new Error("Error fetching psychologists");
        }
        const data = await response.json();
        setPsicologos(data);
        setFilteredPsicologos(data);
      } catch (error) {
        console.error("Error al fetch:", error);
      } finally {
        setLoading(false);
      }
    };

    fetchPsychologists();
  }, []);

  const handleFilteredResults = (results) => {
    setFilteredPsicologos(results);
  };

  const handleContactar = (psicologo) => {
    setSelectedPsicologo(psicologo);
    setShowModal(true);
  };

  return (
    <section className="flex flex-col gap-[30px] justify-center items-center pt-[120px] pb-[70px]">
      {loading ? (
        <Loader />
      ) : (
        <>
          <h1 className="text-3xl font-bold text-center text-greenPsique font-Muli">
            Encontrá tu psicólogo ideal
          </h1>
          <div className="flex flex-col justify-center items-center gap-10 mac:flex-row">
            <Filter
              onFilter={handleFilteredResults}
              selectedFilters={selectedFilters}
              setSelectedFilters={setSelectedFilters}
              clearAllFilters={clearTrigger}
            />
            <div className="flex justify-end">
              <button
                onClick={clearFilters}
                className="bg-red-500 w-[150px] font-Muli text-white py-2 px-4 rounded hover:bg-red-600 h-[48px]"
              >
                Limpiar Filtros
              </button>
            </div>
          </div>
          <div className="flex flex-col gap-[30px] w-[340px] sm:w-[590px] lg:w-[990px] xl:w-[980px] mac:w-[1040px] hd:w-[1036px] fullhd:w-[1120px]">
            {psicologos.length === 0 ? (
              <div className="flex justify-center items-center w-full">
                <p className="text-3xl text-red-600 font-Muli text-center">
                  No hay psicólogos registrados en el sistema.
                </p>
              </div>
            ) : filteredPsicologos.length > 0 ? (
              <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
                {filteredPsicologos.map((psicologo) => (
                  <div
                    key={psicologo.matricula}
                    className="flex flex-col p-4 border border-greenPsique rounded-lg shadow-md hover:shadow-lg transition-shadow gap-4 justify-between"
                  >
                    <div>
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
                        <strong>Patologías:</strong>{" "}
                        {psicologo.patologias.map((p) => p.nombre).join(", ")}
                      </p>
                      <p>
                        <strong>Corriente:</strong>{" "}
                        {psicologo.corriente?.nombre}
                      </p>
                      <p>
                        <strong>Temática:</strong> {psicologo.tematica?.nombre}
                      </p>
                    </div>
                    <div className="flex flex-col gap-5">
                      <Button
                        onClick={() =>
                          (window.location.href = `/calificaciones/${psicologo.matricula}`)
                        }
                        color="secondary"
                        text="Ver Calificaciones"
                      />
                      <Button
                        text="Contactar"
                        color="primary"
                        onClick={() => handleContactar(psicologo)}
                      />
                    </div>
                  </div>
                ))}
              </div>
            ) : (
              <div className="flex justify-center items-center w-full">
                <p className="text-3xl text-red-600 font-Muli text-center">
                  No se encontraron psicólogos con los filtros de búsqueda
                  actuales.
                </p>
              </div>
            )}
          </div>
          <MessageModal
            showModal={showModal}
            onClose={() => setShowModal(false)}
            matriculaPsicologo={selectedPsicologo?.matricula}
            nombrePsicologo={selectedPsicologo?.nombre || ""}
          />
        </>
      )}
    </section>
  );
};

export default PsychologistCard;
