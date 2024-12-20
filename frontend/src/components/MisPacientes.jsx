import { useState, useEffect } from "react";
import { toastService } from "../services/toastService";
import Loader from "./Loader";
import Button from "./Button";

const MisPacientes = () => {
  const [pacientes, setPacientes] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedPaciente, setSelectedPaciente] = useState(null);
  const [loadingSesiones, setLoadingSesiones] = useState(false);
  const [sesiones, setSesiones] = useState([]);
  const [showModal, setShowModal] = useState(false);

  useEffect(() => {
    fetchPacientes();
  }, []);

  const fetchPacientes = async () => {
    try {
      const response = await fetch("http://127.0.0.1:8000/api/mis-pacientes", {
        headers: {
          Authorization: `Bearer ${localStorage.getItem("token")}`,
        },
      });
      const data = await response.json();
      setPacientes(data);
    } catch (error) {
      toastService.error("Error al cargar los pacientes");
    } finally {
      setLoading(false);
    }
  };

  const fetchSesionesPaciente = async (dni) => {
    setLoadingSesiones(true);
    try {
      const response = await fetch(
        `http://127.0.0.1:8000/api/sesiones-paciente/${dni}`,
        {
          headers: {
            Authorization: `Bearer ${localStorage.getItem("token")}`,
          },
        }
      );
      const data = await response.json();
      setSesiones(data);
    } catch (error) {
      toastService.error("Error al cargar las sesiones");
    } finally {
      setLoadingSesiones(false);
    }
  };

  const handleOpenModal = async (paciente) => {
    setSelectedPaciente(paciente);
    setShowModal(true);
    await fetchSesionesPaciente(paciente.dni);
  };

  const verComprobante = async (idSesion) => {
    try {
      const response = await fetch(
        `http://127.0.0.1:8000/api/comprobante/${idSesion}`,
        {
          headers: {
            Authorization: `Bearer ${localStorage.getItem("token")}`,
          },
        }
      );

      if (!response.ok) {
        throw new Error("No se pudo obtener el comprobante");
      }

      const blob = await response.blob();
      const url = window.URL.createObjectURL(blob);
      window.open(url, "_blank");
    } catch (error) {
      toastService.error("Error al obtener el comprobante");
    }
  };

  if (loading) return <Loader />;

  return (
    <div className="flex flex-col gap-[30px] justify-center items-center pt-[60px] pb-[70px]">
      <h2 className="text-3xl font-Muli text-center font-bold mb-6 text-greenPsique">
        Mis Pacientes
      </h2>
      {!loading && pacientes.length === 0 ? (
        <div className="flex flex-col justify-center items-center w-full">
          <p className="text-3xl text-red-600 font-Muli text-center">
            Aún no tienes pacientes asignados.
          </p>
          <img src="../../../images/without_data/pic.png"></img>
        </div>
      ) : (
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {pacientes.map((paciente) => (
            <div
              key={paciente.dni}
              className="border rounded-lg p-4 shadow-sm hover:shadow-md transition-shadow"
            >
              <h3 className="font-semibold text-lg mb-2">
                {paciente.nombre} {paciente.apellido}
              </h3>
              <p className="text-gray-600">DNI: {paciente.dni}</p>
              <p className="text-gray-600">Email: {paciente.email}</p>
              <button
                onClick={() => handleOpenModal(paciente)}
                className="mt-4 bg-greenPsique text-white px-4 py-2 rounded hover:bg-opacity-90"
              >
                Ver Historial
              </button>
            </div>
          ))}
        </div>
      )}
      {showModal && selectedPaciente && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4">
          <div className="bg-white rounded-lg p-6 w-[600px] h-[500px] flex flex-col">
            <div className="flex-none">
              <h3 className="text-2xl font-bold mb-4 text-center font-Muli">
                Historial de Sesiones -{" "}
                <span className="text-greenPsique">
                  {selectedPaciente.nombre} {selectedPaciente.apellido}
                </span>
              </h3>
            </div>

            <div className="flex-1 overflow-y-auto min-h-0">
              {loadingSesiones ? (
                <div className="h-full flex items-center justify-center">
                  <Loader />
                </div>
              ) : (
                <div className="space-y-4 pr-2">
                  {sesiones.map((sesion) => (
                    <div
                      key={sesion.id_sesion}
                      className="border rounded p-4 bg-white"
                    >
                      <div className="flex justify-between items-center">
                        <div className="flex-1">
                          <p className="font-semibold">
                            Fecha: {new Date(sesion.fecha).toLocaleDateString()}
                          </p>
                          <p>Hora: {sesion.hora}</p>
                          <p>
                            Estado:{" "}
                            {sesion.cancelado
                              ? "Cancelada"
                              : sesion.pago
                              ? "Pagada"
                              : "Pendiente de pago"}
                          </p>
                          <p>
                            Modalidad:{" "}
                            {sesion.presencial ? "Presencial" : "Virtual"}
                          </p>
                          {sesion.fecha_pago && (
                            <p>
                              Fecha de pago:{" "}
                              {new Date(sesion.fecha_pago).toLocaleString()}
                            </p>
                          )}
                        </div>
                        {sesion.pago && sesion.comprobante_path ? (
                          <div className="w-[170px]">
                            <Button
                              text="Comprobante"
                              color="secondary"
                              onClick={() => verComprobante(sesion.id_sesion)}
                              className="w-full text-sm py-1"
                            />
                          </div>
                        ) : null}
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </div>

            <div className="flex mt-4 pt-4 border-t border-gray-200 justify-end">
              <button
                onClick={() => setShowModal(false)}
                className="w-[100px] bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600"
              >
                Cerrar
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default MisPacientes;
