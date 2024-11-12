import Button from "./Button";

const ModalSesionesHoy = ({ sesiones, setMostrarModal }) => {
  const obtenerFechaHoy = () => {
    const hoy = new Date();
    const dia = hoy.getDate().toString().padStart(2, "0");
    const mes = (hoy.getMonth() + 1).toString().padStart(2, "0");
    const año = hoy.getFullYear();
    return `${dia}/${mes}/${año}`;
  };

  return (
    <div className="fixed inset-0 bg-gray-600 bg-opacity-75 flex items-center justify-center z-50">
      <div className="bg-white p-6 rounded-lg shadow-lg w-[35%]">
        <h2 className="text-3xl font-semibold mb-4 text-[#75B781] text-center">
          Sesiones de Hoy - {obtenerFechaHoy()}
        </h2>
        {sesiones.length ? (
          <ul>
            {sesiones.map((sesion) => (
              <li key={sesion.id_sesion} className="border-b p-2 text-black">
                <p>
                  <strong>Paciente DNI:</strong> {sesion.dni_paciente}
                </p>
                <p>
                  <strong>Hora:</strong> {sesion.hora}
                </p>
                <p>
                  <strong>Modalidad:</strong>{" "}
                  {sesion.presencial === 0 ? "Presencial" : "Virtual"}
                </p>
              </li>
            ))}
          </ul>
        ) : (
          <p>No hay sesiones programadas para hoy.</p>
        )}
        <div className="flex justify-between">
          <a href="/mi-agenda">
            <Button color="primary" text="Ver Agenda" />
          </a>
          <button
            onClick={() => setMostrarModal(false)}
            className="bg-red-500 text-white py-2 px-4 rounded h-[48px]"
          >
            Cerrar
          </button>
        </div>
      </div>
    </div>
  );
};

export default ModalSesionesHoy;
