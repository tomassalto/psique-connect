import { useState, useEffect } from "react";
import { toastService } from "../services/toastService";
import Loader from "./Loader";
import Button from "./Button";

const MisSesiones = () => {
  const [sesiones, setSesiones] = useState([]);
  const [psicologos, setPsicologos] = useState({});
  const [loading, setLoading] = useState(true);
  const [selectedPsicologo, setSelectedPsicologo] = useState(null);
  const [historialSesiones, setHistorialSesiones] = useState([]);
  const [loadingHistorial, setLoadingHistorial] = useState(false);
  const [showModal, setShowModal] = useState(false);
  const [processingPayment, setProcessingPayment] = useState(false);

  // Fetch sesiones initially
  useEffect(() => {
    fetchSesiones();
  }, []);

  const fetchSesiones = async () => {
    try {
      const response = await fetch("http://127.0.0.1:8000/api/mis-sesiones", {
        headers: {
          Authorization: `Bearer ${localStorage.getItem("token")}`,
        },
      });
      const data = await response.json();
      setSesiones(data);
      await fetchPsicologosData(data);
    } catch (error) {
      toastService.error("Error al cargar las sesiones");
    } finally {
      setLoading(false);
    }
  };

  const fetchPsicologosData = async () => {
    try {
      const response = await fetch("http://127.0.0.1:8000/api/mis-psicologos", {
        headers: {
          Authorization: `Bearer ${localStorage.getItem("token")}`,
        },
      });
      const data = await response.json();
      setPsicologos(data);
    } catch (error) {
      toastService.error("Error al cargar los psicologos");
    } finally {
      setLoading(false);
    }
  };

  const fetchHistorialSesiones = async (matriculaPsicologo) => {
    setLoadingHistorial(true);
    try {
      const sesionesHistorial = sesiones.filter(
        (sesion) => sesion.matricula_psicologo === matriculaPsicologo
      );
      setHistorialSesiones(sesionesHistorial);
    } catch (error) {
      toastService.error("Error al cargar el historial de sesiones");
    } finally {
      setLoadingHistorial(false);
    }
  };

  const handleOpenModal = async (psicologo) => {
    setSelectedPsicologo(psicologo);
    setShowModal(true);
    await fetchHistorialSesiones(psicologo.matricula);
  };

  if (loading) return <Loader />;

  const handlePago = async (idSesion) => {
    setProcessingPayment(true);
    try {
      const response = await fetch("http://127.0.0.1:8000/api/crear-pago", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${localStorage.getItem("token")}`,
        },
        body: JSON.stringify({ id_sesion: idSesion }),
      });

      const data = await response.json();

      if (data.error) {
        toastService.error(data.error);
        return;
      }

      if (!data.init_point) {
        toastService.error("Error: No se pudo obtener el link de pago");
        return;
      }

      window.location.href = data.init_point;
    } catch (error) {
      toastService.error("Error al procesar el pago");
      console.error(error);
    } finally {
      setProcessingPayment(false);
    }
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

  return (
    <div className="flex flex-col gap-[30px] justify-center items-center pt-[60px] pb-[70px]">
      <h2 className="text-3xl font-Muli text-center font-bold mb-6 text-greenPsique">
        Mis Sesiones
      </h2>
      {!loading && Object.keys(psicologos).length === 0 ? (
        <div className="flex flex-col justify-center items-center w-full">
          <p className="text-3xl text-red-600 font-Muli text-center mb-6">
            No tienes sesiones aún.
          </p>
          <img src="../../../images/without_data/pic.png"></img>
        </div>
      ) : (
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {psicologos.map((psicologo) => (
            <div
              key={psicologo.matricula}
              className="border rounded-lg p-4 shadow-sm hover:shadow-md transition-shadow"
            >
              <h3 className="font-semibold text-lg mb-2">
                Psicólogo: {psicologo.nombre} {psicologo.apellido}
              </h3>
              <button
                onClick={() => handleOpenModal(psicologo)}
                className="mt-4 bg-greenPsique text-white px-4 py-2 rounded hover:bg-opacity-90"
              >
                Ver Historial de Sesiones
              </button>
            </div>
          ))}
        </div>
      )}
      {showModal && selectedPsicologo && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4">
          <div className="bg-white rounded-lg p-6 w-[600px] h-[500px] flex flex-col">
            <div className="flex-none">
              <h3 className="text-2xl font-bold mb-4 text-center font-Muli">
                Historial de Sesiones -{" "}
                <span className="text-greenPsique">
                  {selectedPsicologo.nombre} {selectedPsicologo.apellido}
                </span>
              </h3>
            </div>

            <div className="flex-1 overflow-y-auto min-h-0">
              {loadingHistorial ? (
                <div className="h-full flex items-center justify-center">
                  <Loader />
                </div>
              ) : (
                <div className="space-y-4 pr-2">
                  {historialSesiones.map((sesion) => (
                    <div
                      key={sesion.id_sesion}
                      className="border rounded p-4 bg-white"
                    >
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
                      <div className="flex gap-2">
                        {!sesion.pago && !sesion.cancelado ? (
                          <Button
                            text="Pagar Sesion"
                            color="primary"
                            onClick={() => handlePago(sesion.id_sesion)}
                            className="bg-greenPsique text-white px-4 py-2 rounded"
                            disabled={processingPayment}
                          />
                        ) : null}
                        {sesion.pago && sesion.comprobante_path ? (
                          <Button
                            text="Comprobante"
                            onClick={() => verComprobante(sesion.id_sesion)}
                            className="bg-gray-500 text-white px-4 py-2 rounded hover:bg-gray-600"
                          />
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

export default MisSesiones;
