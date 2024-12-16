import React from "react";
import { useState, useEffect } from "react";
import { useFormik } from "formik";
import { editPsychologist } from "../schemas/index";
import Button from "./Button";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

const FormEditPsychologist = ({ user, setEditMode, onBack }) => {
  const [codigoPostales, setCodigoPostales] = useState([]);
  const [tematicas, setTematicas] = useState([]);
  const [patologias, setPatologias] = useState([]);
  const [selectedPatologias, setSelectedPatologias] = useState(
    user.patologias ? user.patologias.map((p) => p.id_patologia) : []
  );
  const [corrientes, setCorrientes] = useState([]);

  const handleBack = () => {
    onBack();
  };

  useEffect(() => {
    const fetchData = async () => {
      try {
        const [codPostRes, temRes, patRes, corrRes] = await Promise.all([
          fetch("http://127.0.0.1:8000/api/localidades"),
          fetch("http://127.0.0.1:8000/api/tematicas"),
          fetch("http://127.0.0.1:8000/api/patologias"),
          fetch("http://127.0.0.1:8000/api/corrientes"),
        ]);

        setCodigoPostales(await codPostRes.json());
        setTematicas(await temRes.json());
        setPatologias(await patRes.json());
        setCorrientes(await corrRes.json());
      } catch (error) {
        console.error("Error fetching data", error);
      }
    };
    fetchData();
  }, []);

  const formik = useFormik({
    initialValues: {
      nombre: user.nombre || "",
      apellido: user.apellido || "",
      email: user.email || "",
      matricula: user.matricula || "",
      telefono: user.telefono || "",
      foto: user.foto || "",
      genero: user.genero || "",
      fecha_nacimiento: user.fecha_nacimiento
        ? new Date(user.fecha_nacimiento).toISOString().split("T")[0]
        : "",
      promedio: null,
      codigo_postal: user.codigo_postal || "",
      precio: user.precio || "",
      id_tematica: user.id_tematica || "",
      patologias: user.patologias
        ? user.patologias.map((p) => p.id_patologia)
        : [],
      id_corriente: user.id_corriente || "",
    },
    validationSchema: editPsychologist,
    onSubmit: async (values) => {
      try {
        const token = localStorage.getItem("token");
        const formData = new FormData();
        Object.keys(values).forEach((key) => {
          if (key === "foto") {
            if (values.foto instanceof File) {
              // Solo agrega la foto si es un archivo nuevo
              formData.append(key, values.foto);
            }
          } else if (key === "patologias") {
            // Agregar las patologías como un array
            values.patologias.forEach((id) =>
              formData.append("patologias[]", id)
            );
          } else {
            // Agregar otros campos normalmente
            formData.append(key, values[key] === null ? "" : values[key]);
          }
        });
        console.log(formData);
        const response = await fetch(
          "http://127.0.0.1:8000/api/update-patient",
          {
            method: "POST",
            headers: {
              Authorization: `Bearer ${token}`,
            },
            body: formData,
          }
        );
        if (response.status === 201) {
          toast.success("¡Datos modificados con éxito!", {
            position: "bottom-center",
            autoClose: 3000,
            hideProgressBar: false,
            closeOnClick: true,
            pauseOnHover: true,
            draggable: true,
            progress: undefined,
            theme: "light",
          });

          setTimeout(() => {
            window.location = "/perfil";
          }, 3000);
        } else {
          toast.error("Error al modificar los datos. Intenta de nuevo.", {
            position: "bottom-center",
            autoClose: 5000,
            hideProgressBar: false,
            closeOnClick: true,
            pauseOnHover: true,
            draggable: true,
            progress: undefined,
            theme: "light",
          });
        }
      } catch (error) {
        console.error(error);
        alert("Error al actualizar el perfil.");
      }
    },
  });

  return (
    <div className="flex flex-col items-center w-[340px] sm:w-[590px] lg:w-[990px] xl:w-[980px] mac:w-[1040px] hd:w-[1036px] fullhd:w-[1120px]">
      <form
        onSubmit={formik.handleSubmit}
        className="flex flex-col w-[340px] rounded-[10px] shadow-md sm:w-[590px] lg:w-[990px]"
      >
        <div className="flex flex-col gap-[15px] rounded-t-[10px] items-center p-5 bg-[#C8E5C6] lg:items-start lg:px-[60px]">
          <h1 className="text-2xl font-Nobile text-[#3b3b3b]">
            Modificar mis datos
          </h1>
          <p className="text-[14px] font-Muli text-center">
            Te pedimos que completes tus datos nuevamente
          </p>
        </div>
        <div className="flex flex-col lg:flex-row lg:justify-between px-[25px] py-[30px] lg:px-[30px] lg:gap-10">
          <div className="flex w-full sm:w-[540px] lg:w-[417px]">
            <div className="flex flex-col  lg:gap-y-[15px]">
              <div className="flex flex-col gap-[2px] w-[290px] sm:w-[540px] lg:w-[417px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Matrícula:
                </p>
                <input
                  type="number"
                  id="matricula"
                  placeholder="Matrícula:"
                  name="matricula"
                  value={formik.values.matricula}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                  className={`h-[50px] border-b-[1px] border-[#75b781] placeholder:font-Muli lg:w-[417px] ${
                    formik.touched.matricula && formik.errors.matricula
                      ? "border-[#E50505]"
                      : ""
                  }`}
                />
                {formik.touched.matricula && formik.errors.matricula ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.matricula}
                  </div>
                ) : null}
              </div>
              <div className="flex flex-col gap-[2px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Nombre:
                </p>
                <input
                  type="text"
                  placeholder="Nombre:"
                  name="nombre"
                  id="nombre"
                  value={formik.values.nombre}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                  className={`h-[50px] border-b-[1px] border-[#75b781] placeholder:font-Muli lg:w-[417px] ${
                    formik.touched.nombre && formik.errors.nombre
                      ? "border-[#E50505]"
                      : ""
                  }`}
                />
                {formik.touched.nombre && formik.errors.nombre ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins ">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.nombre}
                  </div>
                ) : null}
              </div>
              <div className="flex flex-col gap-[2px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Apellido:
                </p>
                <input
                  type="text"
                  placeholder="Apellido:"
                  name="apellido"
                  id="apellido"
                  value={formik.values.apellido}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                  className={`h-[50px] border-b-[1px] border-[#75b781] placeholder:font-Muli lg:w-[417px] ${
                    formik.touched.apellido && formik.errors.apellido
                      ? "border-[#E50505]"
                      : ""
                  }`}
                />
                {formik.touched.apellido && formik.errors.apellido ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins ">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.apellido}
                  </div>
                ) : null}
              </div>
              <div className="flex flex-col gap-[2px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Teléfono:
                </p>
                <input
                  type="text"
                  placeholder="Teléfono:"
                  name="telefono"
                  id="telefono"
                  value={formik.values.telefono}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                  className={`h-[50px] border-b-[1px] border-[#75b781] placeholder:font-Muli lg:w-[417px] ${
                    formik.touched.telefono && formik.errors.telefono
                      ? "border-[#E50505]"
                      : ""
                  }`}
                />
                {formik.touched.telefono && formik.errors.telefono ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins ">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.telefono}
                  </div>
                ) : null}
              </div>
              <div className="flex flex-col gap-[2px]">
                <div className="flex flex-col gap-5">
                  <p className="text-greenPsique text-[16px] font-bold">
                    Foto de perfil:
                  </p>
                  <div>
                    <input
                      type="file"
                      id="foto"
                      name="foto"
                      accept=".jpg,.jpeg,.png"
                      onChange={(event) => {
                        const file = event.currentTarget.files[0];
                        formik.setFieldValue("foto", file);
                      }}
                      className={`mb-2 items-center ${
                        formik.touched.foto && formik.errors.foto
                          ? "border-red-500"
                          : ""
                      }`}
                    />
                    {formik.touched.foto && formik.errors.foto && (
                      <div className="text-red-500 text-sm">
                        {formik.errors.foto}
                      </div>
                    )}
                    {formik.values.foto &&
                    typeof formik.values.foto === "string" ? (
                      <div className="mt-2">
                        <p className="font-bold">Vista previa foto actual:</p>
                        <img
                          src={
                            user.foto.startsWith("../../storage")
                              ? `http://127.0.0.1:8000/storage/${user.foto.replace(
                                  "../../storage/app/public/",
                                  ""
                                )}`
                              : `http://127.0.0.1:8000/storage/${user.foto}`
                          }
                          alt="Vista previa"
                          className="max-w-[200px] max-h-[200px] object-cover rounded"
                        />
                      </div>
                    ) : (
                      <>
                        {formik.values.foto &&
                        typeof formik.values.foto === "string" ? (
                          <div className="mt-2">
                            <p className="font-bold">
                              Vista previa foto actual:
                            </p>
                            <img
                              src={`http://127.0.0.1:8000/storage/${formik.values.foto}`}
                              alt="Vista previa"
                              className="max-w-[200px] max-h-[200px] object-cover rounded"
                            />
                          </div>
                        ) : (
                          formik.values.foto && (
                            <div className="mt-2">
                              <p className="font-bold">
                                Vista previa de imagen a subir:
                              </p>
                              <img
                                src={URL.createObjectURL(formik.values.foto)}
                                alt="Vista previa"
                                className="max-w-[200px] max-h-[200px] object-cover rounded"
                              />
                            </div>
                          )
                        )}
                      </>
                    )}
                  </div>
                </div>
              </div>
              <div className="flex flex-col gap-[2px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Género:
                </p>
                <select
                  id="genero"
                  name="genero"
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                  value={formik.values.genero}
                  className={`h-[50px] border-b-[1px] border-[#75b781] placeholder:font-Muli lg:w-[417px] ${
                    formik.touched.genero && formik.errors.genero
                      ? "border-[#E50505]"
                      : ""
                  }`}
                >
                  <option value="" label="Selecciona un género" />
                  <option value="Masculino">Masculino</option>
                  <option value="Femenino">Femenino</option>
                </select>
                {formik.touched.genero && formik.errors.genero ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins ">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.genero}
                  </div>
                ) : null}
              </div>
              <div className="flex flex-col gap-[2px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Fecha de nacimiento:
                </p>
                <input
                  type="date"
                  id="fecha_nacimiento"
                  name="fecha_nacimiento"
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                  value={formik.values.fecha_nacimiento || ""}
                  className={`h-[50px] border-b-[1px] border-[#75b781] placeholder:font-Muli lg:w-[417px] ${
                    formik.touched.fecha_nacimiento &&
                    formik.errors.fecha_nacimiento
                      ? "border-[#E50505]"
                      : ""
                  }`}
                />
                {formik.touched.fecha_nacimiento &&
                formik.errors.fecha_nacimiento ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins ">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.fecha_nacimiento}
                  </div>
                ) : null}
              </div>
              <div className="flex flex-col gap-[2px] lg:w-[417px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Localidad:
                </p>
                <select
                  name="codigo_postal"
                  id="codigo_postal"
                  value={formik.values.codigo_postal}
                  onChange={(e) => {
                    formik.setFieldValue(
                      "codigo_postal",
                      Number(e.target.value)
                    );
                  }}
                  onBlur={formik.handleBlur}
                  className="block h-[50px] border-b-[1px] border-[#75b781]"
                >
                  <option value="">Selecciona un código postal</option>
                  {codigoPostales.map((cp) => (
                    <option key={cp.codigo_postal} value={cp.codigo_postal}>
                      {cp.nombre}
                    </option>
                  ))}
                </select>
                {formik.touched.codigo_postal && formik.errors.codigo_postal ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins ">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.codigo_postal}
                  </div>
                ) : null}
              </div>
              <div className="flex flex-col gap-[2px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Precio por hora:
                </p>
                <input
                  type="number"
                  id="precio"
                  name="precio"
                  placeholder="Ejemplo: 500.00"
                  value={formik.values.precio}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                  className={`h-[50px] border-b-[1px] border-[#75b781] placeholder:font-Muli lg:w-[417px] ${
                    formik.touched.precio && formik.errors.precio
                      ? "border-[#E50505]"
                      : ""
                  }`}
                />
                {formik.touched.precio && formik.errors.precio ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.precio}
                  </div>
                ) : null}
              </div>
              <div className="flex flex-col gap-[2px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Temática:
                </p>
                <select
                  id="id_tematica"
                  name="id_tematica"
                  value={formik.values.id_tematica}
                  onChange={(e) => {
                    formik.setFieldValue("id_tematica", Number(e.target.value));
                  }}
                  onBlur={formik.handleBlur}
                  className="h-[50px] border-b-[1px] border-[#75b781]"
                >
                  <option value="">Selecciona una temática</option>
                  {tematicas.map((tematica) => (
                    <option
                      key={tematica.id_tematica}
                      value={tematica.id_tematica}
                    >
                      {tematica.nombre}
                    </option>
                  ))}
                </select>
                {formik.touched.id_tematica && formik.errors.id_tematica ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins ">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.id_tematica}
                  </div>
                ) : null}
              </div>
              <div className="flex flex-col gap-[2px]">
                <p className="text-greenPsique text-[16px] font-bold">
                  Corriente:
                </p>
                <select
                  name="id_corriente"
                  id="id_corriente"
                  value={formik.values.id_corriente}
                  onChange={(e) => {
                    formik.setFieldValue(
                      "id_corriente",
                      Number(e.target.value)
                    );
                  }}
                  onBlur={formik.handleBlur}
                  className="h-[50px] border-b-[1px] border-[#75b781]"
                >
                  <option value="">Selecciona una corriente</option>
                  {corrientes.map((corriente) => (
                    <option
                      key={corriente.id_corriente}
                      value={corriente.id_corriente}
                    >
                      {corriente.nombre}
                    </option>
                  ))}
                </select>
                {formik.touched.id_corriente && formik.errors.id_corriente ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins ">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.id_corriente}
                  </div>
                ) : null}
              </div>

              <div className="flex flex-col gap-[2px]">
                <p className="text-greenPsique text-[16px] font-bold">Email:</p>
                <input
                  type="email"
                  placeholder="Email:"
                  id="email"
                  name="email"
                  className={`h-[50px] border-b-[1px] border-[#75b781] placeholder:font-Muli lg:w-[417px] ${
                    formik.touched.email && formik.errors.email
                      ? "border-[#E50505]"
                      : ""
                  }`}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                  value={formik.values.email}
                />
                {formik.touched.email && formik.errors.email ? (
                  <div className="flex gap-1 text-[#E50505] text-[13px] font-poppins ">
                    <img
                      src="/icons/form/error.svg"
                      width={18}
                      height={18}
                      alt="error"
                    />
                    {formik.errors.email}
                  </div>
                ) : null}
              </div>
            </div>
          </div>
          <div className="flex flex-col gap-y-[15px]">
            <div className="flex flex-col gap-[2px]">
              <p className="text-greenPsique text-[16px] font-bold">
                Patologías que trata:
              </p>
              <div className="grid grid-cols-2 gap-4">
                {patologias.map((patologia) => (
                  <div
                    key={patologia.id_patologia}
                    className="flex items-center"
                  >
                    <input
                      type="checkbox"
                      id={`patologia-${patologia.id_patologia}`}
                      name="patologias"
                      value={patologia.id_patologia}
                      checked={selectedPatologias.includes(
                        patologia.id_patologia
                      )}
                      onChange={(e) => {
                        const value = Number(e.target.value);
                        setSelectedPatologias((prev) =>
                          e.target.checked
                            ? [...prev, value]
                            : prev.filter((id) => id !== value)
                        );
                        formik.setFieldValue(
                          "patologias",
                          e.target.checked
                            ? [...selectedPatologias, value]
                            : selectedPatologias.filter((id) => id !== value)
                        );
                      }}
                      className="mr-2"
                    />
                    <label htmlFor={`patologia-${patologia.id_patologia}`}>
                      {patologia.nombre}
                    </label>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>
        <div className="flex justify-between lg:justify-between lg:gap-5 w-full px-[25px] py-[30px] lg:px-[60px]">
          <div className="w-[120px] sm:w-[200px] lg:w-[417px]">
            <Button
              text="Modificar datos"
              color="primary"
              disabled={formik.isSubmitting || !formik.isValid}
              type="submit"
            />
          </div>
          <div className="w-[120px] sm:w-[200px] lg:w-[417px]">
            <Button text="Volver" color="secondary" onClick={handleBack} />
          </div>
        </div>
        <ToastContainer className="!bottom-10" />
      </form>
    </div>
  );
};

export default FormEditPsychologist;
