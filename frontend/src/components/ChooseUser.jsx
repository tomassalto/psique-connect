import React, { useState } from "react";
import FormPatient from "./FormPatient";

const Registro = () => {
  const [tipoRegistro, setTipoRegistro] = useState(null);

  return (
    <section className="flex flex-col justify-center items-center pt-[120px] pb-[70px]">
      <div className="flex flex-col items-center gap-[50px] w-[340px] sm:w-[580px] lg:w-[851px] xl:w-[980px] mac:w-[1040px] hd:w-[1036px] fullhd:w-[1120px]">
        {!tipoRegistro && (
          <>
            <h1 className="text-3xl text-center">¿Cómo querés registrarte?</h1>
            <div className="flex space-x-4">
              <button
                onClick={() => setTipoRegistro("paciente")}
                className="px-4 py-2 bg-blue-500 text-white rounded"
              >
                Paciente
              </button>
            </div>
          </>
        )}

        {tipoRegistro === "paciente" && (
          <FormPatient onBack={() => setTipoRegistro(null)} />
        )}
      </div>
    </section>
  );
};

export default Registro;
