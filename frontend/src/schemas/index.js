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
