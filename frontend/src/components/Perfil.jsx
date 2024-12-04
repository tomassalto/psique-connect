import { useEffect, useState } from "react";
import FormEditPatient from "./FormEditPatient";
import FormEditPsychologist from "./FormEditPsychologist";
import Loader from "./Loader";
import Button from "./Button";

const Perfil = () => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [editMode, setEditMode] = useState(false);

  const fetchProfile = async () => {
    try {
      const token = localStorage.getItem("token");
      const response = await fetch("http://127.0.0.1:8000/api/perfil", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      if (!response.ok) {
        throw new Error("No se pudieron obtener los datos del perfil.");
      }

      const data = await response.json();
      setUser(data);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchProfile();
  }, []);

  const formatDate = (dateString) => {
    const [year, month, day] = dateString.split("-");
    return `${day}/${month}/${year}`; // Cambiar el formato a dd/mm/yyyy
  };

  return (
    <section className="flex flex-col justify-center items-center py-[120px]">
      <div className="flex flex-col items-center gap-[50px] w-[340px] sm:w-[580px] lg:w-[851px] xl:w-[980px] mac:w-[1040px] hd:w-[1036px] fullhd:w-[1120px]">
        {loading ? (
          <Loader />
        ) : (
          <>
            {user ? (
              <div>
                {editMode ? (
                  user.rol === "psicologo" ? (
                    <FormEditPsychologist
                      user={user}
                      setEditMode={setEditMode}
                      onBack={() => setEditMode(false)}
                    />
                  ) : user.rol === "paciente" ? (
                    <FormEditPatient
                      user={user}
                      setEditMode={setEditMode}
                      onBack={() => setEditMode(false)}
                    />
                  ) : (
                    <p>Rol no reconocido.</p>
                  )
                ) : (
                  <div>
                    {user.rol === "psicologo" ? (
                      <div className="flex flex-col gap-[30px]">
                        <h1 className="text-greenPsique text-4xl text-center font-Muli">
                          Perfil del Psicólogo
                        </h1>
                        <div className="flex justify-center">
                          {user.foto && (
                            <img
                              src={
                                user.foto.startsWith("../../storage")
                                  ? `http://127.0.0.1:8000/storage/${user.foto.replace(
                                      "../../storage/app/public/",
                                      ""
                                    )}`
                                  : `http://127.0.0.1:8000/storage/${user.foto}`
                              }
                              alt={`Foto de ${user.nombre}`}
                              className="h-[500px] w-full object-cover rounded-lg"
                            />
                          )}
                        </div>
                        <p className="text-[20px]">
                          <strong>Nombre:</strong> {user.nombre}
                        </p>
                        <p className="text-[20px]">
                          <strong>Apellido:</strong> {user.apellido}
                        </p>
                        <p className="text-[20px]">
                          <strong>Fecha de nacimiento:</strong>{" "}
                          {formatDate(user.fecha_nacimiento)}
                        </p>
                        <p className="text-[20px]">
                          <strong>Genero:</strong> {user.genero}
                        </p>
                        <p className="text-[20px]">
                          <strong>Email:</strong> {user.email}
                        </p>
                        <p className="text-[20px]">
                          <strong>Matrícula:</strong> {user.matricula}
                        </p>
                        <p className="text-[20px]">
                          <strong>Teléfono:</strong> {user.telefono}
                        </p>
                        <p className="text-[20px]">
                          <strong>Promedio:</strong> {user.promedio}
                        </p>
                        <div className="text-[20px]">
                          <strong>Patologías que trata:</strong>
                          <ul className="list-disc pl-8 mt-2">
                            {user.patologias &&
                              user.patologias.map((patologia) => (
                                <li key={patologia.id_patologia}>
                                  {patologia.nombre}
                                </li>
                              ))}
                          </ul>
                        </div>
                      </div>
                    ) : user.rol === "paciente" ? (
                      <div className="flex flex-col gap-[30px]">
                        <h1 className="text-greenPsique text-4xl text-center font-Muli">
                          Perfil del Paciente
                        </h1>
                        <p className="text-[20px]">
                          <strong>Nombre:</strong> {user.nombre}
                        </p>
                        <p className="text-[20px]">
                          <strong>Apellido:</strong> {user.apellido}
                        </p>
                        <p className="text-[20px]">
                          <strong>Email:</strong> {user.email}
                        </p>
                        <p className="text-[20px]">
                          <strong>DNI:</strong> {user.dni}
                        </p>
                      </div>
                    ) : (
                      <p>Rol no reconocido.</p>
                    )}
                    <div className="flex items-center justify-center mt-10">
                      <Button
                        color="primary"
                        text="Editar Perfil"
                        onClick={() => setEditMode(true)}
                      />
                    </div>
                  </div>
                )}
              </div>
            ) : (
              <p className="text-3xl text-red-600 font-Muli text-center">
                No se pudo cargar el perfil.
              </p>
            )}
          </>
        )}
      </div>
    </section>
  );
};

export default Perfil;
