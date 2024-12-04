import { useEffect, useState } from "react";
import Loader from "./Loader";
import Filter from "./Filter";
import Button from "./Button";

const PsychologistCard = () => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [psicologos, setPsicologos] = useState([]);
  const [selectedFilters, setSelectedFilters] = useState({
    corriente: "",
    tematica: "",
    patologia: "",
    searchTerm: "",
    genero: "",
    minAge: "",
    maxAge: "",
  });

  // Fetch profile
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

    fetchPsychologists({});
  }, []);

  // Fetch psychologists from backend
  const fetchPsychologists = async (filters = {}) => {
    try {
      const token = localStorage.getItem("token");
      const sanitizedFilters = prepareFilters(filters);
      const queryParams = new URLSearchParams(sanitizedFilters).toString();

      const response = await fetch(
        `http://127.0.0.1:8000/api/psicologos/search?${queryParams}`,
        {
          headers: { Authorization: `Bearer ${token}` },
        }
      );

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

  // Helper to clear filters
  const clearFilters = () => {
    setSelectedFilters({
      corriente: "",
      tematica: "",
      patologia: "",
      searchTerm: "",
      genero: "",
      minAge: "",
      maxAge: "",
    });
    fetchPsychologists({});
  };

  // Calculate age from date of birth
  const calculateAge = (dateOfBirth) => {
    const birthDate = new Date(dateOfBirth);
    const today = new Date();
    let age = today.getFullYear() - birthDate.getFullYear();
    const monthDifference = today.getMonth() - birthDate.getMonth();

    if (
      monthDifference < 0 ||
      (monthDifference === 0 && today.getDate() < birthDate.getDate())
    ) {
      age--;
    }

    return age;
  };
  const prepareFilters = (filters) => {
    const sanitizedFilters = {};

    Object.entries(filters).forEach(([key, value]) => {
      if (value !== undefined && value !== null && value !== "") {
        sanitizedFilters[key] = value;
      }
    });

    return sanitizedFilters;
  };

  return (
    <section className="flex flex-col lg:flex-row pt-[120px] pb-[70px] lg:px-4">
      {loading ? (
        <Loader />
      ) : (
        <>
          <div className="w-[250px] mac:w-[300px] flex flex-col gap-4 sticky top-24 h-[900px] overflow-y-auto bg-white shadow-lg">
            <Filter
              onFilter={(filters) => {
                const sanitizedFilters = prepareFilters(filters);
                setSelectedFilters(sanitizedFilters);
                fetchPsychologists(sanitizedFilters);
              }}
              selectedFilters={selectedFilters}
              setSelectedFilters={setSelectedFilters}
            />
            <div className="flex justify-center">
              <button
                onClick={clearFilters}
                className="bg-red-500 w-[150px] font-Muli text-white py-2 px-4 rounded hover:bg-red-600 h-[48px]"
              >
                Limpiar Filtros
              </button>
            </div>
          </div>
          <div className="flex flex-col items-center w-full">
            {psicologos.length === 0 ? (
              <p className="text-3xl text-red-600 font-Muli text-center">
                No hay psicólogos registrados en el sistema.
              </p>
            ) : (
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 mac:gap-x-[50px]">
                {psicologos.map((psicologo) => (
                  <div
                    key={psicologo.matricula}
                    className="flex flex-col p-4 border border-greenPsique rounded-lg shadow-md hover:shadow-lg transition-shadow gap-4 justify-center sm:w-[400px] lg:w-[350px] mac:w-[500px]"
                  >
                    <div className="flex flex-col gap-2">
                      <img
                        src={
                          psicologo.foto.startsWith("../../storage")
                            ? `http://127.0.0.1:8000/storage/${psicologo.foto.replace(
                                "../../storage/app/public/",
                                ""
                              )}`
                            : `http://127.0.0.1:8000/storage/${psicologo.foto}`
                        }
                        alt={`Foto de ${psicologo.nombre}`}
                        className="h-[500px] w-full object-cover rounded-lg"
                      />
                      <div>
                        <p>
                          <strong>Nombre:</strong> {psicologo.nombre}
                        </p>
                        <p>
                          <strong>Apellido:</strong> {psicologo.apellido}
                        </p>

                        <p>
                          <strong>Edad:</strong>{" "}
                          {calculateAge(psicologo.fecha_nacimiento)} años
                        </p>
                        <p>
                          <strong>Género:</strong> {psicologo.genero}
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
                          <strong>Temática:</strong>{" "}
                          {psicologo.tematica?.nombre}
                        </p>
                      </div>
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
            )}
          </div>
        </>
      )}
    </section>
  );
};

export default PsychologistCard;
