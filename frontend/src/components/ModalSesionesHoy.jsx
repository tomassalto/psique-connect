import SessionList from "./SessionList";
import Button from "./Button";

const ModalSesionesHoy = ({ setMostrarModal }) => (
  <div className="fixed inset-0 bg-gray-600 bg-opacity-75 flex items-center justify-center z-50">
    <div className="bg-white p-6 rounded-lg shadow-lg w-[55%] flex flex-col gap-5">
      <SessionList variant="modal" />
      <div className="flex justify-between">
        <a href="/mi-agenda">
          <Button color="primary" text="Ver Agenda" />
        </a>
        <button
          onClick={() => setMostrarModal(false)}
          className="bg-red-500 text-white py-2 px-4 font-Muli rounded h-[48px]"
        >
          Cerrar
        </button>
      </div>
    </div>
  </div>
);

export default ModalSesionesHoy;
