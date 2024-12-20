import * as Yup from "yup";

export const registerPatientSchema = Yup.object({
  dni: Yup.string()
    .matches(/^\d{7,8}$/, "El DNI debe ser numérico y contener 7 u 8 dígitos")
    .required("DNI es requerido"),
  nombre: Yup.string()
    .matches(/^[a-zA-Z\s]+$/, "El nombre no puede contener números")
    .required("Nombre es requerido"),
  apellido: Yup.string()
    .matches(/^[a-zA-Z\s]+$/, "El apellido no puede contener números")
    .required("Apellido es requerido"),
  email: Yup.string()
    .required("El email es obligatorio")
    .matches(
      /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
      "Email inválido"
    ),
  password: Yup.string()
    .min(8, "La contraseña debe tener al menos 8 caracteres")
    .required("Contraseña es requerida"),
  password_confirmation: Yup.string()
    .oneOf([Yup.ref("password"), null], "Las contraseñas deben coincidir")
    .required("Confirmar contraseña es requerido"),
});

export const registerPsychologistSchema = Yup.object({
  matricula: Yup.string()
    .matches(
      /^\d{4,10}$/,
      "La matrícula debe ser numérica y contener entre 4 y 10 dígitos"
    )
    .required("Matrícula es requerida"),
  nombre: Yup.string()
    .matches(/^[a-zA-Z\s]+$/, "El nombre no puede contener números")
    .required("Nombre es requerido"),
  apellido: Yup.string()
    .matches(/^[a-zA-Z\s]+$/, "El apellido no puede contener números")
    .required("Apellido es requerido"),
  telefono: Yup.string()
    .matches(/^\d{10}$/, "El teléfono debe tener 10 dígitos")
    .required("Teléfono es requerido"),
  foto: Yup.mixed()
    .nullable()
    .test("fileSize", "El archivo es demasiado grande", (value) => {
      if (!value) return true;
      return value.size <= 2 * 1024 * 1024;
    })
    .test("fileType", "Formato de imagen no válido", (value) => {
      if (!value) return true;
      const supportedFormats = ["image/jpg", "image/jpeg", "image/png"];
      return supportedFormats.includes(value.type);
    }),
  genero: Yup.string()
    .oneOf(["Masculino", "Femenino"], "Género es requerido")
    .required("Género es requerido"),
  fecha_nacimiento: Yup.date()
    .required("Fecha de nacimiento es requerida")
    .nullable()
    .test("es-mayor-de-edad", "Debes tener al menos 18 años", (value) => {
      if (!value) return false;
      const hoy = new Date();
      const fechaNacimiento = new Date(value);
      const edad = hoy.getFullYear() - fechaNacimiento.getFullYear();
      const mes = hoy.getMonth() - fechaNacimiento.getMonth();
      const dia = hoy.getDate() - fechaNacimiento.getDate();
      return edad > 18 || (edad === 18 && (mes > 0 || (mes === 0 && dia >= 0)));
    }),
  codigo_postal: Yup.string().required("Código postal es requerido"),
  precio: Yup.number()
    .required("El precio es requerido")
    .min(0, "El precio no puede ser negativo")
    .max(100000, "El precio no puede ser mayor a 10000"),
  id_tematica: Yup.string().required("Temática es requerida"),
  patologias: Yup.array()
    .min(1, "Debe seleccionar al menos una patología")
    .required("Debe seleccionar al menos una patología"),
  id_corriente: Yup.string().required("Corriente psicológica es requerida"),
  email: Yup.string()
    .email("Email inválido")
    .required("El email es obligatorio"),
  password: Yup.string()
    .min(8, "La contraseña debe tener al menos 8 caracteres")
    .required("Contraseña es requerida"),
  password_confirmation: Yup.string()
    .oneOf([Yup.ref("password"), null], "Las contraseñas deben coincidir")
    .required("Confirmar contraseña es requerido"),
});

export const loginSchema = Yup.object({
  email: Yup.string()
    .required("El email es obligatorio")
    .matches(
      /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
      "Email inválido"
    ),
  password: Yup.string()
    .min(8, "La contraseña debe tener al menos 8 caracteres")
    .required("Contraseña es requerida"),
});

export const editPsychologist = Yup.object({
  matricula: Yup.string()
    .matches(
      /^\d{4,10}$/,
      "La matrícula debe ser numérica y contener entre 4 y 10 dígitos"
    )
    .required("Matrícula es requerida"),
  nombre: Yup.string()
    .matches(/^[a-zA-Z\s]+$/, "El nombre no puede contener números")
    .required("Nombre es requerido"),
  apellido: Yup.string()
    .matches(/^[a-zA-Z\s]+$/, "El apellido no puede contener números")
    .required("Apellido es requerido"),
  telefono: Yup.string()
    .matches(/^\d{10}$/, "El teléfono debe tener 10 dígitos")
    .required("Teléfono es requerido"),
  foto: Yup.mixed()
    .nullable()
    .test("fileType", "Formato de imagen no válido", (value) => {
      if (!value || typeof value === "string") return true; // Permitir fotos existentes o vacías
      const supportedFormats = ["image/jpg", "image/jpeg", "image/png"];
      return supportedFormats.includes(value.type);
    })
    .test("fileSize", "El archivo es demasiado grande", (value) => {
      if (!value || typeof value === "string") return true; // Permitir fotos existentes o vacías
      return value.size <= 2 * 1024 * 1024; // Máximo 2MB
    }),
  genero: Yup.string()
    .oneOf(["Masculino", "Femenino"], "Género es requerido")
    .required("Género es requerido"),
  fecha_nacimiento: Yup.date()
    .required("Fecha de nacimiento es requerida")
    .nullable(),
  codigo_postal: Yup.string().required("Código postal es requerido"),
  id_tematica: Yup.string().required("Temática es requerida"),
  patologias: Yup.array()
    .min(1, "Debe seleccionar al menos una patología")
    .required("Debe seleccionar al menos una patología"),
  id_corriente: Yup.string().required("Corriente psicológica es requerida"),
  email: Yup.string()
    .email("Email inválido")
    .required("El email es obligatorio"),
});

export const editPatient = Yup.object({
  dni: Yup.string()
    .matches(/^\d{7,8}$/, "El DNI debe ser numérico y contener 7 u 8 dígitos")
    .required("DNI es requerido"),
  nombre: Yup.string()
    .matches(/^[a-zA-Z\s]+$/, "El nombre no puede contener números")
    .required("Nombre es requerido"),
  apellido: Yup.string()
    .matches(/^[a-zA-Z\s]+$/, "El apellido no puede contener números")
    .required("Apellido es requerido"),
  email: Yup.string()
    .required("El email es obligatorio")
    .matches(
      /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
      "Email inválido"
    ),
});

export const mensajeSchema = Yup.object({
  mensaje: Yup.string()
    .required("El mensaje no puede estar vacío")
    .min(1, "El mensaje no puede estar vacío"),
});

export const ratingSchema = Yup.object({
  rating: Yup.number()
    .min(0.5, "La calificación mínima es 0.5")
    .max(5, "La calificación máxima es 5")
    .required("La calificación es requerida"),
  comment: Yup.string()
    .required("El comentario no puede estar vacío")
    .min(1, "El comentario no puede estar vacío"),
});
