-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2024 a las 03:49:49
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `psique_connect`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id_calificacion` bigint(20) UNSIGNED NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `matricula_psicologo` int(11) NOT NULL,
  `valor` double NOT NULL,
  `comentario` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`id_calificacion`, `dni_paciente`, `matricula_psicologo`, `valor`, `comentario`, `created_at`, `updated_at`) VALUES
(1, 14841318, 3504, 4.2, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:56', '2024-12-05 19:10:56'),
(2, 14841318, 3599, 2.9, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:56', '2024-12-05 19:10:56'),
(3, 14841318, 3731, 2.2, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:56', '2024-12-05 19:10:56'),
(4, 14841318, 6626, 2.4, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(5, 14841318, 7187, 1.1, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(6, 14841318, 8022, 1.6, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(7, 14841318, 9205, 1.3, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(8, 18169041, 1735, 4.4, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(9, 18169041, 3155, 1.5, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(10, 20652862, 2010, 2.2, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(11, 20652862, 5345, 3.4, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(12, 20652862, 7187, 3.4, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(13, 20652862, 7811, 3.9, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(14, 22778682, 1735, 1.8, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(15, 22778682, 2270, 3.5, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(16, 22778682, 2439, 2.3, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(17, 22778682, 3731, 4.7, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(18, 22778682, 6110, 4.2, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(19, 22778682, 8022, 1.1, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(20, 23173609, 9726, 1.7, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(21, 24722794, 3504, 2.8, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(22, 24722794, 3731, 3.6, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(23, 24722794, 7297, 4.1, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(24, 24722794, 7562, 4.7, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(25, 34044873, 6259, 2.5, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(26, 34044873, 7187, 2, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(27, 34044873, 7297, 1.2, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(28, 34044873, 7562, 3.3, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(29, 41774478, 1582, 3.8, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(30, 41774478, 3155, 4.4, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(31, 41774478, 9726, 3.5, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(32, 43822069, 7187, 3.2, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(33, 43822069, 8472, 2.7, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(34, 43822069, 9661, 3.3, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(35, 49991074, 1735, 2.8, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(36, 49991074, 6189, 1.2, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(37, 49991074, 6626, 3.6, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(38, 49991074, 7297, 1.4, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(39, 49991074, 9205, 3.1, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(40, 52345473, 3509, 3.4, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(41, 52575186, 2439, 4.4, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(42, 52575186, 3509, 1.1, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(43, 52575186, 6259, 4.9, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(44, 55302451, 3509, 2.9, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(45, 55302451, 4620, 2, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(46, 55302451, 7297, 4.1, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(47, 56002846, 2270, 1.8, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(48, 56002846, 3155, 3.1, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(49, 56002846, 3509, 2.7, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(50, 56002846, 8022, 4.5, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(51, 56002846, 8071, 4.3, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(52, 62081385, 2270, 1.9, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(53, 62081385, 4015, 3.3, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(54, 62322325, 2439, 1.4, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(55, 62322325, 4015, 1.6, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(56, 62322325, 6626, 1.9, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(57, 62322325, 7562, 4.7, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(58, 62322325, 8071, 2.7, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(59, 62322325, 9726, 1.3, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(60, 63159870, 3155, 4.9, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(61, 63159870, 5345, 2.9, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(62, 63159870, 6189, 4.8, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(63, 64323872, 1735, 3.7, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(64, 64323872, 2439, 2.3, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(65, 64323872, 4620, 3.9, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(66, 64323872, 8071, 1.7, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(67, 64323872, 9726, 2.4, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(68, 66362987, 3155, 1.2, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(69, 66362987, 6626, 1.4, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(70, 72521835, 2248, 1.6, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(71, 72521835, 3509, 2.5, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(72, 72521835, 7811, 2.2, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(73, 74642501, 3599, 4.7, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(74, 74642501, 7297, 4, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(75, 76637170, 1824, 1.3, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(76, 76637170, 6259, 3.4, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(77, 76637170, 7811, 2.4, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(78, 76637170, 8472, 4.4, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(79, 76637170, 9205, 1.3, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(80, 76637170, 9661, 4.6, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(81, 77742230, 2439, 4.9, 'Buen profesional pero a veces llega tarde a las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(82, 77742230, 5345, 4.5, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(83, 77742230, 6259, 3, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(84, 77742230, 7811, 4.1, 'Me ayudó mucho con mis problemas de ansiedad.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(85, 77742230, 8071, 1.8, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(86, 77742230, 9205, 1.1, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(87, 77756766, 3216, 2.8, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(88, 77756766, 6626, 2.8, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(89, 79171088, 3504, 3.4, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(90, 79171088, 4620, 4.9, 'Excelente profesional, muy atento y comprensivo.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(91, 79171088, 9661, 1.3, 'Muy buena experiencia terapéutica.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(92, 82037661, 7811, 4.3, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(93, 82037661, 9726, 1.1, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(94, 85439762, 7187, 1.1, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(95, 85439762, 9661, 4.7, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(96, 88110399, 2270, 3, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(97, 88110399, 6110, 4.3, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(98, 88110399, 8071, 2.2, 'Recomiendo ampliamente sus servicios.', '2024-12-05 19:10:57', '2024-12-05 19:10:57'),
(99, 89831900, 6259, 4.6, 'Me sentí muy cómodo/a durante las sesiones.', '2024-12-05 19:10:57', '2024-12-05 19:10:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corriente`
--

CREATE TABLE `corriente` (
  `id_corriente` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `corriente`
--

INSERT INTO `corriente` (`id_corriente`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Psicoanalisis', NULL, NULL),
(2, 'Humanista', NULL, NULL),
(3, 'Terapia Integral', NULL, NULL),
(4, 'Cognitivo conductual', NULL, NULL),
(5, 'Sistemica', NULL, NULL),
(6, 'Gestalt', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `id_historico` bigint(20) UNSIGNED NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `matricula_psicologo` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `codigo_postal` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`codigo_postal`, `nombre`, `created_at`, `updated_at`) VALUES
(58007010, 'Aluminé', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58007015, 'Moquehue', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58007020, 'Villa Pehuenia', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58014005, 'Aguada San Roque', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58014010, 'Añelo', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58014020, 'San Patricio del Chañar', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58021010, 'Las Coloradas', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58028010, 'Piedra del Águila', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58028020, 'Santo Tomás', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035010, 'Arroyito', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035030, 'Centenario', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035040, 'Cutral Có', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035060, 'Mari Menuco', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035070, 'Neuquén', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035090, 'Plaza Huincul', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035100, 'Plottier', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035110, 'Senillosa', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035120, 'Villa El Chocón', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035130, 'Vista Alegre Norte', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58035140, 'Vista Alegre Sur', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58042010, 'Chos Malal', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58042020, 'Tricao Malal', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58042030, 'Villa del Curi Leuvú', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58049010, 'Junín de los Andes', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58056010, 'San Martín de los Andes', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58056020, 'Villa Lago Meliquina', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58063010, 'Chorriaca', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58063020, 'Loncopué', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58070010, 'Villa La Angostura', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58070020, 'Villa Traful', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58077010, 'Andacollo', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58077020, 'Huinganco', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58077030, 'Las Ovejas', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58077040, 'Los Miches', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58077050, 'Manzano Amargo', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58077060, 'Varvarco', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58077070, 'Villa del Nahueve', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58084010, 'Caviahue', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58084020, 'Copahue', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58084030, 'El Cholar', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58084040, 'El Huecú', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58084050, 'Taquimilán', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58091010, 'Barrancas', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58091020, 'Buta Ranquil', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58091030, 'Octavio Pico', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58091040, 'Rincón de los Sauces', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58098005, 'El Sauce', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58098010, 'Paso Aguerre', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58098020, 'Picún Leufú', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58105010, 'Bajada del Agrio', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58105020, 'La Buitrera', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58105030, 'Las Lajas', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58105040, 'Quili Malal', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58112010, 'Los Catutos', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58112020, 'Mariano Moreno', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58112030, 'Ramón M. Castro', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(58112040, 'Zapala', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(5811202001, 'Covunco Centro', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(5811202002, 'Mariano Moreno', '2024-12-05 19:10:01', '2024-12-05 19:10:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `match`
--

CREATE TABLE `match` (
  `id_match` bigint(20) UNSIGNED NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `matricula_psicologo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `match`
--

INSERT INTO `match` (`id_match`, `dni_paciente`, `matricula_psicologo`, `created_at`, `updated_at`) VALUES
(1, 52345473, 1582, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(2, 52345473, 3216, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(3, 52345473, 6110, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(4, 52345473, 8472, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(5, 52345473, 2010, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(6, 79171088, 6259, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(7, 79171088, 6626, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(8, 79171088, 6189, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(9, 79171088, 8071, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(15, 22778682, 6626, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(16, 22778682, 7811, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(17, 22778682, 8472, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(18, 22778682, 1824, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(19, 22778682, 2270, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(20, 74642501, 1824, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(21, 74642501, 3504, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(22, 74642501, 4015, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(23, 74642501, 4620, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(24, 74642501, 8022, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(25, 49991074, 6626, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(26, 49991074, 1824, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(27, 49991074, 9661, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(28, 49991074, 8071, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(29, 49991074, 4015, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(30, 64323872, 7297, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(31, 64323872, 2010, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(32, 64323872, 2248, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(33, 64323872, 3155, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(34, 64323872, 5345, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(35, 82037661, 3599, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(36, 82037661, 7562, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(37, 82037661, 9205, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(38, 82037661, 3509, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(39, 82037661, 2439, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(40, 76637170, 2010, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(41, 76637170, 2248, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(42, 76637170, 3155, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(43, 76637170, 3504, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(44, 76637170, 3509, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(45, 85439762, 4015, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(46, 85439762, 4620, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(47, 85439762, 6259, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(48, 85439762, 8022, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(49, 85439762, 8071, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(50, 88110399, 7811, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(51, 88110399, 3731, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(52, 88110399, 5345, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(53, 88110399, 1582, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(54, 88110399, 6110, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(55, 72521835, 7297, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(56, 72521835, 5345, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(57, 72521835, 9726, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(58, 72521835, 1582, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(59, 72521835, 2010, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(60, 43822069, 4015, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(61, 43822069, 4620, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(62, 43822069, 8022, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(63, 43822069, 9661, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(64, 43822069, 3504, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(65, 41774478, 6189, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(66, 41774478, 3504, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(67, 41774478, 8071, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(68, 41774478, 4620, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(69, 41774478, 6259, '2024-12-05 19:10:15', '2024-12-05 19:10:15'),
(70, 20652862, 7297, NULL, NULL),
(71, 20652862, 2248, NULL, NULL),
(72, 20652862, 3155, NULL, NULL),
(73, 20652862, 9726, NULL, NULL),
(74, 20652862, 1735, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id_mensaje` bigint(20) UNSIGNED NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `matricula_psicologo` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `leido` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`id_mensaje`, `dni_paciente`, `matricula_psicologo`, `contenido`, `leido`, `created_at`, `updated_at`) VALUES
(1, 14841318, 1582, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-09 03:18:00', '2024-11-09 03:18:00'),
(2, 14841318, 8472, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-04 22:37:00', '2024-12-04 22:37:00'),
(3, 14841318, 9726, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-13 00:08:00', '2024-11-13 00:08:00'),
(4, 18169041, 6259, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-23 07:45:00', '2024-11-23 07:45:00'),
(5, 18169041, 7187, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-16 06:00:00', '2024-11-16 06:00:00'),
(6, 18169041, 7562, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-15 23:52:00', '2024-11-15 23:52:00'),
(7, 20652862, 1582, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-08 13:40:00', '2024-11-08 13:40:00'),
(8, 20652862, 3731, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-09 17:44:00', '2024-11-09 17:44:00'),
(9, 20652862, 7562, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-19 23:52:00', '2024-11-19 23:52:00'),
(10, 22778682, 1582, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-04 06:34:00', '2024-12-04 06:34:00'),
(11, 22778682, 3599, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-25 22:05:00', '2024-11-25 22:05:00'),
(12, 22778682, 7811, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-02 06:34:00', '2024-12-02 06:34:00'),
(13, 23173609, 1735, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-18 16:22:00', '2024-11-18 16:22:00'),
(14, 23173609, 3599, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-27 20:12:00', '2024-11-27 20:12:00'),
(15, 23173609, 6626, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-12 19:07:00', '2024-11-12 19:07:00'),
(16, 24722794, 6626, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-15 12:02:00', '2024-11-15 12:02:00'),
(17, 24722794, 8071, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-02 08:55:00', '2024-12-02 08:55:00'),
(18, 24722794, 9726, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-20 06:04:00', '2024-11-20 06:04:00'),
(19, 34044873, 3731, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-12 17:27:00', '2024-11-12 17:27:00'),
(20, 34044873, 9661, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-03 18:31:00', '2024-12-03 18:31:00'),
(21, 34044873, 9726, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-29 01:09:00', '2024-11-29 01:09:00'),
(22, 41774478, 6110, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-22 09:51:00', '2024-11-22 09:51:00'),
(23, 41774478, 7562, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-29 01:06:00', '2024-11-29 01:06:00'),
(24, 41774478, 9661, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-17 10:01:00', '2024-11-17 10:01:00'),
(25, 43822069, 2010, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-26 06:03:00', '2024-11-26 06:03:00'),
(26, 43822069, 3504, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-17 06:35:00', '2024-11-17 06:35:00'),
(27, 43822069, 9205, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-11 23:42:00', '2024-11-11 23:42:00'),
(28, 49991074, 2439, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-13 12:37:00', '2024-11-13 12:37:00'),
(29, 49991074, 7187, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-15 10:49:00', '2024-11-15 10:49:00'),
(30, 49991074, 8472, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-28 02:50:00', '2024-11-28 02:50:00'),
(31, 52345473, 4620, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-04 16:20:00', '2024-12-04 16:20:00'),
(32, 52345473, 7297, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-09 13:42:00', '2024-11-09 13:42:00'),
(33, 52345473, 8022, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-08 07:51:00', '2024-11-08 07:51:00'),
(34, 52575186, 3504, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-14 04:01:00', '2024-11-14 04:01:00'),
(35, 52575186, 3731, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-04 23:17:00', '2024-12-04 23:17:00'),
(36, 52575186, 6259, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-10 08:39:00', '2024-11-10 08:39:00'),
(37, 55302451, 1582, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-18 18:51:00', '2024-11-18 18:51:00'),
(38, 55302451, 6259, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-22 00:58:00', '2024-11-22 00:58:00'),
(39, 55302451, 9205, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-02 22:25:00', '2024-12-02 22:25:00'),
(40, 56002846, 2270, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-26 18:01:00', '2024-11-26 18:01:00'),
(41, 56002846, 6110, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-24 02:23:00', '2024-11-24 02:23:00'),
(42, 56002846, 8472, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-11 08:07:00', '2024-11-11 08:07:00'),
(43, 62081385, 1582, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-12 14:08:00', '2024-11-12 14:08:00'),
(44, 62081385, 6189, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-08 03:37:00', '2024-11-08 03:37:00'),
(45, 62081385, 7297, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-01 23:56:00', '2024-12-01 23:56:00'),
(46, 62322325, 3731, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-16 02:12:00', '2024-11-16 02:12:00'),
(47, 62322325, 8022, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-17 00:12:00', '2024-11-17 00:12:00'),
(48, 62322325, 8071, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-27 12:41:00', '2024-11-27 12:41:00'),
(49, 63159870, 2439, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-15 15:46:00', '2024-11-15 15:46:00'),
(50, 63159870, 3155, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-24 20:39:00', '2024-11-24 20:39:00'),
(51, 63159870, 3731, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-12 23:25:00', '2024-11-12 23:25:00'),
(52, 64323872, 2270, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-23 12:50:00', '2024-11-23 12:50:00'),
(53, 64323872, 3509, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-14 03:00:00', '2024-11-14 03:00:00'),
(54, 64323872, 8022, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-09 07:59:00', '2024-11-09 07:59:00'),
(55, 66362987, 8022, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-06 14:01:00', '2024-11-06 14:01:00'),
(56, 66362987, 8071, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-04 02:02:00', '2024-12-04 02:02:00'),
(57, 66362987, 8472, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-14 07:05:00', '2024-11-14 07:05:00'),
(58, 72521835, 1735, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-09 17:09:00', '2024-11-09 17:09:00'),
(59, 72521835, 3731, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-09 21:36:00', '2024-11-09 21:36:00'),
(60, 72521835, 7811, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-27 06:46:00', '2024-11-27 06:46:00'),
(61, 74642501, 6259, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-24 12:00:00', '2024-11-24 12:00:00'),
(62, 74642501, 7562, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-28 18:21:00', '2024-11-28 18:21:00'),
(63, 74642501, 9661, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-15 01:40:00', '2024-11-15 01:40:00'),
(64, 76637170, 2439, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-13 22:18:00', '2024-11-13 22:18:00'),
(65, 76637170, 6259, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-01 07:38:00', '2024-12-01 07:38:00'),
(66, 76637170, 6626, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-15 06:51:00', '2024-11-15 06:51:00'),
(67, 77742230, 3155, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-05 16:16:00', '2024-12-05 16:16:00'),
(68, 77742230, 7562, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-05 04:41:00', '2024-12-05 04:41:00'),
(69, 77742230, 7811, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-15 15:36:00', '2024-11-15 15:36:00'),
(70, 77756766, 2010, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-20 08:47:00', '2024-11-20 08:47:00'),
(71, 77756766, 6189, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-17 03:35:00', '2024-11-17 03:35:00'),
(72, 77756766, 9205, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-03 17:07:00', '2024-12-03 17:07:00'),
(73, 79171088, 1582, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-27 01:31:00', '2024-11-27 01:31:00'),
(74, 79171088, 5345, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-02 17:43:00', '2024-12-02 17:43:00'),
(75, 79171088, 9661, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-23 15:09:00', '2024-11-23 15:09:00'),
(76, 82037661, 2439, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-10 07:31:00', '2024-11-10 07:31:00'),
(77, 82037661, 3599, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-26 07:52:00', '2024-11-26 07:52:00'),
(78, 82037661, 8071, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-30 21:50:00', '2024-11-30 21:50:00'),
(79, 85439762, 1824, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-18 06:17:00', '2024-11-18 06:17:00'),
(80, 85439762, 3731, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-07 21:42:00', '2024-11-07 21:42:00'),
(81, 85439762, 9205, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-06 18:05:00', '2024-11-06 18:05:00'),
(82, 86410329, 1582, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-30 02:30:00', '2024-11-30 02:30:00'),
(83, 86410329, 2248, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-27 19:55:00', '2024-11-27 19:55:00'),
(84, 86410329, 8022, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-20 00:22:00', '2024-11-20 00:22:00'),
(85, 88110399, 1735, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-23 20:39:00', '2024-11-23 20:39:00'),
(86, 88110399, 5345, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-25 22:50:00', '2024-11-25 22:50:00'),
(87, 88110399, 7562, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-12-04 00:31:00', '2024-12-04 00:31:00'),
(88, 89831900, 1582, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-09 18:53:00', '2024-11-09 18:53:00'),
(89, 89831900, 3509, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-27 01:01:00', '2024-11-27 01:01:00'),
(90, 89831900, 5345, 'Hola, quisiera saber si tienes disponibilidad para una sesión.', 0, '2024-11-29 21:13:00', '2024-11-29 21:13:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '2024_09_13_065214_create_paciente_table', 1),
(4, '2024_09_13_065301_create_localidad_table', 1),
(5, '2024_09_13_065306_create_tematica_table', 1),
(6, '2024_09_13_065312_create_patologia_table', 1),
(7, '2024_09_13_065317_create_corriente_table', 1),
(8, '2024_09_13_065324_create_psicologo_table', 1),
(9, '2024_09_13_065342_create_sesion_table', 1),
(10, '2024_09_13_065347_create_pago_table', 1),
(11, '2024_09_13_065352_create_calificacion_table', 1),
(12, '2024_09_13_065357_create_match_table', 1),
(13, '2024_09_13_065402_create_historico_table', 1),
(14, '2024_09_13_065426_create_psicologo_patologia_table', 1),
(15, '2024_09_13_065431_create_psicologo_corriente_table', 1),
(16, '2024_09_14_054129_create_personal_access_tokens_table', 1),
(17, '2024_09_18_041316_create_permission_tables', 1),
(18, '2024_10_17_210634_create_preferencias_table', 1),
(19, '2024_11_12_000014_create_mensaje_table', 1),
(20, '2024_11_12_045941_create_psychologist_patient_table', 1),
(21, '2024_11_26_030726_add_pago_to_sesion_table', 1),
(22, '2024_11_26_034219_add_payment_datetime_to_sesion_table', 1),
(23, '2024_11_26_165538_create_paciente_patologia_table', 1),
(24, '2024_12_05_010058_create_preferencias_patologias_table', 1),
(25, '2024_12_05_010113_create_preferencias_respuestas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`model_id`, `model_type`, `role_id`) VALUES
(1582, 'App\\Models\\Psicologo', 2),
(1735, 'App\\Models\\Psicologo', 2),
(1824, 'App\\Models\\Psicologo', 2),
(2010, 'App\\Models\\Psicologo', 2),
(2248, 'App\\Models\\Psicologo', 2),
(2270, 'App\\Models\\Psicologo', 2),
(2439, 'App\\Models\\Psicologo', 2),
(3155, 'App\\Models\\Psicologo', 2),
(3216, 'App\\Models\\Psicologo', 2),
(3504, 'App\\Models\\Psicologo', 2),
(3509, 'App\\Models\\Psicologo', 2),
(3599, 'App\\Models\\Psicologo', 2),
(3731, 'App\\Models\\Psicologo', 2),
(4015, 'App\\Models\\Psicologo', 2),
(4620, 'App\\Models\\Psicologo', 2),
(5345, 'App\\Models\\Psicologo', 2),
(6110, 'App\\Models\\Psicologo', 2),
(6189, 'App\\Models\\Psicologo', 2),
(6259, 'App\\Models\\Psicologo', 2),
(6626, 'App\\Models\\Psicologo', 2),
(7187, 'App\\Models\\Psicologo', 2),
(7297, 'App\\Models\\Psicologo', 2),
(7562, 'App\\Models\\Psicologo', 2),
(7811, 'App\\Models\\Psicologo', 2),
(8022, 'App\\Models\\Psicologo', 2),
(8071, 'App\\Models\\Psicologo', 2),
(8472, 'App\\Models\\Psicologo', 2),
(9205, 'App\\Models\\Psicologo', 2),
(9661, 'App\\Models\\Psicologo', 2),
(9726, 'App\\Models\\Psicologo', 2),
(14841318, 'App\\Models\\Paciente', 1),
(18169041, 'App\\Models\\Paciente', 1),
(20652862, 'App\\Models\\Paciente', 1),
(22778682, 'App\\Models\\Paciente', 1),
(23173609, 'App\\Models\\Paciente', 1),
(24722794, 'App\\Models\\Paciente', 1),
(34044873, 'App\\Models\\Paciente', 1),
(41774478, 'App\\Models\\Paciente', 1),
(43822069, 'App\\Models\\Paciente', 1),
(49991074, 'App\\Models\\Paciente', 1),
(52345473, 'App\\Models\\Paciente', 1),
(52575186, 'App\\Models\\Paciente', 1),
(55302451, 'App\\Models\\Paciente', 1),
(56002846, 'App\\Models\\Paciente', 1),
(62081385, 'App\\Models\\Paciente', 1),
(62322325, 'App\\Models\\Paciente', 1),
(63159870, 'App\\Models\\Paciente', 1),
(64323872, 'App\\Models\\Paciente', 1),
(66362987, 'App\\Models\\Paciente', 1),
(72521835, 'App\\Models\\Paciente', 1),
(74642501, 'App\\Models\\Paciente', 1),
(76637170, 'App\\Models\\Paciente', 1),
(77742230, 'App\\Models\\Paciente', 1),
(77756766, 'App\\Models\\Paciente', 1),
(79171088, 'App\\Models\\Paciente', 1),
(82037661, 'App\\Models\\Paciente', 1),
(85439762, 'App\\Models\\Paciente', 1),
(86410329, 'App\\Models\\Paciente', 1),
(88110399, 'App\\Models\\Paciente', 1),
(89831900, 'App\\Models\\Paciente', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `onboarding` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`dni`, `nombre`, `apellido`, `email`, `password`, `onboarding`, `created_at`, `updated_at`) VALUES
(14841318, 'Romina', 'Casares', 'romina_casares@mail.com', '$2y$12$zlAmhegDp.xvjr8pBbd.lemsDY9EHclOV4/QokbwW/Vgb1dSCkAga', 0, '2024-12-05 19:10:02', '2024-12-05 19:10:02'),
(18169041, 'Mariana', 'Dávila', 'mariana_davila@mail.com', '$2y$12$M1QS2gRBI4SqPZAMWMatReKTwesQfkbNvf0Fwzza7dGV3C5OFVAOW', 0, '2024-12-05 19:10:02', '2024-12-05 19:10:02'),
(20652862, 'Adrian', 'Torress', 'adrian_torres@mail.com', '$2y$12$9A79Zk393aO2cHvRtusnXuBd/OlWzU01ipnY3UAj4GqvSCpadZjh6', 1, '2024-12-05 19:10:03', '2024-12-05 19:34:18'),
(22778682, 'Alan', 'Lebrón', 'alan_lebron@mail.com', '$2y$12$g7ABV1bno3NYqp8m1NGB5.gl9l2skU5pgci92V82GLnHNLBIZsrdu', 1, '2024-12-05 19:10:04', '2024-12-05 19:10:04'),
(23173609, 'David', 'Amaya', 'david_amaya@mail.com', '$2y$12$3q6Ir9cHudREVmkIPprtiulZHrdr5MQiLheroDsalB8jEmTOwDL2m', 0, '2024-12-05 19:10:07', '2024-12-05 19:10:07'),
(24722794, 'Alan', 'González', 'alan_gonzalez@mail.com', '$2y$12$AsEfjKCvUINdXmSGgoEFAOXSt79Tc.1SjiGqPbwywZCQHAw/wMOQS', 0, '2024-12-05 19:10:02', '2024-12-05 19:10:02'),
(34044873, 'Samuel', 'Valverde', 'samuel_valverde@mail.com', '$2y$12$WPdsrx7PzkMRwoHkjr2HUuuCEYmi9w4Uju2ZfbZyPPBo/Jb35ICeO', 0, '2024-12-05 19:10:03', '2024-12-05 19:10:03'),
(41774478, 'Samuel', 'Jaramillo', 'samuel_jaramillo@mail.com', '$2y$12$JE1B7TD.yr6AduH5inB67.fHwkvejbO/DtkVQLw.ssYlQ5VzeV.wO', 1, '2024-12-05 19:10:07', '2024-12-05 19:10:07'),
(43822069, 'Dante', 'Partida', 'dante_partida@mail.com', '$2y$12$HTpdMCq1Zl70NaysozN1weVjm4qqPcjwYfmcKwqEuWQmoiEcaOaRC', 1, '2024-12-05 19:10:07', '2024-12-05 19:10:07'),
(49991074, 'Samantha', 'Solano', 'samantha_solano@mail.com', '$2y$12$5SMroz/Du3GqwU/X1aiAUe7fhMj2wJb.tXHovpPqW.0KQQtIr6x.W', 1, '2024-12-05 19:10:05', '2024-12-05 19:10:05'),
(52345473, 'Renata', 'López', 'renata_lopez@mail.com', '$2y$12$KdA2qstZWSAIwxVCbKeTDuE89Hz.Agc.HhbGaK45Vt1p9bMh40WjC', 1, '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(52575186, 'Alex', 'Ulibarri', 'alex_ulibarri@mail.com', '$2y$12$IufL77zY.QxnVTEwIlHNUu2G62F4zdYWTCiTEd9VfFFPUeN9Tvt.u', 0, '2024-12-05 19:10:07', '2024-12-05 19:10:07'),
(55302451, 'Nadia', 'Sedillo', 'nadia_sedillo@mail.com', '$2y$12$RoAgCD2ITA6M3tHTZnHE9urnnFnBS66sc21yFNCKdbqAYzGgWFo9.', 0, '2024-12-05 19:10:04', '2024-12-05 19:10:04'),
(56002846, 'Andrea', 'Sevilla', 'andrea_sevilla@mail.com', '$2y$12$72ZZ9P7nYimLWJuDjF9h0ePvgfxg78Ie7KULETDYIMxmzgV2GsZH6', 0, '2024-12-05 19:10:03', '2024-12-05 19:10:03'),
(62081385, 'Nadia', 'Segura', 'nadia_segura@mail.com', '$2y$12$2NtyK1MGwUoBctZbc0fZyOfXRruZyCsMPcoJKN.FYJ.u0lbz0E2O.', 0, '2024-12-05 19:10:05', '2024-12-05 19:10:05'),
(62322325, 'Luciano', 'Olvera', 'luciano_olvera@mail.com', '$2y$12$vUN3dcOwsTwDnDqz44bQMO0irSpMfx2KZNjKXtaTIvRZNE7SBH/mi', 0, '2024-12-05 19:10:03', '2024-12-05 19:10:03'),
(63159870, 'Joshua', 'Esquibel', 'joshua_esquibel@mail.com', '$2y$12$6k2wkRHCyyyuqS0DDvEIsuGinN9ARMvsgClbhxQ8DarVwFPRA2Him', 0, '2024-12-05 19:10:05', '2024-12-05 19:10:05'),
(64323872, 'Ana paula', 'Ballesteros', 'ana_paula_ballesteros@mail.com', '$2y$12$ZMywK50GlkpweP1l3/Yf9uNHFtrIVmLQhi/OGk5lG1IoAs3jIGMn2', 1, '2024-12-05 19:10:05', '2024-12-05 19:10:05'),
(66362987, 'Julia', 'Franco', 'julia_franco@mail.com', '$2y$12$EcpErcgJLkC.ZDF25zNfcOtgAW0oK4vj3UchfM9YwDE8byUS/OA/S', 0, '2024-12-05 19:10:02', '2024-12-05 19:10:02'),
(72521835, 'Lola', 'Aguayo', 'lola_aguayo@mail.com', '$2y$12$.XbIrfJtLN/.1Q0oGB6/cuLYfPvW2fFNg80otHC94KxM93sxgs9J.', 1, '2024-12-05 19:10:07', '2024-12-05 19:10:07'),
(74642501, 'Bautista', 'Meléndez', 'bautista_melendez@mail.com', '$2y$12$DBvUmevaSsrIm5.WuP6yTOt0pxT4lMrLLbWqTVLm7hOizRfP3x/ta', 1, '2024-12-05 19:10:04', '2024-12-05 19:10:04'),
(76637170, 'Dante', 'Solorzano', 'dante_solorzano@mail.com', '$2y$12$5DAJWAgLh/8Vglk.EN/HKe4Ev38EubVUPF2sCva/nbU37d2927hIG', 1, '2024-12-05 19:10:06', '2024-12-05 19:10:06'),
(77742230, 'Clara', 'Prieto', 'clara_prieto@mail.com', '$2y$12$f2HW1r5/DHB6yUgUCLW6NuRgDYrDB8j2DS2RVkga/M9GWvHqy620W', 0, '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(77756766, 'Julia', 'Treviño', 'julia_trevino@mail.com', '$2y$12$1/uWFBFJ1l0a6TQQBlARc.mnmkLxr97z5FyQh.xFiGkyVqyCVls3e', 0, '2024-12-05 19:10:04', '2024-12-05 19:10:04'),
(79171088, 'Samantha', 'Padilla', 'samantha_padilla@mail.com', '$2y$12$76ozepW.3q2r3nNt5NZ5Z.sxydjwsaJVPl16uwQyUDE5UFNmKyIQm', 1, '2024-12-05 19:10:02', '2024-12-05 19:10:02'),
(82037661, 'Violeta', 'Tejada', 'violeta_tejada@mail.com', '$2y$12$IaiwZrk4L8TBoJ514WDgRO.kzTlYbsutOqVBtN/05ay8zxR33MOTy', 1, '2024-12-05 19:10:05', '2024-12-05 19:10:05'),
(85439762, 'Isabel', 'Enríquez', 'isabel_enriquez@mail.com', '$2y$12$RjWkgYj7wRU/.ohuHv76ouI1aC09AobSDmJoyLjL0Z7mLF0/7cuNS', 1, '2024-12-05 19:10:06', '2024-12-05 19:10:06'),
(86410329, 'Matías', 'Atencio', 'matias_atencio@mail.com', '$2y$12$KiJCKftzuBSTFtmUbpQZFO.V5gwtHjDSwGKQYFQH/jvu/B2SOdCU6', 0, '2024-12-05 19:10:04', '2024-12-05 19:10:04'),
(88110399, 'Fernando', 'Bahena', 'fernando_bahena@mail.com', '$2y$12$oiQOpuM81Vdr0XFjEmIJue3dwRht8QEk0q2FqS1U8N1VoA7d.baJ2', 1, '2024-12-05 19:10:06', '2024-12-05 19:10:06'),
(89831900, 'Adrián', 'Longoria', 'adrian_longoria@mail.com', '$2y$12$xmjdh6B5A/3RN6FQaAev5uGIiEY./CLM4Nm8BFPCuUUqf5nyHYwHq', 0, '2024-12-05 19:10:06', '2024-12-05 19:10:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_patologia`
--

CREATE TABLE `paciente_patologia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `id_patologia` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paciente_patologia`
--

INSERT INTO `paciente_patologia` (`id`, `dni_paciente`, `id_patologia`) VALUES
(1, 77742230, 10),
(2, 77742230, 16),
(3, 52345473, 12),
(4, 52345473, 17),
(5, 66362987, 28),
(6, 18169041, 9),
(7, 18169041, 25),
(8, 14841318, 4),
(9, 14841318, 8),
(10, 79171088, 12),
(11, 79171088, 23),
(12, 79171088, 25),
(13, 24722794, 4),
(15, 56002846, 15),
(16, 56002846, 26),
(17, 34044873, 3),
(18, 34044873, 14),
(19, 34044873, 15),
(20, 62322325, 15),
(21, 62322325, 28),
(22, 62322325, 30),
(23, 22778682, 34),
(24, 77756766, 7),
(25, 77756766, 13),
(26, 77756766, 16),
(27, 86410329, 3),
(28, 86410329, 15),
(29, 86410329, 31),
(30, 55302451, 20),
(31, 74642501, 26),
(32, 49991074, 15),
(33, 49991074, 16),
(34, 49991074, 27),
(35, 63159870, 24),
(36, 64323872, 10),
(37, 64323872, 20),
(38, 64323872, 24),
(39, 82037661, 34),
(40, 62081385, 1),
(41, 62081385, 10),
(42, 76637170, 9),
(43, 76637170, 11),
(44, 76637170, 35),
(45, 85439762, 2),
(46, 89831900, 8),
(47, 89831900, 10),
(48, 89831900, 31),
(49, 88110399, 10),
(50, 88110399, 19),
(51, 88110399, 32),
(52, 72521835, 6),
(53, 72521835, 18),
(54, 72521835, 22),
(55, 23173609, 21),
(56, 23173609, 26),
(57, 43822069, 2),
(58, 43822069, 7),
(59, 52575186, 6),
(60, 41774478, 14),
(61, 41774478, 19),
(62, 41774478, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `nro_transaccion` bigint(20) UNSIGNED NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `matricula_psicologo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `valor` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patologia`
--

CREATE TABLE `patologia` (
  `id_patologia` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `patologia`
--

INSERT INTO `patologia` (`id_patologia`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Depresión', NULL, NULL),
(2, 'Ansiedad', NULL, NULL),
(3, 'Trastorno de pánico', NULL, NULL),
(4, 'Trastorno bipolar', NULL, NULL),
(5, 'Esquizofrenia', NULL, NULL),
(6, 'TOC (Trastorno Obsesivo Compulsivo)', NULL, NULL),
(7, 'TDAH (Déficit de Atención e Hiperactividad)', NULL, NULL),
(8, 'Trastornos alimenticios', NULL, NULL),
(9, 'Adicciones', NULL, NULL),
(10, 'Trastornos del sueño', NULL, NULL),
(11, 'Estrés postraumático', NULL, NULL),
(12, 'Fobias', NULL, NULL),
(13, 'Trastorno límite de la personalidad', NULL, NULL),
(14, 'Trastorno de ansiedad social', NULL, NULL),
(15, 'Agorafobia', NULL, NULL),
(16, 'Trastorno de estrés agudo', NULL, NULL),
(17, 'Duelo patológico', NULL, NULL),
(18, 'Crisis de identidad', NULL, NULL),
(19, 'Trastorno dismórfico corporal', NULL, NULL),
(20, 'Trastorno de adaptación', NULL, NULL),
(21, 'Trastorno narcisista', NULL, NULL),
(22, 'Trastorno de conducta', NULL, NULL),
(23, 'Trastorno de apego', NULL, NULL),
(24, 'Trastorno de la personalidad evitativa', NULL, NULL),
(25, 'Trastorno psicótico', NULL, NULL),
(26, 'Trastorno de despersonalización', NULL, NULL),
(27, 'Trastorno de desrealización', NULL, NULL),
(28, 'Trastorno de ansiedad generalizada', NULL, NULL),
(29, 'Trastorno del espectro autista', NULL, NULL),
(30, 'Trastorno de la conducta alimentaria', NULL, NULL),
(31, 'Trastorno del control de impulsos', NULL, NULL),
(32, 'Trastorno de identidad disociativo', NULL, NULL),
(33, 'Hipocondría', NULL, NULL),
(34, 'Trastorno de acumulación', NULL, NULL),
(35, 'Trastorno de la personalidad dependiente', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Paciente', 20652862, 'main', '63481ca5ef5a39b8fab05b7889f12e41f204fd2aded03bd43f8b6762c50f0208', '[\"*\"]', '2024-12-05 19:34:23', NULL, '2024-12-05 19:16:11', '2024-12-05 19:34:23'),
(2, 'App\\Models\\Paciente', 20652862, 'main', 'a83397c71f1515ed44648b65774a4f337963686e9706b8e85f822b49964d26f4', '[\"*\"]', '2024-12-06 14:47:51', NULL, '2024-12-05 19:17:42', '2024-12-06 14:47:51'),
(3, 'App\\Models\\Psicologo', 1582, 'main', 'a7f9aaae438aecacc99154f7544954c03c8d85678a16689f3b31c711ce2a36d3', '[\"*\"]', '2024-12-06 14:47:50', NULL, '2024-12-05 19:34:43', '2024-12-06 14:47:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferencias`
--

CREATE TABLE `preferencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `id_tematica` bigint(20) UNSIGNED DEFAULT NULL,
  `id_corriente` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `preferencias`
--

INSERT INTO `preferencias` (`id`, `dni_paciente`, `id_tematica`, `id_corriente`, `created_at`, `updated_at`) VALUES
(1, 52345473, 3, 4, NULL, '2024-12-05 19:10:14'),
(2, 79171088, 2, 1, NULL, '2024-12-05 19:10:14'),
(3, 20652862, 1, 4, NULL, '2024-12-05 19:32:24'),
(4, 22778682, 2, 5, NULL, '2024-12-05 19:10:14'),
(5, 74642501, 2, 6, NULL, '2024-12-05 19:10:14'),
(6, 49991074, 2, 5, NULL, '2024-12-05 19:10:14'),
(7, 64323872, 1, 1, NULL, NULL),
(8, 82037661, 3, 2, NULL, '2024-12-05 19:10:14'),
(9, 76637170, 1, 3, NULL, '2024-12-05 19:10:14'),
(10, 85439762, 3, 3, NULL, '2024-12-05 19:10:14'),
(11, 88110399, 2, 6, NULL, '2024-12-05 19:10:14'),
(12, 72521835, 1, 6, NULL, '2024-12-05 19:10:14'),
(13, 43822069, 3, 2, NULL, '2024-12-05 19:10:14'),
(14, 41774478, 1, 6, NULL, '2024-12-05 19:10:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferencias_patologias`
--

CREATE TABLE `preferencias_patologias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_preferencia` bigint(20) UNSIGNED NOT NULL,
  `id_patologia` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferencias_respuestas`
--

CREATE TABLE `preferencias_respuestas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_preferencia` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `pregunta` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `preferencias_respuestas`
--

INSERT INTO `preferencias_respuestas` (`id`, `id_preferencia`, `key`, `pregunta`, `respuesta`, `label`, `created_at`, `updated_at`) VALUES
(8, 4, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Online', 'Online', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(9, 4, 'corriente', '¿Qué esperas de tu terapia?', 'Escucha y apoyo', 'Que me escuchen y apoyen sin juzgarme', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(10, 4, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(11, 4, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(12, 4, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'TOC (Trastorno Obsesivo Compulsivo)', 'Tengo pensamientos repetitivos y me cuesta dejar de hacer ciertas cosas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(13, 4, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Duelo patológico', 'Dificultad para enfrentar cambios o pérdidas en mi vida', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(14, 4, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Ansiedad', 'Sentirme más tranquilo/a y en control de mis emociones', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(15, 14, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Online', 'Online', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(16, 14, 'corriente', '¿Qué esperas de tu terapia?', 'Intervencion activa', 'Que intervengan y me guíen activamente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(17, 14, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '36-45', 'Entre 36 y 45 años', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(18, 14, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(19, 14, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'TOC (Trastorno Obsesivo Compulsivo)', 'Tengo pensamientos repetitivos y me cuesta dejar de hacer ciertas cosas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(20, 14, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Agorafobia', 'Siento miedo extremo en lugares abiertos o llenos de gente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(21, 14, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Ansiedad', 'Sentirme más tranquilo/a y en control de mis emociones', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(22, 13, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Ambas', 'Ambas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(23, 13, 'corriente', '¿Qué esperas de tu terapia?', 'Escucha y apoyo', 'Que me escuchen y apoyen sin juzgarme', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(24, 13, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '36-45', 'Entre 36 y 45 años', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(25, 13, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Femenino', 'Femenino', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(26, 13, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'Trastorno bipolar', 'Mis emociones cambian drásticamente de un momento a otro', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(27, 13, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Trastorno de despersonalización', 'A veces siento que no soy yo mismo o que mi entorno es irreal', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(28, 13, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Fobias', 'Superar un miedo o una experiencia difícil', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(29, 6, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Ambas', 'Ambas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(30, 6, 'corriente', '¿Qué esperas de tu terapia?', 'Escucha y apoyo', 'Que me escuchen y apoyen sin juzgarme', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(31, 6, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '36-45', 'Entre 36 y 45 años', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(32, 6, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(33, 6, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'Esquizofrenia', 'A veces escucho o percibo cosas que otros no ven', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(34, 6, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Agorafobia', 'Siento miedo extremo en lugares abiertos o llenos de gente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(35, 6, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Trastornos de apego', 'Mejorar mi relación conmigo mismo/a o con los demás', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(36, 1, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Online', 'Online', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(37, 1, 'corriente', '¿Qué esperas de tu terapia?', 'Indiferente', 'No estoy seguro/a', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(38, 1, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '18-35', 'Entre 18 y 35 años', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(39, 1, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Masculino', 'Masculino', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(40, 1, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'Depresión', 'Me siento triste o desmotivado la mayor parte del tiempo', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(41, 1, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Agorafobia', 'Siento miedo extremo en lugares abiertos o llenos de gente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(42, 1, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Trastornos de apego', 'Mejorar mi relación conmigo mismo/a o con los demás', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(43, 7, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Presencial', 'Presencial', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(44, 7, 'corriente', '¿Qué esperas de tu terapia?', 'Intervencion activa', 'Que intervengan y me guíen activamente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(45, 7, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(46, 7, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(47, 7, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'Depresión', 'Me siento triste o desmotivado la mayor parte del tiempo', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(48, 7, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Trastornos de apego', 'Me cuesta conectar con otras personas o confiar en ellas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(49, 7, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Depresión', 'Dejar de sentirme atrapado/a en pensamientos negativos', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(50, 12, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Presencial', 'Presencial', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(51, 12, 'corriente', '¿Qué esperas de tu terapia?', 'Intervencion activa', 'Que intervengan y me guíen activamente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(52, 12, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '18-35', 'Entre 18 y 35 años', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(53, 12, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(54, 12, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'Trastorno bipolar', 'Mis emociones cambian drásticamente de un momento a otro', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(55, 12, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Trastorno de despersonalización', 'A veces siento que no soy yo mismo o que mi entorno es irreal', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(56, 12, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Fobias', 'Superar un miedo o una experiencia difícil', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(57, 5, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Ambas', 'Ambas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(58, 5, 'corriente', '¿Qué esperas de tu terapia?', 'Escucha y apoyo', 'Que me escuchen y apoyen sin juzgarme', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(59, 5, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '36-45', 'Entre 36 y 45 años', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(60, 5, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Femenino', 'Femenino', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(61, 5, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'TOC (Trastorno Obsesivo Compulsivo)', 'Tengo pensamientos repetitivos y me cuesta dejar de hacer ciertas cosas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(62, 5, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Trastorno de despersonalización', 'A veces siento que no soy yo mismo o que mi entorno es irreal', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(63, 5, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Trastornos de apego', 'Mejorar mi relación conmigo mismo/a o con los demás', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(64, 9, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Ambas', 'Ambas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(65, 9, 'corriente', '¿Qué esperas de tu terapia?', 'Intervencion activa', 'Que intervengan y me guíen activamente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(66, 9, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(67, 9, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(68, 9, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'Trastorno de pánico', 'Tengo miedos intensos o ataques de pánico', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(69, 9, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Trastornos de apego', 'Me cuesta conectar con otras personas o confiar en ellas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(70, 9, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Trastornos de apego', 'Mejorar mi relación conmigo mismo/a o con los demás', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(71, 2, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Ambas', 'Ambas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(72, 2, 'corriente', '¿Qué esperas de tu terapia?', 'Indiferente', 'No estoy seguro/a', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(73, 2, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '36-45', 'Entre 36 y 45 años', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(74, 2, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Masculino', 'Masculino', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(75, 2, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'Trastorno de pánico', 'Tengo miedos intensos o ataques de pánico', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(76, 2, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Agorafobia', 'Siento miedo extremo en lugares abiertos o llenos de gente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(77, 2, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Fobias', 'Superar un miedo o una experiencia difícil', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(78, 8, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Presencial', 'Presencial', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(79, 8, 'corriente', '¿Qué esperas de tu terapia?', 'Intervencion activa', 'Que intervengan y me guíen activamente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(80, 8, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '46-65', 'Entre 46 y 65 años', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(81, 8, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(82, 8, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'TDAH (Déficit de Atención e Hiperactividad)', 'Me cuesta concentrarme o mantener mi atención en tareas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(83, 8, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Agorafobia', 'Siento miedo extremo en lugares abiertos o llenos de gente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(84, 8, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Fobias', 'Superar un miedo o una experiencia difícil', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(85, 10, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Online', 'Online', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(86, 10, 'corriente', '¿Qué esperas de tu terapia?', 'Escucha y apoyo', 'Que me escuchen y apoyen sin juzgarme', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(87, 10, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '36-45', 'Entre 36 y 45 años', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(88, 10, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(89, 10, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'Trastorno de pánico', 'Tengo miedos intensos o ataques de pánico', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(90, 10, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Trastorno de despersonalización', 'A veces siento que no soy yo mismo o que mi entorno es irreal', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(91, 10, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Trastornos de apego', 'Mejorar mi relación conmigo mismo/a o con los demás', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(92, 11, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Ambas', 'Ambas', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(93, 11, 'corriente', '¿Qué esperas de tu terapia?', 'Intervencion activa', 'Que intervengan y me guíen activamente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(94, 11, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', 'Indiferente', 'Me da igual', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(95, 11, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Masculino', 'Masculino', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(96, 11, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'Esquizofrenia', 'A veces escucho o percibo cosas que otros no ven', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(97, 11, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Agorafobia', 'Siento miedo extremo en lugares abiertos o llenos de gente', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(98, 11, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'Trastornos de apego', 'Mejorar mi relación conmigo mismo/a o con los demás', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(99, 3, 'tematica', '¿Qué tipo de modalidad prefieres?', 'Online', NULL, '2024-12-05 19:32:24', '2024-12-05 19:32:24'),
(100, 3, 'corriente', '¿Qué esperas de tu terapia?', 'Escucha y apoyo', NULL, '2024-12-05 19:32:24', '2024-12-05 19:32:24'),
(101, 3, 'edadPsicologo', '¿Qué rango de edad prefieres que tenga tu psicólogo?', '18-35', NULL, '2024-12-05 19:32:24', '2024-12-05 19:32:24'),
(102, 3, 'generoPsicologo', '¿De qué género prefieres que sea tu psicólogo?', 'Femenino', NULL, '2024-12-05 19:32:24', '2024-12-05 19:32:24'),
(103, 3, 'situacionesActuales', '¿Con qué de estas situaciones o sentimientos te identificas más en este momento?', 'sinrespuesta', NULL, '2024-12-05 19:32:24', '2024-12-05 19:32:24'),
(104, 3, 'necesidadesAyuda', '¿Con qué situaciones sientes que necesitas más ayuda?', 'Trastornos de apego', NULL, '2024-12-05 19:32:24', '2024-12-05 19:32:24'),
(105, 3, 'objetivosMejorar', '¿Qué te gustaría mejorar o resolver en tu vida ahora mismo?', 'sinrespuesta', NULL, '2024-12-05 19:32:24', '2024-12-05 19:32:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologo`
--

CREATE TABLE `psicologo` (
  `matricula` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `promedio` decimal(3,2) DEFAULT NULL,
  `codigo_postal` bigint(20) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `id_tematica` bigint(20) UNSIGNED NOT NULL,
  `id_corriente` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `psicologo`
--

INSERT INTO `psicologo` (`matricula`, `nombre`, `apellido`, `telefono`, `promedio`, `codigo_postal`, `genero`, `fecha_nacimiento`, `foto`, `precio`, `id_tematica`, `id_corriente`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1582, 'Jeronimo', 'Calderonm', '1231231231', NULL, 58028020, 'Masculino', '1999-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_8.jpg', 15788.06, 3, 6, 'jeronimo_calderon@mail.com', '$2y$12$eJca1tHlgfn3GsJMNCrAAuJsxTuQYZJNsJdb9aVsN48tthcWCZlvm', '2024-12-05 19:10:09', '2024-12-05 19:36:23'),
(1735, 'Josefa', 'Lugo', '(80)155278-9957', NULL, 58035010, 'Femenino', '1997-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_5.jpg', 13364.14, 3, 3, 'josefa_lugo@mail.com', '$2y$12$H818PU2ZYKD46kXAG2aJKuaylsB/rQGGVyW1wS1.IfDqGgQ1vcdN.', '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(1824, 'Victoria', 'Chacón', '(24)4362-1965', NULL, 58028020, 'Femenino', '1982-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_8.jpg', 17589.63, 2, 1, 'victoria_chacon@mail.com', '$2y$12$DlYizsNJhIdKMJ6xtzNK6.TZQRb2fkFxzjIaSR4Zac872usTs5i6u', '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(2010, 'Juan josé', 'Montañez', '(436)557-1609', NULL, 58077020, 'Masculino', '1993-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_3.jpg', 23130.17, 1, 3, 'juan_jose_montanez@mail.com', '$2y$12$cA6b.XFnVxt1dlC2fx7z9ev7/T06Ubp37Xyt.RTrxLBLczrezuN5K', '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(2248, 'Luana', 'Piña', '(37)4173-4423', NULL, 5811202001, 'Femenino', '2005-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_3.jpg', 25532.66, 1, 3, 'luana_pina@mail.com', '$2y$12$t1epHPiYGMOfsnXq8gKx2O0ks8pGAFqomIc6r6trCUVwHp3ve5Zbi', '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(2270, 'Sophie', 'Armijo', '(424)487-0401', NULL, 58077030, 'Femenino', '1993-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_1.jpg', 15458.23, 2, 3, 'sophie_armijo@mail.com', '$2y$12$K5v/2gi4HL4wv4uKMA9q9.GF5CwwrsRyh6tK8qVGAtpqv4ESJ39ky', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(2439, 'Emma', 'Velázquez', '(900)582-3202', NULL, 58035120, 'Femenino', '1978-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_14.jpg', 34805.51, 2, 3, 'emma_velazquez@mail.com', '$2y$12$sHPgtZuthC9g5jY0/ctGZunn8MVvhpU2/gCaSJC4uw/1M8AthmX3y', '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(3155, 'Josefa', 'Cornejo', '(65)154419-9733', NULL, 58028020, 'Femenino', '1999-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_13.jpg', 15284.69, 1, 3, 'josefa_cornejo@mail.com', '$2y$12$B8h39Kw.J4BtjCfJXksYM.0QK7c72fILCST7XrU9Kvap28SHx2OHW', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(3216, 'Juan manuel', 'Cotto', '(91)4878-1337', NULL, 58091040, 'Masculino', '1995-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_1.jpg', 41318.65, 3, 2, 'juan_manuel_cotto@mail.com', '$2y$12$M1vK2GoXLNmQKpkuMXY69uf6x3zE7FmgnAj8Kkrka7iR75noKymyq', '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(3504, 'Amelia', 'León', '(357)15521-0611', NULL, 58098020, 'Femenino', '1982-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_2.jpg', 11353.29, 1, 3, 'amelia_leon@mail.com', '$2y$12$2UHdg199d48cdI/cL0Y0f.3TUqne9Qbs2hTnmnyna7zoLXC/lxRoa', '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(3509, 'Luciano', 'Patiño', '(21)4109-3735', NULL, 58042020, 'Masculino', '1975-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_7.jpg', 49821.06, 1, 3, 'luciano_patino@mail.com', '$2y$12$GU4VHL4mE9cj8KN06HF6duVAZO9QfGBI6IKkcPasPL8PlbGsOmdEi', '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(3599, 'Leonardo', 'Acevedo', '(927)15535-1407', NULL, 58098020, 'Masculino', '1975-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_12.jpg', 45489.59, 3, 2, 'leonardo_acevedo@mail.com', '$2y$12$Oicc6dcPDtT05ksQpwZbPORGOJAkV6OSH0wdpnCyE0NTzwUJettQC', '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(3731, 'Matías', 'Abrego', '(141)15432-7622', NULL, 58105010, 'Masculino', '1999-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_4.jpg', 42552.49, 2, 2, 'matias_abrego@mail.com', '$2y$12$nz/Esh.QqT0LYQYvjwDOdutvMnFdHV763EraEAYQQi7s2EsXBbl1C', '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(4015, 'Mariangel', 'Carreón', '(6394)1549-4768', NULL, 58056010, 'Femenino', '1979-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_10.jpg', 37549.85, 3, 2, 'mariangel_carreon@mail.com', '$2y$12$9WKTaNZT9EDSP9rAqJ3HhOJeVFf0lNNaKv67GgUiZB3lQWNhSH5fm', '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(4620, 'Martina', 'Negrete', '(51)5214-1398', NULL, 58028020, 'Femenino', '1988-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_11.jpg', 11446.70, 3, 4, 'martina_negrete@mail.com', '$2y$12$a4vttx2RHutWZ4eXSgzgWuqLaPZil2MpKyqi9Xt4.RfR6zhKgBn0a', '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(5345, 'Elías', 'Tejada', '(73)155107-7661', NULL, 58035010, 'Masculino', '1989-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_5.jpg', 17670.64, 1, 6, 'elias_tejada@mail.com', '$2y$12$vXSSAKD.pHEtr1pRO7bBAuLKTgC/H8MwqsrrYpREs5U2eTIo0KS/y', '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(6110, 'Emilio', 'Acuña', '(6001)46-4420', NULL, 58105030, 'Masculino', '1992-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_11.jpg', 43467.53, 2, 4, 'emilio_acuna@mail.com', '$2y$12$OeYgbe/7GUWV41lnmKV7QObx34YEBOJxBT4Z13kGDoe4mzMS5GCWi', '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(6189, 'Jorge', 'Zavala', '(65)5752-4510', NULL, 58098005, 'Masculino', '1987-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_14.jpg', 23291.68, 1, 4, 'jorge_zavala@mail.com', '$2y$12$TL6lW369JN.dLOS0uvcsB.kFcEWm9tkWWDlsU/nLQvz1XnxcGpori', '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(6259, 'Sergio', 'Ávila', '(076)538-0497', NULL, 58035090, 'Masculino', '1980-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_6.jpg', 23031.78, 3, 1, 'sergio_avila@mail.com', '$2y$12$2L63GRzazTqbuOeyxzwLwuH/J6Mct/XK6HT8NYKSOq2v6eipvpi6K', '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(6626, 'Emmanuel', 'Fierro', '(9391)41-8389', NULL, 58028010, 'Masculino', '1979-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_13.jpg', 37679.83, 2, 5, 'emmanuel_fierro@mail.com', '$2y$12$UZJ4pB9vVd99ZRhyeY/OfejpTocAbvLBZIBmD4HrbyAwWxSwx6pUq', '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(7187, 'Matías', 'Luna', '(21)155578-4517', NULL, 58035060, 'Masculino', '2002-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_15.jpg', 13817.67, 1, 2, 'matias_luna@mail.com', '$2y$12$QVlBU84ODsRucIG0Y.RmVe4Yea60d90q/n1vSEjVvxW6.JFucEeci', '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(7297, 'Agustina', 'Madrid', '(44)4971-7405', NULL, 58042020, 'Femenino', '1996-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_4.jpg', 49481.25, 1, 6, 'agustina_madrid@mail.com', '$2y$12$RquhC.VMzI.FhTnTm0zxzeJ7Zg1J4cxumpvxDDJQb.vHWZOcmsjVy', '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(7562, 'Sophie', 'Montenegro', '(6205)1549-4450', NULL, 58028020, 'Femenino', '1977-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_7.jpg', 33407.64, 3, 3, 'sophie_montenegro@mail.com', '$2y$12$6RDhMezTTPv4ug2xFP7z4.zjq1WarknpXXfvIymv7RdzeJOpjWU/6', '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(7811, 'Pedro', 'Fajardo', '(3402)1548-6892', NULL, 58077010, 'Masculino', '2005-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_2.jpg', 45711.20, 2, 5, 'pedro_fajardo@mail.com', '$2y$12$Iz6dzaoEDHDF/7IMMBBB3uG4bq43mcX7uYRL83NFuFY770DhQvTtq', '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(8022, 'Ximena', 'Melgar', '(5617)43-0774', NULL, 58049010, 'Femenino', '1984-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_15.jpg', 22050.25, 3, 1, 'ximena_melgar@mail.com', '$2y$12$NbfD7vqGzp7wqpcD7qfAdO68pUWDLMYCUOUNVbY35xxoTGwRLhLUa', '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(8071, 'Esteban', 'Córdova', '(347)577-9211', NULL, 58091020, 'Masculino', '1980-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_10.jpg', 28251.50, 3, 6, 'esteban_cordova@mail.com', '$2y$12$5JkXzNm8pzhn5X8zJKXvW.7WVtKSoCAq/mExzU03ZhJ7AjeQMWAju', '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(8472, 'Andrés', 'Batista', '(58)4546-0541', NULL, 58035120, 'Masculino', '1999-12-05', '../../storage/app/public/seeders/images/psicologo/man_image_9.jpg', 48404.02, 2, 4, 'andres_batista@mail.com', '$2y$12$gxvz3A0C3qh673jiq4kjMO9UeFKOfimubJjtQUtRLtbaeBHQ49E4C', '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(9205, 'Lucía', 'Padilla', '(94)4889-8104', NULL, 58112010, 'Femenino', '1974-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_6.jpg', 10640.40, 1, 2, 'lucia_padilla@mail.com', '$2y$12$2NSpBiCaaiRvMCGZlfJLE.8rdUtSf0lNa7jVaWtAsVaRRaFlYbQeS', '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(9661, 'María alejandra', 'Mondragón', '(437)15526-8079', NULL, 58077020, 'Femenino', '1982-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_9.jpg', 44260.41, 3, 5, 'maria_alejandra_mondragon@mail.com', '$2y$12$cUO/od67QllkjRryGOApy.qTa6VQ9z8Hyf3miKowc9oS7OsuSs6g6', '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(9726, 'Aitana', 'Vélez', '(289)15467-9698', NULL, 58035030, 'Femenino', '1989-12-05', '../../storage/app/public/seeders/images/psicologo/woman_image_12.jpg', 35585.12, 1, 3, 'aitana_velez@mail.com', '$2y$12$UNA1VNX/y/1noGcacbSHGOD6ai6Nn4U2YmJ0yXVrlbw0TbwCrE68e', '2024-12-05 19:10:13', '2024-12-05 19:10:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologo_corriente`
--

CREATE TABLE `psicologo_corriente` (
  `id_psicologo_corriente` bigint(20) UNSIGNED NOT NULL,
  `matricula_psicologo` int(11) NOT NULL,
  `id_corriente` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologo_paciente`
--

CREATE TABLE `psicologo_paciente` (
  `id_psicologo_paciente` bigint(20) UNSIGNED NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `matricula_psicologo` int(11) NOT NULL,
  `actual` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `psicologo_paciente`
--

INSERT INTO `psicologo_paciente` (`id_psicologo_paciente`, `dni_paciente`, `matricula_psicologo`, `actual`, `created_at`, `updated_at`) VALUES
(1, 62322325, 6626, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(2, 66362987, 6626, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(3, 49991074, 6626, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(4, 14841318, 6626, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(5, 77756766, 6626, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(6, 41774478, 1582, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(7, 76637170, 1824, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(8, 66362987, 3155, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(9, 56002846, 3155, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(10, 63159870, 3155, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(11, 41774478, 3155, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(12, 18169041, 3155, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(13, 55302451, 4620, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(14, 64323872, 4620, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(15, 79171088, 4620, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(16, 62322325, 7562, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(17, 24722794, 7562, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(18, 34044873, 7562, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(19, 64323872, 1735, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(20, 49991074, 1735, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(21, 18169041, 1735, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(22, 22778682, 1735, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(23, 20652862, 5345, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(24, 77742230, 5345, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(25, 63159870, 5345, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(26, 62322325, 9726, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(27, 64323872, 9726, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(28, 41774478, 9726, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(29, 23173609, 9726, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(30, 82037661, 9726, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(31, 14841318, 7187, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(32, 43822069, 7187, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(33, 34044873, 7187, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(34, 85439762, 7187, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(35, 20652862, 7187, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(36, 34044873, 6259, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(37, 52575186, 6259, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(38, 76637170, 6259, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(39, 89831900, 6259, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(40, 77742230, 6259, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(41, 77742230, 2439, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(42, 64323872, 2439, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(43, 52575186, 2439, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(44, 62322325, 2439, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(45, 22778682, 2439, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(46, 43822069, 8472, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(47, 76637170, 8472, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(48, 52345473, 3509, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(49, 52575186, 3509, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(50, 56002846, 3509, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(51, 55302451, 3509, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(52, 72521835, 3509, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(53, 74642501, 7297, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(54, 34044873, 7297, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(55, 24722794, 7297, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(56, 49991074, 7297, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(57, 55302451, 7297, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(58, 14841318, 8022, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(59, 22778682, 8022, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(60, 56002846, 8022, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(61, 62081385, 4015, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(62, 62322325, 4015, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(63, 72521835, 7811, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(64, 77742230, 7811, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(65, 20652862, 7811, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(66, 82037661, 7811, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(67, 76637170, 7811, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(68, 20652862, 2010, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(69, 79171088, 9661, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(70, 76637170, 9661, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(71, 85439762, 9661, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(72, 43822069, 9661, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(73, 22778682, 2270, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(74, 56002846, 2270, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(75, 88110399, 2270, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(76, 62081385, 2270, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(77, 56002846, 8071, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(78, 64323872, 8071, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(79, 77742230, 8071, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(80, 62322325, 8071, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(81, 88110399, 8071, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(82, 77756766, 3216, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(83, 63159870, 6189, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(84, 49991074, 6189, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(85, 14841318, 3504, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(86, 79171088, 3504, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(87, 24722794, 3504, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(88, 14841318, 3599, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(89, 74642501, 3599, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(90, 22778682, 3731, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(91, 24722794, 3731, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(92, 14841318, 3731, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(93, 88110399, 6110, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(94, 22778682, 6110, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(95, 49991074, 9205, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(96, 14841318, 9205, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(97, 77742230, 9205, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(98, 76637170, 9205, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(99, 72521835, 2248, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologo_patologia`
--

CREATE TABLE `psicologo_patologia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricula_psicologo` int(11) NOT NULL,
  `id_patologia` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `psicologo_patologia`
--

INSERT INTO `psicologo_patologia` (`id`, `matricula_psicologo`, `id_patologia`, `created_at`, `updated_at`) VALUES
(1, 6626, 21, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(2, 6626, 4, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(3, 6626, 9, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(4, 6626, 33, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(5, 3731, 9, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(6, 3731, 32, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(7, 3731, 33, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(8, 3731, 8, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(9, 3731, 4, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(10, 3509, 18, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(11, 3509, 23, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(12, 3509, 32, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(13, 3509, 14, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(14, 3509, 16, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(15, 3509, 34, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(16, 3509, 33, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(17, 3509, 7, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(18, 8071, 13, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(19, 8071, 27, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(20, 8071, 18, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(21, 8071, 33, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(22, 8071, 24, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(23, 8071, 34, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(24, 8071, 29, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(25, 8071, 16, '2024-12-05 19:10:08', '2024-12-05 19:10:08'),
(26, 5345, 28, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(27, 5345, 29, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(28, 5345, 25, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(29, 5345, 32, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(30, 5345, 14, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(31, 5345, 11, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(32, 5345, 10, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(33, 6110, 29, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(34, 6110, 7, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(35, 6110, 16, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(36, 6110, 30, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(37, 6110, 31, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(38, 6110, 3, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(39, 2010, 11, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(40, 2010, 27, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(41, 2010, 9, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(42, 2010, 10, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(43, 1582, 31, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(44, 1582, 32, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(45, 1582, 11, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(46, 1582, 25, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(47, 1582, 6, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(48, 1582, 26, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(49, 3216, 9, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(50, 3216, 28, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(51, 3216, 6, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(52, 3216, 26, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(53, 3216, 16, '2024-12-05 19:10:09', '2024-12-05 19:10:09'),
(54, 3599, 22, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(55, 3599, 29, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(56, 3599, 23, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(57, 3599, 14, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(58, 3599, 33, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(59, 3599, 11, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(60, 7811, 10, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(61, 7811, 25, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(62, 7811, 19, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(63, 7811, 6, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(64, 6189, 32, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(65, 6189, 19, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(66, 6189, 30, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(67, 6189, 23, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(68, 6189, 13, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(69, 8472, 26, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(70, 8472, 3, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(71, 8472, 9, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(72, 8472, 13, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(73, 8472, 31, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(74, 8472, 34, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(75, 8472, 25, '2024-12-05 19:10:10', '2024-12-05 19:10:10'),
(76, 7187, 26, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(77, 7187, 16, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(78, 7187, 35, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(79, 7187, 34, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(80, 6259, 25, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(81, 6259, 29, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(82, 6259, 32, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(83, 6259, 19, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(84, 6259, 35, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(85, 1824, 8, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(86, 1824, 29, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(87, 1824, 15, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(88, 1824, 10, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(89, 2439, 5, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(90, 2439, 27, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(91, 2439, 26, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(92, 2439, 22, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(93, 2439, 4, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(94, 2439, 16, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(95, 2439, 10, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(96, 7297, 6, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(97, 7297, 20, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(98, 7297, 17, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(99, 7297, 24, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(100, 7297, 33, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(101, 7297, 31, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(102, 7297, 9, '2024-12-05 19:10:11', '2024-12-05 19:10:11'),
(103, 4620, 14, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(104, 4620, 15, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(105, 4620, 28, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(106, 4620, 29, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(107, 4620, 6, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(108, 4620, 33, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(109, 4620, 13, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(110, 4620, 3, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(111, 7562, 28, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(112, 7562, 17, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(113, 7562, 9, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(114, 7562, 18, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(115, 7562, 24, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(116, 7562, 22, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(117, 7562, 4, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(118, 3504, 7, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(119, 3504, 14, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(120, 3504, 17, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(121, 3504, 22, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(122, 2248, 33, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(123, 2248, 3, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(124, 2248, 26, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(125, 2248, 24, '2024-12-05 19:10:12', '2024-12-05 19:10:12'),
(126, 9661, 25, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(127, 9661, 28, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(128, 9661, 35, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(129, 9661, 34, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(130, 9661, 27, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(131, 9661, 29, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(132, 9661, 9, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(133, 8022, 12, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(134, 8022, 24, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(135, 8022, 17, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(136, 8022, 4, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(137, 8022, 21, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(138, 1735, 21, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(139, 1735, 12, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(140, 1735, 19, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(141, 1735, 30, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(142, 1735, 23, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(143, 1735, 14, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(144, 1735, 5, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(145, 9205, 6, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(146, 9205, 1, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(147, 9205, 5, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(148, 9205, 14, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(149, 9205, 10, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(150, 9726, 18, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(151, 9726, 33, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(152, 9726, 23, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(153, 9726, 21, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(154, 9726, 12, '2024-12-05 19:10:13', '2024-12-05 19:10:13'),
(155, 3155, 14, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(156, 3155, 12, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(157, 3155, 5, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(158, 3155, 8, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(159, 3155, 33, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(160, 3155, 24, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(161, 3155, 31, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(162, 3155, 13, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(163, 2270, 16, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(164, 2270, 18, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(165, 2270, 33, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(166, 2270, 28, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(167, 2270, 20, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(168, 2270, 3, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(169, 2270, 14, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(170, 4015, 16, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(171, 4015, 35, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(172, 4015, 13, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(173, 4015, 1, '2024-12-05 19:10:14', '2024-12-05 19:10:14'),
(174, 1582, 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'paciente', 'web', '2024-12-05 19:10:01', '2024-12-05 19:10:01'),
(2, 'psicologo', 'web', '2024-12-05 19:10:01', '2024-12-05 19:10:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE `sesion` (
  `id_sesion` bigint(20) UNSIGNED NOT NULL,
  `dni_paciente` int(11) NOT NULL,
  `matricula_psicologo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `presencial` tinyint(1) NOT NULL,
  `cancelado` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pago` tinyint(1) NOT NULL DEFAULT 0,
  `payment_id` varchar(255) DEFAULT NULL,
  `comprobante_path` varchar(255) DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`id_sesion`, `dni_paciente`, `matricula_psicologo`, `fecha`, `hora`, `comentario`, `presencial`, `cancelado`, `created_at`, `updated_at`, `pago`, `payment_id`, `comprobante_path`, `fecha_pago`) VALUES
(1, 62322325, 6626, '2022-01-24', '10:49:08', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-01-24 04:28:49', '2022-01-24 04:28:49', 1, NULL, 'comprobantes/comprobante_1.pdf', NULL),
(2, 62322325, 6626, '2022-11-11', '04:10:32', 'Analizar situaciones laborales recientes.', 0, 1, '2022-11-11 17:22:33', '2022-11-11 17:22:33', 1, NULL, 'comprobantes/comprobante_2.pdf', NULL),
(3, 62322325, 6626, '2024-06-12', '01:45:06', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2024-06-12 14:42:32', '2024-06-12 14:42:32', 1, NULL, 'comprobantes/comprobante_3.pdf', NULL),
(4, 62322325, 6626, '2023-01-18', '05:25:12', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-01-18 08:03:02', '2023-01-18 08:03:02', 1, NULL, 'comprobantes/comprobante_4.pdf', NULL),
(5, 62322325, 6626, '2024-04-16', '15:36:33', 'Analizar situaciones laborales recientes.', 0, 0, '2024-04-16 11:24:26', '2024-04-16 11:24:26', 1, NULL, 'comprobantes/comprobante_5.pdf', NULL),
(6, 62322325, 6626, '2024-03-21', '15:52:01', NULL, 1, 0, '2024-03-21 15:15:42', '2024-03-21 15:15:42', 1, NULL, 'comprobantes/comprobante_6.pdf', NULL),
(7, 62322325, 6626, '2023-11-26', '00:50:45', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-11-26 12:59:00', '2023-11-26 12:59:00', 1, NULL, 'comprobantes/comprobante_7.pdf', NULL),
(8, 62322325, 6626, '2024-10-19', '05:17:31', 'Practicar ejercicios de relajación.', 1, 0, '2024-10-19 19:11:01', '2024-10-19 19:11:01', 1, NULL, 'comprobantes/comprobante_8.pdf', NULL),
(9, 62322325, 6626, '2023-07-09', '07:11:37', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-07-09 12:13:53', '2023-07-09 12:13:53', 1, NULL, 'comprobantes/comprobante_9.pdf', NULL),
(10, 62322325, 6626, '2023-03-10', '10:25:57', NULL, 1, 0, '2023-03-10 11:26:43', '2023-03-10 11:26:43', 1, NULL, 'comprobantes/comprobante_10.pdf', NULL),
(11, 62322325, 6626, '2024-09-06', '19:03:21', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-09-06 06:51:54', '2024-09-06 06:51:54', 1, NULL, 'comprobantes/comprobante_11.pdf', NULL),
(12, 62322325, 6626, '2024-10-15', '01:19:32', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-10-15 16:14:09', '2024-10-15 16:14:09', 0, NULL, NULL, NULL),
(13, 62322325, 6626, '2024-12-11', '18:29:37', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-12-11 19:15:36', '2024-12-11 19:15:36', 1, NULL, 'comprobantes/comprobante_13.pdf', NULL),
(14, 62322325, 6626, '2023-04-25', '06:20:44', 'Analizar situaciones laborales recientes.', 1, 0, '2023-04-25 23:10:19', '2023-04-25 23:10:19', 0, NULL, NULL, NULL),
(15, 62322325, 6626, '2023-07-16', '17:24:50', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-07-16 21:38:59', '2023-07-16 21:38:59', 1, NULL, 'comprobantes/comprobante_15.pdf', NULL),
(16, 62322325, 6626, '2024-05-23', '06:06:55', 'Revisar tarea asignada la semana pasada.', 1, 1, '2024-05-23 08:13:50', '2024-05-23 08:13:50', 1, NULL, 'comprobantes/comprobante_16.pdf', NULL),
(17, 62322325, 6626, '2022-03-25', '22:34:19', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-03-25 15:56:58', '2022-03-25 15:56:58', 1, NULL, 'comprobantes/comprobante_17.pdf', NULL),
(18, 62322325, 6626, '2022-10-27', '07:00:47', NULL, 0, 0, '2022-10-27 08:29:13', '2022-10-27 08:29:13', 1, NULL, 'comprobantes/comprobante_18.pdf', NULL),
(19, 62322325, 6626, '2023-10-15', '00:19:01', NULL, 1, 0, '2023-10-15 11:03:12', '2023-10-15 11:03:12', 1, NULL, 'comprobantes/comprobante_19.pdf', NULL),
(20, 66362987, 6626, '2023-07-02', '22:15:25', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-07-02 04:36:01', '2023-07-02 04:36:01', 1, NULL, 'comprobantes/comprobante_20.pdf', NULL),
(21, 66362987, 6626, '2022-07-22', '13:48:50', NULL, 0, 0, '2022-07-22 13:43:03', '2022-07-22 13:43:03', 1, NULL, 'comprobantes/comprobante_21.pdf', NULL),
(22, 66362987, 6626, '2024-02-09', '01:47:07', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-02-09 19:58:56', '2024-02-09 19:58:56', 0, NULL, NULL, NULL),
(23, 66362987, 6626, '2024-06-24', '20:41:01', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-06-24 04:59:26', '2024-06-24 04:59:26', 1, NULL, 'comprobantes/comprobante_23.pdf', NULL),
(24, 66362987, 6626, '2024-03-14', '00:27:51', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-03-14 18:14:14', '2024-03-14 18:14:14', 1, NULL, 'comprobantes/comprobante_24.pdf', NULL),
(25, 66362987, 6626, '2022-06-13', '02:34:00', 'Practicar ejercicios de relajación.', 1, 0, '2022-06-13 14:55:51', '2022-06-13 14:55:51', 1, NULL, 'comprobantes/comprobante_25.pdf', NULL),
(26, 66362987, 6626, '2024-07-30', '06:19:11', NULL, 1, 0, '2024-07-31 00:59:41', '2024-07-31 00:59:41', 1, NULL, 'comprobantes/comprobante_26.pdf', NULL),
(27, 66362987, 6626, '2023-12-13', '19:55:44', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-12-13 20:28:10', '2023-12-13 20:28:10', 0, NULL, NULL, NULL),
(28, 66362987, 6626, '2022-09-18', '04:14:16', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-09-18 22:37:25', '2022-09-18 22:37:25', 1, NULL, 'comprobantes/comprobante_28.pdf', NULL),
(29, 66362987, 6626, '2024-02-15', '16:40:22', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-02-15 03:30:28', '2024-02-15 03:30:28', 1, NULL, 'comprobantes/comprobante_29.pdf', NULL),
(30, 66362987, 6626, '2024-09-06', '14:58:50', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-09-06 08:52:50', '2024-09-06 08:52:50', 1, NULL, 'comprobantes/comprobante_30.pdf', NULL),
(31, 66362987, 6626, '2023-12-26', '00:52:13', 'Practicar ejercicios de relajación.', 1, 0, '2023-12-26 10:18:30', '2023-12-26 10:18:30', 1, NULL, 'comprobantes/comprobante_31.pdf', NULL),
(32, 66362987, 6626, '2024-06-01', '10:59:47', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-06-01 06:28:20', '2024-06-01 06:28:20', 1, NULL, 'comprobantes/comprobante_32.pdf', NULL),
(33, 66362987, 6626, '2024-08-18', '20:56:55', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-08-18 11:34:20', '2024-08-18 11:34:20', 1, NULL, 'comprobantes/comprobante_33.pdf', NULL),
(34, 66362987, 6626, '2022-03-17', '10:24:55', NULL, 0, 0, '2022-03-17 12:53:09', '2022-03-17 12:53:09', 1, NULL, 'comprobantes/comprobante_34.pdf', NULL),
(35, 49991074, 6626, '2022-08-17', '05:11:39', NULL, 1, 0, '2022-08-18 02:23:22', '2022-08-18 02:23:22', 1, NULL, 'comprobantes/comprobante_35.pdf', NULL),
(36, 49991074, 6626, '2022-04-11', '20:17:36', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2022-04-11 20:41:49', '2022-04-11 20:41:49', 1, NULL, 'comprobantes/comprobante_36.pdf', NULL),
(37, 49991074, 6626, '2024-05-16', '02:07:23', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-05-17 00:46:20', '2024-05-17 00:46:20', 1, NULL, 'comprobantes/comprobante_37.pdf', NULL),
(38, 49991074, 6626, '2023-11-08', '04:36:21', NULL, 1, 1, '2023-11-08 13:58:22', '2023-11-08 13:58:22', 1, NULL, 'comprobantes/comprobante_38.pdf', NULL),
(39, 49991074, 6626, '2024-08-29', '04:51:03', NULL, 0, 0, '2024-08-30 00:45:28', '2024-08-30 00:45:28', 1, NULL, 'comprobantes/comprobante_39.pdf', NULL),
(40, 49991074, 6626, '2024-06-03', '05:59:51', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-06-03 11:14:52', '2024-06-03 11:14:52', 0, NULL, NULL, NULL),
(41, 49991074, 6626, '2022-08-07', '18:51:37', NULL, 1, 0, '2022-08-07 23:11:24', '2022-08-07 23:11:24', 1, NULL, 'comprobantes/comprobante_41.pdf', NULL),
(42, 49991074, 6626, '2022-10-01', '14:24:14', 'Discutir avances en los objetivos establecidos.', 1, 1, '2022-10-01 03:24:16', '2022-10-01 03:24:16', 0, NULL, NULL, NULL),
(43, 49991074, 6626, '2022-05-05', '13:30:14', NULL, 1, 0, '2022-05-05 12:02:35', '2022-05-05 12:02:35', 1, NULL, 'comprobantes/comprobante_43.pdf', NULL),
(44, 49991074, 6626, '2023-04-22', '01:37:15', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2023-04-22 07:49:53', '2023-04-22 07:49:53', 0, NULL, NULL, NULL),
(45, 49991074, 6626, '2022-06-20', '15:52:21', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-06-20 11:32:41', '2022-06-20 11:32:41', 1, NULL, 'comprobantes/comprobante_45.pdf', NULL),
(46, 49991074, 6626, '2023-05-28', '16:23:37', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-28 15:23:56', '2023-05-28 15:23:56', 1, NULL, 'comprobantes/comprobante_46.pdf', NULL),
(47, 49991074, 6626, '2023-11-22', '00:01:59', NULL, 1, 0, '2023-11-23 02:48:43', '2023-11-23 02:48:43', 0, NULL, NULL, NULL),
(48, 14841318, 6626, '2022-04-06', '20:52:21', NULL, 1, 0, '2022-04-06 16:32:17', '2022-04-06 16:32:17', 1, NULL, 'comprobantes/comprobante_48.pdf', NULL),
(49, 14841318, 6626, '2023-08-28', '23:56:26', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-08-29 01:31:48', '2023-08-29 01:31:48', 1, NULL, 'comprobantes/comprobante_49.pdf', NULL),
(50, 14841318, 6626, '2023-08-24', '05:24:36', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-08-24 18:46:35', '2023-08-24 18:46:35', 1, NULL, 'comprobantes/comprobante_50.pdf', NULL),
(51, 14841318, 6626, '2023-10-21', '22:35:40', NULL, 1, 0, '2023-10-22 01:36:27', '2023-10-22 01:36:27', 1, NULL, 'comprobantes/comprobante_51.pdf', NULL),
(52, 14841318, 6626, '2022-02-19', '16:00:32', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-02-19 18:12:42', '2022-02-19 18:12:42', 1, NULL, 'comprobantes/comprobante_52.pdf', NULL),
(53, 14841318, 6626, '2024-03-10', '22:12:55', 'Discutir avances en los objetivos establecidos.', 1, 1, '2024-03-10 04:39:26', '2024-03-10 04:39:26', 1, NULL, 'comprobantes/comprobante_53.pdf', NULL),
(54, 14841318, 6626, '2022-11-26', '07:14:14', NULL, 1, 0, '2022-11-26 12:07:24', '2022-11-26 12:07:24', 1, NULL, 'comprobantes/comprobante_54.pdf', NULL),
(55, 14841318, 6626, '2024-12-20', '01:32:48', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-12-20 22:44:30', '2024-12-20 22:44:30', 1, NULL, 'comprobantes/comprobante_55.pdf', NULL),
(56, 14841318, 6626, '2023-01-17', '17:34:49', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-01-17 07:25:07', '2023-01-17 07:25:07', 1, NULL, 'comprobantes/comprobante_56.pdf', NULL),
(57, 14841318, 6626, '2022-02-25', '12:43:59', NULL, 0, 0, '2022-02-25 11:00:56', '2022-02-25 11:00:56', 1, NULL, 'comprobantes/comprobante_57.pdf', NULL),
(58, 14841318, 6626, '2023-04-02', '03:32:59', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-04-02 18:12:44', '2023-04-02 18:12:44', 1, NULL, 'comprobantes/comprobante_58.pdf', NULL),
(59, 14841318, 6626, '2024-12-12', '07:11:59', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-12-12 06:03:18', '2024-12-12 06:03:18', 0, NULL, NULL, NULL),
(60, 14841318, 6626, '2022-04-13', '10:15:27', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-04-14 00:17:27', '2022-04-14 00:17:27', 0, NULL, NULL, NULL),
(61, 14841318, 6626, '2022-11-05', '18:32:18', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-11-05 11:25:43', '2022-11-05 11:25:43', 1, NULL, 'comprobantes/comprobante_61.pdf', NULL),
(62, 14841318, 6626, '2022-02-20', '22:41:14', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-02-20 11:14:12', '2022-02-20 11:14:12', 1, NULL, 'comprobantes/comprobante_62.pdf', NULL),
(63, 14841318, 6626, '2023-02-12', '12:43:03', 'Practicar ejercicios de relajación.', 0, 0, '2023-02-12 19:56:44', '2023-02-12 19:56:44', 1, NULL, 'comprobantes/comprobante_63.pdf', NULL),
(64, 14841318, 6626, '2022-10-25', '10:28:28', 'Analizar situaciones laborales recientes.', 1, 1, '2022-10-25 11:05:38', '2022-10-25 11:05:38', 1, NULL, 'comprobantes/comprobante_64.pdf', NULL),
(65, 14841318, 6626, '2022-10-05', '04:57:57', 'Analizar situaciones laborales recientes.', 0, 0, '2022-10-05 07:21:58', '2022-10-05 07:21:58', 1, NULL, 'comprobantes/comprobante_65.pdf', NULL),
(66, 14841318, 6626, '2022-07-25', '07:41:58', 'Practicar ejercicios de relajación.', 0, 0, '2022-07-25 18:20:42', '2022-07-25 18:20:42', 1, NULL, 'comprobantes/comprobante_66.pdf', NULL),
(67, 14841318, 6626, '2024-07-21', '06:29:40', NULL, 1, 0, '2024-07-21 07:32:28', '2024-07-21 07:32:28', 1, NULL, 'comprobantes/comprobante_67.pdf', NULL),
(68, 14841318, 6626, '2024-11-18', '11:54:31', 'Analizar situaciones laborales recientes.', 1, 0, '2024-11-19 00:27:48', '2024-11-19 00:27:48', 1, NULL, 'comprobantes/comprobante_68.pdf', NULL),
(69, 14841318, 6626, '2024-04-09', '16:15:50', NULL, 0, 0, '2024-04-09 05:28:33', '2024-04-09 05:28:33', 0, NULL, NULL, NULL),
(70, 14841318, 6626, '2023-05-07', '12:24:44', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-07 08:41:36', '2023-05-07 08:41:36', 1, NULL, 'comprobantes/comprobante_70.pdf', NULL),
(71, 14841318, 6626, '2024-02-25', '16:02:34', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-02-25 22:18:16', '2024-02-25 22:18:16', 1, NULL, 'comprobantes/comprobante_71.pdf', NULL),
(72, 14841318, 6626, '2022-04-06', '17:28:54', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-04-06 19:26:50', '2022-04-06 19:26:50', 1, NULL, 'comprobantes/comprobante_72.pdf', NULL),
(73, 77756766, 6626, '2024-02-13', '16:42:45', 'Identificar patrones de pensamiento negativos.', 1, 1, '2024-02-13 05:41:16', '2024-02-13 05:41:16', 1, NULL, 'comprobantes/comprobante_73.pdf', NULL),
(74, 77756766, 6626, '2022-03-17', '12:10:06', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-03-18 01:04:03', '2022-03-18 01:04:03', 1, NULL, 'comprobantes/comprobante_74.pdf', NULL),
(75, 77756766, 6626, '2024-07-16', '05:53:54', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-07-16 09:26:54', '2024-07-16 09:26:54', 1, NULL, 'comprobantes/comprobante_75.pdf', NULL),
(76, 77756766, 6626, '2023-03-05', '18:02:42', 'Analizar situaciones laborales recientes.', 0, 0, '2023-03-05 08:17:32', '2023-03-05 08:17:32', 1, NULL, 'comprobantes/comprobante_76.pdf', NULL),
(77, 77756766, 6626, '2023-07-31', '15:11:57', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-07-31 18:52:03', '2023-07-31 18:52:03', 1, NULL, 'comprobantes/comprobante_77.pdf', NULL),
(78, 77756766, 6626, '2022-01-09', '06:16:58', NULL, 0, 0, '2022-01-09 17:21:59', '2022-01-09 17:21:59', 1, NULL, 'comprobantes/comprobante_78.pdf', NULL),
(79, 77756766, 6626, '2023-12-12', '12:16:59', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-12-12 15:24:53', '2023-12-12 15:24:53', 1, NULL, 'comprobantes/comprobante_79.pdf', NULL),
(80, 77756766, 6626, '2022-11-22', '00:26:00', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-11-22 07:01:22', '2022-11-22 07:01:22', 0, NULL, NULL, NULL),
(81, 77756766, 6626, '2024-10-30', '07:12:06', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2024-10-31 01:05:00', '2024-10-31 01:05:00', 0, NULL, NULL, NULL),
(82, 77756766, 6626, '2024-02-01', '18:12:08', NULL, 0, 0, '2024-02-01 11:30:36', '2024-02-01 11:30:36', 1, NULL, 'comprobantes/comprobante_82.pdf', NULL),
(83, 77756766, 6626, '2024-01-12', '03:45:51', NULL, 1, 0, '2024-01-12 04:03:38', '2024-01-12 04:03:38', 1, NULL, 'comprobantes/comprobante_83.pdf', NULL),
(84, 77756766, 6626, '2024-09-05', '02:45:56', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-09-05 05:13:29', '2024-09-05 05:13:29', 1, NULL, 'comprobantes/comprobante_84.pdf', NULL),
(85, 77756766, 6626, '2023-02-21', '17:42:07', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-02-21 15:19:18', '2023-02-21 15:19:18', 1, NULL, 'comprobantes/comprobante_85.pdf', NULL),
(86, 77756766, 6626, '2023-12-17', '15:14:51', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-12-18 02:33:36', '2023-12-18 02:33:36', 0, NULL, NULL, NULL),
(87, 77756766, 6626, '2022-04-16', '03:39:31', 'Revisar tarea asignada la semana pasada.', 0, 1, '2022-04-16 07:41:30', '2022-04-16 07:41:30', 1, NULL, 'comprobantes/comprobante_87.pdf', NULL),
(88, 77756766, 6626, '2024-07-17', '22:21:05', 'Practicar ejercicios de relajación.', 0, 0, '2024-07-17 10:30:09', '2024-07-17 10:30:09', 0, NULL, NULL, NULL),
(89, 77756766, 6626, '2022-10-05', '03:13:43', NULL, 1, 0, '2022-10-05 09:15:38', '2022-10-05 09:15:38', 1, NULL, 'comprobantes/comprobante_89.pdf', NULL),
(90, 77756766, 6626, '2024-04-19', '13:06:06', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-04-19 07:51:26', '2024-04-19 07:51:26', 1, NULL, 'comprobantes/comprobante_90.pdf', NULL),
(91, 41774478, 1582, '2024-10-18', '23:18:41', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-10-18 16:34:44', '2024-10-18 16:34:44', 1, NULL, 'comprobantes/comprobante_91.pdf', NULL),
(92, 41774478, 1582, '2022-12-22', '13:47:02', 'Analizar situaciones laborales recientes.', 1, 0, '2022-12-22 16:11:02', '2022-12-22 16:11:02', 1, NULL, 'comprobantes/comprobante_92.pdf', NULL),
(93, 41774478, 1582, '2024-05-06', '04:51:23', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-05-06 08:46:38', '2024-05-06 08:46:38', 1, NULL, 'comprobantes/comprobante_93.pdf', NULL),
(94, 41774478, 1582, '2023-08-06', '11:28:43', NULL, 0, 0, '2023-08-06 21:58:58', '2023-08-06 21:58:58', 1, NULL, 'comprobantes/comprobante_94.pdf', NULL),
(95, 41774478, 1582, '2022-01-16', '02:30:31', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-01-17 02:52:35', '2022-01-17 02:52:35', 1, NULL, 'comprobantes/comprobante_95.pdf', NULL),
(96, 41774478, 1582, '2023-08-02', '08:05:26', NULL, 0, 0, '2023-08-02 09:31:33', '2023-08-02 09:31:33', 1, NULL, 'comprobantes/comprobante_96.pdf', NULL),
(97, 41774478, 1582, '2022-02-05', '21:51:14', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2022-02-05 20:55:54', '2022-02-05 20:55:54', 1, NULL, 'comprobantes/comprobante_97.pdf', NULL),
(98, 41774478, 1582, '2023-09-05', '01:50:00', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-09-05 21:07:41', '2023-09-05 21:07:41', 1, NULL, 'comprobantes/comprobante_98.pdf', NULL),
(99, 41774478, 1582, '2023-10-07', '13:50:59', NULL, 0, 0, '2023-10-07 04:43:36', '2023-10-07 04:43:36', 1, NULL, 'comprobantes/comprobante_99.pdf', NULL),
(100, 41774478, 1582, '2023-02-20', '07:34:09', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-02-20 23:24:24', '2023-02-20 23:24:24', 1, NULL, 'comprobantes/comprobante_100.pdf', NULL),
(101, 41774478, 1582, '2024-10-27', '11:44:51', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-10-27 16:50:31', '2024-10-27 16:50:31', 1, NULL, 'comprobantes/comprobante_101.pdf', NULL),
(102, 41774478, 1582, '2024-02-27', '15:38:27', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-02-27 17:31:03', '2024-02-27 17:31:03', 1, NULL, 'comprobantes/comprobante_102.pdf', NULL),
(103, 41774478, 1582, '2022-02-13', '05:25:11', NULL, 0, 0, '2022-02-13 17:35:03', '2022-02-13 17:35:03', 1, NULL, 'comprobantes/comprobante_103.pdf', NULL),
(104, 41774478, 1582, '2024-05-31', '17:02:10', 'Analizar situaciones laborales recientes.', 0, 0, '2024-05-31 11:56:02', '2024-05-31 11:56:02', 1, NULL, 'comprobantes/comprobante_104.pdf', NULL),
(105, 41774478, 1582, '2023-08-20', '19:21:49', 'Analizar situaciones laborales recientes.', 0, 0, '2023-08-20 06:01:01', '2023-08-20 06:01:01', 1, NULL, 'comprobantes/comprobante_105.pdf', NULL),
(106, 41774478, 1582, '2024-02-26', '00:25:06', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-02-26 23:40:13', '2024-02-26 23:40:13', 1, NULL, 'comprobantes/comprobante_106.pdf', NULL),
(107, 41774478, 1582, '2022-02-28', '11:57:33', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-02-28 18:06:21', '2022-02-28 18:06:21', 1, NULL, 'comprobantes/comprobante_107.pdf', NULL),
(108, 41774478, 1582, '2024-01-20', '20:17:57', NULL, 0, 0, '2024-01-20 22:54:47', '2024-01-20 22:54:47', 1, NULL, 'comprobantes/comprobante_108.pdf', NULL),
(109, 41774478, 1582, '2022-04-05', '02:56:31', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-04-05 19:06:44', '2022-04-05 19:06:44', 1, NULL, 'comprobantes/comprobante_109.pdf', NULL),
(110, 41774478, 1582, '2023-12-24', '06:25:05', 'Analizar situaciones laborales recientes.', 1, 0, '2023-12-24 17:44:37', '2023-12-24 17:44:37', 1, NULL, 'comprobantes/comprobante_110.pdf', NULL),
(111, 41774478, 1582, '2023-12-07', '14:08:08', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-12-07 04:11:00', '2023-12-07 04:11:00', 1, NULL, 'comprobantes/comprobante_111.pdf', NULL),
(112, 41774478, 1582, '2024-01-10', '03:52:09', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-01-10 14:32:28', '2024-01-10 14:32:28', 0, NULL, NULL, NULL),
(113, 41774478, 1582, '2024-10-06', '03:58:41', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-10-06 06:29:19', '2024-10-06 06:29:19', 1, NULL, 'comprobantes/comprobante_113.pdf', NULL),
(114, 41774478, 1582, '2024-05-12', '08:47:15', NULL, 1, 0, '2024-05-12 08:14:29', '2024-05-12 08:14:29', 1, NULL, 'comprobantes/comprobante_114.pdf', NULL),
(115, 41774478, 1582, '2024-12-28', '18:55:32', NULL, 1, 1, '2024-12-28 15:31:41', '2024-12-28 15:31:41', 1, NULL, 'comprobantes/comprobante_115.pdf', NULL),
(116, 41774478, 1582, '2022-12-03', '16:43:39', NULL, 1, 0, '2022-12-03 06:44:40', '2022-12-03 06:44:40', 0, NULL, NULL, NULL),
(117, 41774478, 1582, '2023-04-14', '17:11:15', NULL, 0, 0, '2023-04-14 18:07:49', '2023-04-14 18:07:49', 0, NULL, NULL, NULL),
(118, 41774478, 1582, '2022-01-11', '11:45:32', NULL, 1, 0, '2022-01-11 13:22:32', '2022-01-11 13:22:32', 1, NULL, 'comprobantes/comprobante_118.pdf', NULL),
(119, 76637170, 1824, '2024-11-18', '02:48:37', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-11-18 17:58:53', '2024-11-18 17:58:53', 1, NULL, 'comprobantes/comprobante_119.pdf', NULL),
(120, 76637170, 1824, '2024-02-17', '05:45:53', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-02-17 07:22:45', '2024-02-17 07:22:45', 1, NULL, 'comprobantes/comprobante_120.pdf', NULL),
(121, 76637170, 1824, '2024-07-16', '17:57:39', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-07-16 05:31:22', '2024-07-16 05:31:22', 0, NULL, NULL, NULL),
(122, 76637170, 1824, '2022-02-02', '16:29:38', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-02-02 13:55:29', '2022-02-02 13:55:29', 1, NULL, 'comprobantes/comprobante_122.pdf', NULL),
(123, 76637170, 1824, '2022-10-12', '10:06:03', 'Identificar patrones de pensamiento negativos.', 0, 1, '2022-10-13 01:08:18', '2022-10-13 01:08:18', 1, NULL, 'comprobantes/comprobante_123.pdf', NULL),
(124, 76637170, 1824, '2023-12-30', '15:19:46', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-12-30 14:40:08', '2023-12-30 14:40:08', 1, NULL, 'comprobantes/comprobante_124.pdf', NULL),
(125, 76637170, 1824, '2022-01-09', '12:24:40', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-01-10 00:37:34', '2022-01-10 00:37:34', 0, NULL, NULL, NULL),
(126, 76637170, 1824, '2024-11-30', '06:23:46', 'Revisar tarea asignada la semana pasada.', 0, 0, '2024-11-30 13:53:38', '2024-11-30 13:53:38', 1, NULL, 'comprobantes/comprobante_126.pdf', NULL),
(127, 76637170, 1824, '2022-12-10', '18:37:27', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-12-10 10:35:24', '2022-12-10 10:35:24', 1, NULL, 'comprobantes/comprobante_127.pdf', NULL),
(128, 76637170, 1824, '2023-07-15', '17:06:19', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-07-15 15:28:44', '2023-07-15 15:28:44', 1, NULL, 'comprobantes/comprobante_128.pdf', NULL),
(129, 76637170, 1824, '2023-08-17', '17:00:28', NULL, 1, 0, '2023-08-18 01:50:56', '2023-08-18 01:50:56', 0, NULL, NULL, NULL),
(130, 76637170, 1824, '2022-07-09', '22:58:01', NULL, 0, 1, '2022-07-10 00:26:09', '2022-07-10 00:26:09', 1, NULL, 'comprobantes/comprobante_130.pdf', NULL),
(131, 76637170, 1824, '2022-07-22', '07:27:42', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-07-22 15:51:26', '2022-07-22 15:51:26', 1, NULL, 'comprobantes/comprobante_131.pdf', NULL),
(132, 76637170, 1824, '2023-01-19', '10:20:38', NULL, 1, 0, '2023-01-19 19:59:58', '2023-01-19 19:59:58', 1, NULL, 'comprobantes/comprobante_132.pdf', NULL),
(133, 76637170, 1824, '2024-04-23', '06:12:17', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-04-23 19:37:09', '2024-04-23 19:37:09', 0, NULL, NULL, NULL),
(134, 76637170, 1824, '2024-12-06', '16:14:15', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-12-06 21:43:39', '2024-12-06 21:43:39', 0, NULL, NULL, NULL),
(135, 76637170, 1824, '2023-07-30', '19:11:36', 'Analizar situaciones laborales recientes.', 1, 0, '2023-07-31 01:49:26', '2023-07-31 01:49:26', 1, NULL, 'comprobantes/comprobante_135.pdf', NULL),
(136, 66362987, 3155, '2023-02-03', '20:14:28', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-02-03 20:47:22', '2023-02-03 20:47:22', 1, NULL, 'comprobantes/comprobante_136.pdf', NULL),
(137, 66362987, 3155, '2023-08-31', '05:36:31', 'Practicar ejercicios de relajación.', 1, 0, '2023-08-31 08:24:08', '2023-08-31 08:24:08', 1, NULL, 'comprobantes/comprobante_137.pdf', NULL),
(138, 66362987, 3155, '2024-02-07', '22:34:31', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-02-07 19:29:12', '2024-02-07 19:29:12', 1, NULL, 'comprobantes/comprobante_138.pdf', NULL),
(139, 66362987, 3155, '2022-04-28', '18:14:09', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-04-28 18:36:28', '2022-04-28 18:36:28', 1, NULL, 'comprobantes/comprobante_139.pdf', NULL),
(140, 66362987, 3155, '2024-01-05', '18:46:37', 'Trabajar en estrategias de manejo de ansiedad.', 0, 1, '2024-01-06 02:30:58', '2024-01-06 02:30:58', 1, NULL, 'comprobantes/comprobante_140.pdf', NULL),
(141, 66362987, 3155, '2023-05-29', '04:18:33', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-05-29 23:15:43', '2023-05-29 23:15:43', 1, NULL, 'comprobantes/comprobante_141.pdf', NULL),
(142, 66362987, 3155, '2023-09-20', '22:08:56', 'Revisar tarea asignada la semana pasada.', 0, 1, '2023-09-20 22:40:17', '2023-09-20 22:40:17', 1, NULL, 'comprobantes/comprobante_142.pdf', NULL),
(143, 66362987, 3155, '2022-11-20', '23:13:37', 'Analizar situaciones laborales recientes.', 0, 0, '2022-11-20 11:10:35', '2022-11-20 11:10:35', 1, NULL, 'comprobantes/comprobante_143.pdf', NULL),
(144, 66362987, 3155, '2024-02-15', '06:32:59', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-02-15 12:06:24', '2024-02-15 12:06:24', 1, NULL, 'comprobantes/comprobante_144.pdf', NULL),
(145, 66362987, 3155, '2022-06-22', '04:31:13', 'Practicar ejercicios de relajación.', 0, 0, '2022-06-22 21:14:24', '2022-06-22 21:14:24', 1, NULL, 'comprobantes/comprobante_145.pdf', NULL),
(146, 66362987, 3155, '2023-09-18', '16:58:07', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-09-18 05:32:45', '2023-09-18 05:32:45', 1, NULL, 'comprobantes/comprobante_146.pdf', NULL),
(147, 66362987, 3155, '2023-05-15', '17:25:56', NULL, 1, 0, '2023-05-15 17:27:25', '2023-05-15 17:27:25', 1, NULL, 'comprobantes/comprobante_147.pdf', NULL),
(148, 66362987, 3155, '2022-11-10', '22:20:14', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-11-10 15:26:07', '2022-11-10 15:26:07', 1, NULL, 'comprobantes/comprobante_148.pdf', NULL),
(149, 66362987, 3155, '2024-12-21', '16:50:44', NULL, 0, 0, '2024-12-22 00:18:30', '2024-12-22 00:18:30', 1, NULL, 'comprobantes/comprobante_149.pdf', NULL),
(150, 66362987, 3155, '2024-02-13', '05:24:37', 'Revisar tarea asignada la semana pasada.', 1, 1, '2024-02-13 13:40:17', '2024-02-13 13:40:17', 1, NULL, 'comprobantes/comprobante_150.pdf', NULL),
(151, 66362987, 3155, '2022-12-05', '18:53:35', NULL, 1, 0, '2022-12-05 15:07:54', '2022-12-05 15:07:54', 1, NULL, 'comprobantes/comprobante_151.pdf', NULL),
(152, 66362987, 3155, '2023-12-27', '02:25:33', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2023-12-27 03:03:44', '2023-12-27 03:03:44', 0, NULL, NULL, NULL),
(153, 66362987, 3155, '2022-03-03', '07:04:49', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-03-03 03:44:05', '2022-03-03 03:44:05', 1, NULL, 'comprobantes/comprobante_153.pdf', NULL),
(154, 56002846, 3155, '2022-12-18', '13:09:37', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-12-18 15:04:52', '2022-12-18 15:04:52', 1, NULL, 'comprobantes/comprobante_154.pdf', NULL),
(155, 56002846, 3155, '2024-01-06', '12:53:51', NULL, 1, 1, '2024-01-06 09:25:09', '2024-01-06 09:25:09', 1, NULL, 'comprobantes/comprobante_155.pdf', NULL),
(156, 56002846, 3155, '2022-04-10', '12:19:21', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-04-10 13:34:34', '2022-04-10 13:34:34', 1, NULL, 'comprobantes/comprobante_156.pdf', NULL),
(157, 56002846, 3155, '2023-12-12', '10:06:13', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-12-12 06:43:58', '2023-12-12 06:43:58', 1, NULL, 'comprobantes/comprobante_157.pdf', NULL),
(158, 56002846, 3155, '2022-09-28', '11:36:33', 'Practicar ejercicios de relajación.', 1, 0, '2022-09-28 17:58:26', '2022-09-28 17:58:26', 1, NULL, 'comprobantes/comprobante_158.pdf', NULL),
(159, 56002846, 3155, '2024-07-10', '08:57:56', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-07-10 16:31:04', '2024-07-10 16:31:04', 1, NULL, 'comprobantes/comprobante_159.pdf', NULL),
(160, 56002846, 3155, '2023-11-01', '08:07:30', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-11-01 20:50:14', '2023-11-01 20:50:14', 1, NULL, 'comprobantes/comprobante_160.pdf', NULL),
(161, 56002846, 3155, '2022-11-29', '15:50:30', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-11-29 09:30:20', '2022-11-29 09:30:20', 1, NULL, 'comprobantes/comprobante_161.pdf', NULL),
(162, 56002846, 3155, '2024-12-13', '15:39:34', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-12-13 23:34:31', '2024-12-13 23:34:31', 1, NULL, 'comprobantes/comprobante_162.pdf', NULL),
(163, 56002846, 3155, '2024-12-07', '04:22:46', NULL, 1, 0, '2024-12-07 08:38:29', '2024-12-07 08:38:29', 1, NULL, 'comprobantes/comprobante_163.pdf', NULL),
(164, 56002846, 3155, '2024-10-30', '01:40:24', 'Analizar situaciones laborales recientes.', 1, 0, '2024-10-31 01:20:53', '2024-10-31 01:20:53', 1, NULL, 'comprobantes/comprobante_164.pdf', NULL),
(165, 56002846, 3155, '2024-12-10', '01:47:45', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-12-10 11:02:32', '2024-12-10 11:02:32', 1, NULL, 'comprobantes/comprobante_165.pdf', NULL),
(166, 56002846, 3155, '2022-11-29', '16:28:04', NULL, 1, 0, '2022-11-29 16:41:16', '2022-11-29 16:41:16', 1, NULL, 'comprobantes/comprobante_166.pdf', NULL),
(167, 56002846, 3155, '2022-10-30', '20:47:57', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-10-30 17:56:30', '2022-10-30 17:56:30', 1, NULL, 'comprobantes/comprobante_167.pdf', NULL),
(168, 63159870, 3155, '2023-11-11', '10:33:56', 'Practicar ejercicios de relajación.', 1, 0, '2023-11-12 02:38:31', '2023-11-12 02:38:31', 1, NULL, 'comprobantes/comprobante_168.pdf', NULL),
(169, 63159870, 3155, '2022-07-13', '13:17:06', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-07-13 08:11:12', '2022-07-13 08:11:12', 1, NULL, 'comprobantes/comprobante_169.pdf', NULL),
(170, 63159870, 3155, '2022-09-23', '18:15:02', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-09-24 02:53:33', '2022-09-24 02:53:33', 1, NULL, 'comprobantes/comprobante_170.pdf', NULL),
(171, 63159870, 3155, '2023-05-31', '16:27:22', 'Practicar ejercicios de relajación.', 1, 0, '2023-05-31 21:51:57', '2023-05-31 21:51:57', 1, NULL, 'comprobantes/comprobante_171.pdf', NULL),
(172, 63159870, 3155, '2022-09-06', '20:00:38', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-09-06 11:00:40', '2022-09-06 11:00:40', 1, NULL, 'comprobantes/comprobante_172.pdf', NULL),
(173, 63159870, 3155, '2022-06-16', '16:52:18', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-06-16 17:24:09', '2022-06-16 17:24:09', 1, NULL, 'comprobantes/comprobante_173.pdf', NULL),
(174, 63159870, 3155, '2022-05-20', '13:54:30', 'Analizar situaciones laborales recientes.', 1, 1, '2022-05-21 02:20:12', '2022-05-21 02:20:12', 0, NULL, NULL, NULL),
(175, 63159870, 3155, '2023-12-25', '23:59:10', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-12-25 11:06:06', '2023-12-25 11:06:06', 1, NULL, 'comprobantes/comprobante_175.pdf', NULL),
(176, 63159870, 3155, '2022-03-29', '16:02:34', 'Evaluar progreso en la comunicación interpersonal.', 0, 1, '2022-03-29 15:27:24', '2022-03-29 15:27:24', 1, NULL, 'comprobantes/comprobante_176.pdf', NULL),
(177, 63159870, 3155, '2023-05-09', '04:14:10', 'Reflexionar sobre los eventos de la semana.', 1, 1, '2023-05-09 15:25:45', '2023-05-09 15:25:45', 0, NULL, NULL, NULL),
(178, 63159870, 3155, '2022-06-04', '10:24:16', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-06-04 16:27:19', '2022-06-04 16:27:19', 1, NULL, 'comprobantes/comprobante_178.pdf', NULL),
(179, 63159870, 3155, '2022-12-07', '10:56:45', 'Practicar ejercicios de relajación.', 1, 0, '2022-12-07 13:09:23', '2022-12-07 13:09:23', 1, NULL, 'comprobantes/comprobante_179.pdf', NULL),
(180, 63159870, 3155, '2022-11-06', '11:38:42', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-11-06 05:35:02', '2022-11-06 05:35:02', 1, NULL, 'comprobantes/comprobante_180.pdf', NULL),
(181, 63159870, 3155, '2022-10-28', '12:33:07', NULL, 1, 0, '2022-10-28 19:15:40', '2022-10-28 19:15:40', 1, NULL, 'comprobantes/comprobante_181.pdf', NULL),
(182, 63159870, 3155, '2023-11-23', '06:56:31', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-11-23 03:11:02', '2023-11-23 03:11:02', 1, NULL, 'comprobantes/comprobante_182.pdf', NULL),
(183, 63159870, 3155, '2023-11-26', '04:14:16', NULL, 1, 0, '2023-11-26 09:14:21', '2023-11-26 09:14:21', 1, NULL, 'comprobantes/comprobante_183.pdf', NULL),
(184, 63159870, 3155, '2023-11-02', '17:56:26', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2023-11-02 21:54:50', '2023-11-02 21:54:50', 1, NULL, 'comprobantes/comprobante_184.pdf', NULL),
(185, 63159870, 3155, '2023-10-10', '17:40:07', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2023-10-10 09:54:51', '2023-10-10 09:54:51', 1, NULL, 'comprobantes/comprobante_185.pdf', NULL),
(186, 63159870, 3155, '2023-09-20', '11:17:29', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-09-20 23:13:10', '2023-09-20 23:13:10', 0, NULL, NULL, NULL),
(187, 63159870, 3155, '2023-12-23', '21:38:39', 'Practicar ejercicios de relajación.', 1, 0, '2023-12-23 17:16:43', '2023-12-23 17:16:43', 1, NULL, 'comprobantes/comprobante_187.pdf', NULL),
(188, 63159870, 3155, '2023-07-22', '17:12:31', NULL, 1, 0, '2023-07-22 18:33:25', '2023-07-22 18:33:25', 1, NULL, 'comprobantes/comprobante_188.pdf', NULL),
(189, 63159870, 3155, '2022-10-14', '20:06:10', 'Analizar situaciones laborales recientes.', 1, 0, '2022-10-14 22:28:09', '2022-10-14 22:28:09', 0, NULL, NULL, NULL),
(190, 63159870, 3155, '2024-05-17', '20:45:31', 'Practicar ejercicios de relajación.', 1, 0, '2024-05-17 17:22:24', '2024-05-17 17:22:24', 1, NULL, 'comprobantes/comprobante_190.pdf', NULL),
(191, 63159870, 3155, '2022-12-24', '00:06:42', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-12-24 10:08:56', '2022-12-24 10:08:56', 1, NULL, 'comprobantes/comprobante_191.pdf', NULL),
(192, 63159870, 3155, '2024-08-05', '22:48:54', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-08-05 06:17:52', '2024-08-05 06:17:52', 1, NULL, 'comprobantes/comprobante_192.pdf', NULL),
(193, 63159870, 3155, '2023-10-23', '00:42:15', NULL, 1, 0, '2023-10-23 12:27:41', '2023-10-23 12:27:41', 0, NULL, NULL, NULL),
(194, 63159870, 3155, '2022-04-17', '07:55:56', NULL, 0, 0, '2022-04-17 06:35:24', '2022-04-17 06:35:24', 1, NULL, 'comprobantes/comprobante_194.pdf', NULL),
(195, 63159870, 3155, '2022-03-01', '01:40:34', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-03-01 23:39:45', '2022-03-01 23:39:45', 1, NULL, 'comprobantes/comprobante_195.pdf', NULL),
(196, 41774478, 3155, '2022-12-01', '07:31:24', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-12-02 00:32:49', '2022-12-02 00:32:49', 1, NULL, 'comprobantes/comprobante_196.pdf', NULL),
(197, 41774478, 3155, '2022-06-21', '15:38:29', NULL, 1, 0, '2022-06-21 03:48:09', '2022-06-21 03:48:09', 1, NULL, 'comprobantes/comprobante_197.pdf', NULL),
(198, 41774478, 3155, '2024-11-29', '00:57:15', NULL, 1, 0, '2024-11-29 05:09:17', '2024-11-29 05:09:17', 1, NULL, 'comprobantes/comprobante_198.pdf', NULL),
(199, 41774478, 3155, '2024-04-21', '05:02:39', 'Analizar situaciones laborales recientes.', 1, 0, '2024-04-22 00:32:20', '2024-04-22 00:32:20', 1, NULL, 'comprobantes/comprobante_199.pdf', NULL),
(200, 41774478, 3155, '2023-11-06', '08:12:41', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-11-06 15:45:54', '2023-11-06 15:45:54', 1, NULL, 'comprobantes/comprobante_200.pdf', NULL),
(201, 41774478, 3155, '2024-06-13', '19:39:11', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-06-13 22:23:34', '2024-06-13 22:23:34', 0, NULL, NULL, NULL),
(202, 41774478, 3155, '2024-09-13', '00:13:59', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-09-13 05:48:10', '2024-09-13 05:48:10', 1, NULL, 'comprobantes/comprobante_202.pdf', NULL),
(203, 41774478, 3155, '2022-03-27', '08:29:51', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-03-27 21:19:39', '2022-03-27 21:19:39', 1, NULL, 'comprobantes/comprobante_203.pdf', NULL),
(204, 41774478, 3155, '2024-02-05', '11:04:50', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-02-05 14:02:45', '2024-02-05 14:02:45', 1, NULL, 'comprobantes/comprobante_204.pdf', NULL),
(205, 41774478, 3155, '2022-05-12', '05:30:42', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-05-12 14:25:52', '2022-05-12 14:25:52', 0, NULL, NULL, NULL),
(206, 41774478, 3155, '2022-12-30', '01:57:57', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-12-30 12:03:38', '2022-12-30 12:03:38', 1, NULL, 'comprobantes/comprobante_206.pdf', NULL),
(207, 41774478, 3155, '2024-01-02', '16:45:06', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-01-02 20:58:06', '2024-01-02 20:58:06', 1, NULL, 'comprobantes/comprobante_207.pdf', NULL),
(208, 41774478, 3155, '2023-07-26', '03:11:17', NULL, 0, 0, '2023-07-26 19:29:13', '2023-07-26 19:29:13', 0, NULL, NULL, NULL),
(209, 41774478, 3155, '2024-01-18', '18:43:31', 'Analizar situaciones laborales recientes.', 1, 0, '2024-01-18 17:47:43', '2024-01-18 17:47:43', 1, NULL, 'comprobantes/comprobante_209.pdf', NULL),
(210, 41774478, 3155, '2024-09-30', '16:37:33', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-09-30 22:18:48', '2024-09-30 22:18:48', 0, NULL, NULL, NULL),
(211, 41774478, 3155, '2023-02-17', '07:03:17', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-02-18 02:15:20', '2023-02-18 02:15:20', 1, NULL, 'comprobantes/comprobante_211.pdf', NULL),
(212, 41774478, 3155, '2022-12-31', '13:46:13', 'Practicar ejercicios de relajación.', 1, 1, '2022-12-31 16:05:26', '2022-12-31 16:05:26', 1, NULL, 'comprobantes/comprobante_212.pdf', NULL),
(213, 41774478, 3155, '2022-06-14', '22:25:46', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-06-14 22:15:14', '2022-06-14 22:15:14', 1, NULL, 'comprobantes/comprobante_213.pdf', NULL),
(214, 41774478, 3155, '2023-11-12', '11:09:23', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-11-12 14:49:28', '2023-11-12 14:49:28', 1, NULL, 'comprobantes/comprobante_214.pdf', NULL),
(215, 41774478, 3155, '2023-05-31', '19:45:08', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-05-31 15:41:08', '2023-05-31 15:41:08', 1, NULL, 'comprobantes/comprobante_215.pdf', NULL),
(216, 41774478, 3155, '2024-03-10', '18:33:41', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-03-10 20:54:21', '2024-03-10 20:54:21', 1, NULL, 'comprobantes/comprobante_216.pdf', NULL),
(217, 41774478, 3155, '2022-01-15', '05:04:59', NULL, 0, 1, '2022-01-15 04:36:40', '2022-01-15 04:36:40', 1, NULL, 'comprobantes/comprobante_217.pdf', NULL),
(218, 41774478, 3155, '2022-09-14', '13:32:48', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-09-15 01:37:58', '2022-09-15 01:37:58', 1, NULL, 'comprobantes/comprobante_218.pdf', NULL),
(219, 18169041, 3155, '2024-03-15', '03:44:06', NULL, 0, 0, '2024-03-15 16:20:08', '2024-03-15 16:20:08', 0, NULL, NULL, NULL),
(220, 18169041, 3155, '2024-12-30', '22:41:58', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-12-30 15:50:28', '2024-12-30 15:50:28', 1, NULL, 'comprobantes/comprobante_220.pdf', NULL),
(221, 18169041, 3155, '2022-01-15', '01:52:04', NULL, 0, 0, '2022-01-15 13:41:48', '2022-01-15 13:41:48', 1, NULL, 'comprobantes/comprobante_221.pdf', NULL),
(222, 18169041, 3155, '2024-03-14', '15:19:05', 'Revisar tarea asignada la semana pasada.', 0, 0, '2024-03-14 09:36:40', '2024-03-14 09:36:40', 1, NULL, 'comprobantes/comprobante_222.pdf', NULL),
(223, 18169041, 3155, '2024-07-29', '09:25:32', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-07-29 07:27:53', '2024-07-29 07:27:53', 1, NULL, 'comprobantes/comprobante_223.pdf', NULL),
(224, 18169041, 3155, '2022-07-30', '12:43:30', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-07-30 13:47:22', '2022-07-30 13:47:22', 1, NULL, 'comprobantes/comprobante_224.pdf', NULL),
(225, 18169041, 3155, '2023-09-13', '19:01:57', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-09-13 17:13:38', '2023-09-13 17:13:38', 1, NULL, 'comprobantes/comprobante_225.pdf', NULL),
(226, 18169041, 3155, '2024-09-23', '10:04:59', NULL, 1, 0, '2024-09-23 08:16:36', '2024-09-23 08:16:36', 0, NULL, NULL, NULL),
(227, 18169041, 3155, '2022-11-22', '07:04:59', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-11-22 23:24:46', '2022-11-22 23:24:46', 1, NULL, 'comprobantes/comprobante_227.pdf', NULL),
(228, 18169041, 3155, '2024-10-31', '14:40:38', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-10-31 23:34:58', '2024-10-31 23:34:58', 1, NULL, 'comprobantes/comprobante_228.pdf', NULL),
(229, 18169041, 3155, '2022-02-04', '01:01:11', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-02-04 20:51:08', '2022-02-04 20:51:08', 1, NULL, 'comprobantes/comprobante_229.pdf', NULL),
(230, 18169041, 3155, '2022-05-18', '23:26:56', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-05-18 08:43:13', '2022-05-18 08:43:13', 1, NULL, 'comprobantes/comprobante_230.pdf', NULL),
(231, 55302451, 4620, '2024-08-31', '14:14:23', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-08-31 15:59:46', '2024-08-31 15:59:46', 1, NULL, 'comprobantes/comprobante_231.pdf', NULL),
(232, 55302451, 4620, '2023-02-22', '02:15:13', 'Practicar ejercicios de relajación.', 1, 0, '2023-02-23 02:39:17', '2023-02-23 02:39:17', 1, NULL, 'comprobantes/comprobante_232.pdf', NULL),
(233, 55302451, 4620, '2024-08-23', '00:14:26', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-08-23 09:43:46', '2024-08-23 09:43:46', 0, NULL, NULL, NULL),
(234, 55302451, 4620, '2022-03-10', '05:20:48', NULL, 0, 0, '2022-03-10 23:59:00', '2022-03-10 23:59:00', 1, NULL, 'comprobantes/comprobante_234.pdf', NULL),
(235, 55302451, 4620, '2023-05-22', '09:51:22', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-05-22 15:11:40', '2023-05-22 15:11:40', 1, NULL, 'comprobantes/comprobante_235.pdf', NULL),
(236, 55302451, 4620, '2023-12-01', '05:59:51', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2023-12-02 02:47:56', '2023-12-02 02:47:56', 1, NULL, 'comprobantes/comprobante_236.pdf', NULL),
(237, 55302451, 4620, '2023-07-11', '14:07:46', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-07-11 05:44:24', '2023-07-11 05:44:24', 1, NULL, 'comprobantes/comprobante_237.pdf', NULL),
(238, 55302451, 4620, '2024-12-12', '20:56:58', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-12-12 23:48:05', '2024-12-12 23:48:05', 1, NULL, 'comprobantes/comprobante_238.pdf', NULL),
(239, 55302451, 4620, '2024-09-06', '16:41:26', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-09-06 19:38:02', '2024-09-06 19:38:02', 1, NULL, 'comprobantes/comprobante_239.pdf', NULL),
(240, 55302451, 4620, '2024-06-03', '10:01:52', 'Discutir avances en los objetivos establecidos.', 1, 1, '2024-06-03 12:43:36', '2024-06-03 12:43:36', 1, NULL, 'comprobantes/comprobante_240.pdf', NULL),
(241, 55302451, 4620, '2024-07-20', '17:04:56', 'Revisar tarea asignada la semana pasada.', 0, 1, '2024-07-20 06:37:51', '2024-07-20 06:37:51', 1, NULL, 'comprobantes/comprobante_241.pdf', NULL),
(242, 55302451, 4620, '2024-04-24', '14:14:48', NULL, 1, 0, '2024-04-24 03:17:52', '2024-04-24 03:17:52', 1, NULL, 'comprobantes/comprobante_242.pdf', NULL),
(243, 55302451, 4620, '2024-05-05', '07:34:54', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2024-05-05 20:36:35', '2024-05-05 20:36:35', 1, NULL, 'comprobantes/comprobante_243.pdf', NULL),
(244, 55302451, 4620, '2023-01-01', '05:23:52', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-01-02 02:57:10', '2023-01-02 02:57:10', 1, NULL, 'comprobantes/comprobante_244.pdf', NULL),
(245, 55302451, 4620, '2022-08-01', '03:27:19', NULL, 1, 0, '2022-08-01 23:38:27', '2022-08-01 23:38:27', 1, NULL, 'comprobantes/comprobante_245.pdf', NULL),
(246, 55302451, 4620, '2023-10-09', '19:06:05', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-10-09 19:56:41', '2023-10-09 19:56:41', 1, NULL, 'comprobantes/comprobante_246.pdf', NULL),
(247, 55302451, 4620, '2022-11-02', '12:10:34', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-11-03 01:04:44', '2022-11-03 01:04:44', 1, NULL, 'comprobantes/comprobante_247.pdf', NULL),
(248, 55302451, 4620, '2022-03-24', '21:47:04', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-03-24 11:57:35', '2022-03-24 11:57:35', 1, NULL, 'comprobantes/comprobante_248.pdf', NULL),
(249, 55302451, 4620, '2022-01-08', '04:01:38', NULL, 0, 0, '2022-01-08 07:14:07', '2022-01-08 07:14:07', 1, NULL, 'comprobantes/comprobante_249.pdf', NULL),
(250, 55302451, 4620, '2024-12-11', '06:42:18', NULL, 1, 0, '2024-12-11 04:32:00', '2024-12-11 04:32:00', 1, NULL, 'comprobantes/comprobante_250.pdf', NULL),
(251, 55302451, 4620, '2023-03-29', '20:40:32', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-03-29 21:07:32', '2023-03-29 21:07:32', 1, NULL, 'comprobantes/comprobante_251.pdf', NULL),
(252, 64323872, 4620, '2024-11-14', '22:09:04', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-11-14 10:18:28', '2024-11-14 10:18:28', 1, NULL, 'comprobantes/comprobante_252.pdf', NULL),
(253, 64323872, 4620, '2023-07-27', '19:56:15', 'Practicar ejercicios de relajación.', 0, 0, '2023-07-27 16:31:54', '2023-07-27 16:31:54', 1, NULL, 'comprobantes/comprobante_253.pdf', NULL),
(254, 64323872, 4620, '2023-05-29', '05:45:46', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-05-29 21:56:05', '2023-05-29 21:56:05', 1, NULL, 'comprobantes/comprobante_254.pdf', NULL),
(255, 64323872, 4620, '2022-06-14', '13:50:23', NULL, 1, 0, '2022-06-14 15:51:57', '2022-06-14 15:51:57', 1, NULL, 'comprobantes/comprobante_255.pdf', NULL),
(256, 64323872, 4620, '2022-02-13', '13:32:45', 'Practicar ejercicios de relajación.', 0, 0, '2022-02-14 00:07:36', '2022-02-14 00:07:36', 1, NULL, 'comprobantes/comprobante_256.pdf', NULL),
(257, 64323872, 4620, '2024-07-02', '12:05:34', NULL, 1, 0, '2024-07-03 01:12:46', '2024-07-03 01:12:46', 1, NULL, 'comprobantes/comprobante_257.pdf', NULL),
(258, 64323872, 4620, '2023-04-29', '06:53:54', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-04-29 15:43:02', '2023-04-29 15:43:02', 1, NULL, 'comprobantes/comprobante_258.pdf', NULL),
(259, 64323872, 4620, '2024-07-09', '10:43:34', 'Analizar situaciones laborales recientes.', 1, 1, '2024-07-09 04:22:17', '2024-07-09 04:22:17', 1, NULL, 'comprobantes/comprobante_259.pdf', NULL),
(260, 64323872, 4620, '2023-09-02', '03:36:41', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-09-02 21:44:49', '2023-09-02 21:44:49', 1, NULL, 'comprobantes/comprobante_260.pdf', NULL),
(261, 64323872, 4620, '2023-05-03', '17:12:49', NULL, 1, 0, '2023-05-03 22:04:25', '2023-05-03 22:04:25', 1, NULL, 'comprobantes/comprobante_261.pdf', NULL),
(262, 64323872, 4620, '2022-09-10', '17:30:02', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-09-10 22:15:03', '2022-09-10 22:15:03', 1, NULL, 'comprobantes/comprobante_262.pdf', NULL),
(263, 64323872, 4620, '2022-06-22', '15:49:24', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2022-06-22 11:46:36', '2022-06-22 11:46:36', 1, NULL, 'comprobantes/comprobante_263.pdf', NULL),
(264, 64323872, 4620, '2022-09-07', '00:57:28', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-09-07 05:35:57', '2022-09-07 05:35:57', 1, NULL, 'comprobantes/comprobante_264.pdf', NULL),
(265, 64323872, 4620, '2024-09-01', '23:17:39', 'Practicar ejercicios de relajación.', 0, 0, '2024-09-01 16:16:53', '2024-09-01 16:16:53', 1, NULL, 'comprobantes/comprobante_265.pdf', NULL),
(266, 64323872, 4620, '2022-03-25', '23:38:08', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-03-25 03:17:01', '2022-03-25 03:17:01', 1, NULL, 'comprobantes/comprobante_266.pdf', NULL),
(267, 64323872, 4620, '2024-05-14', '14:03:54', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-05-14 20:03:39', '2024-05-14 20:03:39', 1, NULL, 'comprobantes/comprobante_267.pdf', NULL),
(268, 64323872, 4620, '2024-12-09', '04:52:47', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-12-09 17:51:47', '2024-12-09 17:51:47', 1, NULL, 'comprobantes/comprobante_268.pdf', NULL),
(269, 64323872, 4620, '2023-07-02', '06:11:13', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-07-02 20:25:58', '2023-07-02 20:25:58', 1, NULL, 'comprobantes/comprobante_269.pdf', NULL);
INSERT INTO `sesion` (`id_sesion`, `dni_paciente`, `matricula_psicologo`, `fecha`, `hora`, `comentario`, `presencial`, `cancelado`, `created_at`, `updated_at`, `pago`, `payment_id`, `comprobante_path`, `fecha_pago`) VALUES
(270, 64323872, 4620, '2024-09-12', '00:01:44', 'Practicar ejercicios de relajación.', 1, 0, '2024-09-12 05:02:30', '2024-09-12 05:02:30', 1, NULL, 'comprobantes/comprobante_270.pdf', NULL),
(271, 64323872, 4620, '2024-07-25', '22:58:36', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-07-25 06:14:14', '2024-07-25 06:14:14', 1, NULL, 'comprobantes/comprobante_271.pdf', NULL),
(272, 64323872, 4620, '2024-07-03', '17:57:08', 'Identificar patrones de pensamiento negativos.', 0, 1, '2024-07-03 23:46:55', '2024-07-03 23:46:55', 1, NULL, 'comprobantes/comprobante_272.pdf', NULL),
(273, 64323872, 4620, '2022-03-21', '06:27:19', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-03-21 09:33:12', '2022-03-21 09:33:12', 1, NULL, 'comprobantes/comprobante_273.pdf', NULL),
(274, 79171088, 4620, '2022-03-16', '18:47:16', NULL, 0, 0, '2022-03-17 02:55:16', '2022-03-17 02:55:16', 1, NULL, 'comprobantes/comprobante_274.pdf', NULL),
(275, 79171088, 4620, '2024-01-05', '08:42:18', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-01-05 15:53:45', '2024-01-05 15:53:45', 1, NULL, 'comprobantes/comprobante_275.pdf', NULL),
(276, 79171088, 4620, '2023-10-20', '06:00:09', NULL, 0, 0, '2023-10-21 00:22:21', '2023-10-21 00:22:21', 1, NULL, 'comprobantes/comprobante_276.pdf', NULL),
(277, 79171088, 4620, '2023-06-30', '03:53:13', NULL, 1, 0, '2023-06-30 16:52:27', '2023-06-30 16:52:27', 1, NULL, 'comprobantes/comprobante_277.pdf', NULL),
(278, 79171088, 4620, '2023-03-24', '12:03:32', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-03-24 15:09:09', '2023-03-24 15:09:09', 1, NULL, 'comprobantes/comprobante_278.pdf', NULL),
(279, 79171088, 4620, '2022-05-07', '06:16:49', NULL, 1, 0, '2022-05-07 04:26:43', '2022-05-07 04:26:43', 0, NULL, NULL, NULL),
(280, 79171088, 4620, '2022-08-23', '14:08:40', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-08-23 09:25:19', '2022-08-23 09:25:19', 1, NULL, 'comprobantes/comprobante_280.pdf', NULL),
(281, 79171088, 4620, '2023-02-03', '10:31:51', 'Analizar situaciones laborales recientes.', 1, 0, '2023-02-03 19:36:35', '2023-02-03 19:36:35', 1, NULL, 'comprobantes/comprobante_281.pdf', NULL),
(282, 79171088, 4620, '2023-01-16', '12:48:46', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-01-16 09:52:13', '2023-01-16 09:52:13', 1, NULL, 'comprobantes/comprobante_282.pdf', NULL),
(283, 79171088, 4620, '2024-07-20', '03:12:24', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-07-20 20:02:38', '2024-07-20 20:02:38', 1, NULL, 'comprobantes/comprobante_283.pdf', NULL),
(284, 79171088, 4620, '2023-06-12', '21:12:23', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-06-13 00:14:01', '2023-06-13 00:14:01', 1, NULL, 'comprobantes/comprobante_284.pdf', NULL),
(285, 79171088, 4620, '2023-07-30', '13:44:52', NULL, 0, 0, '2023-07-30 05:11:02', '2023-07-30 05:11:02', 1, NULL, 'comprobantes/comprobante_285.pdf', NULL),
(286, 79171088, 4620, '2024-09-14', '09:56:50', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-09-14 03:42:03', '2024-09-14 03:42:03', 1, NULL, 'comprobantes/comprobante_286.pdf', NULL),
(287, 79171088, 4620, '2023-06-27', '03:50:38', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-06-27 08:21:37', '2023-06-27 08:21:37', 1, NULL, 'comprobantes/comprobante_287.pdf', NULL),
(288, 79171088, 4620, '2024-07-26', '01:50:55', 'Revisar tarea asignada la semana pasada.', 1, 1, '2024-07-26 22:38:03', '2024-07-26 22:38:03', 1, NULL, 'comprobantes/comprobante_288.pdf', NULL),
(289, 79171088, 4620, '2023-04-17', '13:33:05', NULL, 1, 0, '2023-04-17 22:56:20', '2023-04-17 22:56:20', 1, NULL, 'comprobantes/comprobante_289.pdf', NULL),
(290, 79171088, 4620, '2022-09-02', '08:04:52', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-09-02 09:43:28', '2022-09-02 09:43:28', 1, NULL, 'comprobantes/comprobante_290.pdf', NULL),
(291, 79171088, 4620, '2024-09-28', '06:15:34', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2024-09-28 23:13:28', '2024-09-28 23:13:28', 1, NULL, 'comprobantes/comprobante_291.pdf', NULL),
(292, 79171088, 4620, '2023-05-18', '09:02:53', 'Practicar ejercicios de relajación.', 1, 0, '2023-05-18 09:39:11', '2023-05-18 09:39:11', 1, NULL, 'comprobantes/comprobante_292.pdf', NULL),
(293, 79171088, 4620, '2023-05-15', '19:03:36', 'Analizar situaciones laborales recientes.', 0, 0, '2023-05-15 12:17:09', '2023-05-15 12:17:09', 1, NULL, 'comprobantes/comprobante_293.pdf', NULL),
(294, 79171088, 4620, '2024-12-03', '08:13:18', 'Practicar ejercicios de relajación.', 0, 0, '2024-12-03 18:19:12', '2024-12-03 18:19:12', 1, NULL, 'comprobantes/comprobante_294.pdf', NULL),
(295, 79171088, 4620, '2023-02-03', '04:26:47', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-02-03 13:57:15', '2023-02-03 13:57:15', 1, NULL, 'comprobantes/comprobante_295.pdf', NULL),
(296, 79171088, 4620, '2022-11-17', '15:01:56', NULL, 0, 0, '2022-11-17 21:54:13', '2022-11-17 21:54:13', 1, NULL, 'comprobantes/comprobante_296.pdf', NULL),
(297, 79171088, 4620, '2023-08-10', '16:46:23', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-08-10 18:52:34', '2023-08-10 18:52:34', 1, NULL, 'comprobantes/comprobante_297.pdf', NULL),
(298, 79171088, 4620, '2023-12-06', '17:11:52', NULL, 1, 0, '2023-12-07 01:36:06', '2023-12-07 01:36:06', 1, NULL, 'comprobantes/comprobante_298.pdf', NULL),
(299, 79171088, 4620, '2024-12-17', '21:46:47', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-12-17 08:46:59', '2024-12-17 08:46:59', 1, NULL, 'comprobantes/comprobante_299.pdf', NULL),
(300, 79171088, 4620, '2022-02-24', '15:05:11', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-02-24 11:49:34', '2022-02-24 11:49:34', 1, NULL, 'comprobantes/comprobante_300.pdf', NULL),
(301, 62322325, 7562, '2023-04-25', '11:34:07', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-04-25 18:59:59', '2023-04-25 18:59:59', 1, NULL, 'comprobantes/comprobante_301.pdf', NULL),
(302, 62322325, 7562, '2024-05-06', '02:42:24', 'Revisar tarea asignada la semana pasada.', 0, 1, '2024-05-06 15:40:53', '2024-05-06 15:40:53', 0, NULL, NULL, NULL),
(303, 62322325, 7562, '2022-11-12', '11:10:38', NULL, 1, 0, '2022-11-12 13:35:40', '2022-11-12 13:35:40', 1, NULL, 'comprobantes/comprobante_303.pdf', NULL),
(304, 62322325, 7562, '2023-08-29', '19:05:02', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-08-29 23:13:13', '2023-08-29 23:13:13', 1, NULL, 'comprobantes/comprobante_304.pdf', NULL),
(305, 62322325, 7562, '2024-04-07', '12:52:27', NULL, 1, 0, '2024-04-07 09:53:19', '2024-04-07 09:53:19', 1, NULL, 'comprobantes/comprobante_305.pdf', NULL),
(306, 62322325, 7562, '2022-04-08', '03:25:06', 'Analizar situaciones laborales recientes.', 0, 0, '2022-04-08 16:44:23', '2022-04-08 16:44:23', 1, NULL, 'comprobantes/comprobante_306.pdf', NULL),
(307, 62322325, 7562, '2023-03-30', '00:22:45', NULL, 0, 0, '2023-03-30 19:17:44', '2023-03-30 19:17:44', 1, NULL, 'comprobantes/comprobante_307.pdf', NULL),
(308, 62322325, 7562, '2024-09-14', '16:30:33', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-09-14 05:19:01', '2024-09-14 05:19:01', 1, NULL, 'comprobantes/comprobante_308.pdf', NULL),
(309, 62322325, 7562, '2024-10-06', '06:28:25', 'Identificar patrones de pensamiento negativos.', 1, 1, '2024-10-06 04:46:23', '2024-10-06 04:46:23', 1, NULL, 'comprobantes/comprobante_309.pdf', NULL),
(310, 62322325, 7562, '2024-10-10', '19:31:13', NULL, 0, 0, '2024-10-10 13:32:35', '2024-10-10 13:32:35', 1, NULL, 'comprobantes/comprobante_310.pdf', NULL),
(311, 62322325, 7562, '2022-03-03', '22:16:20', 'Analizar situaciones laborales recientes.', 0, 0, '2022-03-03 20:40:18', '2022-03-03 20:40:18', 1, NULL, 'comprobantes/comprobante_311.pdf', NULL),
(312, 62322325, 7562, '2022-10-05', '08:22:23', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-10-05 07:16:12', '2022-10-05 07:16:12', 0, NULL, NULL, NULL),
(313, 62322325, 7562, '2022-07-28', '18:28:02', 'Practicar ejercicios de relajación.', 1, 0, '2022-07-28 14:28:41', '2022-07-28 14:28:41', 1, NULL, 'comprobantes/comprobante_313.pdf', NULL),
(314, 62322325, 7562, '2023-07-15', '17:58:21', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-07-15 09:21:09', '2023-07-15 09:21:09', 1, NULL, 'comprobantes/comprobante_314.pdf', NULL),
(315, 24722794, 7562, '2023-12-16', '06:44:01', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-12-16 10:21:14', '2023-12-16 10:21:14', 1, NULL, 'comprobantes/comprobante_315.pdf', NULL),
(316, 24722794, 7562, '2023-06-14', '01:01:23', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-06-14 14:28:17', '2023-06-14 14:28:17', 1, NULL, 'comprobantes/comprobante_316.pdf', NULL),
(317, 24722794, 7562, '2023-01-04', '01:47:23', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-01-04 17:31:49', '2023-01-04 17:31:49', 1, NULL, 'comprobantes/comprobante_317.pdf', NULL),
(318, 24722794, 7562, '2022-05-18', '12:54:01', NULL, 1, 0, '2022-05-18 11:00:06', '2022-05-18 11:00:06', 1, NULL, 'comprobantes/comprobante_318.pdf', NULL),
(319, 24722794, 7562, '2024-02-27', '19:04:30', NULL, 0, 0, '2024-02-27 13:50:49', '2024-02-27 13:50:49', 1, NULL, 'comprobantes/comprobante_319.pdf', NULL),
(320, 24722794, 7562, '2022-08-03', '05:36:31', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-08-03 06:58:49', '2022-08-03 06:58:49', 1, NULL, 'comprobantes/comprobante_320.pdf', NULL),
(321, 24722794, 7562, '2023-01-10', '16:07:48', 'Analizar situaciones laborales recientes.', 1, 1, '2023-01-10 06:54:14', '2023-01-10 06:54:14', 1, NULL, 'comprobantes/comprobante_321.pdf', NULL),
(322, 24722794, 7562, '2024-07-21', '11:54:57', 'Practicar ejercicios de relajación.', 1, 0, '2024-07-22 02:03:08', '2024-07-22 02:03:08', 0, NULL, NULL, NULL),
(323, 24722794, 7562, '2024-03-12', '23:14:00', NULL, 1, 0, '2024-03-12 13:02:18', '2024-03-12 13:02:18', 1, NULL, 'comprobantes/comprobante_323.pdf', NULL),
(324, 24722794, 7562, '2023-05-22', '06:24:15', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-05-23 02:21:12', '2023-05-23 02:21:12', 1, NULL, 'comprobantes/comprobante_324.pdf', NULL),
(325, 24722794, 7562, '2022-03-27', '17:43:07', 'Discutir avances en los objetivos establecidos.', 1, 1, '2022-03-27 17:44:45', '2022-03-27 17:44:45', 1, NULL, 'comprobantes/comprobante_325.pdf', NULL),
(326, 24722794, 7562, '2023-04-03', '06:38:15', NULL, 0, 0, '2023-04-03 20:23:25', '2023-04-03 20:23:25', 1, NULL, 'comprobantes/comprobante_326.pdf', NULL),
(327, 24722794, 7562, '2022-12-16', '20:57:57', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-12-16 13:21:39', '2022-12-16 13:21:39', 1, NULL, 'comprobantes/comprobante_327.pdf', NULL),
(328, 24722794, 7562, '2022-09-04', '00:24:29', NULL, 1, 0, '2022-09-04 14:37:40', '2022-09-04 14:37:40', 1, NULL, 'comprobantes/comprobante_328.pdf', NULL),
(329, 24722794, 7562, '2023-09-24', '03:23:33', 'Evaluar progreso en la comunicación interpersonal.', 0, 1, '2023-09-24 03:18:02', '2023-09-24 03:18:02', 1, NULL, 'comprobantes/comprobante_329.pdf', NULL),
(330, 24722794, 7562, '2024-01-02', '18:21:00', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-01-03 01:18:53', '2024-01-03 01:18:53', 1, NULL, 'comprobantes/comprobante_330.pdf', NULL),
(331, 24722794, 7562, '2024-09-05', '14:25:33', 'Practicar ejercicios de relajación.', 1, 0, '2024-09-05 05:12:32', '2024-09-05 05:12:32', 1, NULL, 'comprobantes/comprobante_331.pdf', NULL),
(332, 24722794, 7562, '2023-02-25', '21:34:45', NULL, 1, 0, '2023-02-25 13:41:14', '2023-02-25 13:41:14', 1, NULL, 'comprobantes/comprobante_332.pdf', NULL),
(333, 34044873, 7562, '2022-11-06', '06:34:13', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-11-06 21:18:26', '2022-11-06 21:18:26', 1, NULL, 'comprobantes/comprobante_333.pdf', NULL),
(334, 34044873, 7562, '2022-04-20', '00:34:10', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-04-20 23:04:31', '2022-04-20 23:04:31', 1, NULL, 'comprobantes/comprobante_334.pdf', NULL),
(335, 34044873, 7562, '2023-11-14', '16:01:18', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-11-15 01:14:45', '2023-11-15 01:14:45', 1, NULL, 'comprobantes/comprobante_335.pdf', NULL),
(336, 34044873, 7562, '2022-04-27', '17:41:27', 'Analizar situaciones laborales recientes.', 1, 0, '2022-04-27 06:21:24', '2022-04-27 06:21:24', 1, NULL, 'comprobantes/comprobante_336.pdf', NULL),
(337, 34044873, 7562, '2024-04-16', '11:47:52', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-04-16 05:51:30', '2024-04-16 05:51:30', 1, NULL, 'comprobantes/comprobante_337.pdf', NULL),
(338, 34044873, 7562, '2024-10-07', '10:33:17', 'Revisar tarea asignada la semana pasada.', 0, 1, '2024-10-08 00:36:54', '2024-10-08 00:36:54', 1, NULL, 'comprobantes/comprobante_338.pdf', NULL),
(339, 34044873, 7562, '2022-08-17', '02:06:13', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-08-17 05:46:18', '2022-08-17 05:46:18', 1, NULL, 'comprobantes/comprobante_339.pdf', NULL),
(340, 34044873, 7562, '2023-06-08', '17:31:16', NULL, 1, 0, '2023-06-09 01:24:16', '2023-06-09 01:24:16', 1, NULL, 'comprobantes/comprobante_340.pdf', NULL),
(341, 34044873, 7562, '2024-01-02', '15:55:47', 'Practicar ejercicios de relajación.', 0, 0, '2024-01-02 23:49:08', '2024-01-02 23:49:08', 1, NULL, 'comprobantes/comprobante_341.pdf', NULL),
(342, 34044873, 7562, '2023-06-14', '22:30:05', 'Revisar tarea asignada la semana pasada.', 0, 1, '2023-06-14 23:29:52', '2023-06-14 23:29:52', 1, NULL, 'comprobantes/comprobante_342.pdf', NULL),
(343, 34044873, 7562, '2024-02-19', '01:37:15', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-02-19 14:42:22', '2024-02-19 14:42:22', 1, NULL, 'comprobantes/comprobante_343.pdf', NULL),
(344, 34044873, 7562, '2022-03-27', '12:43:25', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-03-27 04:53:05', '2022-03-27 04:53:05', 1, NULL, 'comprobantes/comprobante_344.pdf', NULL),
(345, 34044873, 7562, '2022-01-08', '07:08:37', 'Analizar situaciones laborales recientes.', 1, 0, '2022-01-08 05:18:13', '2022-01-08 05:18:13', 1, NULL, 'comprobantes/comprobante_345.pdf', NULL),
(346, 34044873, 7562, '2024-08-28', '04:56:48', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-08-28 19:38:26', '2024-08-28 19:38:26', 1, NULL, 'comprobantes/comprobante_346.pdf', NULL),
(347, 34044873, 7562, '2023-02-20', '10:45:25', 'Practicar ejercicios de relajación.', 0, 0, '2023-02-20 10:23:52', '2023-02-20 10:23:52', 1, NULL, 'comprobantes/comprobante_347.pdf', NULL),
(348, 34044873, 7562, '2023-08-13', '22:55:02', NULL, 0, 0, '2023-08-13 09:06:53', '2023-08-13 09:06:53', 1, NULL, 'comprobantes/comprobante_348.pdf', NULL),
(349, 34044873, 7562, '2024-05-11', '09:33:20', NULL, 1, 0, '2024-05-11 14:23:47', '2024-05-11 14:23:47', 1, NULL, 'comprobantes/comprobante_349.pdf', NULL),
(350, 34044873, 7562, '2024-11-25', '21:36:47', 'Analizar situaciones laborales recientes.', 1, 0, '2024-11-25 14:23:53', '2024-11-25 14:23:53', 0, NULL, NULL, NULL),
(351, 34044873, 7562, '2022-07-16', '11:03:05', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-07-16 10:23:49', '2022-07-16 10:23:49', 1, NULL, 'comprobantes/comprobante_351.pdf', NULL),
(352, 34044873, 7562, '2022-05-01', '16:45:28', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-05-01 16:10:56', '2022-05-01 16:10:56', 1, NULL, 'comprobantes/comprobante_352.pdf', NULL),
(353, 34044873, 7562, '2024-12-22', '15:58:51', NULL, 0, 0, '2024-12-22 08:28:15', '2024-12-22 08:28:15', 1, NULL, 'comprobantes/comprobante_353.pdf', NULL),
(354, 34044873, 7562, '2023-09-15', '12:17:02', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-09-15 20:56:06', '2023-09-15 20:56:06', 1, NULL, 'comprobantes/comprobante_354.pdf', NULL),
(355, 34044873, 7562, '2023-10-03', '15:16:40', 'Discutir avances en los objetivos establecidos.', 0, 1, '2023-10-03 19:22:51', '2023-10-03 19:22:51', 1, NULL, 'comprobantes/comprobante_355.pdf', NULL),
(356, 34044873, 7562, '2023-11-05', '06:02:02', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-11-05 04:42:06', '2023-11-05 04:42:06', 1, NULL, 'comprobantes/comprobante_356.pdf', NULL),
(357, 34044873, 7562, '2024-05-09', '06:21:30', NULL, 1, 0, '2024-05-09 12:02:10', '2024-05-09 12:02:10', 1, NULL, 'comprobantes/comprobante_357.pdf', NULL),
(358, 34044873, 7562, '2024-08-10', '05:11:08', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-08-10 07:34:29', '2024-08-10 07:34:29', 1, NULL, 'comprobantes/comprobante_358.pdf', NULL),
(359, 34044873, 7562, '2023-02-03', '08:07:01', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-02-03 16:16:52', '2023-02-03 16:16:52', 1, NULL, 'comprobantes/comprobante_359.pdf', NULL),
(360, 34044873, 7562, '2024-01-30', '16:05:10', NULL, 0, 0, '2024-01-30 15:55:49', '2024-01-30 15:55:49', 1, NULL, 'comprobantes/comprobante_360.pdf', NULL),
(361, 34044873, 7562, '2023-11-04', '05:16:21', 'Trabajar en estrategias de manejo de ansiedad.', 1, 1, '2023-11-04 07:21:46', '2023-11-04 07:21:46', 1, NULL, 'comprobantes/comprobante_361.pdf', NULL),
(362, 64323872, 1735, '2022-11-11', '02:45:44', 'Practicar ejercicios de relajación.', 1, 0, '2022-11-11 12:16:17', '2022-11-11 12:16:17', 1, NULL, 'comprobantes/comprobante_362.pdf', NULL),
(363, 64323872, 1735, '2024-04-08', '00:55:18', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-04-09 02:53:32', '2024-04-09 02:53:32', 1, NULL, 'comprobantes/comprobante_363.pdf', NULL),
(364, 64323872, 1735, '2022-04-14', '19:41:03', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-04-14 10:51:06', '2022-04-14 10:51:06', 1, NULL, 'comprobantes/comprobante_364.pdf', NULL),
(365, 64323872, 1735, '2024-07-02', '03:17:57', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-07-02 07:51:44', '2024-07-02 07:51:44', 1, NULL, 'comprobantes/comprobante_365.pdf', NULL),
(366, 64323872, 1735, '2022-09-09', '01:06:49', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-09-09 05:49:09', '2022-09-09 05:49:09', 1, NULL, 'comprobantes/comprobante_366.pdf', NULL),
(367, 64323872, 1735, '2024-05-24', '14:15:21', 'Revisar compromisos establecidos anteriormente.', 0, 1, '2024-05-24 12:49:55', '2024-05-24 12:49:55', 0, NULL, NULL, NULL),
(368, 64323872, 1735, '2022-10-17', '15:09:02', NULL, 1, 0, '2022-10-17 17:58:17', '2022-10-17 17:58:17', 1, NULL, 'comprobantes/comprobante_368.pdf', NULL),
(369, 64323872, 1735, '2022-05-08', '19:06:56', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-05-08 13:46:40', '2022-05-08 13:46:40', 1, NULL, 'comprobantes/comprobante_369.pdf', NULL),
(370, 64323872, 1735, '2023-06-04', '19:24:45', NULL, 1, 0, '2023-06-04 07:59:49', '2023-06-04 07:59:49', 1, NULL, 'comprobantes/comprobante_370.pdf', NULL),
(371, 64323872, 1735, '2022-02-16', '10:38:41', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-02-16 19:33:24', '2022-02-16 19:33:24', 1, NULL, 'comprobantes/comprobante_371.pdf', NULL),
(372, 64323872, 1735, '2023-06-30', '13:11:28', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2023-07-01 00:58:05', '2023-07-01 00:58:05', 1, NULL, 'comprobantes/comprobante_372.pdf', NULL),
(373, 64323872, 1735, '2023-02-16', '16:01:05', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-02-17 00:24:47', '2023-02-17 00:24:47', 1, NULL, 'comprobantes/comprobante_373.pdf', NULL),
(374, 64323872, 1735, '2023-10-26', '08:32:20', 'Practicar ejercicios de relajación.', 1, 0, '2023-10-26 18:32:37', '2023-10-26 18:32:37', 1, NULL, 'comprobantes/comprobante_374.pdf', NULL),
(375, 64323872, 1735, '2024-10-07', '23:49:05', 'Practicar ejercicios de relajación.', 1, 0, '2024-10-07 11:39:17', '2024-10-07 11:39:17', 1, NULL, 'comprobantes/comprobante_375.pdf', NULL),
(376, 64323872, 1735, '2023-08-04', '11:36:19', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2023-08-04 06:43:19', '2023-08-04 06:43:19', 1, NULL, 'comprobantes/comprobante_376.pdf', NULL),
(377, 64323872, 1735, '2022-04-18', '05:46:45', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-04-18 06:32:17', '2022-04-18 06:32:17', 1, NULL, 'comprobantes/comprobante_377.pdf', NULL),
(378, 64323872, 1735, '2024-01-11', '00:47:39', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-01-12 01:49:20', '2024-01-12 01:49:20', 1, NULL, 'comprobantes/comprobante_378.pdf', NULL),
(379, 64323872, 1735, '2022-01-29', '22:49:20', NULL, 1, 0, '2022-01-29 07:10:15', '2022-01-29 07:10:15', 1, NULL, 'comprobantes/comprobante_379.pdf', NULL),
(380, 64323872, 1735, '2024-11-16', '22:47:29', NULL, 1, 0, '2024-11-16 18:07:22', '2024-11-16 18:07:22', 1, NULL, 'comprobantes/comprobante_380.pdf', NULL),
(381, 64323872, 1735, '2024-08-24', '20:40:31', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-08-24 18:25:05', '2024-08-24 18:25:05', 1, NULL, 'comprobantes/comprobante_381.pdf', NULL),
(382, 64323872, 1735, '2024-03-04', '05:53:04', 'Analizar situaciones laborales recientes.', 1, 0, '2024-03-04 23:23:31', '2024-03-04 23:23:31', 1, NULL, 'comprobantes/comprobante_382.pdf', NULL),
(383, 49991074, 1735, '2024-03-23', '10:20:59', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-03-23 17:17:56', '2024-03-23 17:17:56', 1, NULL, 'comprobantes/comprobante_383.pdf', NULL),
(384, 49991074, 1735, '2024-10-25', '04:19:47', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-10-25 08:32:17', '2024-10-25 08:32:17', 1, NULL, 'comprobantes/comprobante_384.pdf', NULL),
(385, 49991074, 1735, '2023-02-07', '21:47:20', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-02-07 14:51:18', '2023-02-07 14:51:18', 1, NULL, 'comprobantes/comprobante_385.pdf', NULL),
(386, 49991074, 1735, '2024-10-30', '14:36:52', NULL, 1, 0, '2024-10-30 13:46:33', '2024-10-30 13:46:33', 1, NULL, 'comprobantes/comprobante_386.pdf', NULL),
(387, 49991074, 1735, '2024-09-09', '23:23:25', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-09-09 11:42:31', '2024-09-09 11:42:31', 1, NULL, 'comprobantes/comprobante_387.pdf', NULL),
(388, 49991074, 1735, '2024-04-02', '14:27:02', NULL, 0, 0, '2024-04-02 05:26:59', '2024-04-02 05:26:59', 1, NULL, 'comprobantes/comprobante_388.pdf', NULL),
(389, 49991074, 1735, '2023-08-01', '09:21:32', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-08-01 14:40:16', '2023-08-01 14:40:16', 1, NULL, 'comprobantes/comprobante_389.pdf', NULL),
(390, 49991074, 1735, '2022-10-15', '14:25:10', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-10-15 12:27:31', '2022-10-15 12:27:31', 1, NULL, 'comprobantes/comprobante_390.pdf', NULL),
(391, 49991074, 1735, '2022-01-17', '07:42:13', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-01-17 19:48:04', '2022-01-17 19:48:04', 1, NULL, 'comprobantes/comprobante_391.pdf', NULL),
(392, 49991074, 1735, '2022-12-30', '01:04:37', 'Analizar situaciones laborales recientes.', 1, 0, '2022-12-31 00:25:28', '2022-12-31 00:25:28', 1, NULL, 'comprobantes/comprobante_392.pdf', NULL),
(393, 49991074, 1735, '2023-04-19', '17:22:59', 'Evaluar progreso en la comunicación interpersonal.', 0, 1, '2023-04-19 16:20:44', '2023-04-19 16:20:44', 1, NULL, 'comprobantes/comprobante_393.pdf', NULL),
(394, 49991074, 1735, '2024-12-04', '05:15:23', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-12-04 16:49:20', '2024-12-04 16:49:20', 1, NULL, 'comprobantes/comprobante_394.pdf', NULL),
(395, 49991074, 1735, '2022-11-12', '12:59:36', NULL, 0, 0, '2022-11-12 14:17:52', '2022-11-12 14:17:52', 1, NULL, 'comprobantes/comprobante_395.pdf', NULL),
(396, 49991074, 1735, '2023-04-05', '17:01:29', NULL, 1, 0, '2023-04-06 00:49:30', '2023-04-06 00:49:30', 1, NULL, 'comprobantes/comprobante_396.pdf', NULL),
(397, 49991074, 1735, '2024-09-01', '18:26:30', 'Analizar situaciones laborales recientes.', 0, 0, '2024-09-01 06:51:19', '2024-09-01 06:51:19', 0, NULL, NULL, NULL),
(398, 49991074, 1735, '2024-05-26', '07:03:03', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2024-05-26 09:59:10', '2024-05-26 09:59:10', 1, NULL, 'comprobantes/comprobante_398.pdf', NULL),
(399, 49991074, 1735, '2024-09-11', '09:33:26', 'Analizar situaciones laborales recientes.', 1, 0, '2024-09-11 15:35:28', '2024-09-11 15:35:28', 1, NULL, 'comprobantes/comprobante_399.pdf', NULL),
(400, 49991074, 1735, '2023-01-17', '12:59:36', NULL, 1, 0, '2023-01-17 03:52:00', '2023-01-17 03:52:00', 1, NULL, 'comprobantes/comprobante_400.pdf', NULL),
(401, 18169041, 1735, '2023-08-03', '20:28:59', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-08-03 10:29:13', '2023-08-03 10:29:13', 1, NULL, 'comprobantes/comprobante_401.pdf', NULL),
(402, 18169041, 1735, '2024-02-09', '12:32:09', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-02-09 13:07:03', '2024-02-09 13:07:03', 1, NULL, 'comprobantes/comprobante_402.pdf', NULL),
(403, 18169041, 1735, '2022-03-11', '01:05:07', NULL, 0, 0, '2022-03-11 05:40:19', '2022-03-11 05:40:19', 1, NULL, 'comprobantes/comprobante_403.pdf', NULL),
(404, 18169041, 1735, '2022-12-08', '18:54:14', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-12-08 19:39:50', '2022-12-08 19:39:50', 1, NULL, 'comprobantes/comprobante_404.pdf', NULL),
(405, 18169041, 1735, '2024-02-14', '03:34:46', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-02-14 17:19:41', '2024-02-14 17:19:41', 1, NULL, 'comprobantes/comprobante_405.pdf', NULL),
(406, 18169041, 1735, '2024-11-25', '13:40:53', 'Practicar ejercicios de relajación.', 1, 0, '2024-11-25 13:18:27', '2024-11-25 13:18:27', 1, NULL, 'comprobantes/comprobante_406.pdf', NULL),
(407, 18169041, 1735, '2024-05-15', '12:33:21', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-05-15 04:53:38', '2024-05-15 04:53:38', 0, NULL, NULL, NULL),
(408, 18169041, 1735, '2023-09-22', '07:16:59', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-09-22 15:09:15', '2023-09-22 15:09:15', 1, NULL, 'comprobantes/comprobante_408.pdf', NULL),
(409, 18169041, 1735, '2024-07-07', '00:52:09', NULL, 1, 0, '2024-07-08 01:03:46', '2024-07-08 01:03:46', 1, NULL, 'comprobantes/comprobante_409.pdf', NULL),
(410, 18169041, 1735, '2022-06-04', '13:59:00', NULL, 1, 0, '2022-06-04 10:32:03', '2022-06-04 10:32:03', 1, NULL, 'comprobantes/comprobante_410.pdf', NULL),
(411, 18169041, 1735, '2022-05-05', '09:00:13', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-05-05 08:52:37', '2022-05-05 08:52:37', 1, NULL, 'comprobantes/comprobante_411.pdf', NULL),
(412, 18169041, 1735, '2023-11-05', '20:06:45', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-11-06 02:42:16', '2023-11-06 02:42:16', 1, NULL, 'comprobantes/comprobante_412.pdf', NULL),
(413, 18169041, 1735, '2022-02-15', '19:55:22', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-02-15 11:46:18', '2022-02-15 11:46:18', 1, NULL, 'comprobantes/comprobante_413.pdf', NULL),
(414, 22778682, 1735, '2024-06-10', '03:29:53', NULL, 0, 0, '2024-06-10 20:24:54', '2024-06-10 20:24:54', 1, NULL, 'comprobantes/comprobante_414.pdf', NULL),
(415, 22778682, 1735, '2023-03-29', '14:22:46', 'Practicar ejercicios de relajación.', 1, 0, '2023-03-29 16:23:35', '2023-03-29 16:23:35', 1, NULL, 'comprobantes/comprobante_415.pdf', NULL),
(416, 22778682, 1735, '2023-07-09', '12:40:16', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-07-10 00:11:02', '2023-07-10 00:11:02', 1, NULL, 'comprobantes/comprobante_416.pdf', NULL),
(417, 22778682, 1735, '2024-07-31', '06:20:57', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-07-31 04:33:39', '2024-07-31 04:33:39', 1, NULL, 'comprobantes/comprobante_417.pdf', NULL),
(418, 22778682, 1735, '2024-03-10', '07:06:45', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-03-11 01:54:18', '2024-03-11 01:54:18', 1, NULL, 'comprobantes/comprobante_418.pdf', NULL),
(419, 22778682, 1735, '2023-03-23', '08:55:18', NULL, 0, 0, '2023-03-23 17:55:12', '2023-03-23 17:55:12', 1, NULL, 'comprobantes/comprobante_419.pdf', NULL),
(420, 22778682, 1735, '2022-11-15', '20:27:17', NULL, 1, 1, '2022-11-15 14:39:35', '2022-11-15 14:39:35', 0, NULL, NULL, NULL),
(421, 22778682, 1735, '2022-10-24', '20:15:04', NULL, 1, 1, '2022-10-24 05:10:10', '2022-10-24 05:10:10', 1, NULL, 'comprobantes/comprobante_421.pdf', NULL),
(422, 22778682, 1735, '2024-12-08', '05:06:27', 'Analizar situaciones laborales recientes.', 1, 0, '2024-12-08 13:06:23', '2024-12-08 13:06:23', 1, NULL, 'comprobantes/comprobante_422.pdf', NULL),
(423, 22778682, 1735, '2022-09-02', '09:26:13', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-09-02 17:47:20', '2022-09-02 17:47:20', 1, NULL, 'comprobantes/comprobante_423.pdf', NULL),
(424, 22778682, 1735, '2024-03-14', '03:23:40', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-03-14 22:16:59', '2024-03-14 22:16:59', 1, NULL, 'comprobantes/comprobante_424.pdf', NULL),
(425, 22778682, 1735, '2023-11-15', '21:31:03', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-11-15 11:14:39', '2023-11-15 11:14:39', 1, NULL, 'comprobantes/comprobante_425.pdf', NULL),
(426, 22778682, 1735, '2023-11-11', '22:26:49', 'Analizar situaciones laborales recientes.', 0, 0, '2023-11-12 01:19:21', '2023-11-12 01:19:21', 1, NULL, 'comprobantes/comprobante_426.pdf', NULL),
(427, 22778682, 1735, '2023-03-19', '16:21:08', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-03-20 02:31:33', '2023-03-20 02:31:33', 1, NULL, 'comprobantes/comprobante_427.pdf', NULL),
(428, 22778682, 1735, '2022-10-31', '23:59:55', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-11-01 00:36:42', '2022-11-01 00:36:42', 1, NULL, 'comprobantes/comprobante_428.pdf', NULL),
(429, 22778682, 1735, '2024-06-27', '08:48:27', NULL, 0, 0, '2024-06-27 09:42:47', '2024-06-27 09:42:47', 1, NULL, 'comprobantes/comprobante_429.pdf', NULL),
(430, 22778682, 1735, '2023-11-23', '18:50:47', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-11-23 13:22:09', '2023-11-23 13:22:09', 1, NULL, 'comprobantes/comprobante_430.pdf', NULL),
(431, 22778682, 1735, '2022-12-20', '05:32:53', NULL, 1, 0, '2022-12-20 14:11:05', '2022-12-20 14:11:05', 1, NULL, 'comprobantes/comprobante_431.pdf', NULL),
(432, 22778682, 1735, '2024-04-20', '06:47:53', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-04-20 05:26:31', '2024-04-20 05:26:31', 1, NULL, 'comprobantes/comprobante_432.pdf', NULL),
(433, 22778682, 1735, '2024-05-23', '03:21:35', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2024-05-23 17:51:10', '2024-05-23 17:51:10', 1, NULL, 'comprobantes/comprobante_433.pdf', NULL),
(434, 22778682, 1735, '2023-04-28', '02:22:24', 'Discutir avances en los objetivos establecidos.', 1, 1, '2023-04-29 01:33:11', '2023-04-29 01:33:11', 1, NULL, 'comprobantes/comprobante_434.pdf', NULL),
(435, 22778682, 1735, '2023-03-24', '23:27:58', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-03-24 12:12:55', '2023-03-24 12:12:55', 0, NULL, NULL, NULL),
(436, 22778682, 1735, '2022-06-13', '01:19:01', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2022-06-13 12:50:38', '2022-06-13 12:50:38', 0, NULL, NULL, NULL),
(437, 22778682, 1735, '2023-01-25', '10:22:26', 'Analizar situaciones laborales recientes.', 1, 0, '2023-01-25 19:19:06', '2023-01-25 19:19:06', 1, NULL, 'comprobantes/comprobante_437.pdf', NULL),
(438, 22778682, 1735, '2024-11-27', '15:29:10', NULL, 1, 0, '2024-11-28 02:41:32', '2024-11-28 02:41:32', 1, NULL, 'comprobantes/comprobante_438.pdf', NULL),
(439, 20652862, 5345, '2022-08-14', '20:06:03', 'Analizar situaciones laborales recientes.', 1, 0, '2022-08-14 17:40:59', '2022-08-14 17:40:59', 1, NULL, 'comprobantes/comprobante_439.pdf', NULL),
(440, 20652862, 5345, '2024-09-18', '14:37:30', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-09-18 08:22:21', '2024-09-18 08:22:21', 1, NULL, 'comprobantes/comprobante_440.pdf', NULL),
(441, 20652862, 5345, '2023-10-04', '07:32:59', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-10-04 17:51:08', '2023-10-04 17:51:08', 1, NULL, 'comprobantes/comprobante_441.pdf', NULL),
(442, 20652862, 5345, '2023-01-05', '07:59:45', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-01-05 16:21:05', '2023-01-05 16:21:05', 1, NULL, 'comprobantes/comprobante_442.pdf', NULL),
(443, 20652862, 5345, '2024-02-02', '15:31:06', NULL, 0, 1, '2024-02-02 08:37:38', '2024-02-02 08:37:38', 1, NULL, 'comprobantes/comprobante_443.pdf', NULL),
(444, 20652862, 5345, '2024-12-11', '18:47:11', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-12-11 03:18:10', '2024-12-11 03:18:10', 1, NULL, 'comprobantes/comprobante_444.pdf', NULL),
(445, 20652862, 5345, '2024-04-19', '17:33:59', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-04-19 05:28:44', '2024-04-19 05:28:44', 1, NULL, 'comprobantes/comprobante_445.pdf', NULL),
(446, 20652862, 5345, '2022-03-17', '00:36:39', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-03-17 16:12:09', '2022-03-17 16:12:09', 1, NULL, 'comprobantes/comprobante_446.pdf', NULL),
(447, 20652862, 5345, '2023-11-16', '03:16:35', 'Identificar patrones de pensamiento negativos.', 1, 1, '2023-11-16 21:01:49', '2023-11-16 21:01:49', 1, NULL, 'comprobantes/comprobante_447.pdf', NULL),
(448, 20652862, 5345, '2022-07-11', '01:43:12', NULL, 1, 0, '2022-07-12 01:10:16', '2022-07-12 01:10:16', 1, NULL, 'comprobantes/comprobante_448.pdf', NULL),
(449, 20652862, 5345, '2024-01-17', '23:28:31', 'Practicar ejercicios de relajación.', 1, 0, '2024-01-17 09:49:40', '2024-01-17 09:49:40', 1, NULL, 'comprobantes/comprobante_449.pdf', NULL),
(450, 20652862, 5345, '2022-12-10', '08:12:15', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-12-10 18:25:44', '2022-12-10 18:25:44', 1, NULL, 'comprobantes/comprobante_450.pdf', NULL),
(451, 20652862, 5345, '2022-06-27', '03:26:28', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-06-27 14:26:21', '2022-06-27 14:26:21', 1, NULL, 'comprobantes/comprobante_451.pdf', NULL),
(452, 77742230, 5345, '2024-05-13', '03:11:21', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-05-13 09:58:32', '2024-05-13 09:58:32', 1, NULL, 'comprobantes/comprobante_452.pdf', NULL),
(453, 77742230, 5345, '2023-06-28', '08:35:02', 'Identificar patrones de pensamiento negativos.', 0, 1, '2023-06-28 11:53:26', '2023-06-28 11:53:26', 1, NULL, 'comprobantes/comprobante_453.pdf', NULL),
(454, 77742230, 5345, '2024-08-15', '15:09:16', NULL, 1, 0, '2024-08-16 00:53:39', '2024-08-16 00:53:39', 1, NULL, 'comprobantes/comprobante_454.pdf', NULL),
(455, 77742230, 5345, '2023-07-24', '18:15:26', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-07-24 12:57:03', '2023-07-24 12:57:03', 0, NULL, NULL, NULL),
(456, 77742230, 5345, '2023-06-13', '19:19:43', NULL, 1, 0, '2023-06-13 17:02:27', '2023-06-13 17:02:27', 1, NULL, 'comprobantes/comprobante_456.pdf', NULL),
(457, 77742230, 5345, '2022-08-25', '22:15:46', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-08-25 05:44:04', '2022-08-25 05:44:04', 0, NULL, NULL, NULL),
(458, 77742230, 5345, '2024-03-27', '14:54:06', 'Practicar ejercicios de relajación.', 1, 0, '2024-03-27 08:09:07', '2024-03-27 08:09:07', 1, NULL, 'comprobantes/comprobante_458.pdf', NULL),
(459, 77742230, 5345, '2023-05-24', '00:38:23', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-24 22:38:27', '2023-05-24 22:38:27', 1, NULL, 'comprobantes/comprobante_459.pdf', NULL),
(460, 77742230, 5345, '2023-11-05', '06:42:18', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-11-05 23:13:14', '2023-11-05 23:13:14', 1, NULL, 'comprobantes/comprobante_460.pdf', NULL),
(461, 77742230, 5345, '2023-10-29', '06:01:14', 'Analizar situaciones laborales recientes.', 0, 0, '2023-10-29 15:17:02', '2023-10-29 15:17:02', 1, NULL, 'comprobantes/comprobante_461.pdf', NULL),
(462, 77742230, 5345, '2023-11-10', '12:12:25', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2023-11-10 16:10:17', '2023-11-10 16:10:17', 1, NULL, 'comprobantes/comprobante_462.pdf', NULL),
(463, 77742230, 5345, '2022-06-01', '05:36:14', 'Explorar posibles soluciones a los conflictos actuales.', 1, 1, '2022-06-01 12:37:04', '2022-06-01 12:37:04', 1, NULL, 'comprobantes/comprobante_463.pdf', NULL),
(464, 77742230, 5345, '2022-11-13', '15:09:01', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-11-13 05:34:05', '2022-11-13 05:34:05', 1, NULL, 'comprobantes/comprobante_464.pdf', NULL),
(465, 77742230, 5345, '2022-05-21', '00:37:56', NULL, 1, 0, '2022-05-21 07:41:04', '2022-05-21 07:41:04', 1, NULL, 'comprobantes/comprobante_465.pdf', NULL),
(466, 77742230, 5345, '2023-12-20', '00:14:34', 'Discutir avances en los objetivos establecidos.', 1, 1, '2023-12-20 07:26:37', '2023-12-20 07:26:37', 1, NULL, 'comprobantes/comprobante_466.pdf', NULL),
(467, 77742230, 5345, '2024-11-18', '20:36:04', 'Practicar ejercicios de relajación.', 1, 0, '2024-11-18 09:40:20', '2024-11-18 09:40:20', 0, NULL, NULL, NULL),
(468, 77742230, 5345, '2024-01-09', '20:35:31', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-01-09 04:01:14', '2024-01-09 04:01:14', 1, NULL, 'comprobantes/comprobante_468.pdf', NULL),
(469, 77742230, 5345, '2024-03-16', '12:51:41', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-03-16 20:10:43', '2024-03-16 20:10:43', 1, NULL, 'comprobantes/comprobante_469.pdf', NULL),
(470, 77742230, 5345, '2023-03-13', '09:31:57', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-03-13 04:02:10', '2023-03-13 04:02:10', 1, NULL, 'comprobantes/comprobante_470.pdf', NULL),
(471, 77742230, 5345, '2024-07-04', '04:35:16', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-07-04 23:34:51', '2024-07-04 23:34:51', 0, NULL, NULL, NULL),
(472, 77742230, 5345, '2023-01-04', '07:21:01', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-01-04 07:12:09', '2023-01-04 07:12:09', 1, NULL, 'comprobantes/comprobante_472.pdf', NULL),
(473, 77742230, 5345, '2024-02-05', '14:48:28', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-02-05 17:49:40', '2024-02-05 17:49:40', 1, NULL, 'comprobantes/comprobante_473.pdf', NULL),
(474, 77742230, 5345, '2022-03-28', '11:07:08', NULL, 0, 0, '2022-03-28 20:24:21', '2022-03-28 20:24:21', 1, NULL, 'comprobantes/comprobante_474.pdf', NULL),
(475, 77742230, 5345, '2024-03-19', '13:51:31', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-03-19 22:00:30', '2024-03-19 22:00:30', 1, NULL, 'comprobantes/comprobante_475.pdf', NULL),
(476, 77742230, 5345, '2023-07-26', '08:07:29', NULL, 0, 0, '2023-07-26 21:23:16', '2023-07-26 21:23:16', 1, NULL, 'comprobantes/comprobante_476.pdf', NULL),
(477, 63159870, 5345, '2023-05-15', '21:36:46', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-15 23:29:28', '2023-05-15 23:29:28', 1, NULL, 'comprobantes/comprobante_477.pdf', NULL),
(478, 63159870, 5345, '2023-07-11', '08:30:14', NULL, 1, 0, '2023-07-12 01:38:42', '2023-07-12 01:38:42', 1, NULL, 'comprobantes/comprobante_478.pdf', NULL),
(479, 63159870, 5345, '2022-09-14', '08:41:39', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-09-14 09:22:43', '2022-09-14 09:22:43', 1, NULL, 'comprobantes/comprobante_479.pdf', NULL),
(480, 63159870, 5345, '2022-11-23', '03:29:42', NULL, 0, 0, '2022-11-23 10:53:55', '2022-11-23 10:53:55', 1, NULL, 'comprobantes/comprobante_480.pdf', NULL),
(481, 63159870, 5345, '2023-12-02', '12:41:04', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-12-02 04:33:01', '2023-12-02 04:33:01', 1, NULL, 'comprobantes/comprobante_481.pdf', NULL),
(482, 63159870, 5345, '2022-06-28', '00:56:35', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-06-28 21:14:13', '2022-06-28 21:14:13', 1, NULL, 'comprobantes/comprobante_482.pdf', NULL),
(483, 63159870, 5345, '2024-07-24', '07:11:56', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-07-24 10:45:41', '2024-07-24 10:45:41', 1, NULL, 'comprobantes/comprobante_483.pdf', NULL),
(484, 63159870, 5345, '2022-06-08', '11:05:09', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-06-08 18:56:47', '2022-06-08 18:56:47', 1, NULL, 'comprobantes/comprobante_484.pdf', NULL),
(485, 63159870, 5345, '2023-06-18', '17:54:45', 'Practicar ejercicios de relajación.', 1, 0, '2023-06-18 07:17:10', '2023-06-18 07:17:10', 1, NULL, 'comprobantes/comprobante_485.pdf', NULL),
(486, 63159870, 5345, '2023-07-12', '02:16:32', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-07-12 15:24:07', '2023-07-12 15:24:07', 1, NULL, 'comprobantes/comprobante_486.pdf', NULL),
(487, 63159870, 5345, '2024-01-10', '11:52:11', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-01-10 21:17:15', '2024-01-10 21:17:15', 1, NULL, 'comprobantes/comprobante_487.pdf', NULL),
(488, 63159870, 5345, '2022-01-26', '21:02:51', NULL, 0, 0, '2022-01-26 11:19:51', '2022-01-26 11:19:51', 1, NULL, 'comprobantes/comprobante_488.pdf', NULL),
(489, 62322325, 9726, '2022-09-14', '17:15:01', NULL, 1, 0, '2022-09-14 12:19:54', '2022-09-14 12:19:54', 1, NULL, 'comprobantes/comprobante_489.pdf', NULL),
(490, 62322325, 9726, '2022-12-05', '03:36:37', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-12-05 09:34:54', '2022-12-05 09:34:54', 0, NULL, NULL, NULL),
(491, 62322325, 9726, '2023-12-03', '17:23:11', NULL, 0, 0, '2023-12-03 18:55:20', '2023-12-03 18:55:20', 1, NULL, 'comprobantes/comprobante_491.pdf', NULL),
(492, 62322325, 9726, '2024-04-09', '21:56:10', NULL, 0, 0, '2024-04-10 02:11:32', '2024-04-10 02:11:32', 1, NULL, 'comprobantes/comprobante_492.pdf', NULL),
(493, 62322325, 9726, '2022-01-29', '05:10:23', NULL, 1, 0, '2022-01-29 17:21:44', '2022-01-29 17:21:44', 1, NULL, 'comprobantes/comprobante_493.pdf', NULL),
(494, 62322325, 9726, '2023-07-22', '05:04:52', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-07-22 16:32:36', '2023-07-22 16:32:36', 0, NULL, NULL, NULL),
(495, 62322325, 9726, '2022-11-30', '15:42:13', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-11-30 04:00:01', '2022-11-30 04:00:01', 1, NULL, 'comprobantes/comprobante_495.pdf', NULL),
(496, 62322325, 9726, '2023-01-28', '02:25:57', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-01-28 13:54:57', '2023-01-28 13:54:57', 1, NULL, 'comprobantes/comprobante_496.pdf', NULL),
(497, 62322325, 9726, '2023-03-08', '12:50:43', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-03-08 20:38:54', '2023-03-08 20:38:54', 1, NULL, 'comprobantes/comprobante_497.pdf', NULL),
(498, 62322325, 9726, '2022-05-12', '16:26:18', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-05-12 18:03:23', '2022-05-12 18:03:23', 0, NULL, NULL, NULL),
(499, 62322325, 9726, '2023-04-24', '00:31:30', 'Explorar posibles soluciones a los conflictos actuales.', 1, 1, '2023-04-24 19:37:18', '2023-04-24 19:37:18', 1, NULL, 'comprobantes/comprobante_499.pdf', NULL),
(500, 62322325, 9726, '2023-02-06', '03:53:14', NULL, 1, 0, '2023-02-06 10:51:40', '2023-02-06 10:51:40', 1, NULL, 'comprobantes/comprobante_500.pdf', NULL),
(501, 62322325, 9726, '2023-02-24', '03:05:23', NULL, 0, 0, '2023-02-24 03:39:59', '2023-02-24 03:39:59', 1, NULL, 'comprobantes/comprobante_501.pdf', NULL),
(502, 62322325, 9726, '2022-02-13', '05:50:18', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-02-13 04:41:45', '2022-02-13 04:41:45', 1, NULL, 'comprobantes/comprobante_502.pdf', NULL),
(503, 62322325, 9726, '2023-01-15', '09:20:17', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-01-15 16:24:44', '2023-01-15 16:24:44', 1, NULL, 'comprobantes/comprobante_503.pdf', NULL),
(504, 62322325, 9726, '2022-06-29', '08:46:26', NULL, 0, 0, '2022-06-29 12:29:15', '2022-06-29 12:29:15', 1, NULL, 'comprobantes/comprobante_504.pdf', NULL),
(505, 62322325, 9726, '2023-06-13', '21:23:26', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-06-13 21:53:21', '2023-06-13 21:53:21', 1, NULL, 'comprobantes/comprobante_505.pdf', NULL),
(506, 62322325, 9726, '2022-01-04', '11:36:05', NULL, 0, 0, '2022-01-04 17:10:26', '2022-01-04 17:10:26', 1, NULL, 'comprobantes/comprobante_506.pdf', NULL),
(507, 62322325, 9726, '2023-11-24', '05:49:31', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-11-24 11:01:03', '2023-11-24 11:01:03', 0, NULL, NULL, NULL),
(508, 62322325, 9726, '2024-11-14', '08:46:47', NULL, 1, 0, '2024-11-14 13:09:03', '2024-11-14 13:09:03', 1, NULL, 'comprobantes/comprobante_508.pdf', NULL),
(509, 62322325, 9726, '2023-09-06', '10:36:21', 'Analizar situaciones laborales recientes.', 1, 0, '2023-09-06 20:10:03', '2023-09-06 20:10:03', 1, NULL, 'comprobantes/comprobante_509.pdf', NULL),
(510, 62322325, 9726, '2023-12-16', '01:31:00', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-12-16 16:35:09', '2023-12-16 16:35:09', 1, NULL, 'comprobantes/comprobante_510.pdf', NULL),
(511, 62322325, 9726, '2022-03-24', '03:29:23', 'Analizar situaciones laborales recientes.', 1, 0, '2022-03-25 00:57:41', '2022-03-25 00:57:41', 0, NULL, NULL, NULL),
(512, 62322325, 9726, '2023-07-21', '12:09:46', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-07-22 01:15:11', '2023-07-22 01:15:11', 1, NULL, 'comprobantes/comprobante_512.pdf', NULL),
(513, 62322325, 9726, '2024-06-23', '11:50:01', 'Practicar ejercicios de relajación.', 1, 0, '2024-06-23 18:41:44', '2024-06-23 18:41:44', 1, NULL, 'comprobantes/comprobante_513.pdf', NULL),
(514, 62322325, 9726, '2024-09-22', '03:16:25', NULL, 1, 0, '2024-09-22 17:58:31', '2024-09-22 17:58:31', 1, NULL, 'comprobantes/comprobante_514.pdf', NULL),
(515, 62322325, 9726, '2023-01-04', '23:44:40', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-01-04 19:59:31', '2023-01-04 19:59:31', 1, NULL, 'comprobantes/comprobante_515.pdf', NULL),
(516, 62322325, 9726, '2024-02-05', '05:52:11', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-02-06 02:18:13', '2024-02-06 02:18:13', 1, NULL, 'comprobantes/comprobante_516.pdf', NULL),
(517, 64323872, 9726, '2022-07-24', '22:43:47', NULL, 1, 1, '2022-07-24 23:51:00', '2022-07-24 23:51:00', 1, NULL, 'comprobantes/comprobante_517.pdf', NULL),
(518, 64323872, 9726, '2024-05-22', '03:35:25', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-05-22 18:44:09', '2024-05-22 18:44:09', 1, NULL, 'comprobantes/comprobante_518.pdf', NULL),
(519, 64323872, 9726, '2022-05-25', '13:56:28', 'Analizar situaciones laborales recientes.', 1, 1, '2022-05-25 21:43:12', '2022-05-25 21:43:12', 1, NULL, 'comprobantes/comprobante_519.pdf', NULL),
(520, 64323872, 9726, '2022-10-03', '04:01:15', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-10-03 21:13:21', '2022-10-03 21:13:21', 1, NULL, 'comprobantes/comprobante_520.pdf', NULL),
(521, 64323872, 9726, '2022-06-25', '11:06:31', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-06-25 23:13:01', '2022-06-25 23:13:01', 1, NULL, 'comprobantes/comprobante_521.pdf', NULL),
(522, 64323872, 9726, '2024-11-23', '16:11:58', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-11-23 07:29:56', '2024-11-23 07:29:56', 1, NULL, 'comprobantes/comprobante_522.pdf', NULL),
(523, 64323872, 9726, '2023-06-23', '16:05:04', 'Analizar situaciones laborales recientes.', 0, 0, '2023-06-23 11:25:24', '2023-06-23 11:25:24', 1, NULL, 'comprobantes/comprobante_523.pdf', NULL),
(524, 64323872, 9726, '2023-10-06', '22:46:37', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-10-06 15:17:46', '2023-10-06 15:17:46', 1, NULL, 'comprobantes/comprobante_524.pdf', NULL),
(525, 64323872, 9726, '2024-01-05', '04:54:34', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-01-05 23:52:28', '2024-01-05 23:52:28', 1, NULL, 'comprobantes/comprobante_525.pdf', NULL),
(526, 64323872, 9726, '2024-05-06', '14:55:08', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2024-05-06 04:30:01', '2024-05-06 04:30:01', 1, NULL, 'comprobantes/comprobante_526.pdf', NULL),
(527, 64323872, 9726, '2023-01-13', '13:34:59', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-01-13 10:40:40', '2023-01-13 10:40:40', 1, NULL, 'comprobantes/comprobante_527.pdf', NULL),
(528, 64323872, 9726, '2024-06-12', '00:04:19', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-06-12 16:18:36', '2024-06-12 16:18:36', 1, NULL, 'comprobantes/comprobante_528.pdf', NULL),
(529, 64323872, 9726, '2024-09-03', '20:01:45', 'Analizar situaciones laborales recientes.', 1, 0, '2024-09-03 18:33:11', '2024-09-03 18:33:11', 1, NULL, 'comprobantes/comprobante_529.pdf', NULL),
(530, 64323872, 9726, '2022-11-02', '13:37:20', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2022-11-02 07:47:04', '2022-11-02 07:47:04', 1, NULL, 'comprobantes/comprobante_530.pdf', NULL),
(531, 64323872, 9726, '2024-05-06', '14:58:37', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-05-06 20:58:48', '2024-05-06 20:58:48', 0, NULL, NULL, NULL),
(532, 64323872, 9726, '2022-04-21', '18:53:47', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-04-21 22:39:53', '2022-04-21 22:39:53', 1, NULL, 'comprobantes/comprobante_532.pdf', NULL),
(533, 64323872, 9726, '2022-06-22', '02:29:50', 'Revisar tarea asignada la semana pasada.', 1, 1, '2022-06-22 17:34:39', '2022-06-22 17:34:39', 1, NULL, 'comprobantes/comprobante_533.pdf', NULL),
(534, 64323872, 9726, '2024-02-29', '07:14:22', NULL, 1, 0, '2024-02-29 13:55:40', '2024-02-29 13:55:40', 0, NULL, NULL, NULL),
(535, 64323872, 9726, '2023-12-19', '13:34:36', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-12-19 07:06:08', '2023-12-19 07:06:08', 1, NULL, 'comprobantes/comprobante_535.pdf', NULL),
(536, 64323872, 9726, '2024-02-03', '22:39:53', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-02-03 19:21:23', '2024-02-03 19:21:23', 1, NULL, 'comprobantes/comprobante_536.pdf', NULL);
INSERT INTO `sesion` (`id_sesion`, `dni_paciente`, `matricula_psicologo`, `fecha`, `hora`, `comentario`, `presencial`, `cancelado`, `created_at`, `updated_at`, `pago`, `payment_id`, `comprobante_path`, `fecha_pago`) VALUES
(537, 64323872, 9726, '2024-01-11', '12:47:08', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-01-11 06:48:11', '2024-01-11 06:48:11', 1, NULL, 'comprobantes/comprobante_537.pdf', NULL),
(538, 64323872, 9726, '2023-08-05', '14:37:57', NULL, 1, 0, '2023-08-05 07:06:49', '2023-08-05 07:06:49', 1, NULL, 'comprobantes/comprobante_538.pdf', NULL),
(539, 41774478, 9726, '2023-11-04', '10:02:38', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-11-04 07:12:36', '2023-11-04 07:12:36', 0, NULL, NULL, NULL),
(540, 41774478, 9726, '2024-06-30', '19:40:26', NULL, 1, 1, '2024-06-30 05:50:12', '2024-06-30 05:50:12', 1, NULL, 'comprobantes/comprobante_540.pdf', NULL),
(541, 41774478, 9726, '2022-03-05', '22:33:31', NULL, 1, 0, '2022-03-05 07:50:34', '2022-03-05 07:50:34', 1, NULL, 'comprobantes/comprobante_541.pdf', NULL),
(542, 41774478, 9726, '2023-04-07', '05:08:38', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-04-07 15:16:56', '2023-04-07 15:16:56', 0, NULL, NULL, NULL),
(543, 41774478, 9726, '2024-08-03', '03:16:56', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-08-03 04:58:52', '2024-08-03 04:58:52', 1, NULL, 'comprobantes/comprobante_543.pdf', NULL),
(544, 41774478, 9726, '2023-03-12', '13:51:51', 'Practicar ejercicios de relajación.', 1, 0, '2023-03-12 11:20:24', '2023-03-12 11:20:24', 1, NULL, 'comprobantes/comprobante_544.pdf', NULL),
(545, 41774478, 9726, '2022-12-21', '08:48:26', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-12-21 05:21:21', '2022-12-21 05:21:21', 1, NULL, 'comprobantes/comprobante_545.pdf', NULL),
(546, 41774478, 9726, '2023-03-17', '06:22:09', NULL, 1, 0, '2023-03-17 15:33:03', '2023-03-17 15:33:03', 1, NULL, 'comprobantes/comprobante_546.pdf', NULL),
(547, 41774478, 9726, '2022-10-06', '15:02:54', NULL, 1, 0, '2022-10-07 02:09:56', '2022-10-07 02:09:56', 1, NULL, 'comprobantes/comprobante_547.pdf', NULL),
(548, 41774478, 9726, '2024-08-14', '18:42:27', 'Analizar situaciones laborales recientes.', 1, 0, '2024-08-14 20:13:25', '2024-08-14 20:13:25', 1, NULL, 'comprobantes/comprobante_548.pdf', NULL),
(549, 41774478, 9726, '2022-04-23', '23:45:45', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-04-23 04:16:12', '2022-04-23 04:16:12', 1, NULL, 'comprobantes/comprobante_549.pdf', NULL),
(550, 23173609, 9726, '2022-07-23', '21:24:54', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-07-23 14:40:31', '2022-07-23 14:40:31', 1, NULL, 'comprobantes/comprobante_550.pdf', NULL),
(551, 23173609, 9726, '2022-06-08', '18:18:18', 'Analizar situaciones laborales recientes.', 1, 0, '2022-06-08 22:11:11', '2022-06-08 22:11:11', 1, NULL, 'comprobantes/comprobante_551.pdf', NULL),
(552, 23173609, 9726, '2022-08-03', '01:44:48', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-08-04 01:45:30', '2022-08-04 01:45:30', 1, NULL, 'comprobantes/comprobante_552.pdf', NULL),
(553, 23173609, 9726, '2024-03-30', '23:42:02', NULL, 1, 0, '2024-03-30 16:40:48', '2024-03-30 16:40:48', 1, NULL, 'comprobantes/comprobante_553.pdf', NULL),
(554, 23173609, 9726, '2023-06-13', '17:28:33', 'Discutir avances en los objetivos establecidos.', 1, 1, '2023-06-13 10:38:29', '2023-06-13 10:38:29', 0, NULL, NULL, NULL),
(555, 23173609, 9726, '2023-08-12', '16:08:23', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-08-12 07:57:33', '2023-08-12 07:57:33', 1, NULL, 'comprobantes/comprobante_555.pdf', NULL),
(556, 23173609, 9726, '2024-12-04', '17:51:48', 'Practicar ejercicios de relajación.', 1, 1, '2024-12-04 09:10:33', '2024-12-04 09:10:33', 1, NULL, 'comprobantes/comprobante_556.pdf', NULL),
(557, 23173609, 9726, '2022-03-18', '01:02:03', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-03-18 14:14:40', '2022-03-18 14:14:40', 1, NULL, 'comprobantes/comprobante_557.pdf', NULL),
(558, 23173609, 9726, '2023-05-30', '18:53:23', NULL, 1, 0, '2023-05-30 10:24:25', '2023-05-30 10:24:25', 1, NULL, 'comprobantes/comprobante_558.pdf', NULL),
(559, 23173609, 9726, '2022-05-23', '19:16:13', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-05-23 15:44:11', '2022-05-23 15:44:11', 1, NULL, 'comprobantes/comprobante_559.pdf', NULL),
(560, 23173609, 9726, '2022-09-08', '10:11:37', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-09-08 08:49:39', '2022-09-08 08:49:39', 1, NULL, 'comprobantes/comprobante_560.pdf', NULL),
(561, 23173609, 9726, '2023-06-25', '18:24:38', 'Analizar situaciones laborales recientes.', 1, 0, '2023-06-25 12:38:41', '2023-06-25 12:38:41', 1, NULL, 'comprobantes/comprobante_561.pdf', NULL),
(562, 23173609, 9726, '2023-07-30', '18:15:49', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-07-30 22:46:48', '2023-07-30 22:46:48', 1, NULL, 'comprobantes/comprobante_562.pdf', NULL),
(563, 23173609, 9726, '2022-09-17', '08:16:25', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-09-17 22:02:37', '2022-09-17 22:02:37', 1, NULL, 'comprobantes/comprobante_563.pdf', NULL),
(564, 23173609, 9726, '2023-09-07', '18:17:05', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-09-07 22:31:04', '2023-09-07 22:31:04', 1, NULL, 'comprobantes/comprobante_564.pdf', NULL),
(565, 23173609, 9726, '2022-07-07', '22:15:22', 'Analizar situaciones laborales recientes.', 1, 0, '2022-07-07 06:17:49', '2022-07-07 06:17:49', 1, NULL, 'comprobantes/comprobante_565.pdf', NULL),
(566, 23173609, 9726, '2022-10-13', '09:05:13', 'Analizar situaciones laborales recientes.', 0, 0, '2022-10-13 11:48:57', '2022-10-13 11:48:57', 1, NULL, 'comprobantes/comprobante_566.pdf', NULL),
(567, 23173609, 9726, '2022-09-25', '05:43:41', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-09-25 09:09:32', '2022-09-25 09:09:32', 1, NULL, 'comprobantes/comprobante_567.pdf', NULL),
(568, 23173609, 9726, '2023-03-01', '07:58:52', NULL, 1, 0, '2023-03-02 02:53:49', '2023-03-02 02:53:49', 1, NULL, 'comprobantes/comprobante_568.pdf', NULL),
(569, 23173609, 9726, '2024-07-09', '19:34:14', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-07-09 19:55:24', '2024-07-09 19:55:24', 1, NULL, 'comprobantes/comprobante_569.pdf', NULL),
(570, 23173609, 9726, '2022-03-30', '17:09:28', 'Revisar tarea asignada la semana pasada.', 1, 1, '2022-03-31 02:48:09', '2022-03-31 02:48:09', 1, NULL, 'comprobantes/comprobante_570.pdf', NULL),
(571, 82037661, 9726, '2023-02-16', '18:35:10', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-02-16 21:10:32', '2023-02-16 21:10:32', 1, NULL, 'comprobantes/comprobante_571.pdf', NULL),
(572, 82037661, 9726, '2023-08-09', '08:17:13', 'Explorar posibles soluciones a los conflictos actuales.', 1, 1, '2023-08-09 23:13:12', '2023-08-09 23:13:12', 1, NULL, 'comprobantes/comprobante_572.pdf', NULL),
(573, 82037661, 9726, '2022-03-28', '06:36:21', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-03-28 05:53:52', '2022-03-28 05:53:52', 0, NULL, NULL, NULL),
(574, 82037661, 9726, '2024-08-21', '17:10:10', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-08-22 00:21:42', '2024-08-22 00:21:42', 1, NULL, 'comprobantes/comprobante_574.pdf', NULL),
(575, 82037661, 9726, '2024-03-03', '16:37:54', NULL, 0, 1, '2024-03-03 05:39:36', '2024-03-03 05:39:36', 1, NULL, 'comprobantes/comprobante_575.pdf', NULL),
(576, 82037661, 9726, '2024-02-29', '20:51:37', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-02-29 10:13:58', '2024-02-29 10:13:58', 1, NULL, 'comprobantes/comprobante_576.pdf', NULL),
(577, 82037661, 9726, '2024-01-01', '19:19:15', NULL, 1, 0, '2024-01-01 12:30:44', '2024-01-01 12:30:44', 1, NULL, 'comprobantes/comprobante_577.pdf', NULL),
(578, 82037661, 9726, '2024-02-13', '03:34:22', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-02-13 22:27:56', '2024-02-13 22:27:56', 1, NULL, 'comprobantes/comprobante_578.pdf', NULL),
(579, 82037661, 9726, '2023-12-12', '01:24:19', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-12-12 05:09:37', '2023-12-12 05:09:37', 1, NULL, 'comprobantes/comprobante_579.pdf', NULL),
(580, 82037661, 9726, '2024-12-13', '19:38:57', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-12-13 09:56:39', '2024-12-13 09:56:39', 1, NULL, 'comprobantes/comprobante_580.pdf', NULL),
(581, 82037661, 9726, '2022-11-03', '14:06:16', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-11-03 03:11:55', '2022-11-03 03:11:55', 0, NULL, NULL, NULL),
(582, 82037661, 9726, '2023-04-09', '18:27:03', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-04-09 12:34:22', '2023-04-09 12:34:22', 1, NULL, 'comprobantes/comprobante_582.pdf', NULL),
(583, 82037661, 9726, '2022-08-06', '17:09:02', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-08-07 02:50:54', '2022-08-07 02:50:54', 1, NULL, 'comprobantes/comprobante_583.pdf', NULL),
(584, 82037661, 9726, '2024-08-26', '14:06:33', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-08-26 11:17:32', '2024-08-26 11:17:32', 1, NULL, 'comprobantes/comprobante_584.pdf', NULL),
(585, 82037661, 9726, '2023-12-24', '08:15:00', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-12-24 12:30:45', '2023-12-24 12:30:45', 1, NULL, 'comprobantes/comprobante_585.pdf', NULL),
(586, 82037661, 9726, '2024-01-04', '10:21:45', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-01-04 18:57:52', '2024-01-04 18:57:52', 1, NULL, 'comprobantes/comprobante_586.pdf', NULL),
(587, 82037661, 9726, '2024-04-22', '09:49:16', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-04-22 04:23:21', '2024-04-22 04:23:21', 1, NULL, 'comprobantes/comprobante_587.pdf', NULL),
(588, 82037661, 9726, '2023-10-30', '20:33:37', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-10-30 16:22:35', '2023-10-30 16:22:35', 1, NULL, 'comprobantes/comprobante_588.pdf', NULL),
(589, 82037661, 9726, '2023-05-25', '20:40:39', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-25 10:26:07', '2023-05-25 10:26:07', 1, NULL, 'comprobantes/comprobante_589.pdf', NULL),
(590, 82037661, 9726, '2024-04-13', '13:46:56', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-04-14 02:46:08', '2024-04-14 02:46:08', 1, NULL, 'comprobantes/comprobante_590.pdf', NULL),
(591, 82037661, 9726, '2024-10-08', '21:50:10', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-10-08 10:04:10', '2024-10-08 10:04:10', 1, NULL, 'comprobantes/comprobante_591.pdf', NULL),
(592, 82037661, 9726, '2022-03-21', '15:43:14', 'Analizar situaciones laborales recientes.', 0, 0, '2022-03-21 10:23:02', '2022-03-21 10:23:02', 1, NULL, 'comprobantes/comprobante_592.pdf', NULL),
(593, 82037661, 9726, '2022-03-31', '11:57:21', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-03-31 07:33:10', '2022-03-31 07:33:10', 1, NULL, 'comprobantes/comprobante_593.pdf', NULL),
(594, 82037661, 9726, '2024-05-04', '15:14:05', 'Analizar situaciones laborales recientes.', 1, 0, '2024-05-04 09:28:14', '2024-05-04 09:28:14', 1, NULL, 'comprobantes/comprobante_594.pdf', NULL),
(595, 82037661, 9726, '2022-07-05', '01:26:31', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-07-05 06:42:25', '2022-07-05 06:42:25', 1, NULL, 'comprobantes/comprobante_595.pdf', NULL),
(596, 14841318, 7187, '2024-01-01', '12:47:51', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-01-01 20:00:29', '2024-01-01 20:00:29', 1, NULL, 'comprobantes/comprobante_596.pdf', NULL),
(597, 14841318, 7187, '2022-06-23', '05:56:49', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-06-23 19:39:00', '2022-06-23 19:39:00', 1, NULL, 'comprobantes/comprobante_597.pdf', NULL),
(598, 14841318, 7187, '2022-09-09', '13:16:52', NULL, 1, 0, '2022-09-09 09:49:48', '2022-09-09 09:49:48', 1, NULL, 'comprobantes/comprobante_598.pdf', NULL),
(599, 14841318, 7187, '2022-12-04', '05:36:26', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-12-04 23:45:02', '2022-12-04 23:45:02', 1, NULL, 'comprobantes/comprobante_599.pdf', NULL),
(600, 14841318, 7187, '2024-02-12', '09:29:22', NULL, 1, 0, '2024-02-12 20:45:39', '2024-02-12 20:45:39', 1, NULL, 'comprobantes/comprobante_600.pdf', NULL),
(601, 14841318, 7187, '2023-01-23', '00:40:28', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-01-23 09:32:38', '2023-01-23 09:32:38', 0, NULL, NULL, NULL),
(602, 14841318, 7187, '2023-09-26', '18:26:21', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-09-26 12:04:47', '2023-09-26 12:04:47', 1, NULL, 'comprobantes/comprobante_602.pdf', NULL),
(603, 14841318, 7187, '2024-05-07', '05:20:39', 'Practicar ejercicios de relajación.', 1, 0, '2024-05-07 09:47:42', '2024-05-07 09:47:42', 1, NULL, 'comprobantes/comprobante_603.pdf', NULL),
(604, 14841318, 7187, '2022-04-24', '19:48:53', 'Analizar situaciones laborales recientes.', 1, 0, '2022-04-24 15:34:00', '2022-04-24 15:34:00', 1, NULL, 'comprobantes/comprobante_604.pdf', NULL),
(605, 14841318, 7187, '2022-03-13', '18:38:57', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-03-13 04:56:48', '2022-03-13 04:56:48', 1, NULL, 'comprobantes/comprobante_605.pdf', NULL),
(606, 14841318, 7187, '2024-02-24', '04:12:55', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-02-24 16:25:34', '2024-02-24 16:25:34', 1, NULL, 'comprobantes/comprobante_606.pdf', NULL),
(607, 14841318, 7187, '2023-12-10', '09:30:19', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-12-10 07:17:53', '2023-12-10 07:17:53', 1, NULL, 'comprobantes/comprobante_607.pdf', NULL),
(608, 43822069, 7187, '2024-08-15', '07:01:40', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-08-16 01:45:05', '2024-08-16 01:45:05', 1, NULL, 'comprobantes/comprobante_608.pdf', NULL),
(609, 43822069, 7187, '2023-10-06', '02:58:36', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-10-06 09:24:11', '2023-10-06 09:24:11', 1, NULL, 'comprobantes/comprobante_609.pdf', NULL),
(610, 43822069, 7187, '2023-03-23', '14:46:53', 'Evaluar progreso en la comunicación interpersonal.', 0, 1, '2023-03-23 23:29:40', '2023-03-23 23:29:40', 1, NULL, 'comprobantes/comprobante_610.pdf', NULL),
(611, 43822069, 7187, '2023-01-31', '21:11:52', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-01-31 16:24:46', '2023-01-31 16:24:46', 1, NULL, 'comprobantes/comprobante_611.pdf', NULL),
(612, 43822069, 7187, '2022-02-02', '17:15:56', NULL, 1, 0, '2022-02-03 00:28:19', '2022-02-03 00:28:19', 1, NULL, 'comprobantes/comprobante_612.pdf', NULL),
(613, 43822069, 7187, '2022-12-08', '06:21:58', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-12-08 16:56:13', '2022-12-08 16:56:13', 1, NULL, 'comprobantes/comprobante_613.pdf', NULL),
(614, 43822069, 7187, '2023-04-18', '12:44:24', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-04-18 22:19:24', '2023-04-18 22:19:24', 1, NULL, 'comprobantes/comprobante_614.pdf', NULL),
(615, 43822069, 7187, '2023-12-26', '05:52:51', 'Analizar situaciones laborales recientes.', 1, 0, '2023-12-26 11:05:41', '2023-12-26 11:05:41', 1, NULL, 'comprobantes/comprobante_615.pdf', NULL),
(616, 43822069, 7187, '2023-10-16', '01:06:04', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-10-16 22:14:17', '2023-10-16 22:14:17', 1, NULL, 'comprobantes/comprobante_616.pdf', NULL),
(617, 43822069, 7187, '2022-06-07', '14:31:56', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-06-07 20:46:50', '2022-06-07 20:46:50', 1, NULL, 'comprobantes/comprobante_617.pdf', NULL),
(618, 43822069, 7187, '2023-06-11', '21:50:59', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-06-11 09:53:28', '2023-06-11 09:53:28', 1, NULL, 'comprobantes/comprobante_618.pdf', NULL),
(619, 43822069, 7187, '2023-07-16', '19:46:44', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-07-16 18:11:23', '2023-07-16 18:11:23', 0, NULL, NULL, NULL),
(620, 43822069, 7187, '2024-05-11', '03:06:04', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-05-11 18:52:57', '2024-05-11 18:52:57', 1, NULL, 'comprobantes/comprobante_620.pdf', NULL),
(621, 43822069, 7187, '2023-02-16', '16:18:09', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-02-16 05:00:53', '2023-02-16 05:00:53', 1, NULL, 'comprobantes/comprobante_621.pdf', NULL),
(622, 43822069, 7187, '2024-03-13', '04:51:25', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-03-13 20:11:37', '2024-03-13 20:11:37', 1, NULL, 'comprobantes/comprobante_622.pdf', NULL),
(623, 43822069, 7187, '2022-04-13', '19:50:01', NULL, 1, 0, '2022-04-13 23:27:09', '2022-04-13 23:27:09', 1, NULL, 'comprobantes/comprobante_623.pdf', NULL),
(624, 43822069, 7187, '2023-10-06', '03:58:39', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-10-06 12:31:49', '2023-10-06 12:31:49', 1, NULL, 'comprobantes/comprobante_624.pdf', NULL),
(625, 43822069, 7187, '2024-05-31', '09:32:31', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-05-31 10:39:04', '2024-05-31 10:39:04', 1, NULL, 'comprobantes/comprobante_625.pdf', NULL),
(626, 43822069, 7187, '2023-11-20', '16:17:41', NULL, 1, 0, '2023-11-20 04:26:32', '2023-11-20 04:26:32', 0, NULL, NULL, NULL),
(627, 43822069, 7187, '2022-11-19', '17:47:08', NULL, 1, 0, '2022-11-19 13:28:51', '2022-11-19 13:28:51', 1, NULL, 'comprobantes/comprobante_627.pdf', NULL),
(628, 43822069, 7187, '2022-07-10', '12:32:01', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-07-10 18:46:45', '2022-07-10 18:46:45', 1, NULL, 'comprobantes/comprobante_628.pdf', NULL),
(629, 43822069, 7187, '2022-04-14', '08:07:09', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2022-04-14 17:27:36', '2022-04-14 17:27:36', 1, NULL, 'comprobantes/comprobante_629.pdf', NULL),
(630, 43822069, 7187, '2024-11-03', '19:07:17', 'Practicar ejercicios de relajación.', 0, 0, '2024-11-03 08:43:31', '2024-11-03 08:43:31', 1, NULL, 'comprobantes/comprobante_630.pdf', NULL),
(631, 43822069, 7187, '2024-09-06', '07:43:23', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-09-06 12:23:10', '2024-09-06 12:23:10', 0, NULL, NULL, NULL),
(632, 43822069, 7187, '2022-07-31', '16:12:52', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-07-31 03:22:49', '2022-07-31 03:22:49', 1, NULL, 'comprobantes/comprobante_632.pdf', NULL),
(633, 43822069, 7187, '2023-11-06', '04:17:42', NULL, 1, 1, '2023-11-06 06:54:33', '2023-11-06 06:54:33', 1, NULL, 'comprobantes/comprobante_633.pdf', NULL),
(634, 34044873, 7187, '2023-01-29', '22:21:16', NULL, 0, 0, '2023-01-30 02:03:04', '2023-01-30 02:03:04', 1, NULL, 'comprobantes/comprobante_634.pdf', NULL),
(635, 34044873, 7187, '2023-03-05', '12:35:10', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-03-05 16:28:20', '2023-03-05 16:28:20', 1, NULL, 'comprobantes/comprobante_635.pdf', NULL),
(636, 34044873, 7187, '2024-10-28', '12:22:31', NULL, 1, 1, '2024-10-28 14:36:14', '2024-10-28 14:36:14', 1, NULL, 'comprobantes/comprobante_636.pdf', NULL),
(637, 34044873, 7187, '2024-09-06', '17:49:57', NULL, 1, 1, '2024-09-06 04:58:22', '2024-09-06 04:58:22', 1, NULL, 'comprobantes/comprobante_637.pdf', NULL),
(638, 34044873, 7187, '2023-04-26', '07:58:14', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-04-26 23:35:00', '2023-04-26 23:35:00', 1, NULL, 'comprobantes/comprobante_638.pdf', NULL),
(639, 34044873, 7187, '2022-08-09', '21:03:36', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-08-09 12:00:43', '2022-08-09 12:00:43', 1, NULL, 'comprobantes/comprobante_639.pdf', NULL),
(640, 34044873, 7187, '2023-10-16', '19:38:31', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-10-16 17:51:29', '2023-10-16 17:51:29', 1, NULL, 'comprobantes/comprobante_640.pdf', NULL),
(641, 34044873, 7187, '2022-07-30', '16:11:43', NULL, 1, 0, '2022-07-31 01:42:14', '2022-07-31 01:42:14', 1, NULL, 'comprobantes/comprobante_641.pdf', NULL),
(642, 34044873, 7187, '2023-02-01', '20:41:18', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2023-02-01 15:49:05', '2023-02-01 15:49:05', 1, NULL, 'comprobantes/comprobante_642.pdf', NULL),
(643, 34044873, 7187, '2024-06-03', '21:10:00', 'Practicar ejercicios de relajación.', 0, 0, '2024-06-03 14:16:26', '2024-06-03 14:16:26', 1, NULL, 'comprobantes/comprobante_643.pdf', NULL),
(644, 34044873, 7187, '2022-07-03', '15:48:11', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-07-03 10:39:12', '2022-07-03 10:39:12', 0, NULL, NULL, NULL),
(645, 34044873, 7187, '2022-01-28', '18:13:39', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-01-28 05:52:32', '2022-01-28 05:52:32', 0, NULL, NULL, NULL),
(646, 34044873, 7187, '2022-05-26', '10:23:39', NULL, 1, 0, '2022-05-26 07:43:36', '2022-05-26 07:43:36', 1, NULL, 'comprobantes/comprobante_646.pdf', NULL),
(647, 34044873, 7187, '2023-04-09', '09:32:30', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-04-09 08:32:42', '2023-04-09 08:32:42', 1, NULL, 'comprobantes/comprobante_647.pdf', NULL),
(648, 34044873, 7187, '2024-04-03', '05:36:18', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-04-03 16:27:42', '2024-04-03 16:27:42', 1, NULL, 'comprobantes/comprobante_648.pdf', NULL),
(649, 34044873, 7187, '2023-12-23', '09:43:57', 'Practicar ejercicios de relajación.', 1, 0, '2023-12-23 07:08:55', '2023-12-23 07:08:55', 1, NULL, 'comprobantes/comprobante_649.pdf', NULL),
(650, 34044873, 7187, '2023-09-25', '13:11:32', 'Practicar ejercicios de relajación.', 0, 0, '2023-09-25 23:43:25', '2023-09-25 23:43:25', 1, NULL, 'comprobantes/comprobante_650.pdf', NULL),
(651, 34044873, 7187, '2022-02-28', '09:31:04', 'Analizar situaciones laborales recientes.', 1, 0, '2022-02-28 03:53:03', '2022-02-28 03:53:03', 0, NULL, NULL, NULL),
(652, 34044873, 7187, '2023-01-02', '09:00:41', NULL, 1, 0, '2023-01-02 22:57:54', '2023-01-02 22:57:54', 1, NULL, 'comprobantes/comprobante_652.pdf', NULL),
(653, 34044873, 7187, '2024-02-17', '15:05:58', 'Practicar ejercicios de relajación.', 1, 0, '2024-02-17 23:45:42', '2024-02-17 23:45:42', 1, NULL, 'comprobantes/comprobante_653.pdf', NULL),
(654, 34044873, 7187, '2022-08-26', '11:53:35', 'Practicar ejercicios de relajación.', 1, 0, '2022-08-26 22:28:48', '2022-08-26 22:28:48', 0, NULL, NULL, NULL),
(655, 34044873, 7187, '2022-10-04', '02:22:31', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-10-04 21:53:33', '2022-10-04 21:53:33', 1, NULL, 'comprobantes/comprobante_655.pdf', NULL),
(656, 34044873, 7187, '2023-02-26', '07:07:21', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-02-26 12:51:54', '2023-02-26 12:51:54', 1, NULL, 'comprobantes/comprobante_656.pdf', NULL),
(657, 34044873, 7187, '2022-09-05', '17:40:28', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-09-05 06:15:56', '2022-09-05 06:15:56', 1, NULL, 'comprobantes/comprobante_657.pdf', NULL),
(658, 34044873, 7187, '2022-12-26', '19:16:12', NULL, 1, 0, '2022-12-26 22:28:27', '2022-12-26 22:28:27', 1, NULL, 'comprobantes/comprobante_658.pdf', NULL),
(659, 34044873, 7187, '2024-07-26', '05:05:10', 'Revisar tarea asignada la semana pasada.', 0, 0, '2024-07-26 09:41:52', '2024-07-26 09:41:52', 1, NULL, 'comprobantes/comprobante_659.pdf', NULL),
(660, 34044873, 7187, '2023-03-03', '00:34:27', 'Identificar patrones de pensamiento negativos.', 1, 1, '2023-03-03 17:59:56', '2023-03-03 17:59:56', 1, NULL, 'comprobantes/comprobante_660.pdf', NULL),
(661, 34044873, 7187, '2022-08-12', '03:15:00', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-08-13 02:36:27', '2022-08-13 02:36:27', 0, NULL, NULL, NULL),
(662, 85439762, 7187, '2024-10-10', '18:37:24', NULL, 0, 1, '2024-10-10 04:15:19', '2024-10-10 04:15:19', 1, NULL, 'comprobantes/comprobante_662.pdf', NULL),
(663, 85439762, 7187, '2023-04-19', '06:01:20', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-04-19 05:42:26', '2023-04-19 05:42:26', 1, NULL, 'comprobantes/comprobante_663.pdf', NULL),
(664, 85439762, 7187, '2022-04-06', '15:28:10', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-04-06 07:55:00', '2022-04-06 07:55:00', 0, NULL, NULL, NULL),
(665, 85439762, 7187, '2023-11-14', '13:21:09', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-11-15 01:02:47', '2023-11-15 01:02:47', 1, NULL, 'comprobantes/comprobante_665.pdf', NULL),
(666, 85439762, 7187, '2024-04-03', '04:25:35', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-04-03 08:10:54', '2024-04-03 08:10:54', 1, NULL, 'comprobantes/comprobante_666.pdf', NULL),
(667, 85439762, 7187, '2024-11-01', '21:42:41', NULL, 1, 0, '2024-11-02 00:28:00', '2024-11-02 00:28:00', 1, NULL, 'comprobantes/comprobante_667.pdf', NULL),
(668, 85439762, 7187, '2024-10-25', '09:17:01', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-10-25 17:18:32', '2024-10-25 17:18:32', 1, NULL, 'comprobantes/comprobante_668.pdf', NULL),
(669, 85439762, 7187, '2023-08-21', '14:10:21', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-08-22 02:47:59', '2023-08-22 02:47:59', 1, NULL, 'comprobantes/comprobante_669.pdf', NULL),
(670, 85439762, 7187, '2022-06-07', '16:37:30', 'Analizar situaciones laborales recientes.', 0, 1, '2022-06-08 01:32:22', '2022-06-08 01:32:22', 1, NULL, 'comprobantes/comprobante_670.pdf', NULL),
(671, 85439762, 7187, '2022-01-04', '20:00:25', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-01-04 19:40:39', '2022-01-04 19:40:39', 1, NULL, 'comprobantes/comprobante_671.pdf', NULL),
(672, 85439762, 7187, '2023-11-24', '21:07:40', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-11-24 07:15:12', '2023-11-24 07:15:12', 1, NULL, 'comprobantes/comprobante_672.pdf', NULL),
(673, 85439762, 7187, '2024-11-06', '10:17:11', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-11-06 23:27:51', '2024-11-06 23:27:51', 1, NULL, 'comprobantes/comprobante_673.pdf', NULL),
(674, 85439762, 7187, '2022-12-05', '05:19:13', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-12-05 17:52:14', '2022-12-05 17:52:14', 1, NULL, 'comprobantes/comprobante_674.pdf', NULL),
(675, 85439762, 7187, '2022-03-20', '21:21:24', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-03-20 03:56:39', '2022-03-20 03:56:39', 1, NULL, 'comprobantes/comprobante_675.pdf', NULL),
(676, 85439762, 7187, '2022-07-23', '07:44:09', NULL, 1, 0, '2022-07-24 01:12:30', '2022-07-24 01:12:30', 0, NULL, NULL, NULL),
(677, 85439762, 7187, '2023-10-18', '02:56:37', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-10-19 01:13:01', '2023-10-19 01:13:01', 1, NULL, 'comprobantes/comprobante_677.pdf', NULL),
(678, 85439762, 7187, '2024-12-13', '07:13:08', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-12-13 22:14:55', '2024-12-13 22:14:55', 1, NULL, 'comprobantes/comprobante_678.pdf', NULL),
(679, 85439762, 7187, '2024-10-12', '17:26:00', NULL, 0, 0, '2024-10-12 07:29:06', '2024-10-12 07:29:06', 0, NULL, NULL, NULL),
(680, 85439762, 7187, '2022-01-23', '01:24:36', 'Practicar ejercicios de relajación.', 1, 0, '2022-01-23 23:24:57', '2022-01-23 23:24:57', 1, NULL, 'comprobantes/comprobante_680.pdf', NULL),
(681, 85439762, 7187, '2022-11-03', '20:33:40', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-11-03 07:48:00', '2022-11-03 07:48:00', 1, NULL, 'comprobantes/comprobante_681.pdf', NULL),
(682, 85439762, 7187, '2024-10-09', '16:53:54', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-10-09 17:56:48', '2024-10-09 17:56:48', 1, NULL, 'comprobantes/comprobante_682.pdf', NULL),
(683, 85439762, 7187, '2023-02-06', '22:41:22', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-02-06 12:53:31', '2023-02-06 12:53:31', 1, NULL, 'comprobantes/comprobante_683.pdf', NULL),
(684, 85439762, 7187, '2024-02-09', '02:31:33', 'Analizar situaciones laborales recientes.', 0, 0, '2024-02-09 04:02:13', '2024-02-09 04:02:13', 1, NULL, 'comprobantes/comprobante_684.pdf', NULL),
(685, 85439762, 7187, '2024-07-13', '16:02:11', 'Practicar ejercicios de relajación.', 1, 0, '2024-07-14 02:00:22', '2024-07-14 02:00:22', 1, NULL, 'comprobantes/comprobante_685.pdf', NULL),
(686, 85439762, 7187, '2022-10-27', '04:48:10', 'Practicar ejercicios de relajación.', 1, 0, '2022-10-28 00:14:42', '2022-10-28 00:14:42', 1, NULL, 'comprobantes/comprobante_686.pdf', NULL),
(687, 85439762, 7187, '2024-12-13', '20:55:28', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-12-13 11:05:20', '2024-12-13 11:05:20', 1, NULL, 'comprobantes/comprobante_687.pdf', NULL),
(688, 85439762, 7187, '2023-11-13', '22:00:44', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-11-14 00:06:31', '2023-11-14 00:06:31', 1, NULL, 'comprobantes/comprobante_688.pdf', NULL),
(689, 85439762, 7187, '2024-12-27', '19:25:40', NULL, 1, 0, '2024-12-27 11:11:51', '2024-12-27 11:11:51', 1, NULL, 'comprobantes/comprobante_689.pdf', NULL),
(690, 20652862, 7187, '2023-02-22', '17:35:53', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-02-22 03:30:27', '2023-02-22 03:30:27', 1, NULL, 'comprobantes/comprobante_690.pdf', NULL),
(691, 20652862, 7187, '2022-08-18', '01:40:28', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2022-08-18 15:12:39', '2022-08-18 15:12:39', 1, NULL, 'comprobantes/comprobante_691.pdf', NULL),
(692, 20652862, 7187, '2023-07-03', '01:19:54', 'Practicar ejercicios de relajación.', 0, 1, '2023-07-03 19:40:56', '2023-07-03 19:40:56', 1, NULL, 'comprobantes/comprobante_692.pdf', NULL),
(693, 20652862, 7187, '2023-06-24', '23:18:58', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-06-25 01:31:25', '2024-12-05 19:20:35', 1, '95397804676', 'comprobantes/comprobante_693.pdf', '2024-12-05 16:20:35'),
(694, 20652862, 7187, '2022-01-06', '00:02:56', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-01-06 13:20:58', '2022-01-06 13:20:58', 1, NULL, 'comprobantes/comprobante_694.pdf', NULL),
(695, 20652862, 7187, '2022-10-02', '01:58:59', 'Practicar ejercicios de relajación.', 1, 0, '2022-10-02 06:40:44', '2022-10-02 06:40:44', 1, NULL, 'comprobantes/comprobante_695.pdf', NULL),
(696, 20652862, 7187, '2024-10-04', '10:39:56', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-10-04 12:39:24', '2024-10-04 12:39:24', 1, NULL, 'comprobantes/comprobante_696.pdf', NULL),
(697, 20652862, 7187, '2022-12-26', '16:51:23', 'Practicar ejercicios de relajación.', 1, 0, '2022-12-26 11:05:41', '2022-12-26 11:05:41', 0, NULL, NULL, NULL),
(698, 20652862, 7187, '2024-04-04', '18:29:21', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-04-04 09:25:47', '2024-04-04 09:25:47', 1, NULL, 'comprobantes/comprobante_698.pdf', NULL),
(699, 20652862, 7187, '2022-05-30', '21:17:13', NULL, 1, 0, '2022-05-30 20:07:21', '2022-05-30 20:07:21', 1, NULL, 'comprobantes/comprobante_699.pdf', NULL),
(700, 20652862, 7187, '2024-05-24', '20:35:19', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-05-24 06:15:56', '2024-05-24 06:15:56', 1, NULL, 'comprobantes/comprobante_700.pdf', NULL),
(701, 20652862, 7187, '2023-02-16', '23:55:50', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-02-16 20:30:01', '2023-02-16 20:30:01', 1, NULL, 'comprobantes/comprobante_701.pdf', NULL),
(702, 20652862, 7187, '2023-11-05', '00:29:17', NULL, 1, 0, '2023-11-05 12:49:20', '2023-11-05 12:49:20', 1, NULL, 'comprobantes/comprobante_702.pdf', NULL),
(703, 20652862, 7187, '2022-02-02', '10:53:47', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-02-02 18:38:54', '2022-02-02 18:38:54', 1, NULL, 'comprobantes/comprobante_703.pdf', NULL),
(704, 20652862, 7187, '2023-11-27', '05:49:38', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-11-28 01:14:04', '2023-11-28 01:14:04', 1, NULL, 'comprobantes/comprobante_704.pdf', NULL),
(705, 20652862, 7187, '2022-10-02', '14:08:28', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-10-03 02:12:04', '2022-10-03 02:12:04', 0, NULL, NULL, NULL),
(706, 34044873, 6259, '2022-04-18', '03:51:03', NULL, 1, 0, '2022-04-18 12:56:29', '2022-04-18 12:56:29', 1, NULL, 'comprobantes/comprobante_706.pdf', NULL),
(707, 34044873, 6259, '2022-09-20', '18:23:33', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-09-20 08:27:33', '2022-09-20 08:27:33', 1, NULL, 'comprobantes/comprobante_707.pdf', NULL),
(708, 34044873, 6259, '2022-06-20', '07:36:20', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-06-21 02:30:06', '2022-06-21 02:30:06', 1, NULL, 'comprobantes/comprobante_708.pdf', NULL),
(709, 34044873, 6259, '2022-02-14', '01:36:54', 'Analizar situaciones laborales recientes.', 0, 0, '2022-02-14 16:26:35', '2022-02-14 16:26:35', 1, NULL, 'comprobantes/comprobante_709.pdf', NULL),
(710, 34044873, 6259, '2024-01-24', '13:26:19', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-01-24 13:42:05', '2024-01-24 13:42:05', 1, NULL, 'comprobantes/comprobante_710.pdf', NULL),
(711, 34044873, 6259, '2022-08-28', '15:23:33', 'Analizar situaciones laborales recientes.', 1, 0, '2022-08-28 07:38:21', '2022-08-28 07:38:21', 1, NULL, 'comprobantes/comprobante_711.pdf', NULL),
(712, 34044873, 6259, '2024-08-14', '14:38:25', NULL, 1, 0, '2024-08-14 21:48:52', '2024-08-14 21:48:52', 1, NULL, 'comprobantes/comprobante_712.pdf', NULL),
(713, 34044873, 6259, '2023-09-27', '22:42:59', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2023-09-28 02:40:44', '2023-09-28 02:40:44', 0, NULL, NULL, NULL),
(714, 34044873, 6259, '2022-10-25', '03:12:40', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-10-25 19:11:59', '2022-10-25 19:11:59', 1, NULL, 'comprobantes/comprobante_714.pdf', NULL),
(715, 34044873, 6259, '2023-02-01', '07:00:18', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-02-01 09:43:21', '2023-02-01 09:43:21', 1, NULL, 'comprobantes/comprobante_715.pdf', NULL),
(716, 34044873, 6259, '2023-12-08', '02:31:21', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-12-08 21:40:13', '2023-12-08 21:40:13', 1, NULL, 'comprobantes/comprobante_716.pdf', NULL),
(717, 34044873, 6259, '2023-01-29', '09:14:10', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-01-29 12:09:03', '2023-01-29 12:09:03', 1, NULL, 'comprobantes/comprobante_717.pdf', NULL),
(718, 52575186, 6259, '2023-09-23', '04:33:34', NULL, 1, 1, '2023-09-23 23:18:47', '2023-09-23 23:18:47', 0, NULL, NULL, NULL),
(719, 52575186, 6259, '2024-05-31', '23:43:06', NULL, 1, 0, '2024-06-01 01:30:44', '2024-06-01 01:30:44', 0, NULL, NULL, NULL),
(720, 52575186, 6259, '2022-04-08', '22:29:17', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-04-08 06:17:48', '2022-04-08 06:17:48', 1, NULL, 'comprobantes/comprobante_720.pdf', NULL),
(721, 52575186, 6259, '2022-11-19', '19:14:07', 'Practicar ejercicios de relajación.', 1, 0, '2022-11-19 09:48:48', '2022-11-19 09:48:48', 1, NULL, 'comprobantes/comprobante_721.pdf', NULL),
(722, 52575186, 6259, '2023-09-01', '06:56:12', 'Analizar situaciones laborales recientes.', 0, 0, '2023-09-01 10:32:48', '2023-09-01 10:32:48', 1, NULL, 'comprobantes/comprobante_722.pdf', NULL),
(723, 52575186, 6259, '2023-03-13', '15:35:14', 'Practicar ejercicios de relajación.', 1, 0, '2023-03-13 07:47:05', '2023-03-13 07:47:05', 1, NULL, 'comprobantes/comprobante_723.pdf', NULL),
(724, 52575186, 6259, '2024-09-06', '11:03:29', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-09-06 05:29:59', '2024-09-06 05:29:59', 0, NULL, NULL, NULL),
(725, 52575186, 6259, '2023-10-20', '05:49:01', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-10-20 11:30:06', '2023-10-20 11:30:06', 1, NULL, 'comprobantes/comprobante_725.pdf', NULL),
(726, 52575186, 6259, '2023-04-23', '04:01:49', 'Analizar situaciones laborales recientes.', 1, 0, '2023-04-23 13:57:31', '2023-04-23 13:57:31', 1, NULL, 'comprobantes/comprobante_726.pdf', NULL),
(727, 52575186, 6259, '2022-10-02', '19:28:33', NULL, 1, 0, '2022-10-03 00:14:43', '2022-10-03 00:14:43', 1, NULL, 'comprobantes/comprobante_727.pdf', NULL),
(728, 52575186, 6259, '2023-05-01', '05:50:01', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-05-02 01:23:21', '2023-05-02 01:23:21', 1, NULL, 'comprobantes/comprobante_728.pdf', NULL),
(729, 52575186, 6259, '2023-09-06', '16:53:56', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-09-06 06:21:55', '2023-09-06 06:21:55', 0, NULL, NULL, NULL),
(730, 52575186, 6259, '2022-06-05', '08:03:58', 'Analizar situaciones laborales recientes.', 0, 1, '2022-06-06 00:04:00', '2022-06-06 00:04:00', 1, NULL, 'comprobantes/comprobante_730.pdf', NULL),
(731, 52575186, 6259, '2022-12-22', '10:21:19', NULL, 0, 0, '2022-12-22 16:43:47', '2022-12-22 16:43:47', 1, NULL, 'comprobantes/comprobante_731.pdf', NULL),
(732, 52575186, 6259, '2022-11-18', '22:22:20', NULL, 1, 0, '2022-11-19 02:37:24', '2022-11-19 02:37:24', 1, NULL, 'comprobantes/comprobante_732.pdf', NULL),
(733, 52575186, 6259, '2024-07-22', '14:35:35', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-07-22 16:23:53', '2024-07-22 16:23:53', 0, NULL, NULL, NULL),
(734, 52575186, 6259, '2024-08-15', '00:47:50', NULL, 1, 0, '2024-08-15 12:44:22', '2024-08-15 12:44:22', 1, NULL, 'comprobantes/comprobante_734.pdf', NULL),
(735, 52575186, 6259, '2023-05-29', '15:34:09', NULL, 1, 0, '2023-05-29 05:32:30', '2023-05-29 05:32:30', 1, NULL, 'comprobantes/comprobante_735.pdf', NULL),
(736, 52575186, 6259, '2023-06-20', '01:57:03', 'Practicar ejercicios de relajación.', 1, 0, '2023-06-20 11:03:06', '2023-06-20 11:03:06', 1, NULL, 'comprobantes/comprobante_736.pdf', NULL),
(737, 52575186, 6259, '2023-05-13', '08:05:16', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-05-13 06:43:34', '2023-05-13 06:43:34', 1, NULL, 'comprobantes/comprobante_737.pdf', NULL),
(738, 76637170, 6259, '2024-10-08', '18:02:26', 'Practicar ejercicios de relajación.', 1, 1, '2024-10-09 02:10:05', '2024-10-09 02:10:05', 1, NULL, 'comprobantes/comprobante_738.pdf', NULL),
(739, 76637170, 6259, '2024-06-18', '07:54:41', 'Revisar tarea asignada la semana pasada.', 1, 1, '2024-06-18 19:39:18', '2024-06-18 19:39:18', 1, NULL, 'comprobantes/comprobante_739.pdf', NULL),
(740, 76637170, 6259, '2023-06-30', '06:24:48', NULL, 1, 0, '2023-06-30 05:06:34', '2023-06-30 05:06:34', 0, NULL, NULL, NULL),
(741, 76637170, 6259, '2022-12-28', '03:51:44', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-12-28 06:07:56', '2022-12-28 06:07:56', 1, NULL, 'comprobantes/comprobante_741.pdf', NULL),
(742, 76637170, 6259, '2023-08-07', '13:34:24', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-08-07 12:40:23', '2023-08-07 12:40:23', 1, NULL, 'comprobantes/comprobante_742.pdf', NULL),
(743, 76637170, 6259, '2023-03-19', '21:32:55', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-03-19 06:34:37', '2023-03-19 06:34:37', 1, NULL, 'comprobantes/comprobante_743.pdf', NULL),
(744, 76637170, 6259, '2024-03-10', '06:59:58', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-03-10 11:18:38', '2024-03-10 11:18:38', 1, NULL, 'comprobantes/comprobante_744.pdf', NULL),
(745, 76637170, 6259, '2023-07-24', '06:24:09', 'Analizar situaciones laborales recientes.', 1, 0, '2023-07-24 15:44:39', '2023-07-24 15:44:39', 1, NULL, 'comprobantes/comprobante_745.pdf', NULL),
(746, 76637170, 6259, '2022-06-21', '19:59:32', NULL, 0, 0, '2022-06-21 15:32:03', '2022-06-21 15:32:03', 1, NULL, 'comprobantes/comprobante_746.pdf', NULL),
(747, 76637170, 6259, '2024-11-20', '00:17:27', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-11-20 15:54:23', '2024-11-20 15:54:23', 0, NULL, NULL, NULL),
(748, 76637170, 6259, '2022-09-14', '23:07:43', 'Reflexionar sobre los eventos de la semana.', 0, 1, '2022-09-14 13:47:26', '2022-09-14 13:47:26', 1, NULL, 'comprobantes/comprobante_748.pdf', NULL),
(749, 76637170, 6259, '2024-11-20', '10:28:58', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-11-20 18:03:37', '2024-11-20 18:03:37', 1, NULL, 'comprobantes/comprobante_749.pdf', NULL),
(750, 76637170, 6259, '2024-12-04', '01:39:17', NULL, 0, 1, '2024-12-04 09:25:33', '2024-12-04 09:25:33', 1, NULL, 'comprobantes/comprobante_750.pdf', NULL),
(751, 76637170, 6259, '2022-03-05', '23:57:14', NULL, 1, 0, '2022-03-05 07:37:25', '2022-03-05 07:37:25', 1, NULL, 'comprobantes/comprobante_751.pdf', NULL),
(752, 76637170, 6259, '2023-01-20', '08:23:35', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-01-20 05:52:30', '2023-01-20 05:52:30', 1, NULL, 'comprobantes/comprobante_752.pdf', NULL),
(753, 76637170, 6259, '2024-12-04', '13:00:40', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-12-04 06:55:43', '2024-12-04 06:55:43', 1, NULL, 'comprobantes/comprobante_753.pdf', NULL),
(754, 89831900, 6259, '2023-04-22', '17:34:04', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-04-22 03:26:59', '2023-04-22 03:26:59', 1, NULL, 'comprobantes/comprobante_754.pdf', NULL),
(755, 89831900, 6259, '2023-06-09', '11:26:41', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-06-09 03:16:21', '2023-06-09 03:16:21', 1, NULL, 'comprobantes/comprobante_755.pdf', NULL),
(756, 89831900, 6259, '2024-07-20', '11:40:53', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-07-20 09:35:18', '2024-07-20 09:35:18', 1, NULL, 'comprobantes/comprobante_756.pdf', NULL),
(757, 89831900, 6259, '2022-06-27', '05:41:24', 'Analizar situaciones laborales recientes.', 1, 0, '2022-06-27 05:55:58', '2022-06-27 05:55:58', 1, NULL, 'comprobantes/comprobante_757.pdf', NULL),
(758, 89831900, 6259, '2022-01-14', '20:52:13', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-01-14 14:09:16', '2022-01-14 14:09:16', 0, NULL, NULL, NULL),
(759, 89831900, 6259, '2023-03-23', '05:51:23', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-03-23 10:07:04', '2023-03-23 10:07:04', 1, NULL, 'comprobantes/comprobante_759.pdf', NULL),
(760, 89831900, 6259, '2024-09-21', '16:33:44', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-09-21 14:27:22', '2024-09-21 14:27:22', 0, NULL, NULL, NULL),
(761, 89831900, 6259, '2023-10-03', '11:36:36', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-10-04 02:13:31', '2023-10-04 02:13:31', 1, NULL, 'comprobantes/comprobante_761.pdf', NULL),
(762, 89831900, 6259, '2024-02-05', '15:09:36', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-02-05 18:46:19', '2024-02-05 18:46:19', 1, NULL, 'comprobantes/comprobante_762.pdf', NULL),
(763, 89831900, 6259, '2022-06-17', '07:41:55', 'Analizar situaciones laborales recientes.', 0, 0, '2022-06-17 07:46:31', '2022-06-17 07:46:31', 1, NULL, 'comprobantes/comprobante_763.pdf', NULL),
(764, 89831900, 6259, '2022-07-09', '19:49:49', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-07-09 10:00:04', '2022-07-09 10:00:04', 1, NULL, 'comprobantes/comprobante_764.pdf', NULL),
(765, 89831900, 6259, '2023-04-03', '10:22:35', 'Discutir avances en los objetivos establecidos.', 1, 1, '2023-04-04 02:24:39', '2023-04-04 02:24:39', 1, NULL, 'comprobantes/comprobante_765.pdf', NULL),
(766, 89831900, 6259, '2024-08-27', '05:47:51', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-08-28 01:26:26', '2024-08-28 01:26:26', 1, NULL, 'comprobantes/comprobante_766.pdf', NULL),
(767, 89831900, 6259, '2023-01-12', '03:36:54', 'Analizar situaciones laborales recientes.', 1, 0, '2023-01-12 06:52:36', '2023-01-12 06:52:36', 1, NULL, 'comprobantes/comprobante_767.pdf', NULL),
(768, 89831900, 6259, '2023-05-01', '12:47:21', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-05-01 08:16:29', '2023-05-01 08:16:29', 0, NULL, NULL, NULL),
(769, 89831900, 6259, '2023-02-21', '12:02:15', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-02-21 12:22:51', '2023-02-21 12:22:51', 1, NULL, 'comprobantes/comprobante_769.pdf', NULL),
(770, 77742230, 6259, '2023-09-05', '03:37:29', NULL, 0, 0, '2023-09-05 12:44:48', '2023-09-05 12:44:48', 1, NULL, 'comprobantes/comprobante_770.pdf', NULL),
(771, 77742230, 6259, '2022-03-22', '01:10:35', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-03-23 02:24:58', '2022-03-23 02:24:58', 1, NULL, 'comprobantes/comprobante_771.pdf', NULL),
(772, 77742230, 6259, '2024-09-08', '05:00:50', 'Revisar tarea asignada la semana pasada.', 1, 1, '2024-09-08 14:56:04', '2024-09-08 14:56:04', 1, NULL, 'comprobantes/comprobante_772.pdf', NULL),
(773, 77742230, 6259, '2024-06-17', '12:28:05', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-06-17 11:10:53', '2024-06-17 11:10:53', 1, NULL, 'comprobantes/comprobante_773.pdf', NULL),
(774, 77742230, 6259, '2023-04-15', '06:18:32', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-04-15 18:30:11', '2023-04-15 18:30:11', 1, NULL, 'comprobantes/comprobante_774.pdf', NULL),
(775, 77742230, 6259, '2023-08-29', '13:36:32', NULL, 1, 1, '2023-08-29 10:04:09', '2023-08-29 10:04:09', 1, NULL, 'comprobantes/comprobante_775.pdf', NULL),
(776, 77742230, 6259, '2022-03-25', '08:28:18', 'Analizar situaciones laborales recientes.', 1, 0, '2022-03-25 13:32:36', '2022-03-25 13:32:36', 1, NULL, 'comprobantes/comprobante_776.pdf', NULL),
(777, 77742230, 6259, '2024-10-29', '19:01:32', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-10-29 20:39:42', '2024-10-29 20:39:42', 1, NULL, 'comprobantes/comprobante_777.pdf', NULL),
(778, 77742230, 6259, '2024-03-13', '11:02:24', 'Discutir avances en los objetivos establecidos.', 1, 1, '2024-03-13 13:47:19', '2024-03-13 13:47:19', 1, NULL, 'comprobantes/comprobante_778.pdf', NULL),
(779, 77742230, 6259, '2022-06-27', '13:08:44', 'Practicar ejercicios de relajación.', 1, 0, '2022-06-27 21:40:21', '2022-06-27 21:40:21', 1, NULL, 'comprobantes/comprobante_779.pdf', NULL),
(780, 77742230, 6259, '2022-05-18', '14:10:38', NULL, 0, 0, '2022-05-18 05:12:47', '2022-05-18 05:12:47', 1, NULL, 'comprobantes/comprobante_780.pdf', NULL),
(781, 77742230, 6259, '2022-01-10', '07:19:49', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-01-10 03:53:05', '2022-01-10 03:53:05', 1, NULL, 'comprobantes/comprobante_781.pdf', NULL),
(782, 77742230, 6259, '2022-06-07', '13:23:29', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-06-07 16:25:13', '2022-06-07 16:25:13', 1, NULL, 'comprobantes/comprobante_782.pdf', NULL),
(783, 77742230, 6259, '2024-01-25', '02:33:50', 'Analizar situaciones laborales recientes.', 1, 0, '2024-01-25 15:27:55', '2024-01-25 15:27:55', 1, NULL, 'comprobantes/comprobante_783.pdf', NULL),
(784, 77742230, 6259, '2022-08-19', '07:38:58', NULL, 1, 0, '2022-08-19 11:33:08', '2022-08-19 11:33:08', 1, NULL, 'comprobantes/comprobante_784.pdf', NULL),
(785, 77742230, 6259, '2024-04-19', '18:49:09', 'Analizar situaciones laborales recientes.', 1, 0, '2024-04-20 01:08:39', '2024-04-20 01:08:39', 1, NULL, 'comprobantes/comprobante_785.pdf', NULL),
(786, 77742230, 6259, '2023-10-08', '08:03:09', NULL, 0, 0, '2023-10-08 19:04:56', '2023-10-08 19:04:56', 1, NULL, 'comprobantes/comprobante_786.pdf', NULL),
(787, 77742230, 6259, '2024-09-12', '08:29:43', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2024-09-12 10:38:51', '2024-09-12 10:38:51', 1, NULL, 'comprobantes/comprobante_787.pdf', NULL),
(788, 77742230, 6259, '2023-05-08', '05:36:50', 'Revisar compromisos establecidos anteriormente.', 0, 1, '2023-05-08 08:51:59', '2023-05-08 08:51:59', 1, NULL, 'comprobantes/comprobante_788.pdf', NULL),
(789, 77742230, 6259, '2024-12-17', '15:42:23', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2024-12-17 22:07:14', '2024-12-17 22:07:14', 1, NULL, 'comprobantes/comprobante_789.pdf', NULL),
(790, 77742230, 6259, '2024-07-11', '07:38:49', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-07-11 15:37:49', '2024-07-11 15:37:49', 1, NULL, 'comprobantes/comprobante_790.pdf', NULL),
(791, 77742230, 6259, '2022-03-28', '13:26:27', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-03-28 12:23:12', '2022-03-28 12:23:12', 1, NULL, 'comprobantes/comprobante_791.pdf', NULL),
(792, 77742230, 6259, '2024-08-30', '16:00:52', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-08-30 20:01:35', '2024-08-30 20:01:35', 1, NULL, 'comprobantes/comprobante_792.pdf', NULL),
(793, 77742230, 6259, '2024-08-17', '18:50:23', NULL, 1, 0, '2024-08-17 10:59:32', '2024-08-17 10:59:32', 1, NULL, 'comprobantes/comprobante_793.pdf', NULL),
(794, 77742230, 6259, '2024-02-18', '00:52:05', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-02-18 18:13:34', '2024-02-18 18:13:34', 1, NULL, 'comprobantes/comprobante_794.pdf', NULL),
(795, 77742230, 6259, '2024-10-01', '00:22:21', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-10-01 05:32:06', '2024-10-01 05:32:06', 1, NULL, 'comprobantes/comprobante_795.pdf', NULL),
(796, 77742230, 6259, '2024-01-21', '11:52:57', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-01-21 03:36:21', '2024-01-21 03:36:21', 1, NULL, 'comprobantes/comprobante_796.pdf', NULL),
(797, 77742230, 6259, '2023-10-02', '21:58:19', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-10-02 07:57:01', '2023-10-02 07:57:01', 1, NULL, 'comprobantes/comprobante_797.pdf', NULL),
(798, 77742230, 6259, '2023-07-23', '18:04:09', 'Discutir avances en los objetivos establecidos.', 0, 1, '2023-07-23 20:00:54', '2023-07-23 20:00:54', 1, NULL, 'comprobantes/comprobante_798.pdf', NULL),
(799, 77742230, 6259, '2023-02-27', '13:01:22', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-02-27 11:18:23', '2023-02-27 11:18:23', 0, NULL, NULL, NULL),
(800, 77742230, 2439, '2023-05-14', '01:52:54', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-05-14 08:50:06', '2023-05-14 08:50:06', 1, NULL, 'comprobantes/comprobante_800.pdf', NULL),
(801, 77742230, 2439, '2024-10-13', '12:19:41', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-10-13 05:30:26', '2024-10-13 05:30:26', 1, NULL, 'comprobantes/comprobante_801.pdf', NULL);
INSERT INTO `sesion` (`id_sesion`, `dni_paciente`, `matricula_psicologo`, `fecha`, `hora`, `comentario`, `presencial`, `cancelado`, `created_at`, `updated_at`, `pago`, `payment_id`, `comprobante_path`, `fecha_pago`) VALUES
(802, 77742230, 2439, '2022-10-23', '06:19:27', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-10-23 21:18:07', '2022-10-23 21:18:07', 1, NULL, 'comprobantes/comprobante_802.pdf', NULL),
(803, 77742230, 2439, '2023-12-07', '00:54:33', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-12-07 23:25:10', '2023-12-07 23:25:10', 1, NULL, 'comprobantes/comprobante_803.pdf', NULL),
(804, 77742230, 2439, '2022-06-16', '05:20:46', 'Analizar situaciones laborales recientes.', 0, 0, '2022-06-16 06:16:03', '2022-06-16 06:16:03', 1, NULL, 'comprobantes/comprobante_804.pdf', NULL),
(805, 77742230, 2439, '2023-09-24', '10:04:53', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-09-24 17:54:42', '2023-09-24 17:54:42', 1, NULL, 'comprobantes/comprobante_805.pdf', NULL),
(806, 77742230, 2439, '2024-07-04', '00:15:31', 'Practicar ejercicios de relajación.', 1, 0, '2024-07-04 08:33:04', '2024-07-04 08:33:04', 1, NULL, 'comprobantes/comprobante_806.pdf', NULL),
(807, 77742230, 2439, '2022-01-10', '20:23:08', 'Analizar situaciones laborales recientes.', 1, 1, '2022-01-10 07:14:34', '2022-01-10 07:14:34', 1, NULL, 'comprobantes/comprobante_807.pdf', NULL),
(808, 77742230, 2439, '2023-09-25', '19:22:03', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-09-25 05:25:38', '2023-09-25 05:25:38', 1, NULL, 'comprobantes/comprobante_808.pdf', NULL),
(809, 77742230, 2439, '2022-05-20', '15:06:28', NULL, 0, 0, '2022-05-20 05:42:43', '2022-05-20 05:42:43', 1, NULL, 'comprobantes/comprobante_809.pdf', NULL),
(810, 77742230, 2439, '2024-12-02', '16:37:03', NULL, 0, 0, '2024-12-03 01:25:50', '2024-12-03 01:25:50', 1, NULL, 'comprobantes/comprobante_810.pdf', NULL),
(811, 77742230, 2439, '2022-12-03', '06:25:46', 'Analizar situaciones laborales recientes.', 1, 0, '2022-12-03 06:23:18', '2022-12-03 06:23:18', 0, NULL, NULL, NULL),
(812, 77742230, 2439, '2024-08-13', '03:19:30', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-08-13 14:59:21', '2024-08-13 14:59:21', 1, NULL, 'comprobantes/comprobante_812.pdf', NULL),
(813, 77742230, 2439, '2024-04-30', '11:47:36', NULL, 0, 0, '2024-04-30 04:28:09', '2024-04-30 04:28:09', 1, NULL, 'comprobantes/comprobante_813.pdf', NULL),
(814, 77742230, 2439, '2022-08-31', '03:10:32', NULL, 1, 0, '2022-09-01 01:33:13', '2022-09-01 01:33:13', 0, NULL, NULL, NULL),
(815, 77742230, 2439, '2022-12-14', '09:13:41', 'Practicar ejercicios de relajación.', 1, 0, '2022-12-14 13:22:16', '2022-12-14 13:22:16', 1, NULL, 'comprobantes/comprobante_815.pdf', NULL),
(816, 77742230, 2439, '2023-01-24', '19:43:27', 'Analizar situaciones laborales recientes.', 0, 0, '2023-01-24 08:40:03', '2023-01-24 08:40:03', 1, NULL, 'comprobantes/comprobante_816.pdf', NULL),
(817, 77742230, 2439, '2024-02-03', '06:32:05', NULL, 1, 0, '2024-02-04 01:48:34', '2024-02-04 01:48:34', 1, NULL, 'comprobantes/comprobante_817.pdf', NULL),
(818, 77742230, 2439, '2022-04-25', '17:47:50', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-04-25 03:32:16', '2022-04-25 03:32:16', 1, NULL, 'comprobantes/comprobante_818.pdf', NULL),
(819, 77742230, 2439, '2024-11-18', '19:53:07', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-11-18 22:41:24', '2024-11-18 22:41:24', 1, NULL, 'comprobantes/comprobante_819.pdf', NULL),
(820, 77742230, 2439, '2022-12-10', '17:45:27', NULL, 0, 0, '2022-12-10 20:47:03', '2022-12-10 20:47:03', 1, NULL, 'comprobantes/comprobante_820.pdf', NULL),
(821, 77742230, 2439, '2024-02-23', '06:39:56', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-02-23 16:11:26', '2024-02-23 16:11:26', 1, NULL, 'comprobantes/comprobante_821.pdf', NULL),
(822, 77742230, 2439, '2022-08-28', '09:41:27', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-08-28 07:43:52', '2022-08-28 07:43:52', 1, NULL, 'comprobantes/comprobante_822.pdf', NULL),
(823, 77742230, 2439, '2024-05-19', '13:43:22', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-05-19 16:02:53', '2024-05-19 16:02:53', 1, NULL, 'comprobantes/comprobante_823.pdf', NULL),
(824, 77742230, 2439, '2024-07-10', '19:24:15', 'Identificar patrones de pensamiento negativos.', 1, 1, '2024-07-10 09:09:50', '2024-07-10 09:09:50', 1, NULL, 'comprobantes/comprobante_824.pdf', NULL),
(825, 77742230, 2439, '2022-01-30', '11:13:52', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-01-30 04:24:56', '2022-01-30 04:24:56', 1, NULL, 'comprobantes/comprobante_825.pdf', NULL),
(826, 77742230, 2439, '2024-06-12', '05:01:24', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-06-12 03:22:44', '2024-06-12 03:22:44', 1, NULL, 'comprobantes/comprobante_826.pdf', NULL),
(827, 64323872, 2439, '2024-08-06', '07:53:49', NULL, 0, 0, '2024-08-06 05:17:33', '2024-08-06 05:17:33', 1, NULL, 'comprobantes/comprobante_827.pdf', NULL),
(828, 64323872, 2439, '2022-02-10', '07:08:04', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-02-11 01:26:15', '2022-02-11 01:26:15', 1, NULL, 'comprobantes/comprobante_828.pdf', NULL),
(829, 64323872, 2439, '2023-11-08', '21:51:53', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-11-09 01:39:05', '2023-11-09 01:39:05', 1, NULL, 'comprobantes/comprobante_829.pdf', NULL),
(830, 64323872, 2439, '2022-10-26', '14:58:43', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-10-26 12:40:48', '2022-10-26 12:40:48', 1, NULL, 'comprobantes/comprobante_830.pdf', NULL),
(831, 64323872, 2439, '2023-08-21', '14:54:15', NULL, 1, 0, '2023-08-21 17:52:45', '2023-08-21 17:52:45', 1, NULL, 'comprobantes/comprobante_831.pdf', NULL),
(832, 64323872, 2439, '2023-06-02', '08:57:48', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-06-03 01:39:20', '2023-06-03 01:39:20', 1, NULL, 'comprobantes/comprobante_832.pdf', NULL),
(833, 64323872, 2439, '2022-06-07', '02:03:54', NULL, 1, 0, '2022-06-07 23:16:07', '2022-06-07 23:16:07', 1, NULL, 'comprobantes/comprobante_833.pdf', NULL),
(834, 64323872, 2439, '2024-03-09', '05:12:24', 'Analizar situaciones laborales recientes.', 1, 0, '2024-03-09 09:36:49', '2024-03-09 09:36:49', 1, NULL, 'comprobantes/comprobante_834.pdf', NULL),
(835, 64323872, 2439, '2024-02-01', '19:42:35', NULL, 1, 1, '2024-02-01 09:33:56', '2024-02-01 09:33:56', 1, NULL, 'comprobantes/comprobante_835.pdf', NULL),
(836, 64323872, 2439, '2023-11-04', '21:33:48', NULL, 1, 0, '2023-11-04 17:06:06', '2023-11-04 17:06:06', 1, NULL, 'comprobantes/comprobante_836.pdf', NULL),
(837, 64323872, 2439, '2024-05-31', '04:57:18', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-05-31 19:07:51', '2024-05-31 19:07:51', 1, NULL, 'comprobantes/comprobante_837.pdf', NULL),
(838, 64323872, 2439, '2023-06-08', '19:47:46', 'Trabajar en estrategias de manejo de ansiedad.', 0, 1, '2023-06-08 13:16:19', '2023-06-08 13:16:19', 1, NULL, 'comprobantes/comprobante_838.pdf', NULL),
(839, 64323872, 2439, '2024-03-29', '18:33:54', NULL, 1, 0, '2024-03-29 12:34:01', '2024-03-29 12:34:01', 1, NULL, 'comprobantes/comprobante_839.pdf', NULL),
(840, 64323872, 2439, '2022-12-17', '04:28:49', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-12-17 19:04:30', '2022-12-17 19:04:30', 1, NULL, 'comprobantes/comprobante_840.pdf', NULL),
(841, 64323872, 2439, '2024-07-21', '07:26:37', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-07-21 03:40:11', '2024-07-21 03:40:11', 1, NULL, 'comprobantes/comprobante_841.pdf', NULL),
(842, 64323872, 2439, '2022-01-22', '04:54:27', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-01-22 18:23:58', '2022-01-22 18:23:58', 1, NULL, 'comprobantes/comprobante_842.pdf', NULL),
(843, 64323872, 2439, '2024-11-12', '09:33:39', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-11-12 19:35:06', '2024-11-12 19:35:06', 1, NULL, 'comprobantes/comprobante_843.pdf', NULL),
(844, 64323872, 2439, '2022-10-06', '01:32:51', 'Practicar ejercicios de relajación.', 0, 0, '2022-10-06 19:02:13', '2022-10-06 19:02:13', 1, NULL, 'comprobantes/comprobante_844.pdf', NULL),
(845, 64323872, 2439, '2022-05-14', '06:51:47', NULL, 1, 0, '2022-05-14 06:55:51', '2022-05-14 06:55:51', 1, NULL, 'comprobantes/comprobante_845.pdf', NULL),
(846, 64323872, 2439, '2024-02-23', '16:20:51', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-02-23 06:37:58', '2024-02-23 06:37:58', 1, NULL, 'comprobantes/comprobante_846.pdf', NULL),
(847, 64323872, 2439, '2023-04-29', '06:57:46', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-04-29 15:23:38', '2023-04-29 15:23:38', 1, NULL, 'comprobantes/comprobante_847.pdf', NULL),
(848, 64323872, 2439, '2023-11-17', '06:49:35', NULL, 1, 0, '2023-11-17 15:03:54', '2023-11-17 15:03:54', 1, NULL, 'comprobantes/comprobante_848.pdf', NULL),
(849, 64323872, 2439, '2024-08-16', '00:23:21', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-08-16 23:46:46', '2024-08-16 23:46:46', 0, NULL, NULL, NULL),
(850, 64323872, 2439, '2022-11-29', '05:12:49', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-11-29 06:45:32', '2022-11-29 06:45:32', 1, NULL, 'comprobantes/comprobante_850.pdf', NULL),
(851, 64323872, 2439, '2023-11-18', '09:10:40', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-11-18 23:54:39', '2023-11-18 23:54:39', 1, NULL, 'comprobantes/comprobante_851.pdf', NULL),
(852, 64323872, 2439, '2022-03-09', '07:04:50', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-03-09 04:28:40', '2022-03-09 04:28:40', 1, NULL, 'comprobantes/comprobante_852.pdf', NULL),
(853, 64323872, 2439, '2023-08-24', '17:35:07', NULL, 0, 1, '2023-08-24 17:53:03', '2023-08-24 17:53:03', 1, NULL, 'comprobantes/comprobante_853.pdf', NULL),
(854, 64323872, 2439, '2022-11-30', '16:04:43', 'Revisar tarea asignada la semana pasada.', 1, 1, '2022-11-30 16:38:47', '2022-11-30 16:38:47', 1, NULL, 'comprobantes/comprobante_854.pdf', NULL),
(855, 64323872, 2439, '2023-11-15', '16:25:59', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-11-15 12:33:54', '2023-11-15 12:33:54', 1, NULL, 'comprobantes/comprobante_855.pdf', NULL),
(856, 52575186, 2439, '2023-09-07', '17:56:21', 'Analizar situaciones laborales recientes.', 1, 0, '2023-09-07 04:55:00', '2023-09-07 04:55:00', 1, NULL, 'comprobantes/comprobante_856.pdf', NULL),
(857, 52575186, 2439, '2023-01-17', '14:35:18', NULL, 0, 0, '2023-01-17 17:25:28', '2023-01-17 17:25:28', 1, NULL, 'comprobantes/comprobante_857.pdf', NULL),
(858, 52575186, 2439, '2023-04-07', '11:19:11', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-04-07 04:17:34', '2023-04-07 04:17:34', 1, NULL, 'comprobantes/comprobante_858.pdf', NULL),
(859, 52575186, 2439, '2022-04-24', '11:00:49', NULL, 1, 0, '2022-04-25 00:54:12', '2022-04-25 00:54:12', 0, NULL, NULL, NULL),
(860, 52575186, 2439, '2022-11-23', '12:58:21', 'Identificar patrones de pensamiento negativos.', 1, 1, '2022-11-23 03:00:24', '2022-11-23 03:00:24', 1, NULL, 'comprobantes/comprobante_860.pdf', NULL),
(861, 52575186, 2439, '2024-07-27', '12:06:02', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-07-27 18:27:10', '2024-07-27 18:27:10', 1, NULL, 'comprobantes/comprobante_861.pdf', NULL),
(862, 52575186, 2439, '2024-07-09', '05:04:41', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-07-09 03:50:40', '2024-07-09 03:50:40', 1, NULL, 'comprobantes/comprobante_862.pdf', NULL),
(863, 52575186, 2439, '2023-09-10', '04:30:18', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-09-10 22:52:43', '2023-09-10 22:52:43', 1, NULL, 'comprobantes/comprobante_863.pdf', NULL),
(864, 52575186, 2439, '2024-06-05', '18:46:20', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-06-05 21:56:22', '2024-06-05 21:56:22', 1, NULL, 'comprobantes/comprobante_864.pdf', NULL),
(865, 52575186, 2439, '2023-04-22', '09:35:17', NULL, 1, 0, '2023-04-22 15:26:26', '2023-04-22 15:26:26', 1, NULL, 'comprobantes/comprobante_865.pdf', NULL),
(866, 52575186, 2439, '2024-11-05', '12:33:12', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-11-05 15:19:27', '2024-11-05 15:19:27', 1, NULL, 'comprobantes/comprobante_866.pdf', NULL),
(867, 52575186, 2439, '2022-12-13', '03:16:27', NULL, 0, 1, '2022-12-13 11:04:30', '2022-12-13 11:04:30', 1, NULL, 'comprobantes/comprobante_867.pdf', NULL),
(868, 52575186, 2439, '2022-08-11', '06:10:31', 'Identificar patrones de pensamiento negativos.', 0, 1, '2022-08-11 03:43:35', '2022-08-11 03:43:35', 1, NULL, 'comprobantes/comprobante_868.pdf', NULL),
(869, 52575186, 2439, '2023-06-06', '15:30:34', NULL, 1, 1, '2023-06-06 05:07:15', '2023-06-06 05:07:15', 0, NULL, NULL, NULL),
(870, 52575186, 2439, '2022-02-15', '03:40:47', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-02-15 11:55:14', '2022-02-15 11:55:14', 1, NULL, 'comprobantes/comprobante_870.pdf', NULL),
(871, 52575186, 2439, '2023-05-01', '08:34:22', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-01 18:43:00', '2023-05-01 18:43:00', 1, NULL, 'comprobantes/comprobante_871.pdf', NULL),
(872, 52575186, 2439, '2023-11-11', '18:57:12', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-11-11 17:28:13', '2023-11-11 17:28:13', 0, NULL, NULL, NULL),
(873, 52575186, 2439, '2023-10-04', '09:41:18', NULL, 1, 0, '2023-10-04 12:30:34', '2023-10-04 12:30:34', 1, NULL, 'comprobantes/comprobante_873.pdf', NULL),
(874, 52575186, 2439, '2022-01-04', '16:05:49', NULL, 0, 0, '2022-01-05 00:44:45', '2022-01-05 00:44:45', 1, NULL, 'comprobantes/comprobante_874.pdf', NULL),
(875, 52575186, 2439, '2024-08-18', '09:32:31', NULL, 1, 0, '2024-08-18 14:17:05', '2024-08-18 14:17:05', 1, NULL, 'comprobantes/comprobante_875.pdf', NULL),
(876, 52575186, 2439, '2023-02-21', '11:07:49', 'Practicar ejercicios de relajación.', 1, 0, '2023-02-21 04:22:08', '2023-02-21 04:22:08', 1, NULL, 'comprobantes/comprobante_876.pdf', NULL),
(877, 52575186, 2439, '2024-03-02', '17:11:40', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-03-02 03:37:46', '2024-03-02 03:37:46', 1, NULL, 'comprobantes/comprobante_877.pdf', NULL),
(878, 52575186, 2439, '2024-08-02', '16:19:47', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-08-02 15:11:34', '2024-08-02 15:11:34', 1, NULL, 'comprobantes/comprobante_878.pdf', NULL),
(879, 52575186, 2439, '2024-07-09', '22:38:35', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-07-09 04:51:11', '2024-07-09 04:51:11', 0, NULL, NULL, NULL),
(880, 52575186, 2439, '2023-04-07', '00:16:15', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-04-07 17:02:02', '2023-04-07 17:02:02', 1, NULL, 'comprobantes/comprobante_880.pdf', NULL),
(881, 52575186, 2439, '2024-07-06', '10:35:13', NULL, 0, 0, '2024-07-06 10:31:04', '2024-07-06 10:31:04', 1, NULL, 'comprobantes/comprobante_881.pdf', NULL),
(882, 52575186, 2439, '2023-08-24', '21:39:44', 'Practicar ejercicios de relajación.', 0, 0, '2023-08-25 02:50:32', '2023-08-25 02:50:32', 1, NULL, 'comprobantes/comprobante_882.pdf', NULL),
(883, 52575186, 2439, '2022-11-14', '07:21:58', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-11-14 14:24:55', '2022-11-14 14:24:55', 1, NULL, 'comprobantes/comprobante_883.pdf', NULL),
(884, 52575186, 2439, '2024-03-13', '16:10:15', 'Analizar situaciones laborales recientes.', 1, 0, '2024-03-13 08:58:12', '2024-03-13 08:58:12', 1, NULL, 'comprobantes/comprobante_884.pdf', NULL),
(885, 52575186, 2439, '2022-04-24', '09:27:22', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-04-24 07:08:13', '2022-04-24 07:08:13', 1, NULL, 'comprobantes/comprobante_885.pdf', NULL),
(886, 62322325, 2439, '2023-11-26', '00:16:36', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-11-26 07:38:43', '2023-11-26 07:38:43', 1, NULL, 'comprobantes/comprobante_886.pdf', NULL),
(887, 62322325, 2439, '2023-05-13', '18:19:34', NULL, 1, 0, '2023-05-13 03:06:11', '2023-05-13 03:06:11', 1, NULL, 'comprobantes/comprobante_887.pdf', NULL),
(888, 62322325, 2439, '2023-02-13', '04:48:32', 'Practicar ejercicios de relajación.', 1, 0, '2023-02-13 06:02:18', '2023-02-13 06:02:18', 0, NULL, NULL, NULL),
(889, 62322325, 2439, '2022-09-22', '05:06:57', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-09-22 07:45:33', '2022-09-22 07:45:33', 1, NULL, 'comprobantes/comprobante_889.pdf', NULL),
(890, 62322325, 2439, '2024-06-03', '07:25:41', NULL, 0, 0, '2024-06-03 21:05:35', '2024-06-03 21:05:35', 1, NULL, 'comprobantes/comprobante_890.pdf', NULL),
(891, 62322325, 2439, '2022-05-29', '09:40:55', NULL, 1, 0, '2022-05-29 17:42:15', '2022-05-29 17:42:15', 1, NULL, 'comprobantes/comprobante_891.pdf', NULL),
(892, 62322325, 2439, '2023-12-05', '15:57:55', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-12-06 02:26:08', '2023-12-06 02:26:08', 1, NULL, 'comprobantes/comprobante_892.pdf', NULL),
(893, 62322325, 2439, '2024-03-08', '12:22:32', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-03-08 21:57:56', '2024-03-08 21:57:56', 1, NULL, 'comprobantes/comprobante_893.pdf', NULL),
(894, 62322325, 2439, '2024-01-01', '11:30:07', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-01-01 17:56:16', '2024-01-01 17:56:16', 1, NULL, 'comprobantes/comprobante_894.pdf', NULL),
(895, 62322325, 2439, '2022-11-02', '04:44:50', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-11-02 17:04:41', '2022-11-02 17:04:41', 1, NULL, 'comprobantes/comprobante_895.pdf', NULL),
(896, 62322325, 2439, '2023-10-23', '10:44:39', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-10-23 22:20:05', '2023-10-23 22:20:05', 1, NULL, 'comprobantes/comprobante_896.pdf', NULL),
(897, 62322325, 2439, '2022-11-12', '11:40:02', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-11-12 10:34:21', '2022-11-12 10:34:21', 1, NULL, 'comprobantes/comprobante_897.pdf', NULL),
(898, 62322325, 2439, '2022-05-04', '20:08:42', NULL, 0, 0, '2022-05-04 12:41:55', '2022-05-04 12:41:55', 1, NULL, 'comprobantes/comprobante_898.pdf', NULL),
(899, 22778682, 2439, '2023-06-30', '10:55:55', 'Revisar tarea asignada la semana pasada.', 1, 1, '2023-07-01 00:08:16', '2023-07-01 00:08:16', 1, NULL, 'comprobantes/comprobante_899.pdf', NULL),
(900, 22778682, 2439, '2023-10-26', '01:33:29', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-10-26 17:06:41', '2023-10-26 17:06:41', 1, NULL, 'comprobantes/comprobante_900.pdf', NULL),
(901, 22778682, 2439, '2022-05-04', '16:45:56', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-05-04 22:37:54', '2022-05-04 22:37:54', 1, NULL, 'comprobantes/comprobante_901.pdf', NULL),
(902, 22778682, 2439, '2024-08-25', '06:52:18', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-08-25 13:36:16', '2024-08-25 13:36:16', 1, NULL, 'comprobantes/comprobante_902.pdf', NULL),
(903, 22778682, 2439, '2023-07-18', '22:09:46', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-07-18 23:41:44', '2023-07-18 23:41:44', 1, NULL, 'comprobantes/comprobante_903.pdf', NULL),
(904, 22778682, 2439, '2022-01-20', '22:17:51', 'Practicar ejercicios de relajación.', 1, 0, '2022-01-20 15:03:03', '2022-01-20 15:03:03', 1, NULL, 'comprobantes/comprobante_904.pdf', NULL),
(905, 22778682, 2439, '2024-04-05', '04:00:15', 'Discutir avances en los objetivos establecidos.', 0, 1, '2024-04-06 02:35:34', '2024-04-06 02:35:34', 1, NULL, 'comprobantes/comprobante_905.pdf', NULL),
(906, 22778682, 2439, '2024-02-14', '11:55:24', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-02-14 18:06:35', '2024-02-14 18:06:35', 1, NULL, 'comprobantes/comprobante_906.pdf', NULL),
(907, 22778682, 2439, '2024-05-24', '22:14:40', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-05-25 01:36:27', '2024-05-25 01:36:27', 1, NULL, 'comprobantes/comprobante_907.pdf', NULL),
(908, 22778682, 2439, '2024-12-09', '06:50:34', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-12-09 16:57:33', '2024-12-09 16:57:33', 1, NULL, 'comprobantes/comprobante_908.pdf', NULL),
(909, 22778682, 2439, '2024-07-15', '14:04:40', NULL, 0, 1, '2024-07-16 02:37:22', '2024-07-16 02:37:22', 1, NULL, 'comprobantes/comprobante_909.pdf', NULL),
(910, 22778682, 2439, '2024-05-23', '05:31:19', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-05-23 12:49:33', '2024-05-23 12:49:33', 0, NULL, NULL, NULL),
(911, 22778682, 2439, '2023-03-11', '20:38:48', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-03-11 16:16:17', '2023-03-11 16:16:17', 1, NULL, 'comprobantes/comprobante_911.pdf', NULL),
(912, 22778682, 2439, '2024-11-02', '08:21:59', NULL, 0, 0, '2024-11-02 07:54:20', '2024-11-02 07:54:20', 1, NULL, 'comprobantes/comprobante_912.pdf', NULL),
(913, 22778682, 2439, '2024-05-23', '22:11:30', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-05-24 01:30:21', '2024-05-24 01:30:21', 1, NULL, 'comprobantes/comprobante_913.pdf', NULL),
(914, 22778682, 2439, '2024-08-31', '01:19:59', 'Practicar ejercicios de relajación.', 0, 0, '2024-08-31 18:06:15', '2024-08-31 18:06:15', 0, NULL, NULL, NULL),
(915, 22778682, 2439, '2022-06-30', '21:09:36', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-06-30 03:49:04', '2022-06-30 03:49:04', 1, NULL, 'comprobantes/comprobante_915.pdf', NULL),
(916, 22778682, 2439, '2024-06-07', '22:01:12', 'Practicar ejercicios de relajación.', 1, 0, '2024-06-08 00:29:01', '2024-06-08 00:29:01', 1, NULL, 'comprobantes/comprobante_916.pdf', NULL),
(917, 43822069, 8472, '2022-01-20', '17:26:30', 'Practicar ejercicios de relajación.', 1, 0, '2022-01-20 16:12:14', '2022-01-20 16:12:14', 1, NULL, 'comprobantes/comprobante_917.pdf', NULL),
(918, 43822069, 8472, '2022-07-22', '14:07:26', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-07-22 23:55:11', '2022-07-22 23:55:11', 1, NULL, 'comprobantes/comprobante_918.pdf', NULL),
(919, 43822069, 8472, '2022-09-21', '18:47:10', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-09-21 13:05:34', '2022-09-21 13:05:34', 1, NULL, 'comprobantes/comprobante_919.pdf', NULL),
(920, 43822069, 8472, '2022-12-15', '14:10:12', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-12-15 13:08:47', '2022-12-15 13:08:47', 1, NULL, 'comprobantes/comprobante_920.pdf', NULL),
(921, 43822069, 8472, '2022-05-09', '12:19:50', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-05-09 11:53:27', '2022-05-09 11:53:27', 1, NULL, 'comprobantes/comprobante_921.pdf', NULL),
(922, 43822069, 8472, '2024-08-10', '08:24:50', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-08-10 18:04:23', '2024-08-10 18:04:23', 1, NULL, 'comprobantes/comprobante_922.pdf', NULL),
(923, 43822069, 8472, '2024-08-05', '15:56:11', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-08-05 17:16:33', '2024-08-05 17:16:33', 1, NULL, 'comprobantes/comprobante_923.pdf', NULL),
(924, 43822069, 8472, '2023-09-21', '19:40:25', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-09-21 09:48:55', '2023-09-21 09:48:55', 1, NULL, 'comprobantes/comprobante_924.pdf', NULL),
(925, 43822069, 8472, '2023-04-18', '18:50:50', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-04-18 13:40:57', '2023-04-18 13:40:57', 1, NULL, 'comprobantes/comprobante_925.pdf', NULL),
(926, 43822069, 8472, '2023-01-15', '21:27:25', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-01-15 07:17:09', '2023-01-15 07:17:09', 1, NULL, 'comprobantes/comprobante_926.pdf', NULL),
(927, 43822069, 8472, '2024-05-19', '01:12:45', NULL, 0, 0, '2024-05-19 07:03:06', '2024-05-19 07:03:06', 1, NULL, 'comprobantes/comprobante_927.pdf', NULL),
(928, 43822069, 8472, '2023-03-24', '20:47:05', NULL, 1, 0, '2023-03-24 11:45:34', '2023-03-24 11:45:34', 1, NULL, 'comprobantes/comprobante_928.pdf', NULL),
(929, 43822069, 8472, '2022-11-11', '20:46:26', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-11-11 23:03:38', '2022-11-11 23:03:38', 1, NULL, 'comprobantes/comprobante_929.pdf', NULL),
(930, 43822069, 8472, '2023-05-15', '10:07:30', 'Analizar situaciones laborales recientes.', 1, 0, '2023-05-15 16:09:14', '2023-05-15 16:09:14', 1, NULL, 'comprobantes/comprobante_930.pdf', NULL),
(931, 76637170, 8472, '2022-10-09', '11:43:40', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-10-10 00:50:30', '2022-10-10 00:50:30', 1, NULL, 'comprobantes/comprobante_931.pdf', NULL),
(932, 76637170, 8472, '2022-08-09', '13:59:28', NULL, 1, 0, '2022-08-09 10:39:37', '2022-08-09 10:39:37', 1, NULL, 'comprobantes/comprobante_932.pdf', NULL),
(933, 76637170, 8472, '2022-07-30', '03:27:40', 'Revisar tarea asignada la semana pasada.', 0, 1, '2022-07-30 14:54:26', '2022-07-30 14:54:26', 1, NULL, 'comprobantes/comprobante_933.pdf', NULL),
(934, 76637170, 8472, '2022-01-06', '01:29:40', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-01-07 01:52:37', '2022-01-07 01:52:37', 1, NULL, 'comprobantes/comprobante_934.pdf', NULL),
(935, 76637170, 8472, '2023-07-12', '05:29:49', NULL, 1, 0, '2023-07-13 02:38:11', '2023-07-13 02:38:11', 1, NULL, 'comprobantes/comprobante_935.pdf', NULL),
(936, 76637170, 8472, '2023-10-07', '19:32:53', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-10-07 22:17:34', '2023-10-07 22:17:34', 1, NULL, 'comprobantes/comprobante_936.pdf', NULL),
(937, 76637170, 8472, '2024-06-15', '05:27:49', NULL, 0, 0, '2024-06-15 16:47:06', '2024-06-15 16:47:06', 1, NULL, 'comprobantes/comprobante_937.pdf', NULL),
(938, 76637170, 8472, '2023-05-12', '12:22:43', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-12 05:08:04', '2023-05-12 05:08:04', 0, NULL, NULL, NULL),
(939, 76637170, 8472, '2024-11-18', '19:19:41', NULL, 1, 0, '2024-11-18 10:12:11', '2024-11-18 10:12:11', 1, NULL, 'comprobantes/comprobante_939.pdf', NULL),
(940, 76637170, 8472, '2023-02-07', '04:46:57', 'Trabajar en estrategias de manejo de ansiedad.', 1, 1, '2023-02-07 09:04:12', '2023-02-07 09:04:12', 1, NULL, 'comprobantes/comprobante_940.pdf', NULL),
(941, 76637170, 8472, '2024-08-31', '19:33:09', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-08-31 19:49:31', '2024-08-31 19:49:31', 1, NULL, 'comprobantes/comprobante_941.pdf', NULL),
(942, 76637170, 8472, '2022-06-21', '19:17:08', 'Analizar situaciones laborales recientes.', 1, 0, '2022-06-21 08:18:10', '2022-06-21 08:18:10', 1, NULL, 'comprobantes/comprobante_942.pdf', NULL),
(943, 76637170, 8472, '2023-10-03', '13:50:28', NULL, 1, 0, '2023-10-03 21:39:18', '2023-10-03 21:39:18', 1, NULL, 'comprobantes/comprobante_943.pdf', NULL),
(944, 76637170, 8472, '2022-10-09', '07:02:50', NULL, 1, 0, '2022-10-09 13:48:45', '2022-10-09 13:48:45', 1, NULL, 'comprobantes/comprobante_944.pdf', NULL),
(945, 76637170, 8472, '2022-11-11', '14:44:24', NULL, 1, 0, '2022-11-11 22:20:27', '2022-11-11 22:20:27', 0, NULL, NULL, NULL),
(946, 76637170, 8472, '2023-04-27', '13:58:33', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-04-27 18:04:02', '2023-04-27 18:04:02', 1, NULL, 'comprobantes/comprobante_946.pdf', NULL),
(947, 76637170, 8472, '2022-08-07', '00:43:14', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-08-07 13:46:14', '2022-08-07 13:46:14', 1, NULL, 'comprobantes/comprobante_947.pdf', NULL),
(948, 76637170, 8472, '2023-02-14', '15:59:31', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-02-14 09:34:42', '2023-02-14 09:34:42', 0, NULL, NULL, NULL),
(949, 76637170, 8472, '2023-05-22', '14:29:14', 'Practicar ejercicios de relajación.', 1, 0, '2023-05-22 12:14:02', '2023-05-22 12:14:02', 0, NULL, NULL, NULL),
(950, 76637170, 8472, '2022-03-17', '17:25:27', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-03-17 16:03:39', '2022-03-17 16:03:39', 1, NULL, 'comprobantes/comprobante_950.pdf', NULL),
(951, 76637170, 8472, '2023-08-05', '17:59:40', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-08-05 03:14:56', '2023-08-05 03:14:56', 1, NULL, 'comprobantes/comprobante_951.pdf', NULL),
(952, 76637170, 8472, '2023-10-24', '22:30:35', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-10-24 23:14:34', '2023-10-24 23:14:34', 1, NULL, 'comprobantes/comprobante_952.pdf', NULL),
(953, 76637170, 8472, '2024-12-26', '06:26:25', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-12-26 08:20:38', '2024-12-26 08:20:38', 1, NULL, 'comprobantes/comprobante_953.pdf', NULL),
(954, 76637170, 8472, '2024-08-28', '03:29:48', NULL, 1, 1, '2024-08-28 18:30:35', '2024-08-28 18:30:35', 1, NULL, 'comprobantes/comprobante_954.pdf', NULL),
(955, 76637170, 8472, '2023-10-13', '18:40:06', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-10-13 08:36:19', '2023-10-13 08:36:19', 1, NULL, 'comprobantes/comprobante_955.pdf', NULL),
(956, 76637170, 8472, '2023-04-10', '21:07:53', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-04-10 16:05:57', '2023-04-10 16:05:57', 1, NULL, 'comprobantes/comprobante_956.pdf', NULL),
(957, 76637170, 8472, '2022-01-12', '07:15:47', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-01-12 13:48:51', '2022-01-12 13:48:51', 1, NULL, 'comprobantes/comprobante_957.pdf', NULL),
(958, 76637170, 8472, '2023-05-16', '10:25:55', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-05-16 03:01:05', '2023-05-16 03:01:05', 1, NULL, 'comprobantes/comprobante_958.pdf', NULL),
(959, 76637170, 8472, '2024-07-11', '13:36:55', NULL, 0, 0, '2024-07-11 13:26:42', '2024-07-11 13:26:42', 1, NULL, 'comprobantes/comprobante_959.pdf', NULL),
(960, 52345473, 3509, '2022-01-13', '15:50:09', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-01-13 21:22:24', '2022-01-13 21:22:24', 1, NULL, 'comprobantes/comprobante_960.pdf', NULL),
(961, 52345473, 3509, '2024-09-02', '18:30:32', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-09-02 18:22:02', '2024-09-02 18:22:02', 1, NULL, 'comprobantes/comprobante_961.pdf', NULL),
(962, 52345473, 3509, '2023-09-30', '05:09:52', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-09-30 07:09:29', '2023-09-30 07:09:29', 1, NULL, 'comprobantes/comprobante_962.pdf', NULL),
(963, 52345473, 3509, '2023-02-22', '11:22:14', 'Practicar ejercicios de relajación.', 1, 0, '2023-02-22 14:14:50', '2023-02-22 14:14:50', 1, NULL, 'comprobantes/comprobante_963.pdf', NULL),
(964, 52345473, 3509, '2023-11-08', '03:30:35', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-11-08 20:02:42', '2023-11-08 20:02:42', 1, NULL, 'comprobantes/comprobante_964.pdf', NULL),
(965, 52345473, 3509, '2022-11-16', '23:25:37', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-11-16 07:55:17', '2022-11-16 07:55:17', 1, NULL, 'comprobantes/comprobante_965.pdf', NULL),
(966, 52345473, 3509, '2023-09-18', '11:23:54', NULL, 1, 0, '2023-09-18 07:09:10', '2023-09-18 07:09:10', 1, NULL, 'comprobantes/comprobante_966.pdf', NULL),
(967, 52345473, 3509, '2024-05-08', '09:04:27', 'Practicar ejercicios de relajación.', 0, 0, '2024-05-08 08:16:34', '2024-05-08 08:16:34', 1, NULL, 'comprobantes/comprobante_967.pdf', NULL),
(968, 52345473, 3509, '2022-11-17', '14:03:34', 'Analizar situaciones laborales recientes.', 1, 0, '2022-11-17 17:31:04', '2022-11-17 17:31:04', 1, NULL, 'comprobantes/comprobante_968.pdf', NULL),
(969, 52345473, 3509, '2024-12-29', '23:06:31', 'Practicar ejercicios de relajación.', 0, 0, '2024-12-29 16:38:16', '2024-12-29 16:38:16', 1, NULL, 'comprobantes/comprobante_969.pdf', NULL),
(970, 52345473, 3509, '2022-03-08', '16:49:20', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-03-08 04:02:43', '2022-03-08 04:02:43', 1, NULL, 'comprobantes/comprobante_970.pdf', NULL),
(971, 52345473, 3509, '2022-05-29', '19:08:09', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-05-29 05:09:27', '2022-05-29 05:09:27', 1, NULL, 'comprobantes/comprobante_971.pdf', NULL),
(972, 52345473, 3509, '2023-10-07', '01:11:17', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-10-08 00:15:41', '2023-10-08 00:15:41', 1, NULL, 'comprobantes/comprobante_972.pdf', NULL),
(973, 52345473, 3509, '2023-06-15', '16:26:13', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-06-15 07:39:14', '2023-06-15 07:39:14', 1, NULL, 'comprobantes/comprobante_973.pdf', NULL),
(974, 52345473, 3509, '2024-12-07', '19:56:11', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-12-08 02:24:55', '2024-12-08 02:24:55', 1, NULL, 'comprobantes/comprobante_974.pdf', NULL),
(975, 52345473, 3509, '2024-01-02', '22:15:57', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-01-02 15:08:44', '2024-01-02 15:08:44', 1, NULL, 'comprobantes/comprobante_975.pdf', NULL),
(976, 52345473, 3509, '2022-08-19', '09:09:22', 'Discutir avances en los objetivos establecidos.', 1, 1, '2022-08-19 21:38:40', '2022-08-19 21:38:40', 0, NULL, NULL, NULL),
(977, 52345473, 3509, '2022-11-12', '15:02:46', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-11-12 09:02:35', '2022-11-12 09:02:35', 1, NULL, 'comprobantes/comprobante_977.pdf', NULL),
(978, 52345473, 3509, '2024-01-19', '07:27:48', NULL, 1, 0, '2024-01-19 18:19:51', '2024-01-19 18:19:51', 1, NULL, 'comprobantes/comprobante_978.pdf', NULL),
(979, 52345473, 3509, '2024-10-04', '08:07:12', 'Analizar situaciones laborales recientes.', 0, 0, '2024-10-04 19:11:50', '2024-10-04 19:11:50', 1, NULL, 'comprobantes/comprobante_979.pdf', NULL),
(980, 52345473, 3509, '2024-03-16', '06:42:00', NULL, 1, 0, '2024-03-16 09:41:13', '2024-03-16 09:41:13', 1, NULL, 'comprobantes/comprobante_980.pdf', NULL),
(981, 52345473, 3509, '2023-12-17', '17:29:39', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-12-17 15:20:30', '2023-12-17 15:20:30', 1, NULL, 'comprobantes/comprobante_981.pdf', NULL),
(982, 52345473, 3509, '2023-03-05', '23:03:20', NULL, 1, 0, '2023-03-05 10:57:08', '2023-03-05 10:57:08', 1, NULL, 'comprobantes/comprobante_982.pdf', NULL),
(983, 52345473, 3509, '2022-08-03', '02:17:08', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-08-03 06:17:23', '2022-08-03 06:17:23', 1, NULL, 'comprobantes/comprobante_983.pdf', NULL),
(984, 52345473, 3509, '2024-11-20', '16:53:40', NULL, 1, 0, '2024-11-21 00:13:40', '2024-11-21 00:13:40', 1, NULL, 'comprobantes/comprobante_984.pdf', NULL),
(985, 52345473, 3509, '2024-05-27', '10:58:29', NULL, 1, 0, '2024-05-28 02:05:12', '2024-05-28 02:05:12', 1, NULL, 'comprobantes/comprobante_985.pdf', NULL),
(986, 52345473, 3509, '2024-03-25', '08:31:07', NULL, 1, 0, '2024-03-25 17:28:07', '2024-03-25 17:28:07', 1, NULL, 'comprobantes/comprobante_986.pdf', NULL),
(987, 52345473, 3509, '2022-01-18', '14:53:17', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-01-18 14:20:04', '2022-01-18 14:20:04', 1, NULL, 'comprobantes/comprobante_987.pdf', NULL),
(988, 52575186, 3509, '2023-01-19', '18:51:39', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-01-19 11:28:03', '2023-01-19 11:28:03', 1, NULL, 'comprobantes/comprobante_988.pdf', NULL),
(989, 52575186, 3509, '2022-12-03', '04:27:14', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-12-03 13:26:53', '2022-12-03 13:26:53', 1, NULL, 'comprobantes/comprobante_989.pdf', NULL),
(990, 52575186, 3509, '2022-07-02', '14:46:03', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-07-02 20:20:28', '2022-07-02 20:20:28', 1, NULL, 'comprobantes/comprobante_990.pdf', NULL),
(991, 52575186, 3509, '2022-03-02', '16:26:07', 'Identificar patrones de pensamiento negativos.', 0, 1, '2022-03-02 17:26:20', '2022-03-02 17:26:20', 1, NULL, 'comprobantes/comprobante_991.pdf', NULL),
(992, 52575186, 3509, '2023-07-26', '19:18:10', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-07-26 15:20:10', '2023-07-26 15:20:10', 1, NULL, 'comprobantes/comprobante_992.pdf', NULL),
(993, 52575186, 3509, '2022-10-25', '20:07:44', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-10-25 10:04:29', '2022-10-25 10:04:29', 1, NULL, 'comprobantes/comprobante_993.pdf', NULL),
(994, 52575186, 3509, '2023-08-05', '07:35:03', 'Practicar ejercicios de relajación.', 1, 0, '2023-08-05 03:22:16', '2023-08-05 03:22:16', 1, NULL, 'comprobantes/comprobante_994.pdf', NULL),
(995, 52575186, 3509, '2022-12-29', '01:07:45', 'Practicar ejercicios de relajación.', 1, 0, '2022-12-29 12:47:45', '2022-12-29 12:47:45', 1, NULL, 'comprobantes/comprobante_995.pdf', NULL),
(996, 52575186, 3509, '2022-04-09', '04:56:17', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-04-09 05:12:05', '2022-04-09 05:12:05', 1, NULL, 'comprobantes/comprobante_996.pdf', NULL),
(997, 52575186, 3509, '2023-09-16', '12:09:45', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-09-16 10:06:09', '2023-09-16 10:06:09', 1, NULL, 'comprobantes/comprobante_997.pdf', NULL),
(998, 52575186, 3509, '2024-09-30', '21:54:35', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-09-30 03:40:49', '2024-09-30 03:40:49', 1, NULL, 'comprobantes/comprobante_998.pdf', NULL),
(999, 52575186, 3509, '2023-11-29', '15:42:03', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-11-29 10:53:43', '2023-11-29 10:53:43', 1, NULL, 'comprobantes/comprobante_999.pdf', NULL),
(1000, 52575186, 3509, '2024-11-06', '04:38:13', 'Analizar situaciones laborales recientes.', 0, 0, '2024-11-07 02:07:15', '2024-11-07 02:07:15', 1, NULL, 'comprobantes/comprobante_1000.pdf', NULL),
(1001, 52575186, 3509, '2022-08-24', '08:05:40', 'Identificar patrones de pensamiento negativos.', 1, 1, '2022-08-24 06:01:11', '2022-08-24 06:01:11', 1, NULL, 'comprobantes/comprobante_1001.pdf', NULL),
(1002, 52575186, 3509, '2022-01-22', '09:43:33', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-01-23 02:21:37', '2022-01-23 02:21:37', 1, NULL, 'comprobantes/comprobante_1002.pdf', NULL),
(1003, 52575186, 3509, '2024-04-14', '19:17:22', NULL, 1, 1, '2024-04-14 15:46:26', '2024-04-14 15:46:26', 1, NULL, 'comprobantes/comprobante_1003.pdf', NULL),
(1004, 52575186, 3509, '2023-10-23', '12:00:45', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-10-23 15:20:20', '2023-10-23 15:20:20', 1, NULL, 'comprobantes/comprobante_1004.pdf', NULL),
(1005, 52575186, 3509, '2022-01-03', '13:28:40', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-01-03 20:16:16', '2022-01-03 20:16:16', 1, NULL, 'comprobantes/comprobante_1005.pdf', NULL),
(1006, 52575186, 3509, '2024-07-10', '17:03:52', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-07-10 10:06:45', '2024-07-10 10:06:45', 1, NULL, 'comprobantes/comprobante_1006.pdf', NULL),
(1007, 56002846, 3509, '2024-06-04', '03:26:46', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-06-04 14:58:51', '2024-06-04 14:58:51', 1, NULL, 'comprobantes/comprobante_1007.pdf', NULL),
(1008, 56002846, 3509, '2024-07-17', '14:47:55', 'Analizar situaciones laborales recientes.', 1, 0, '2024-07-17 14:52:04', '2024-07-17 14:52:04', 1, NULL, 'comprobantes/comprobante_1008.pdf', NULL),
(1009, 56002846, 3509, '2022-02-03', '09:35:15', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-02-03 18:09:32', '2022-02-03 18:09:32', 1, NULL, 'comprobantes/comprobante_1009.pdf', NULL),
(1010, 56002846, 3509, '2022-07-08', '13:32:41', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-07-08 20:55:45', '2022-07-08 20:55:45', 1, NULL, 'comprobantes/comprobante_1010.pdf', NULL),
(1011, 56002846, 3509, '2022-08-23', '04:03:36', NULL, 0, 0, '2022-08-23 15:23:41', '2022-08-23 15:23:41', 1, NULL, 'comprobantes/comprobante_1011.pdf', NULL),
(1012, 56002846, 3509, '2023-05-17', '03:58:21', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-05-17 17:15:32', '2023-05-17 17:15:32', 0, NULL, NULL, NULL),
(1013, 56002846, 3509, '2024-11-02', '01:11:39', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-11-02 08:14:48', '2024-11-02 08:14:48', 1, NULL, 'comprobantes/comprobante_1013.pdf', NULL),
(1014, 56002846, 3509, '2023-05-12', '13:26:34', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2023-05-13 00:09:18', '2023-05-13 00:09:18', 1, NULL, 'comprobantes/comprobante_1014.pdf', NULL),
(1015, 56002846, 3509, '2024-01-16', '20:32:28', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-01-16 18:11:07', '2024-01-16 18:11:07', 1, NULL, 'comprobantes/comprobante_1015.pdf', NULL),
(1016, 56002846, 3509, '2022-01-23', '16:20:30', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-01-23 23:47:14', '2022-01-23 23:47:14', 1, NULL, 'comprobantes/comprobante_1016.pdf', NULL),
(1017, 56002846, 3509, '2024-04-29', '18:34:51', NULL, 1, 0, '2024-04-29 21:27:20', '2024-04-29 21:27:20', 1, NULL, 'comprobantes/comprobante_1017.pdf', NULL),
(1018, 56002846, 3509, '2023-08-01', '12:16:15', 'Practicar ejercicios de relajación.', 1, 0, '2023-08-01 23:59:58', '2023-08-01 23:59:58', 1, NULL, 'comprobantes/comprobante_1018.pdf', NULL),
(1019, 56002846, 3509, '2022-02-25', '06:31:23', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-02-25 16:31:11', '2022-02-25 16:31:11', 1, NULL, 'comprobantes/comprobante_1019.pdf', NULL),
(1020, 56002846, 3509, '2024-09-13', '06:15:06', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-09-14 02:27:07', '2024-09-14 02:27:07', 1, NULL, 'comprobantes/comprobante_1020.pdf', NULL),
(1021, 56002846, 3509, '2023-04-23', '02:02:19', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-04-23 19:15:24', '2023-04-23 19:15:24', 1, NULL, 'comprobantes/comprobante_1021.pdf', NULL),
(1022, 56002846, 3509, '2022-03-27', '18:28:50', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-03-27 08:04:45', '2022-03-27 08:04:45', 1, NULL, 'comprobantes/comprobante_1022.pdf', NULL),
(1023, 56002846, 3509, '2023-05-13', '18:16:24', NULL, 0, 0, '2023-05-13 22:48:05', '2023-05-13 22:48:05', 1, NULL, 'comprobantes/comprobante_1023.pdf', NULL),
(1024, 56002846, 3509, '2024-04-17', '21:16:08', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-04-17 03:46:17', '2024-04-17 03:46:17', 1, NULL, 'comprobantes/comprobante_1024.pdf', NULL),
(1025, 56002846, 3509, '2023-04-21', '17:29:20', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2023-04-21 19:03:25', '2023-04-21 19:03:25', 1, NULL, 'comprobantes/comprobante_1025.pdf', NULL),
(1026, 55302451, 3509, '2024-03-25', '11:36:43', NULL, 1, 0, '2024-03-25 19:20:06', '2024-03-25 19:20:06', 1, NULL, 'comprobantes/comprobante_1026.pdf', NULL),
(1027, 55302451, 3509, '2023-03-19', '03:59:49', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-03-20 02:52:45', '2023-03-20 02:52:45', 0, NULL, NULL, NULL),
(1028, 55302451, 3509, '2023-09-26', '20:17:47', 'Practicar ejercicios de relajación.', 0, 1, '2023-09-26 22:47:25', '2023-09-26 22:47:25', 1, NULL, 'comprobantes/comprobante_1028.pdf', NULL),
(1029, 55302451, 3509, '2024-08-20', '20:26:54', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-08-20 05:27:17', '2024-08-20 05:27:17', 0, NULL, NULL, NULL),
(1030, 55302451, 3509, '2024-03-22', '10:50:25', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-03-22 20:39:25', '2024-03-22 20:39:25', 1, NULL, 'comprobantes/comprobante_1030.pdf', NULL),
(1031, 55302451, 3509, '2023-11-28', '12:54:40', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-11-28 10:49:50', '2023-11-28 10:49:50', 0, NULL, NULL, NULL),
(1032, 55302451, 3509, '2023-05-25', '01:43:13', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-05-25 15:07:17', '2023-05-25 15:07:17', 0, NULL, NULL, NULL),
(1033, 55302451, 3509, '2023-07-23', '23:51:25', NULL, 0, 0, '2023-07-23 10:00:21', '2023-07-23 10:00:21', 1, NULL, 'comprobantes/comprobante_1033.pdf', NULL),
(1034, 55302451, 3509, '2023-11-27', '15:57:28', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-11-27 08:21:27', '2023-11-27 08:21:27', 1, NULL, 'comprobantes/comprobante_1034.pdf', NULL),
(1035, 55302451, 3509, '2024-01-14', '09:06:22', 'Analizar situaciones laborales recientes.', 1, 0, '2024-01-14 17:21:01', '2024-01-14 17:21:01', 1, NULL, 'comprobantes/comprobante_1035.pdf', NULL),
(1036, 55302451, 3509, '2023-08-01', '06:10:06', NULL, 0, 0, '2023-08-01 11:50:41', '2023-08-01 11:50:41', 1, NULL, 'comprobantes/comprobante_1036.pdf', NULL),
(1037, 55302451, 3509, '2022-08-19', '10:18:58', 'Analizar situaciones laborales recientes.', 1, 0, '2022-08-19 06:01:17', '2022-08-19 06:01:17', 1, NULL, 'comprobantes/comprobante_1037.pdf', NULL),
(1038, 55302451, 3509, '2023-07-22', '03:44:49', 'Practicar ejercicios de relajación.', 1, 0, '2023-07-22 03:30:55', '2023-07-22 03:30:55', 1, NULL, 'comprobantes/comprobante_1038.pdf', NULL),
(1039, 55302451, 3509, '2024-09-29', '18:07:46', NULL, 1, 0, '2024-09-29 18:19:58', '2024-09-29 18:19:58', 1, NULL, 'comprobantes/comprobante_1039.pdf', NULL),
(1040, 55302451, 3509, '2024-10-22', '08:58:34', 'Analizar situaciones laborales recientes.', 1, 0, '2024-10-22 22:24:20', '2024-10-22 22:24:20', 1, NULL, 'comprobantes/comprobante_1040.pdf', NULL),
(1041, 55302451, 3509, '2022-08-19', '18:39:44', 'Revisar tarea asignada la semana pasada.', 1, 1, '2022-08-19 04:13:58', '2022-08-19 04:13:58', 1, NULL, 'comprobantes/comprobante_1041.pdf', NULL),
(1042, 55302451, 3509, '2023-12-25', '01:04:11', 'Practicar ejercicios de relajación.', 1, 0, '2023-12-25 16:43:51', '2023-12-25 16:43:51', 1, NULL, 'comprobantes/comprobante_1042.pdf', NULL),
(1043, 55302451, 3509, '2024-11-20', '01:17:45', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-11-20 08:24:50', '2024-11-20 08:24:50', 1, NULL, 'comprobantes/comprobante_1043.pdf', NULL),
(1044, 55302451, 3509, '2024-01-25', '18:16:44', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-01-25 16:38:02', '2024-01-25 16:38:02', 1, NULL, 'comprobantes/comprobante_1044.pdf', NULL),
(1045, 55302451, 3509, '2024-02-25', '21:15:54', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-02-25 06:49:11', '2024-02-25 06:49:11', 1, NULL, 'comprobantes/comprobante_1045.pdf', NULL),
(1046, 55302451, 3509, '2024-05-04', '07:06:53', NULL, 1, 0, '2024-05-04 18:19:32', '2024-05-04 18:19:32', 1, NULL, 'comprobantes/comprobante_1046.pdf', NULL),
(1047, 72521835, 3509, '2023-10-05', '17:44:31', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-10-05 12:29:18', '2023-10-05 12:29:18', 1, NULL, 'comprobantes/comprobante_1047.pdf', NULL),
(1048, 72521835, 3509, '2022-04-16', '23:56:15', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-04-17 02:30:17', '2022-04-17 02:30:17', 1, NULL, 'comprobantes/comprobante_1048.pdf', NULL),
(1049, 72521835, 3509, '2024-04-03', '21:51:58', 'Reflexionar sobre los eventos de la semana.', 1, 1, '2024-04-03 11:39:54', '2024-04-03 11:39:54', 1, NULL, 'comprobantes/comprobante_1049.pdf', NULL),
(1050, 72521835, 3509, '2024-07-22', '04:42:43', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-07-22 07:49:26', '2024-07-22 07:49:26', 1, NULL, 'comprobantes/comprobante_1050.pdf', NULL),
(1051, 72521835, 3509, '2024-09-09', '18:59:59', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-09-09 11:17:54', '2024-09-09 11:17:54', 1, NULL, 'comprobantes/comprobante_1051.pdf', NULL),
(1052, 72521835, 3509, '2024-07-03', '18:37:21', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-07-03 11:22:17', '2024-07-03 11:22:17', 1, NULL, 'comprobantes/comprobante_1052.pdf', NULL),
(1053, 72521835, 3509, '2022-08-03', '19:42:19', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-08-03 19:39:04', '2022-08-03 19:39:04', 1, NULL, 'comprobantes/comprobante_1053.pdf', NULL),
(1054, 72521835, 3509, '2024-05-30', '09:30:34', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-05-30 21:49:46', '2024-05-30 21:49:46', 1, NULL, 'comprobantes/comprobante_1054.pdf', NULL),
(1055, 72521835, 3509, '2024-05-19', '21:14:10', 'Analizar situaciones laborales recientes.', 0, 0, '2024-05-19 06:08:17', '2024-05-19 06:08:17', 1, NULL, 'comprobantes/comprobante_1055.pdf', NULL),
(1056, 72521835, 3509, '2024-10-28', '23:46:16', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-10-28 05:59:59', '2024-10-28 05:59:59', 1, NULL, 'comprobantes/comprobante_1056.pdf', NULL),
(1057, 72521835, 3509, '2024-05-10', '19:14:51', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-05-10 15:41:56', '2024-05-10 15:41:56', 1, NULL, 'comprobantes/comprobante_1057.pdf', NULL),
(1058, 72521835, 3509, '2022-11-08', '18:15:30', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-11-08 06:52:59', '2022-11-08 06:52:59', 1, NULL, 'comprobantes/comprobante_1058.pdf', NULL),
(1059, 72521835, 3509, '2022-02-21', '10:50:15', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-02-21 03:07:12', '2022-02-21 03:07:12', 1, NULL, 'comprobantes/comprobante_1059.pdf', NULL),
(1060, 72521835, 3509, '2024-11-07', '13:26:08', 'Practicar ejercicios de relajación.', 1, 0, '2024-11-07 11:06:20', '2024-11-07 11:06:20', 1, NULL, 'comprobantes/comprobante_1060.pdf', NULL),
(1061, 72521835, 3509, '2024-05-13', '06:40:38', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-05-13 16:14:59', '2024-05-13 16:14:59', 1, NULL, 'comprobantes/comprobante_1061.pdf', NULL),
(1062, 72521835, 3509, '2023-05-31', '10:41:00', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-05-31 20:48:56', '2023-05-31 20:48:56', 1, NULL, 'comprobantes/comprobante_1062.pdf', NULL),
(1063, 72521835, 3509, '2023-12-06', '17:21:44', 'Analizar situaciones laborales recientes.', 0, 0, '2023-12-06 10:43:03', '2023-12-06 10:43:03', 1, NULL, 'comprobantes/comprobante_1063.pdf', NULL),
(1064, 72521835, 3509, '2022-02-16', '01:48:31', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-02-16 10:51:54', '2022-02-16 10:51:54', 0, NULL, NULL, NULL),
(1065, 72521835, 3509, '2023-11-12', '11:32:01', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-11-12 04:26:47', '2023-11-12 04:26:47', 1, NULL, 'comprobantes/comprobante_1065.pdf', NULL),
(1066, 72521835, 3509, '2024-04-11', '13:20:08', NULL, 1, 0, '2024-04-11 21:03:27', '2024-04-11 21:03:27', 1, NULL, 'comprobantes/comprobante_1066.pdf', NULL);
INSERT INTO `sesion` (`id_sesion`, `dni_paciente`, `matricula_psicologo`, `fecha`, `hora`, `comentario`, `presencial`, `cancelado`, `created_at`, `updated_at`, `pago`, `payment_id`, `comprobante_path`, `fecha_pago`) VALUES
(1067, 72521835, 3509, '2022-06-26', '21:02:24', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-06-26 09:57:54', '2022-06-26 09:57:54', 1, NULL, 'comprobantes/comprobante_1067.pdf', NULL),
(1068, 72521835, 3509, '2024-03-15', '09:35:37', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-03-15 09:17:23', '2024-03-15 09:17:23', 1, NULL, 'comprobantes/comprobante_1068.pdf', NULL),
(1069, 72521835, 3509, '2024-07-25', '18:58:05', 'Analizar situaciones laborales recientes.', 1, 0, '2024-07-25 19:29:19', '2024-07-25 19:29:19', 1, NULL, 'comprobantes/comprobante_1069.pdf', NULL),
(1070, 72521835, 3509, '2022-08-13', '16:38:02', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-08-13 17:37:39', '2022-08-13 17:37:39', 1, NULL, 'comprobantes/comprobante_1070.pdf', NULL),
(1071, 72521835, 3509, '2024-01-22', '23:26:30', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-01-23 02:32:09', '2024-01-23 02:32:09', 1, NULL, 'comprobantes/comprobante_1071.pdf', NULL),
(1072, 72521835, 3509, '2024-04-03', '19:28:24', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-04-03 18:31:14', '2024-04-03 18:31:14', 1, NULL, 'comprobantes/comprobante_1072.pdf', NULL),
(1073, 72521835, 3509, '2022-06-10', '08:02:07', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-06-11 00:42:44', '2022-06-11 00:42:44', 1, NULL, 'comprobantes/comprobante_1073.pdf', NULL),
(1074, 72521835, 3509, '2022-10-04', '00:06:57', NULL, 0, 0, '2022-10-04 11:02:22', '2022-10-04 11:02:22', 1, NULL, 'comprobantes/comprobante_1074.pdf', NULL),
(1075, 74642501, 7297, '2022-05-01', '00:33:02', NULL, 0, 1, '2022-05-01 05:03:09', '2022-05-01 05:03:09', 1, NULL, 'comprobantes/comprobante_1075.pdf', NULL),
(1076, 74642501, 7297, '2024-04-02', '12:02:06', 'Practicar ejercicios de relajación.', 0, 0, '2024-04-02 22:29:38', '2024-04-02 22:29:38', 1, NULL, 'comprobantes/comprobante_1076.pdf', NULL),
(1077, 74642501, 7297, '2022-08-23', '23:07:30', NULL, 0, 0, '2022-08-23 15:24:18', '2022-08-23 15:24:18', 1, NULL, 'comprobantes/comprobante_1077.pdf', NULL),
(1078, 74642501, 7297, '2023-01-04', '06:32:59', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-01-04 11:14:15', '2023-01-04 11:14:15', 1, NULL, 'comprobantes/comprobante_1078.pdf', NULL),
(1079, 74642501, 7297, '2023-10-10', '18:13:13', 'Analizar situaciones laborales recientes.', 1, 0, '2023-10-10 12:59:30', '2023-10-10 12:59:30', 1, NULL, 'comprobantes/comprobante_1079.pdf', NULL),
(1080, 74642501, 7297, '2022-05-13', '23:38:20', 'Analizar situaciones laborales recientes.', 1, 0, '2022-05-13 07:40:18', '2022-05-13 07:40:18', 1, NULL, 'comprobantes/comprobante_1080.pdf', NULL),
(1081, 74642501, 7297, '2023-04-28', '08:58:03', 'Practicar ejercicios de relajación.', 1, 0, '2023-04-28 08:20:42', '2023-04-28 08:20:42', 1, NULL, 'comprobantes/comprobante_1081.pdf', NULL),
(1082, 74642501, 7297, '2022-04-16', '07:09:22', 'Practicar ejercicios de relajación.', 1, 0, '2022-04-16 09:08:24', '2022-04-16 09:08:24', 1, NULL, 'comprobantes/comprobante_1082.pdf', NULL),
(1083, 74642501, 7297, '2024-07-15', '16:00:02', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-07-15 21:34:41', '2024-07-15 21:34:41', 1, NULL, 'comprobantes/comprobante_1083.pdf', NULL),
(1084, 74642501, 7297, '2022-06-27', '01:07:11', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-06-28 02:16:53', '2022-06-28 02:16:53', 1, NULL, 'comprobantes/comprobante_1084.pdf', NULL),
(1085, 74642501, 7297, '2022-04-24', '07:34:28', 'Practicar ejercicios de relajación.', 1, 0, '2022-04-24 06:11:05', '2022-04-24 06:11:05', 1, NULL, 'comprobantes/comprobante_1085.pdf', NULL),
(1086, 34044873, 7297, '2024-09-02', '01:49:16', NULL, 1, 0, '2024-09-02 12:58:38', '2024-09-02 12:58:38', 1, NULL, 'comprobantes/comprobante_1086.pdf', NULL),
(1087, 34044873, 7297, '2023-12-29', '23:20:01', 'Practicar ejercicios de relajación.', 1, 0, '2023-12-29 17:34:49', '2023-12-29 17:34:49', 1, NULL, 'comprobantes/comprobante_1087.pdf', NULL),
(1088, 34044873, 7297, '2023-06-11', '07:38:40', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-06-12 01:30:32', '2023-06-12 01:30:32', 1, NULL, 'comprobantes/comprobante_1088.pdf', NULL),
(1089, 34044873, 7297, '2024-04-10', '00:15:06', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-04-11 00:42:50', '2024-04-11 00:42:50', 1, NULL, 'comprobantes/comprobante_1089.pdf', NULL),
(1090, 34044873, 7297, '2024-07-17', '19:48:34', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-07-17 07:03:46', '2024-07-17 07:03:46', 0, NULL, NULL, NULL),
(1091, 34044873, 7297, '2022-02-05', '10:27:52', 'Analizar situaciones laborales recientes.', 0, 0, '2022-02-05 15:07:59', '2022-02-05 15:07:59', 1, NULL, 'comprobantes/comprobante_1091.pdf', NULL),
(1092, 34044873, 7297, '2024-09-19', '10:23:29', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-09-19 23:13:25', '2024-09-19 23:13:25', 1, NULL, 'comprobantes/comprobante_1092.pdf', NULL),
(1093, 34044873, 7297, '2024-09-29', '19:56:42', 'Analizar situaciones laborales recientes.', 1, 1, '2024-09-29 03:53:34', '2024-09-29 03:53:34', 1, NULL, 'comprobantes/comprobante_1093.pdf', NULL),
(1094, 34044873, 7297, '2022-05-23', '00:31:31', 'Reflexionar sobre los eventos de la semana.', 1, 1, '2022-05-23 13:26:19', '2022-05-23 13:26:19', 0, NULL, NULL, NULL),
(1095, 34044873, 7297, '2022-11-25', '13:10:25', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-11-25 12:48:10', '2022-11-25 12:48:10', 1, NULL, 'comprobantes/comprobante_1095.pdf', NULL),
(1096, 24722794, 7297, '2024-04-13', '22:21:40', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-04-13 14:15:11', '2024-04-13 14:15:11', 1, NULL, 'comprobantes/comprobante_1096.pdf', NULL),
(1097, 24722794, 7297, '2022-08-11', '14:29:39', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-08-12 01:32:55', '2022-08-12 01:32:55', 1, NULL, 'comprobantes/comprobante_1097.pdf', NULL),
(1098, 24722794, 7297, '2023-04-08', '12:20:53', 'Analizar situaciones laborales recientes.', 1, 0, '2023-04-08 20:57:13', '2023-04-08 20:57:13', 1, NULL, 'comprobantes/comprobante_1098.pdf', NULL),
(1099, 24722794, 7297, '2022-04-19', '15:37:22', NULL, 1, 0, '2022-04-19 20:48:10', '2022-04-19 20:48:10', 1, NULL, 'comprobantes/comprobante_1099.pdf', NULL),
(1100, 24722794, 7297, '2022-07-11', '01:23:40', 'Practicar ejercicios de relajación.', 0, 0, '2022-07-11 06:52:01', '2022-07-11 06:52:01', 1, NULL, 'comprobantes/comprobante_1100.pdf', NULL),
(1101, 24722794, 7297, '2022-01-24', '20:49:17', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-01-24 19:51:48', '2022-01-24 19:51:48', 1, NULL, 'comprobantes/comprobante_1101.pdf', NULL),
(1102, 24722794, 7297, '2023-11-06', '16:18:17', NULL, 1, 0, '2023-11-07 02:29:58', '2023-11-07 02:29:58', 1, NULL, 'comprobantes/comprobante_1102.pdf', NULL),
(1103, 24722794, 7297, '2022-02-11', '21:49:36', 'Explorar posibles soluciones a los conflictos actuales.', 1, 1, '2022-02-11 17:42:09', '2022-02-11 17:42:09', 1, NULL, 'comprobantes/comprobante_1103.pdf', NULL),
(1104, 24722794, 7297, '2023-08-10', '20:50:29', NULL, 1, 0, '2023-08-10 23:31:26', '2023-08-10 23:31:26', 1, NULL, 'comprobantes/comprobante_1104.pdf', NULL),
(1105, 24722794, 7297, '2023-08-23', '00:38:01', 'Analizar situaciones laborales recientes.', 1, 0, '2023-08-23 09:09:41', '2023-08-23 09:09:41', 1, NULL, 'comprobantes/comprobante_1105.pdf', NULL),
(1106, 24722794, 7297, '2024-10-23', '18:12:14', NULL, 1, 0, '2024-10-23 15:37:47', '2024-10-23 15:37:47', 1, NULL, 'comprobantes/comprobante_1106.pdf', NULL),
(1107, 24722794, 7297, '2024-05-10', '22:00:03', NULL, 1, 0, '2024-05-10 08:35:32', '2024-05-10 08:35:32', 1, NULL, 'comprobantes/comprobante_1107.pdf', NULL),
(1108, 24722794, 7297, '2024-04-10', '05:42:54', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-04-10 22:52:32', '2024-04-10 22:52:32', 1, NULL, 'comprobantes/comprobante_1108.pdf', NULL),
(1109, 24722794, 7297, '2023-11-20', '13:18:28', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-11-20 11:02:19', '2023-11-20 11:02:19', 0, NULL, NULL, NULL),
(1110, 24722794, 7297, '2022-10-16', '18:53:29', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-10-16 15:30:58', '2022-10-16 15:30:58', 0, NULL, NULL, NULL),
(1111, 24722794, 7297, '2022-03-02', '11:44:45', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-03-03 00:39:19', '2022-03-03 00:39:19', 1, NULL, 'comprobantes/comprobante_1111.pdf', NULL),
(1112, 24722794, 7297, '2023-01-23', '20:38:01', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-01-23 15:46:04', '2023-01-23 15:46:04', 1, NULL, 'comprobantes/comprobante_1112.pdf', NULL),
(1113, 24722794, 7297, '2024-08-29', '12:13:16', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-08-29 07:42:46', '2024-08-29 07:42:46', 1, NULL, 'comprobantes/comprobante_1113.pdf', NULL),
(1114, 24722794, 7297, '2024-07-25', '10:03:39', NULL, 1, 1, '2024-07-25 03:43:13', '2024-07-25 03:43:13', 1, NULL, 'comprobantes/comprobante_1114.pdf', NULL),
(1115, 24722794, 7297, '2022-11-15', '22:20:45', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-11-15 12:23:31', '2022-11-15 12:23:31', 1, NULL, 'comprobantes/comprobante_1115.pdf', NULL),
(1116, 24722794, 7297, '2023-05-23', '02:22:06', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-05-23 18:29:05', '2023-05-23 18:29:05', 1, NULL, 'comprobantes/comprobante_1116.pdf', NULL),
(1117, 24722794, 7297, '2022-10-25', '04:50:59', NULL, 1, 0, '2022-10-25 14:23:00', '2022-10-25 14:23:00', 1, NULL, 'comprobantes/comprobante_1117.pdf', NULL),
(1118, 24722794, 7297, '2023-06-08', '06:31:58', NULL, 1, 0, '2023-06-08 21:53:16', '2023-06-08 21:53:16', 1, NULL, 'comprobantes/comprobante_1118.pdf', NULL),
(1119, 24722794, 7297, '2023-02-27', '12:36:40', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-02-27 16:44:39', '2023-02-27 16:44:39', 1, NULL, 'comprobantes/comprobante_1119.pdf', NULL),
(1120, 24722794, 7297, '2022-10-17', '05:55:23', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-10-17 09:41:57', '2022-10-17 09:41:57', 1, NULL, 'comprobantes/comprobante_1120.pdf', NULL),
(1121, 24722794, 7297, '2022-06-15', '20:54:14', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-06-15 05:53:24', '2022-06-15 05:53:24', 1, NULL, 'comprobantes/comprobante_1121.pdf', NULL),
(1122, 24722794, 7297, '2022-05-15', '15:15:28', NULL, 1, 0, '2022-05-15 05:55:15', '2022-05-15 05:55:15', 1, NULL, 'comprobantes/comprobante_1122.pdf', NULL),
(1123, 49991074, 7297, '2022-07-04', '04:07:10', NULL, 1, 0, '2022-07-04 18:19:19', '2022-07-04 18:19:19', 1, NULL, 'comprobantes/comprobante_1123.pdf', NULL),
(1124, 49991074, 7297, '2023-11-30', '15:50:37', 'Evaluar progreso en la comunicación interpersonal.', 0, 1, '2023-11-30 13:33:29', '2023-11-30 13:33:29', 1, NULL, 'comprobantes/comprobante_1124.pdf', NULL),
(1125, 49991074, 7297, '2024-11-07', '15:00:17', 'Analizar situaciones laborales recientes.', 0, 0, '2024-11-08 02:02:37', '2024-11-08 02:02:37', 1, NULL, 'comprobantes/comprobante_1125.pdf', NULL),
(1126, 49991074, 7297, '2024-11-29', '04:09:13', NULL, 1, 0, '2024-11-29 09:34:30', '2024-11-29 09:34:30', 1, NULL, 'comprobantes/comprobante_1126.pdf', NULL),
(1127, 49991074, 7297, '2024-06-03', '05:44:08', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-06-03 12:02:10', '2024-06-03 12:02:10', 1, NULL, 'comprobantes/comprobante_1127.pdf', NULL),
(1128, 49991074, 7297, '2023-09-27', '19:13:05', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-09-27 05:48:47', '2023-09-27 05:48:47', 1, NULL, 'comprobantes/comprobante_1128.pdf', NULL),
(1129, 49991074, 7297, '2024-09-17', '20:17:39', 'Analizar situaciones laborales recientes.', 1, 0, '2024-09-17 09:51:55', '2024-09-17 09:51:55', 1, NULL, 'comprobantes/comprobante_1129.pdf', NULL),
(1130, 49991074, 7297, '2024-05-21', '02:42:45', 'Practicar ejercicios de relajación.', 0, 0, '2024-05-21 14:15:22', '2024-05-21 14:15:22', 1, NULL, 'comprobantes/comprobante_1130.pdf', NULL),
(1131, 49991074, 7297, '2022-04-02', '02:29:51', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-04-03 01:03:15', '2022-04-03 01:03:15', 1, NULL, 'comprobantes/comprobante_1131.pdf', NULL),
(1132, 49991074, 7297, '2024-01-23', '04:41:05', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-01-23 22:21:25', '2024-01-23 22:21:25', 0, NULL, NULL, NULL),
(1133, 49991074, 7297, '2022-01-10', '21:06:21', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-01-10 08:23:13', '2022-01-10 08:23:13', 1, NULL, 'comprobantes/comprobante_1133.pdf', NULL),
(1134, 49991074, 7297, '2022-12-28', '05:14:58', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-12-28 16:54:55', '2022-12-28 16:54:55', 1, NULL, 'comprobantes/comprobante_1134.pdf', NULL),
(1135, 49991074, 7297, '2022-04-03', '07:51:50', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-04-03 16:48:38', '2022-04-03 16:48:38', 1, NULL, 'comprobantes/comprobante_1135.pdf', NULL),
(1136, 49991074, 7297, '2022-05-22', '20:46:52', 'Practicar ejercicios de relajación.', 1, 0, '2022-05-22 12:46:48', '2022-05-22 12:46:48', 1, NULL, 'comprobantes/comprobante_1136.pdf', NULL),
(1137, 49991074, 7297, '2024-10-22', '13:36:21', NULL, 1, 0, '2024-10-22 10:35:54', '2024-10-22 10:35:54', 1, NULL, 'comprobantes/comprobante_1137.pdf', NULL),
(1138, 49991074, 7297, '2024-10-29', '11:02:32', 'Analizar situaciones laborales recientes.', 1, 0, '2024-10-29 16:14:38', '2024-10-29 16:14:38', 1, NULL, 'comprobantes/comprobante_1138.pdf', NULL),
(1139, 49991074, 7297, '2024-04-12', '10:29:35', NULL, 1, 0, '2024-04-12 15:25:05', '2024-04-12 15:25:05', 1, NULL, 'comprobantes/comprobante_1139.pdf', NULL),
(1140, 49991074, 7297, '2024-07-16', '00:12:28', NULL, 1, 1, '2024-07-16 03:34:40', '2024-07-16 03:34:40', 1, NULL, 'comprobantes/comprobante_1140.pdf', NULL),
(1141, 49991074, 7297, '2022-10-19', '01:34:44', NULL, 1, 0, '2022-10-19 23:33:14', '2022-10-19 23:33:14', 1, NULL, 'comprobantes/comprobante_1141.pdf', NULL),
(1142, 49991074, 7297, '2024-11-20', '11:03:07', NULL, 0, 0, '2024-11-20 06:41:49', '2024-11-20 06:41:49', 1, NULL, 'comprobantes/comprobante_1142.pdf', NULL),
(1143, 49991074, 7297, '2023-10-08', '15:40:17', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-10-08 22:30:23', '2023-10-08 22:30:23', 1, NULL, 'comprobantes/comprobante_1143.pdf', NULL),
(1144, 49991074, 7297, '2022-03-26', '10:31:49', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-03-27 01:22:55', '2022-03-27 01:22:55', 1, NULL, 'comprobantes/comprobante_1144.pdf', NULL),
(1145, 49991074, 7297, '2023-06-22', '01:04:24', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2023-06-22 08:51:17', '2023-06-22 08:51:17', 1, NULL, 'comprobantes/comprobante_1145.pdf', NULL),
(1146, 49991074, 7297, '2022-05-04', '14:00:17', NULL, 1, 0, '2022-05-04 21:33:36', '2022-05-04 21:33:36', 0, NULL, NULL, NULL),
(1147, 49991074, 7297, '2023-10-31', '09:35:53', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-10-31 06:11:15', '2023-10-31 06:11:15', 1, NULL, 'comprobantes/comprobante_1147.pdf', NULL),
(1148, 49991074, 7297, '2023-04-08', '21:39:56', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-04-09 00:29:22', '2023-04-09 00:29:22', 1, NULL, 'comprobantes/comprobante_1148.pdf', NULL),
(1149, 49991074, 7297, '2024-01-23', '08:57:01', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2024-01-23 14:44:03', '2024-01-23 14:44:03', 0, NULL, NULL, NULL),
(1150, 55302451, 7297, '2024-11-22', '15:26:43', 'Analizar situaciones laborales recientes.', 1, 0, '2024-11-22 19:49:43', '2024-11-22 19:49:43', 0, NULL, NULL, NULL),
(1151, 55302451, 7297, '2023-06-18', '20:52:15', 'Practicar ejercicios de relajación.', 1, 0, '2023-06-19 00:39:17', '2023-06-19 00:39:17', 0, NULL, NULL, NULL),
(1152, 55302451, 7297, '2024-02-06', '20:27:01', NULL, 0, 0, '2024-02-06 17:29:45', '2024-02-06 17:29:45', 1, NULL, 'comprobantes/comprobante_1152.pdf', NULL),
(1153, 55302451, 7297, '2024-12-20', '04:41:44', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-12-21 02:32:35', '2024-12-21 02:32:35', 1, NULL, 'comprobantes/comprobante_1153.pdf', NULL),
(1154, 55302451, 7297, '2022-10-18', '04:19:58', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-10-18 19:50:29', '2022-10-18 19:50:29', 1, NULL, 'comprobantes/comprobante_1154.pdf', NULL),
(1155, 55302451, 7297, '2022-04-18', '04:15:32', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-04-18 03:42:18', '2022-04-18 03:42:18', 1, NULL, 'comprobantes/comprobante_1155.pdf', NULL),
(1156, 55302451, 7297, '2024-03-06', '17:28:50', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-03-06 17:26:01', '2024-03-06 17:26:01', 1, NULL, 'comprobantes/comprobante_1156.pdf', NULL),
(1157, 55302451, 7297, '2023-10-07', '17:47:38', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2023-10-07 22:33:23', '2023-10-07 22:33:23', 0, NULL, NULL, NULL),
(1158, 55302451, 7297, '2024-09-29', '02:16:19', NULL, 1, 1, '2024-09-29 18:10:11', '2024-09-29 18:10:11', 1, NULL, 'comprobantes/comprobante_1158.pdf', NULL),
(1159, 55302451, 7297, '2022-05-12', '14:25:01', NULL, 0, 0, '2022-05-13 01:41:41', '2022-05-13 01:41:41', 1, NULL, 'comprobantes/comprobante_1159.pdf', NULL),
(1160, 55302451, 7297, '2022-03-20', '19:50:32', NULL, 1, 0, '2022-03-21 01:25:54', '2022-03-21 01:25:54', 1, NULL, 'comprobantes/comprobante_1160.pdf', NULL),
(1161, 55302451, 7297, '2023-06-30', '18:08:56', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-06-30 12:16:49', '2023-06-30 12:16:49', 1, NULL, 'comprobantes/comprobante_1161.pdf', NULL),
(1162, 55302451, 7297, '2022-08-22', '06:25:35', 'Practicar ejercicios de relajación.', 1, 0, '2022-08-22 10:38:54', '2022-08-22 10:38:54', 1, NULL, 'comprobantes/comprobante_1162.pdf', NULL),
(1163, 55302451, 7297, '2023-02-07', '19:57:47', NULL, 1, 0, '2023-02-07 17:23:47', '2023-02-07 17:23:47', 1, NULL, 'comprobantes/comprobante_1163.pdf', NULL),
(1164, 55302451, 7297, '2022-06-03', '01:10:55', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-06-03 13:05:24', '2022-06-03 13:05:24', 0, NULL, NULL, NULL),
(1165, 14841318, 8022, '2023-05-23', '01:05:38', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-23 23:07:18', '2023-05-23 23:07:18', 1, NULL, 'comprobantes/comprobante_1165.pdf', NULL),
(1166, 14841318, 8022, '2024-10-20', '21:17:49', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-10-21 01:46:23', '2024-10-21 01:46:23', 1, NULL, 'comprobantes/comprobante_1166.pdf', NULL),
(1167, 14841318, 8022, '2023-03-29', '07:37:31', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2023-03-29 20:18:14', '2023-03-29 20:18:14', 1, NULL, 'comprobantes/comprobante_1167.pdf', NULL),
(1168, 14841318, 8022, '2022-09-14', '17:18:34', NULL, 1, 1, '2022-09-14 09:18:19', '2022-09-14 09:18:19', 1, NULL, 'comprobantes/comprobante_1168.pdf', NULL),
(1169, 14841318, 8022, '2023-01-16', '12:35:55', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-01-16 03:00:35', '2023-01-16 03:00:35', 0, NULL, NULL, NULL),
(1170, 14841318, 8022, '2023-03-28', '09:32:36', 'Practicar ejercicios de relajación.', 0, 1, '2023-03-28 06:55:51', '2023-03-28 06:55:51', 1, NULL, 'comprobantes/comprobante_1170.pdf', NULL),
(1171, 14841318, 8022, '2024-02-23', '09:51:35', NULL, 0, 0, '2024-02-23 13:36:47', '2024-02-23 13:36:47', 1, NULL, 'comprobantes/comprobante_1171.pdf', NULL),
(1172, 14841318, 8022, '2024-05-11', '07:50:41', NULL, 1, 0, '2024-05-11 05:16:37', '2024-05-11 05:16:37', 1, NULL, 'comprobantes/comprobante_1172.pdf', NULL),
(1173, 14841318, 8022, '2022-03-09', '15:41:52', NULL, 1, 0, '2022-03-09 13:08:29', '2022-03-09 13:08:29', 1, NULL, 'comprobantes/comprobante_1173.pdf', NULL),
(1174, 14841318, 8022, '2023-03-06', '05:55:25', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-03-06 15:09:01', '2023-03-06 15:09:01', 1, NULL, 'comprobantes/comprobante_1174.pdf', NULL),
(1175, 14841318, 8022, '2023-09-10', '09:00:55', NULL, 1, 0, '2023-09-10 14:40:31', '2023-09-10 14:40:31', 1, NULL, 'comprobantes/comprobante_1175.pdf', NULL),
(1176, 14841318, 8022, '2022-01-02', '17:18:42', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-01-02 07:41:19', '2022-01-02 07:41:19', 1, NULL, 'comprobantes/comprobante_1176.pdf', NULL),
(1177, 14841318, 8022, '2024-10-19', '05:59:25', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-10-19 23:48:34', '2024-10-19 23:48:34', 0, NULL, NULL, NULL),
(1178, 14841318, 8022, '2022-03-13', '02:17:31', NULL, 0, 0, '2022-03-13 05:30:59', '2022-03-13 05:30:59', 1, NULL, 'comprobantes/comprobante_1178.pdf', NULL),
(1179, 14841318, 8022, '2022-08-01', '18:04:39', NULL, 1, 0, '2022-08-01 11:19:12', '2022-08-01 11:19:12', 1, NULL, 'comprobantes/comprobante_1179.pdf', NULL),
(1180, 14841318, 8022, '2024-10-07', '16:36:18', NULL, 1, 0, '2024-10-07 14:33:29', '2024-10-07 14:33:29', 1, NULL, 'comprobantes/comprobante_1180.pdf', NULL),
(1181, 14841318, 8022, '2022-08-18', '20:33:05', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-08-18 13:31:17', '2022-08-18 13:31:17', 1, NULL, 'comprobantes/comprobante_1181.pdf', NULL),
(1182, 22778682, 8022, '2022-03-29', '16:04:47', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-03-29 20:35:18', '2022-03-29 20:35:18', 1, NULL, 'comprobantes/comprobante_1182.pdf', NULL),
(1183, 22778682, 8022, '2023-10-23', '23:01:30', NULL, 0, 0, '2023-10-23 13:41:46', '2023-10-23 13:41:46', 1, NULL, 'comprobantes/comprobante_1183.pdf', NULL),
(1184, 22778682, 8022, '2022-01-05', '17:36:27', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-01-05 07:16:20', '2022-01-05 07:16:20', 1, NULL, 'comprobantes/comprobante_1184.pdf', NULL),
(1185, 22778682, 8022, '2023-01-18', '16:49:11', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-01-18 09:39:21', '2023-01-18 09:39:21', 1, NULL, 'comprobantes/comprobante_1185.pdf', NULL),
(1186, 22778682, 8022, '2024-08-09', '20:36:43', NULL, 1, 0, '2024-08-09 10:02:18', '2024-08-09 10:02:18', 1, NULL, 'comprobantes/comprobante_1186.pdf', NULL),
(1187, 22778682, 8022, '2023-03-03', '03:43:34', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-03-04 00:41:38', '2023-03-04 00:41:38', 1, NULL, 'comprobantes/comprobante_1187.pdf', NULL),
(1188, 22778682, 8022, '2023-05-28', '07:31:07', 'Analizar situaciones laborales recientes.', 1, 0, '2023-05-28 22:16:25', '2023-05-28 22:16:25', 1, NULL, 'comprobantes/comprobante_1188.pdf', NULL),
(1189, 22778682, 8022, '2022-07-04', '11:12:43', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-07-04 04:30:19', '2022-07-04 04:30:19', 1, NULL, 'comprobantes/comprobante_1189.pdf', NULL),
(1190, 22778682, 8022, '2024-10-02', '03:20:11', NULL, 0, 0, '2024-10-02 07:44:57', '2024-10-02 07:44:57', 1, NULL, 'comprobantes/comprobante_1190.pdf', NULL),
(1191, 22778682, 8022, '2023-02-26', '06:40:01', NULL, 1, 0, '2023-02-26 19:09:48', '2023-02-26 19:09:48', 1, NULL, 'comprobantes/comprobante_1191.pdf', NULL),
(1192, 22778682, 8022, '2023-05-18', '21:59:44', 'Practicar ejercicios de relajación.', 0, 0, '2023-05-18 19:56:29', '2023-05-18 19:56:29', 1, NULL, 'comprobantes/comprobante_1192.pdf', NULL),
(1193, 22778682, 8022, '2023-04-24', '03:30:59', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-04-24 16:10:36', '2023-04-24 16:10:36', 1, NULL, 'comprobantes/comprobante_1193.pdf', NULL),
(1194, 22778682, 8022, '2023-10-21', '01:38:27', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-10-21 22:47:10', '2023-10-21 22:47:10', 1, NULL, 'comprobantes/comprobante_1194.pdf', NULL),
(1195, 22778682, 8022, '2023-08-03', '12:17:16', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-08-03 18:00:17', '2023-08-03 18:00:17', 1, NULL, 'comprobantes/comprobante_1195.pdf', NULL),
(1196, 22778682, 8022, '2024-12-08', '06:16:57', NULL, 1, 1, '2024-12-08 23:59:43', '2024-12-08 23:59:43', 1, NULL, 'comprobantes/comprobante_1196.pdf', NULL),
(1197, 22778682, 8022, '2022-09-19', '19:55:00', NULL, 1, 0, '2022-09-19 09:17:52', '2022-09-19 09:17:52', 1, NULL, 'comprobantes/comprobante_1197.pdf', NULL),
(1198, 22778682, 8022, '2024-01-05', '18:51:08', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-01-06 00:37:38', '2024-01-06 00:37:38', 1, NULL, 'comprobantes/comprobante_1198.pdf', NULL),
(1199, 22778682, 8022, '2022-03-12', '19:22:39', NULL, 1, 0, '2022-03-12 07:29:42', '2022-03-12 07:29:42', 0, NULL, NULL, NULL),
(1200, 22778682, 8022, '2022-10-07', '02:15:38', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-10-07 16:39:57', '2022-10-07 16:39:57', 1, NULL, 'comprobantes/comprobante_1200.pdf', NULL),
(1201, 22778682, 8022, '2023-01-18', '20:55:47', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-01-18 17:57:22', '2023-01-18 17:57:22', 1, NULL, 'comprobantes/comprobante_1201.pdf', NULL),
(1202, 22778682, 8022, '2024-09-09', '09:24:56', NULL, 0, 1, '2024-09-09 12:07:56', '2024-09-09 12:07:56', 0, NULL, NULL, NULL),
(1203, 22778682, 8022, '2022-07-26', '01:59:14', 'Analizar situaciones laborales recientes.', 1, 0, '2022-07-26 13:49:23', '2022-07-26 13:49:23', 1, NULL, 'comprobantes/comprobante_1203.pdf', NULL),
(1204, 22778682, 8022, '2024-12-19', '03:08:09', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-12-20 00:14:43', '2024-12-20 00:14:43', 1, NULL, 'comprobantes/comprobante_1204.pdf', NULL),
(1205, 22778682, 8022, '2024-12-24', '19:40:03', 'Practicar ejercicios de relajación.', 1, 1, '2024-12-24 11:50:37', '2024-12-24 11:50:37', 1, NULL, 'comprobantes/comprobante_1205.pdf', NULL),
(1206, 22778682, 8022, '2024-09-11', '18:29:24', 'Practicar ejercicios de relajación.', 1, 0, '2024-09-11 13:32:31', '2024-09-11 13:32:31', 1, NULL, 'comprobantes/comprobante_1206.pdf', NULL),
(1207, 22778682, 8022, '2022-12-16', '15:21:18', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-12-17 00:39:18', '2022-12-17 00:39:18', 1, NULL, 'comprobantes/comprobante_1207.pdf', NULL),
(1208, 22778682, 8022, '2024-09-30', '22:36:28', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-09-30 03:26:55', '2024-09-30 03:26:55', 0, NULL, NULL, NULL),
(1209, 22778682, 8022, '2024-05-16', '16:48:40', NULL, 1, 0, '2024-05-17 01:16:57', '2024-05-17 01:16:57', 1, NULL, 'comprobantes/comprobante_1209.pdf', NULL),
(1210, 22778682, 8022, '2024-09-17', '21:06:06', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-09-17 14:13:08', '2024-09-17 14:13:08', 0, NULL, NULL, NULL),
(1211, 56002846, 8022, '2022-11-12', '22:53:39', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-11-12 17:47:13', '2022-11-12 17:47:13', 1, NULL, 'comprobantes/comprobante_1211.pdf', NULL),
(1212, 56002846, 8022, '2023-01-22', '09:20:27', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-01-22 16:52:05', '2023-01-22 16:52:05', 1, NULL, 'comprobantes/comprobante_1212.pdf', NULL),
(1213, 56002846, 8022, '2022-12-22', '04:11:20', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-12-22 08:48:19', '2022-12-22 08:48:19', 1, NULL, 'comprobantes/comprobante_1213.pdf', NULL),
(1214, 56002846, 8022, '2024-07-17', '13:11:23', NULL, 1, 0, '2024-07-17 10:48:03', '2024-07-17 10:48:03', 1, NULL, 'comprobantes/comprobante_1214.pdf', NULL),
(1215, 56002846, 8022, '2024-03-03', '04:43:47', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-03-03 07:04:48', '2024-03-03 07:04:48', 1, NULL, 'comprobantes/comprobante_1215.pdf', NULL),
(1216, 56002846, 8022, '2022-12-17', '07:13:37', NULL, 0, 0, '2022-12-17 04:51:22', '2022-12-17 04:51:22', 0, NULL, NULL, NULL),
(1217, 56002846, 8022, '2024-12-21', '00:46:19', NULL, 1, 0, '2024-12-21 21:10:54', '2024-12-21 21:10:54', 1, NULL, 'comprobantes/comprobante_1217.pdf', NULL),
(1218, 56002846, 8022, '2024-03-04', '13:17:02', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-03-04 09:09:07', '2024-03-04 09:09:07', 1, NULL, 'comprobantes/comprobante_1218.pdf', NULL),
(1219, 56002846, 8022, '2023-02-27', '18:03:31', NULL, 0, 0, '2023-02-27 11:40:27', '2023-02-27 11:40:27', 1, NULL, 'comprobantes/comprobante_1219.pdf', NULL),
(1220, 56002846, 8022, '2023-11-02', '06:27:46', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-11-02 19:06:14', '2023-11-02 19:06:14', 1, NULL, 'comprobantes/comprobante_1220.pdf', NULL),
(1221, 56002846, 8022, '2023-10-03', '05:57:08', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-10-03 04:06:15', '2023-10-03 04:06:15', 1, NULL, 'comprobantes/comprobante_1221.pdf', NULL),
(1222, 56002846, 8022, '2023-05-21', '21:34:54', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-05-21 16:37:07', '2023-05-21 16:37:07', 1, NULL, 'comprobantes/comprobante_1222.pdf', NULL),
(1223, 56002846, 8022, '2022-05-24', '12:45:30', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2022-05-24 09:57:23', '2022-05-24 09:57:23', 1, NULL, 'comprobantes/comprobante_1223.pdf', NULL),
(1224, 56002846, 8022, '2024-09-13', '01:27:36', 'Practicar ejercicios de relajación.', 0, 0, '2024-09-13 21:48:49', '2024-09-13 21:48:49', 1, NULL, 'comprobantes/comprobante_1224.pdf', NULL),
(1225, 56002846, 8022, '2024-08-01', '15:04:06', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-08-01 22:49:36', '2024-08-01 22:49:36', 1, NULL, 'comprobantes/comprobante_1225.pdf', NULL),
(1226, 56002846, 8022, '2023-11-14', '12:50:00', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-11-14 18:18:59', '2023-11-14 18:18:59', 1, NULL, 'comprobantes/comprobante_1226.pdf', NULL),
(1227, 56002846, 8022, '2024-10-29', '02:32:28', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2024-10-29 03:58:29', '2024-10-29 03:58:29', 1, NULL, 'comprobantes/comprobante_1227.pdf', NULL),
(1228, 56002846, 8022, '2022-01-13', '06:20:51', NULL, 1, 0, '2022-01-13 11:26:16', '2022-01-13 11:26:16', 1, NULL, 'comprobantes/comprobante_1228.pdf', NULL),
(1229, 56002846, 8022, '2024-09-10', '12:04:55', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-09-10 19:57:23', '2024-09-10 19:57:23', 0, NULL, NULL, NULL),
(1230, 56002846, 8022, '2022-02-28', '18:40:01', 'Evaluar progreso en la comunicación interpersonal.', 0, 1, '2022-02-28 14:07:32', '2022-02-28 14:07:32', 1, NULL, 'comprobantes/comprobante_1230.pdf', NULL),
(1231, 56002846, 8022, '2023-04-17', '09:45:00', NULL, 1, 0, '2023-04-17 08:18:31', '2023-04-17 08:18:31', 1, NULL, 'comprobantes/comprobante_1231.pdf', NULL),
(1232, 56002846, 8022, '2023-09-15', '00:20:21', NULL, 1, 0, '2023-09-15 11:31:29', '2023-09-15 11:31:29', 1, NULL, 'comprobantes/comprobante_1232.pdf', NULL),
(1233, 56002846, 8022, '2023-03-30', '03:29:05', NULL, 1, 0, '2023-03-30 03:37:51', '2023-03-30 03:37:51', 1, NULL, 'comprobantes/comprobante_1233.pdf', NULL),
(1234, 56002846, 8022, '2022-03-05', '06:19:32', NULL, 1, 0, '2022-03-06 01:21:07', '2022-03-06 01:21:07', 1, NULL, 'comprobantes/comprobante_1234.pdf', NULL),
(1235, 56002846, 8022, '2023-09-13', '19:12:18', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-09-13 13:43:30', '2023-09-13 13:43:30', 1, NULL, 'comprobantes/comprobante_1235.pdf', NULL),
(1236, 56002846, 8022, '2022-06-02', '08:39:35', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-06-02 22:22:45', '2022-06-02 22:22:45', 1, NULL, 'comprobantes/comprobante_1236.pdf', NULL),
(1237, 56002846, 8022, '2024-07-17', '10:51:08', 'Practicar ejercicios de relajación.', 1, 0, '2024-07-17 17:10:37', '2024-07-17 17:10:37', 1, NULL, 'comprobantes/comprobante_1237.pdf', NULL),
(1238, 56002846, 8022, '2024-06-01', '17:16:34', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-06-01 08:06:24', '2024-06-01 08:06:24', 0, NULL, NULL, NULL),
(1239, 56002846, 8022, '2023-10-15', '23:58:25', NULL, 1, 0, '2023-10-15 11:16:27', '2023-10-15 11:16:27', 1, NULL, 'comprobantes/comprobante_1239.pdf', NULL),
(1240, 62081385, 4015, '2023-12-30', '09:56:36', NULL, 0, 0, '2023-12-30 09:18:08', '2023-12-30 09:18:08', 1, NULL, 'comprobantes/comprobante_1240.pdf', NULL),
(1241, 62081385, 4015, '2024-02-16', '22:18:17', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-02-16 03:37:50', '2024-02-16 03:37:50', 1, NULL, 'comprobantes/comprobante_1241.pdf', NULL),
(1242, 62081385, 4015, '2022-01-23', '21:49:32', 'Practicar ejercicios de relajación.', 1, 0, '2022-01-23 04:00:12', '2022-01-23 04:00:12', 1, NULL, 'comprobantes/comprobante_1242.pdf', NULL),
(1243, 62081385, 4015, '2024-09-25', '08:06:15', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-09-25 06:05:55', '2024-09-25 06:05:55', 1, NULL, 'comprobantes/comprobante_1243.pdf', NULL),
(1244, 62081385, 4015, '2024-01-29', '10:08:54', NULL, 1, 0, '2024-01-29 20:54:35', '2024-01-29 20:54:35', 0, NULL, NULL, NULL),
(1245, 62081385, 4015, '2023-10-17', '13:54:28', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-10-17 08:18:32', '2023-10-17 08:18:32', 1, NULL, 'comprobantes/comprobante_1245.pdf', NULL),
(1246, 62081385, 4015, '2024-04-22', '17:32:07', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-04-22 18:42:17', '2024-04-22 18:42:17', 1, NULL, 'comprobantes/comprobante_1246.pdf', NULL),
(1247, 62081385, 4015, '2022-10-11', '01:48:58', 'Analizar situaciones laborales recientes.', 0, 0, '2022-10-11 23:51:17', '2022-10-11 23:51:17', 1, NULL, 'comprobantes/comprobante_1247.pdf', NULL),
(1248, 62081385, 4015, '2023-12-05', '02:52:57', NULL, 1, 1, '2023-12-05 08:03:55', '2023-12-05 08:03:55', 1, NULL, 'comprobantes/comprobante_1248.pdf', NULL),
(1249, 62081385, 4015, '2024-11-11', '13:24:37', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-11-11 19:40:44', '2024-11-11 19:40:44', 1, NULL, 'comprobantes/comprobante_1249.pdf', NULL),
(1250, 62081385, 4015, '2024-01-17', '21:24:30', 'Revisar compromisos establecidos anteriormente.', 0, 1, '2024-01-17 05:30:47', '2024-01-17 05:30:47', 1, NULL, 'comprobantes/comprobante_1250.pdf', NULL),
(1251, 62081385, 4015, '2024-04-01', '13:04:28', 'Trabajar en estrategias de manejo de ansiedad.', 1, 1, '2024-04-01 23:00:48', '2024-04-01 23:00:48', 1, NULL, 'comprobantes/comprobante_1251.pdf', NULL),
(1252, 62081385, 4015, '2024-06-11', '01:18:40', 'Analizar situaciones laborales recientes.', 1, 0, '2024-06-12 01:56:18', '2024-06-12 01:56:18', 1, NULL, 'comprobantes/comprobante_1252.pdf', NULL),
(1253, 62081385, 4015, '2022-08-03', '06:51:00', 'Analizar situaciones laborales recientes.', 0, 0, '2022-08-03 19:35:53', '2022-08-03 19:35:53', 0, NULL, NULL, NULL),
(1254, 62081385, 4015, '2022-02-27', '22:32:48', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-02-27 18:40:57', '2022-02-27 18:40:57', 1, NULL, 'comprobantes/comprobante_1254.pdf', NULL),
(1255, 62081385, 4015, '2022-08-25', '08:03:36', NULL, 0, 0, '2022-08-25 19:45:55', '2022-08-25 19:45:55', 1, NULL, 'comprobantes/comprobante_1255.pdf', NULL),
(1256, 62322325, 4015, '2022-02-08', '14:07:17', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-02-09 02:46:35', '2022-02-09 02:46:35', 1, NULL, 'comprobantes/comprobante_1256.pdf', NULL),
(1257, 62322325, 4015, '2022-09-03', '08:17:28', 'Analizar situaciones laborales recientes.', 0, 0, '2022-09-03 12:47:21', '2022-09-03 12:47:21', 1, NULL, 'comprobantes/comprobante_1257.pdf', NULL),
(1258, 62322325, 4015, '2023-08-04', '02:10:20', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-08-04 21:41:16', '2023-08-04 21:41:16', 1, NULL, 'comprobantes/comprobante_1258.pdf', NULL),
(1259, 62322325, 4015, '2024-12-11', '19:09:38', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-12-11 17:15:58', '2024-12-11 17:15:58', 1, NULL, 'comprobantes/comprobante_1259.pdf', NULL),
(1260, 62322325, 4015, '2024-07-12', '20:57:02', NULL, 1, 1, '2024-07-12 21:08:27', '2024-07-12 21:08:27', 1, NULL, 'comprobantes/comprobante_1260.pdf', NULL),
(1261, 62322325, 4015, '2022-01-31', '13:44:29', 'Analizar situaciones laborales recientes.', 0, 0, '2022-02-01 00:34:24', '2022-02-01 00:34:24', 1, NULL, 'comprobantes/comprobante_1261.pdf', NULL),
(1262, 62322325, 4015, '2024-03-02', '21:06:16', NULL, 1, 0, '2024-03-02 04:58:43', '2024-03-02 04:58:43', 1, NULL, 'comprobantes/comprobante_1262.pdf', NULL),
(1263, 62322325, 4015, '2024-10-29', '13:46:58', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-10-29 16:08:33', '2024-10-29 16:08:33', 1, NULL, 'comprobantes/comprobante_1263.pdf', NULL),
(1264, 62322325, 4015, '2024-06-13', '07:59:28', 'Analizar situaciones laborales recientes.', 1, 0, '2024-06-13 03:11:18', '2024-06-13 03:11:18', 0, NULL, NULL, NULL),
(1265, 62322325, 4015, '2023-05-20', '23:20:48', 'Practicar ejercicios de relajación.', 1, 0, '2023-05-20 09:56:49', '2023-05-20 09:56:49', 1, NULL, 'comprobantes/comprobante_1265.pdf', NULL),
(1266, 62322325, 4015, '2024-03-04', '22:31:16', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-03-04 17:59:09', '2024-03-04 17:59:09', 0, NULL, NULL, NULL),
(1267, 62322325, 4015, '2023-06-29', '13:26:16', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-06-29 08:01:32', '2023-06-29 08:01:32', 1, NULL, 'comprobantes/comprobante_1267.pdf', NULL),
(1268, 62322325, 4015, '2024-03-18', '05:23:32', NULL, 1, 0, '2024-03-18 03:56:07', '2024-03-18 03:56:07', 1, NULL, 'comprobantes/comprobante_1268.pdf', NULL),
(1269, 62322325, 4015, '2023-06-30', '12:17:52', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-06-30 12:56:07', '2023-06-30 12:56:07', 0, NULL, NULL, NULL),
(1270, 62322325, 4015, '2024-10-12', '14:28:37', NULL, 1, 0, '2024-10-12 17:24:53', '2024-10-12 17:24:53', 0, NULL, NULL, NULL),
(1271, 62322325, 4015, '2023-04-13', '14:50:35', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2023-04-13 09:23:15', '2023-04-13 09:23:15', 1, NULL, 'comprobantes/comprobante_1271.pdf', NULL),
(1272, 62322325, 4015, '2022-02-15', '01:42:53', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-02-15 12:53:37', '2022-02-15 12:53:37', 1, NULL, 'comprobantes/comprobante_1272.pdf', NULL),
(1273, 62322325, 4015, '2024-06-22', '22:56:31', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-06-22 15:53:46', '2024-06-22 15:53:46', 1, NULL, 'comprobantes/comprobante_1273.pdf', NULL),
(1274, 72521835, 7811, '2024-04-24', '04:21:22', NULL, 1, 0, '2024-04-24 03:34:55', '2024-04-24 03:34:55', 1, NULL, 'comprobantes/comprobante_1274.pdf', NULL),
(1275, 72521835, 7811, '2024-01-13', '13:07:11', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-01-13 15:36:33', '2024-01-13 15:36:33', 1, NULL, 'comprobantes/comprobante_1275.pdf', NULL),
(1276, 72521835, 7811, '2023-02-02', '05:01:04', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-02-02 11:04:00', '2023-02-02 11:04:00', 1, NULL, 'comprobantes/comprobante_1276.pdf', NULL),
(1277, 72521835, 7811, '2022-10-01', '04:16:15', 'Analizar situaciones laborales recientes.', 1, 0, '2022-10-01 19:27:41', '2022-10-01 19:27:41', 1, NULL, 'comprobantes/comprobante_1277.pdf', NULL),
(1278, 72521835, 7811, '2022-08-28', '01:53:16', 'Identificar patrones de pensamiento negativos.', 1, 1, '2022-08-29 02:12:31', '2022-08-29 02:12:31', 1, NULL, 'comprobantes/comprobante_1278.pdf', NULL),
(1279, 72521835, 7811, '2024-12-27', '22:37:21', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-12-27 09:25:22', '2024-12-27 09:25:22', 1, NULL, 'comprobantes/comprobante_1279.pdf', NULL),
(1280, 72521835, 7811, '2024-03-27', '06:10:01', NULL, 0, 0, '2024-03-27 12:06:29', '2024-03-27 12:06:29', 1, NULL, 'comprobantes/comprobante_1280.pdf', NULL),
(1281, 72521835, 7811, '2023-01-12', '04:53:44', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-01-12 05:00:11', '2023-01-12 05:00:11', 1, NULL, 'comprobantes/comprobante_1281.pdf', NULL),
(1282, 72521835, 7811, '2022-09-26', '11:45:58', 'Practicar ejercicios de relajación.', 1, 0, '2022-09-26 13:56:26', '2022-09-26 13:56:26', 1, NULL, 'comprobantes/comprobante_1282.pdf', NULL),
(1283, 72521835, 7811, '2023-08-02', '09:09:56', NULL, 1, 0, '2023-08-03 02:26:01', '2023-08-03 02:26:01', 1, NULL, 'comprobantes/comprobante_1283.pdf', NULL),
(1284, 72521835, 7811, '2022-04-15', '18:52:38', 'Practicar ejercicios de relajación.', 1, 0, '2022-04-16 01:01:01', '2022-04-16 01:01:01', 1, NULL, 'comprobantes/comprobante_1284.pdf', NULL),
(1285, 77742230, 7811, '2022-08-16', '07:17:03', NULL, 0, 0, '2022-08-16 12:46:11', '2022-08-16 12:46:11', 1, NULL, 'comprobantes/comprobante_1285.pdf', NULL),
(1286, 77742230, 7811, '2022-06-04', '02:12:43', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-06-04 16:56:21', '2022-06-04 16:56:21', 1, NULL, 'comprobantes/comprobante_1286.pdf', NULL),
(1287, 77742230, 7811, '2023-06-06', '14:40:20', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-06-06 11:33:09', '2023-06-06 11:33:09', 1, NULL, 'comprobantes/comprobante_1287.pdf', NULL),
(1288, 77742230, 7811, '2022-05-02', '17:57:53', 'Revisar tarea asignada la semana pasada.', 0, 1, '2022-05-02 19:37:45', '2022-05-02 19:37:45', 1, NULL, 'comprobantes/comprobante_1288.pdf', NULL),
(1289, 77742230, 7811, '2022-11-11', '07:52:48', 'Analizar situaciones laborales recientes.', 0, 0, '2022-11-11 11:31:30', '2022-11-11 11:31:30', 1, NULL, 'comprobantes/comprobante_1289.pdf', NULL),
(1290, 77742230, 7811, '2022-06-11', '20:28:09', 'Analizar situaciones laborales recientes.', 1, 0, '2022-06-11 23:54:44', '2022-06-11 23:54:44', 1, NULL, 'comprobantes/comprobante_1290.pdf', NULL),
(1291, 77742230, 7811, '2022-05-04', '09:19:34', NULL, 1, 0, '2022-05-04 14:18:37', '2022-05-04 14:18:37', 1, NULL, 'comprobantes/comprobante_1291.pdf', NULL),
(1292, 77742230, 7811, '2024-03-17', '07:15:38', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-03-17 05:52:23', '2024-03-17 05:52:23', 1, NULL, 'comprobantes/comprobante_1292.pdf', NULL),
(1293, 77742230, 7811, '2022-07-24', '02:39:12', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-07-24 14:09:25', '2022-07-24 14:09:25', 1, NULL, 'comprobantes/comprobante_1293.pdf', NULL),
(1294, 77742230, 7811, '2024-08-27', '01:11:22', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-08-27 11:18:19', '2024-08-27 11:18:19', 1, NULL, 'comprobantes/comprobante_1294.pdf', NULL),
(1295, 77742230, 7811, '2022-04-09', '07:21:26', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-04-09 04:08:59', '2022-04-09 04:08:59', 1, NULL, 'comprobantes/comprobante_1295.pdf', NULL),
(1296, 77742230, 7811, '2022-09-01', '12:02:53', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-09-01 22:13:40', '2022-09-01 22:13:40', 1, NULL, 'comprobantes/comprobante_1296.pdf', NULL),
(1297, 77742230, 7811, '2023-06-30', '11:45:41', NULL, 1, 0, '2023-06-30 22:00:56', '2023-06-30 22:00:56', 1, NULL, 'comprobantes/comprobante_1297.pdf', NULL),
(1298, 77742230, 7811, '2023-08-29', '19:44:45', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-08-29 20:25:44', '2023-08-29 20:25:44', 1, NULL, 'comprobantes/comprobante_1298.pdf', NULL),
(1299, 77742230, 7811, '2023-12-08', '01:40:34', 'Analizar situaciones laborales recientes.', 1, 0, '2023-12-08 05:08:20', '2023-12-08 05:08:20', 1, NULL, 'comprobantes/comprobante_1299.pdf', NULL),
(1300, 77742230, 7811, '2022-08-14', '11:18:36', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-08-14 03:44:22', '2022-08-14 03:44:22', 1, NULL, 'comprobantes/comprobante_1300.pdf', NULL),
(1301, 77742230, 7811, '2024-05-28', '13:30:30', 'Analizar situaciones laborales recientes.', 0, 0, '2024-05-28 05:39:05', '2024-05-28 05:39:05', 1, NULL, 'comprobantes/comprobante_1301.pdf', NULL),
(1302, 77742230, 7811, '2024-07-31', '08:32:12', NULL, 1, 0, '2024-07-31 13:16:42', '2024-07-31 13:16:42', 0, NULL, NULL, NULL),
(1303, 77742230, 7811, '2024-06-10', '01:18:42', 'Practicar ejercicios de relajación.', 0, 0, '2024-06-10 16:45:27', '2024-06-10 16:45:27', 0, NULL, NULL, NULL),
(1304, 77742230, 7811, '2023-03-21', '10:25:01', NULL, 0, 0, '2023-03-21 09:10:47', '2023-03-21 09:10:47', 1, NULL, 'comprobantes/comprobante_1304.pdf', NULL),
(1305, 77742230, 7811, '2023-06-09', '15:46:57', NULL, 1, 0, '2023-06-09 09:04:06', '2023-06-09 09:04:06', 1, NULL, 'comprobantes/comprobante_1305.pdf', NULL),
(1306, 20652862, 7811, '2024-11-07', '19:24:30', 'Revisar compromisos establecidos anteriormente.', 0, 1, '2024-11-07 21:11:31', '2024-11-07 21:11:31', 1, NULL, 'comprobantes/comprobante_1306.pdf', NULL),
(1307, 20652862, 7811, '2022-03-23', '22:57:35', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-03-24 02:23:14', '2022-03-24 02:23:14', 1, NULL, 'comprobantes/comprobante_1307.pdf', NULL),
(1308, 20652862, 7811, '2024-10-21', '15:18:50', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2024-10-21 09:24:38', '2024-10-21 09:24:38', 1, NULL, 'comprobantes/comprobante_1308.pdf', NULL),
(1309, 20652862, 7811, '2022-01-30', '14:32:14', NULL, 1, 0, '2022-01-31 01:04:01', '2022-01-31 01:04:01', 1, NULL, 'comprobantes/comprobante_1309.pdf', NULL),
(1310, 20652862, 7811, '2024-10-15', '00:41:29', NULL, 1, 0, '2024-10-15 05:19:21', '2024-10-15 05:19:21', 1, NULL, 'comprobantes/comprobante_1310.pdf', NULL),
(1311, 20652862, 7811, '2023-10-17', '19:33:29', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-10-17 23:39:43', '2024-12-05 19:31:53', 1, '95059294623', 'comprobantes/comprobante_1311.pdf', '2024-12-05 16:31:53'),
(1312, 20652862, 7811, '2023-04-27', '00:55:15', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-04-27 08:38:17', '2023-04-27 08:38:17', 1, NULL, 'comprobantes/comprobante_1312.pdf', NULL),
(1313, 20652862, 7811, '2024-03-18', '16:18:59', 'Revisar tarea asignada la semana pasada.', 1, 1, '2024-03-19 02:02:30', '2024-03-19 02:02:30', 1, NULL, 'comprobantes/comprobante_1313.pdf', NULL),
(1314, 20652862, 7811, '2024-11-01', '06:00:25', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-11-01 03:26:01', '2024-11-01 03:26:01', 1, NULL, 'comprobantes/comprobante_1314.pdf', NULL),
(1315, 20652862, 7811, '2022-02-20', '20:30:29', NULL, 0, 0, '2022-02-20 18:14:35', '2022-02-20 18:14:35', 1, NULL, 'comprobantes/comprobante_1315.pdf', NULL),
(1316, 20652862, 7811, '2024-10-29', '20:06:43', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-10-29 22:26:08', '2024-10-29 22:26:08', 1, NULL, 'comprobantes/comprobante_1316.pdf', NULL),
(1317, 20652862, 7811, '2023-05-28', '10:48:17', 'Analizar situaciones laborales recientes.', 0, 0, '2023-05-28 03:40:05', '2023-05-28 03:40:05', 1, NULL, 'comprobantes/comprobante_1317.pdf', NULL),
(1318, 20652862, 7811, '2023-12-25', '12:52:38', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-12-25 04:52:57', '2023-12-25 04:52:57', 1, NULL, 'comprobantes/comprobante_1318.pdf', NULL),
(1319, 82037661, 7811, '2024-02-14', '12:20:08', NULL, 1, 0, '2024-02-14 05:59:35', '2024-02-14 05:59:35', 1, NULL, 'comprobantes/comprobante_1319.pdf', NULL),
(1320, 82037661, 7811, '2022-11-19', '12:27:10', NULL, 1, 0, '2022-11-19 09:00:44', '2022-11-19 09:00:44', 1, NULL, 'comprobantes/comprobante_1320.pdf', NULL),
(1321, 82037661, 7811, '2022-06-28', '19:39:18', 'Analizar situaciones laborales recientes.', 1, 0, '2022-06-28 09:15:05', '2022-06-28 09:15:05', 1, NULL, 'comprobantes/comprobante_1321.pdf', NULL),
(1322, 82037661, 7811, '2024-04-17', '16:52:23', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-04-18 02:56:52', '2024-04-18 02:56:52', 1, NULL, 'comprobantes/comprobante_1322.pdf', NULL),
(1323, 82037661, 7811, '2023-04-19', '06:50:51', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-04-19 23:33:32', '2023-04-19 23:33:32', 1, NULL, 'comprobantes/comprobante_1323.pdf', NULL),
(1324, 82037661, 7811, '2023-05-11', '19:44:04', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-05-11 10:49:22', '2023-05-11 10:49:22', 1, NULL, 'comprobantes/comprobante_1324.pdf', NULL),
(1325, 82037661, 7811, '2022-09-13', '19:30:57', NULL, 0, 0, '2022-09-13 13:34:35', '2022-09-13 13:34:35', 1, NULL, 'comprobantes/comprobante_1325.pdf', NULL),
(1326, 82037661, 7811, '2023-08-21', '20:17:32', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-08-21 18:03:43', '2023-08-21 18:03:43', 1, NULL, 'comprobantes/comprobante_1326.pdf', NULL),
(1327, 82037661, 7811, '2024-04-26', '02:31:30', NULL, 0, 0, '2024-04-26 20:22:26', '2024-04-26 20:22:26', 1, NULL, 'comprobantes/comprobante_1327.pdf', NULL),
(1328, 82037661, 7811, '2022-10-31', '12:30:25', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-10-31 17:57:26', '2022-10-31 17:57:26', 1, NULL, 'comprobantes/comprobante_1328.pdf', NULL),
(1329, 82037661, 7811, '2022-10-11', '13:55:39', 'Evaluar progreso en la comunicación interpersonal.', 0, 1, '2022-10-11 05:30:25', '2022-10-11 05:30:25', 1, NULL, 'comprobantes/comprobante_1329.pdf', NULL),
(1330, 82037661, 7811, '2024-10-17', '06:07:43', 'Practicar ejercicios de relajación.', 1, 0, '2024-10-17 23:37:20', '2024-10-17 23:37:20', 1, NULL, 'comprobantes/comprobante_1330.pdf', NULL),
(1331, 82037661, 7811, '2022-11-20', '07:10:25', NULL, 1, 0, '2022-11-20 17:48:14', '2022-11-20 17:48:14', 1, NULL, 'comprobantes/comprobante_1331.pdf', NULL),
(1332, 82037661, 7811, '2024-07-08', '17:44:26', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-07-08 22:06:07', '2024-07-08 22:06:07', 1, NULL, 'comprobantes/comprobante_1332.pdf', NULL),
(1333, 82037661, 7811, '2022-06-20', '14:00:01', 'Analizar situaciones laborales recientes.', 0, 0, '2022-06-20 20:42:37', '2022-06-20 20:42:37', 1, NULL, 'comprobantes/comprobante_1333.pdf', NULL),
(1334, 82037661, 7811, '2024-08-29', '20:13:20', NULL, 1, 0, '2024-08-29 14:20:43', '2024-08-29 14:20:43', 1, NULL, 'comprobantes/comprobante_1334.pdf', NULL),
(1335, 82037661, 7811, '2023-10-22', '01:29:56', NULL, 1, 0, '2023-10-22 09:27:28', '2023-10-22 09:27:28', 0, NULL, NULL, NULL);
INSERT INTO `sesion` (`id_sesion`, `dni_paciente`, `matricula_psicologo`, `fecha`, `hora`, `comentario`, `presencial`, `cancelado`, `created_at`, `updated_at`, `pago`, `payment_id`, `comprobante_path`, `fecha_pago`) VALUES
(1336, 82037661, 7811, '2024-12-14', '15:36:31', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-12-15 01:57:35', '2024-12-15 01:57:35', 1, NULL, 'comprobantes/comprobante_1336.pdf', NULL),
(1337, 82037661, 7811, '2023-09-27', '09:01:09', 'Practicar ejercicios de relajación.', 0, 0, '2023-09-27 03:38:19', '2023-09-27 03:38:19', 1, NULL, 'comprobantes/comprobante_1337.pdf', NULL),
(1338, 82037661, 7811, '2024-10-11', '04:04:31', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-10-11 07:45:29', '2024-10-11 07:45:29', 1, NULL, 'comprobantes/comprobante_1338.pdf', NULL),
(1339, 82037661, 7811, '2022-09-25', '23:21:11', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2022-09-25 17:04:37', '2022-09-25 17:04:37', 1, NULL, 'comprobantes/comprobante_1339.pdf', NULL),
(1340, 82037661, 7811, '2023-10-30', '17:38:11', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-10-30 08:24:33', '2023-10-30 08:24:33', 1, NULL, 'comprobantes/comprobante_1340.pdf', NULL),
(1341, 82037661, 7811, '2022-05-13', '20:57:08', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-05-13 17:33:39', '2022-05-13 17:33:39', 1, NULL, 'comprobantes/comprobante_1341.pdf', NULL),
(1342, 82037661, 7811, '2024-09-02', '09:45:23', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-09-03 02:06:15', '2024-09-03 02:06:15', 1, NULL, 'comprobantes/comprobante_1342.pdf', NULL),
(1343, 82037661, 7811, '2022-10-10', '09:03:19', 'Analizar situaciones laborales recientes.', 1, 0, '2022-10-10 07:14:21', '2022-10-10 07:14:21', 1, NULL, 'comprobantes/comprobante_1343.pdf', NULL),
(1344, 82037661, 7811, '2024-05-05', '15:01:14', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-05-05 22:01:01', '2024-05-05 22:01:01', 1, NULL, 'comprobantes/comprobante_1344.pdf', NULL),
(1345, 82037661, 7811, '2023-06-30', '10:58:39', 'Practicar ejercicios de relajación.', 1, 0, '2023-06-30 04:17:03', '2023-06-30 04:17:03', 1, NULL, 'comprobantes/comprobante_1345.pdf', NULL),
(1346, 82037661, 7811, '2024-05-31', '20:41:55', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-05-31 06:42:40', '2024-05-31 06:42:40', 1, NULL, 'comprobantes/comprobante_1346.pdf', NULL),
(1347, 76637170, 7811, '2024-09-13', '08:45:01', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-09-14 00:49:52', '2024-09-14 00:49:52', 1, NULL, 'comprobantes/comprobante_1347.pdf', NULL),
(1348, 76637170, 7811, '2022-09-21', '03:01:37', 'Analizar situaciones laborales recientes.', 0, 0, '2022-09-21 15:36:32', '2022-09-21 15:36:32', 1, NULL, 'comprobantes/comprobante_1348.pdf', NULL),
(1349, 76637170, 7811, '2022-10-19', '11:29:22', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-10-20 01:41:01', '2022-10-20 01:41:01', 1, NULL, 'comprobantes/comprobante_1349.pdf', NULL),
(1350, 76637170, 7811, '2022-11-03', '03:13:28', NULL, 1, 0, '2022-11-03 22:03:08', '2022-11-03 22:03:08', 1, NULL, 'comprobantes/comprobante_1350.pdf', NULL),
(1351, 76637170, 7811, '2022-11-29', '15:41:13', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-11-29 10:03:47', '2022-11-29 10:03:47', 1, NULL, 'comprobantes/comprobante_1351.pdf', NULL),
(1352, 76637170, 7811, '2023-01-19', '12:53:44', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-01-20 02:22:37', '2023-01-20 02:22:37', 1, NULL, 'comprobantes/comprobante_1352.pdf', NULL),
(1353, 76637170, 7811, '2023-06-07', '21:33:18', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-06-07 17:01:21', '2023-06-07 17:01:21', 1, NULL, 'comprobantes/comprobante_1353.pdf', NULL),
(1354, 76637170, 7811, '2023-05-19', '22:45:21', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-05-19 10:07:41', '2023-05-19 10:07:41', 1, NULL, 'comprobantes/comprobante_1354.pdf', NULL),
(1355, 76637170, 7811, '2023-03-16', '17:42:32', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-03-16 05:28:52', '2023-03-16 05:28:52', 1, NULL, 'comprobantes/comprobante_1355.pdf', NULL),
(1356, 76637170, 7811, '2024-01-09', '04:38:32', 'Identificar patrones de pensamiento negativos.', 1, 1, '2024-01-09 18:50:24', '2024-01-09 18:50:24', 1, NULL, 'comprobantes/comprobante_1356.pdf', NULL),
(1357, 76637170, 7811, '2022-01-09', '10:21:02', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-01-09 04:38:56', '2022-01-09 04:38:56', 1, NULL, 'comprobantes/comprobante_1357.pdf', NULL),
(1358, 76637170, 7811, '2023-05-17', '17:48:13', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-17 17:00:04', '2023-05-17 17:00:04', 1, NULL, 'comprobantes/comprobante_1358.pdf', NULL),
(1359, 76637170, 7811, '2024-03-12', '13:10:27', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-03-13 02:25:04', '2024-03-13 02:25:04', 1, NULL, 'comprobantes/comprobante_1359.pdf', NULL),
(1360, 76637170, 7811, '2024-06-11', '09:41:24', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-06-12 02:48:47', '2024-06-12 02:48:47', 1, NULL, 'comprobantes/comprobante_1360.pdf', NULL),
(1361, 76637170, 7811, '2024-03-13', '16:22:58', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-03-13 05:48:34', '2024-03-13 05:48:34', 1, NULL, 'comprobantes/comprobante_1361.pdf', NULL),
(1362, 76637170, 7811, '2024-06-08', '14:55:52', 'Reflexionar sobre los eventos de la semana.', 0, 1, '2024-06-08 08:43:44', '2024-06-08 08:43:44', 1, NULL, 'comprobantes/comprobante_1362.pdf', NULL),
(1363, 76637170, 7811, '2022-06-14', '04:05:48', 'Practicar ejercicios de relajación.', 1, 1, '2022-06-14 07:23:29', '2022-06-14 07:23:29', 1, NULL, 'comprobantes/comprobante_1363.pdf', NULL),
(1364, 76637170, 7811, '2023-07-07', '11:10:04', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-07-07 17:32:05', '2023-07-07 17:32:05', 0, NULL, NULL, NULL),
(1365, 76637170, 7811, '2022-06-17', '06:21:53', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-06-18 01:12:22', '2022-06-18 01:12:22', 0, NULL, NULL, NULL),
(1366, 76637170, 7811, '2023-02-15', '23:49:40', 'Analizar situaciones laborales recientes.', 1, 1, '2023-02-16 01:48:31', '2023-02-16 01:48:31', 1, NULL, 'comprobantes/comprobante_1366.pdf', NULL),
(1367, 76637170, 7811, '2022-02-14', '22:23:56', NULL, 0, 0, '2022-02-14 03:48:59', '2022-02-14 03:48:59', 1, NULL, 'comprobantes/comprobante_1367.pdf', NULL),
(1368, 76637170, 7811, '2024-11-03', '10:05:56', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-11-03 11:52:21', '2024-11-03 11:52:21', 1, NULL, 'comprobantes/comprobante_1368.pdf', NULL),
(1369, 76637170, 7811, '2022-02-01', '00:11:43', 'Practicar ejercicios de relajación.', 1, 0, '2022-02-01 06:23:08', '2022-02-01 06:23:08', 1, NULL, 'comprobantes/comprobante_1369.pdf', NULL),
(1370, 76637170, 7811, '2023-06-29', '17:35:41', NULL, 1, 0, '2023-06-29 17:45:29', '2023-06-29 17:45:29', 1, NULL, 'comprobantes/comprobante_1370.pdf', NULL),
(1371, 76637170, 7811, '2024-09-09', '12:07:55', NULL, 1, 0, '2024-09-09 08:57:49', '2024-09-09 08:57:49', 1, NULL, 'comprobantes/comprobante_1371.pdf', NULL),
(1372, 76637170, 7811, '2024-06-16', '12:59:54', NULL, 0, 0, '2024-06-16 18:40:39', '2024-06-16 18:40:39', 1, NULL, 'comprobantes/comprobante_1372.pdf', NULL),
(1373, 76637170, 7811, '2022-06-06', '21:07:36', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-06-06 04:51:37', '2022-06-06 04:51:37', 1, NULL, 'comprobantes/comprobante_1373.pdf', NULL),
(1374, 20652862, 2010, '2024-03-01', '17:20:20', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-03-01 09:22:48', '2024-03-01 09:22:48', 1, NULL, 'comprobantes/comprobante_1374.pdf', NULL),
(1375, 20652862, 2010, '2024-05-27', '00:17:12', 'Analizar situaciones laborales recientes.', 1, 0, '2024-05-27 08:08:52', '2024-05-27 08:08:52', 1, NULL, 'comprobantes/comprobante_1375.pdf', NULL),
(1376, 20652862, 2010, '2024-09-28', '14:17:18', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-09-28 07:59:57', '2024-09-28 07:59:57', 1, NULL, 'comprobantes/comprobante_1376.pdf', NULL),
(1377, 20652862, 2010, '2022-12-17', '12:02:54', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-12-17 15:34:38', '2022-12-17 15:34:38', 1, NULL, 'comprobantes/comprobante_1377.pdf', NULL),
(1378, 20652862, 2010, '2023-02-24', '15:31:44', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-02-24 09:29:46', '2023-02-24 09:29:46', 1, NULL, 'comprobantes/comprobante_1378.pdf', NULL),
(1379, 20652862, 2010, '2024-11-23', '18:04:15', NULL, 1, 0, '2024-11-23 05:31:23', '2024-11-23 05:31:23', 1, NULL, 'comprobantes/comprobante_1379.pdf', NULL),
(1380, 20652862, 2010, '2024-12-09', '14:42:13', 'Revisar tarea asignada la semana pasada.', 0, 1, '2024-12-09 06:04:37', '2024-12-09 06:04:37', 1, NULL, 'comprobantes/comprobante_1380.pdf', NULL),
(1381, 20652862, 2010, '2024-11-04', '08:03:22', NULL, 1, 0, '2024-11-04 14:20:54', '2024-11-04 14:20:54', 1, NULL, 'comprobantes/comprobante_1381.pdf', NULL),
(1382, 20652862, 2010, '2023-08-18', '12:44:10', 'Analizar situaciones laborales recientes.', 1, 0, '2023-08-18 21:01:37', '2023-08-18 21:01:37', 1, NULL, 'comprobantes/comprobante_1382.pdf', NULL),
(1383, 20652862, 2010, '2023-01-12', '11:40:48', 'Explorar posibles soluciones a los conflictos actuales.', 1, 1, '2023-01-12 12:03:22', '2023-01-12 12:03:22', 1, NULL, 'comprobantes/comprobante_1383.pdf', NULL),
(1384, 20652862, 2010, '2022-12-06', '15:50:17', NULL, 1, 0, '2022-12-06 04:13:46', '2022-12-06 04:13:46', 1, NULL, 'comprobantes/comprobante_1384.pdf', NULL),
(1385, 20652862, 2010, '2024-09-27', '16:36:22', NULL, 1, 1, '2024-09-27 17:55:19', '2024-09-27 17:55:19', 1, NULL, 'comprobantes/comprobante_1385.pdf', NULL),
(1386, 79171088, 9661, '2022-11-30', '15:52:33', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2022-11-30 10:19:03', '2022-11-30 10:19:03', 1, NULL, 'comprobantes/comprobante_1386.pdf', NULL),
(1387, 79171088, 9661, '2022-10-06', '11:38:14', 'Practicar ejercicios de relajación.', 1, 0, '2022-10-07 01:14:51', '2022-10-07 01:14:51', 1, NULL, 'comprobantes/comprobante_1387.pdf', NULL),
(1388, 79171088, 9661, '2024-04-22', '22:01:59', NULL, 0, 0, '2024-04-22 19:01:52', '2024-04-22 19:01:52', 1, NULL, 'comprobantes/comprobante_1388.pdf', NULL),
(1389, 79171088, 9661, '2022-10-30', '17:59:28', NULL, 0, 0, '2022-10-30 15:53:07', '2022-10-30 15:53:07', 1, NULL, 'comprobantes/comprobante_1389.pdf', NULL),
(1390, 79171088, 9661, '2023-05-22', '03:36:41', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-05-22 08:38:28', '2023-05-22 08:38:28', 0, NULL, NULL, NULL),
(1391, 79171088, 9661, '2022-09-03', '16:17:44', NULL, 1, 1, '2022-09-03 14:49:59', '2022-09-03 14:49:59', 1, NULL, 'comprobantes/comprobante_1391.pdf', NULL),
(1392, 79171088, 9661, '2024-03-29', '00:43:57', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-03-29 16:24:57', '2024-03-29 16:24:57', 1, NULL, 'comprobantes/comprobante_1392.pdf', NULL),
(1393, 79171088, 9661, '2022-04-11', '06:20:02', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-04-11 18:46:23', '2022-04-11 18:46:23', 0, NULL, NULL, NULL),
(1394, 79171088, 9661, '2024-08-24', '18:50:22', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-08-24 18:11:21', '2024-08-24 18:11:21', 0, NULL, NULL, NULL),
(1395, 79171088, 9661, '2024-06-11', '07:10:26', NULL, 0, 0, '2024-06-11 07:53:07', '2024-06-11 07:53:07', 1, NULL, 'comprobantes/comprobante_1395.pdf', NULL),
(1396, 79171088, 9661, '2024-03-21', '22:31:58', NULL, 1, 0, '2024-03-21 13:18:43', '2024-03-21 13:18:43', 1, NULL, 'comprobantes/comprobante_1396.pdf', NULL),
(1397, 79171088, 9661, '2023-05-12', '05:13:32', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-12 16:08:38', '2023-05-12 16:08:38', 1, NULL, 'comprobantes/comprobante_1397.pdf', NULL),
(1398, 79171088, 9661, '2024-08-18', '10:54:05', NULL, 1, 0, '2024-08-18 09:56:16', '2024-08-18 09:56:16', 1, NULL, 'comprobantes/comprobante_1398.pdf', NULL),
(1399, 79171088, 9661, '2022-08-28', '08:49:38', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-08-28 16:33:55', '2022-08-28 16:33:55', 1, NULL, 'comprobantes/comprobante_1399.pdf', NULL),
(1400, 79171088, 9661, '2022-09-27', '08:23:01', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-09-27 03:42:23', '2022-09-27 03:42:23', 1, NULL, 'comprobantes/comprobante_1400.pdf', NULL),
(1401, 79171088, 9661, '2023-11-11', '23:38:42', NULL, 0, 0, '2023-11-11 21:30:42', '2023-11-11 21:30:42', 0, NULL, NULL, NULL),
(1402, 79171088, 9661, '2022-08-31', '06:11:02', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-08-31 19:34:13', '2022-08-31 19:34:13', 1, NULL, 'comprobantes/comprobante_1402.pdf', NULL),
(1403, 79171088, 9661, '2022-06-14', '14:37:42', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-06-14 19:48:58', '2022-06-14 19:48:58', 1, NULL, 'comprobantes/comprobante_1403.pdf', NULL),
(1404, 79171088, 9661, '2023-10-17', '15:05:13', 'Trabajar en estrategias de manejo de ansiedad.', 0, 1, '2023-10-17 03:57:48', '2023-10-17 03:57:48', 1, NULL, 'comprobantes/comprobante_1404.pdf', NULL),
(1405, 79171088, 9661, '2024-03-30', '15:45:19', 'Practicar ejercicios de relajación.', 1, 0, '2024-03-30 04:57:04', '2024-03-30 04:57:04', 1, NULL, 'comprobantes/comprobante_1405.pdf', NULL),
(1406, 79171088, 9661, '2023-09-04', '02:21:59', NULL, 1, 0, '2023-09-04 06:16:26', '2023-09-04 06:16:26', 1, NULL, 'comprobantes/comprobante_1406.pdf', NULL),
(1407, 79171088, 9661, '2023-08-15', '18:49:21', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-08-15 22:50:36', '2023-08-15 22:50:36', 1, NULL, 'comprobantes/comprobante_1407.pdf', NULL),
(1408, 79171088, 9661, '2024-01-03', '01:54:24', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-01-03 10:33:36', '2024-01-03 10:33:36', 1, NULL, 'comprobantes/comprobante_1408.pdf', NULL),
(1409, 79171088, 9661, '2022-03-31', '19:47:45', 'Trabajar en estrategias de manejo de ansiedad.', 1, 1, '2022-03-31 11:45:54', '2022-03-31 11:45:54', 0, NULL, NULL, NULL),
(1410, 79171088, 9661, '2023-11-08', '06:12:59', NULL, 0, 0, '2023-11-08 09:52:26', '2023-11-08 09:52:26', 1, NULL, 'comprobantes/comprobante_1410.pdf', NULL),
(1411, 79171088, 9661, '2023-01-24', '21:56:23', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-01-24 12:52:54', '2023-01-24 12:52:54', 1, NULL, 'comprobantes/comprobante_1411.pdf', NULL),
(1412, 79171088, 9661, '2024-01-16', '22:45:54', NULL, 1, 1, '2024-01-16 07:36:02', '2024-01-16 07:36:02', 1, NULL, 'comprobantes/comprobante_1412.pdf', NULL),
(1413, 79171088, 9661, '2023-07-06', '15:12:33', NULL, 0, 0, '2023-07-06 13:32:46', '2023-07-06 13:32:46', 1, NULL, 'comprobantes/comprobante_1413.pdf', NULL),
(1414, 79171088, 9661, '2024-10-09', '18:02:20', NULL, 1, 0, '2024-10-09 11:51:12', '2024-10-09 11:51:12', 1, NULL, 'comprobantes/comprobante_1414.pdf', NULL),
(1415, 79171088, 9661, '2024-04-05', '14:47:52', NULL, 0, 0, '2024-04-05 03:39:30', '2024-04-05 03:39:30', 1, NULL, 'comprobantes/comprobante_1415.pdf', NULL),
(1416, 76637170, 9661, '2022-06-09', '02:43:55', 'Analizar situaciones laborales recientes.', 0, 0, '2022-06-09 12:44:27', '2022-06-09 12:44:27', 1, NULL, 'comprobantes/comprobante_1416.pdf', NULL),
(1417, 76637170, 9661, '2023-01-14', '10:55:20', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2023-01-14 14:25:27', '2023-01-14 14:25:27', 1, NULL, 'comprobantes/comprobante_1417.pdf', NULL),
(1418, 76637170, 9661, '2022-03-16', '15:39:53', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-03-16 18:21:51', '2022-03-16 18:21:51', 1, NULL, 'comprobantes/comprobante_1418.pdf', NULL),
(1419, 76637170, 9661, '2023-05-15', '23:15:29', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-05-15 03:20:28', '2023-05-15 03:20:28', 1, NULL, 'comprobantes/comprobante_1419.pdf', NULL),
(1420, 76637170, 9661, '2023-09-26', '06:09:35', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-09-26 12:45:43', '2023-09-26 12:45:43', 1, NULL, 'comprobantes/comprobante_1420.pdf', NULL),
(1421, 76637170, 9661, '2023-03-15', '18:07:35', 'Practicar ejercicios de relajación.', 0, 1, '2023-03-15 07:54:13', '2023-03-15 07:54:13', 1, NULL, 'comprobantes/comprobante_1421.pdf', NULL),
(1422, 76637170, 9661, '2023-05-31', '07:05:14', NULL, 1, 0, '2023-05-31 07:22:32', '2023-05-31 07:22:32', 1, NULL, 'comprobantes/comprobante_1422.pdf', NULL),
(1423, 76637170, 9661, '2024-11-14', '15:23:43', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-11-14 20:03:57', '2024-11-14 20:03:57', 1, NULL, 'comprobantes/comprobante_1423.pdf', NULL),
(1424, 76637170, 9661, '2023-08-23', '03:05:49', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-08-23 13:55:28', '2023-08-23 13:55:28', 0, NULL, NULL, NULL),
(1425, 76637170, 9661, '2022-08-12', '08:02:59', NULL, 1, 0, '2022-08-12 10:23:24', '2022-08-12 10:23:24', 0, NULL, NULL, NULL),
(1426, 76637170, 9661, '2024-11-17', '05:18:31', NULL, 0, 0, '2024-11-17 21:20:55', '2024-11-17 21:20:55', 1, NULL, 'comprobantes/comprobante_1426.pdf', NULL),
(1427, 76637170, 9661, '2022-09-12', '06:36:47', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-09-12 05:11:54', '2022-09-12 05:11:54', 1, NULL, 'comprobantes/comprobante_1427.pdf', NULL),
(1428, 76637170, 9661, '2024-03-23', '08:15:46', NULL, 0, 0, '2024-03-23 03:49:40', '2024-03-23 03:49:40', 1, NULL, 'comprobantes/comprobante_1428.pdf', NULL),
(1429, 76637170, 9661, '2023-01-31', '16:35:10', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-01-31 21:16:22', '2023-01-31 21:16:22', 1, NULL, 'comprobantes/comprobante_1429.pdf', NULL),
(1430, 76637170, 9661, '2022-02-14', '13:14:23', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-02-14 07:02:41', '2022-02-14 07:02:41', 1, NULL, 'comprobantes/comprobante_1430.pdf', NULL),
(1431, 76637170, 9661, '2022-02-01', '10:35:00', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-02-01 07:27:33', '2022-02-01 07:27:33', 1, NULL, 'comprobantes/comprobante_1431.pdf', NULL),
(1432, 76637170, 9661, '2024-09-07', '09:17:33', NULL, 1, 1, '2024-09-07 21:21:36', '2024-09-07 21:21:36', 1, NULL, 'comprobantes/comprobante_1432.pdf', NULL),
(1433, 76637170, 9661, '2022-12-08', '13:21:38', 'Analizar situaciones laborales recientes.', 1, 0, '2022-12-08 15:57:30', '2022-12-08 15:57:30', 1, NULL, 'comprobantes/comprobante_1433.pdf', NULL),
(1434, 76637170, 9661, '2023-10-19', '23:02:28', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-10-19 17:32:21', '2023-10-19 17:32:21', 1, NULL, 'comprobantes/comprobante_1434.pdf', NULL),
(1435, 76637170, 9661, '2023-04-04', '08:35:05', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-04-04 13:50:10', '2023-04-04 13:50:10', 1, NULL, 'comprobantes/comprobante_1435.pdf', NULL),
(1436, 76637170, 9661, '2024-07-29', '04:40:48', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-07-30 00:58:04', '2024-07-30 00:58:04', 1, NULL, 'comprobantes/comprobante_1436.pdf', NULL),
(1437, 76637170, 9661, '2022-11-24', '08:56:10', 'Analizar situaciones laborales recientes.', 1, 0, '2022-11-24 16:06:04', '2022-11-24 16:06:04', 1, NULL, 'comprobantes/comprobante_1437.pdf', NULL),
(1438, 76637170, 9661, '2022-10-30', '02:54:37', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-10-30 09:53:03', '2022-10-30 09:53:03', 1, NULL, 'comprobantes/comprobante_1438.pdf', NULL),
(1439, 76637170, 9661, '2022-09-25', '19:12:27', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-09-25 16:57:29', '2022-09-25 16:57:29', 1, NULL, 'comprobantes/comprobante_1439.pdf', NULL),
(1440, 76637170, 9661, '2022-02-09', '10:02:03', 'Practicar ejercicios de relajación.', 1, 1, '2022-02-10 00:49:28', '2022-02-10 00:49:28', 1, NULL, 'comprobantes/comprobante_1440.pdf', NULL),
(1441, 85439762, 9661, '2022-03-23', '10:45:42', NULL, 1, 0, '2022-03-23 03:51:22', '2022-03-23 03:51:22', 1, NULL, 'comprobantes/comprobante_1441.pdf', NULL),
(1442, 85439762, 9661, '2024-11-02', '19:30:26', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-11-03 02:51:51', '2024-11-03 02:51:51', 0, NULL, NULL, NULL),
(1443, 85439762, 9661, '2024-01-12', '11:51:29', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-01-12 04:42:29', '2024-01-12 04:42:29', 1, NULL, 'comprobantes/comprobante_1443.pdf', NULL),
(1444, 85439762, 9661, '2022-11-27', '04:48:58', 'Practicar ejercicios de relajación.', 0, 0, '2022-11-27 12:20:45', '2022-11-27 12:20:45', 1, NULL, 'comprobantes/comprobante_1444.pdf', NULL),
(1445, 85439762, 9661, '2024-07-17', '00:13:11', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-07-17 04:20:02', '2024-07-17 04:20:02', 1, NULL, 'comprobantes/comprobante_1445.pdf', NULL),
(1446, 85439762, 9661, '2023-04-25', '05:44:01', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-04-25 04:52:43', '2023-04-25 04:52:43', 1, NULL, 'comprobantes/comprobante_1446.pdf', NULL),
(1447, 85439762, 9661, '2022-02-05', '10:50:54', 'Practicar ejercicios de relajación.', 0, 0, '2022-02-05 23:33:00', '2022-02-05 23:33:00', 1, NULL, 'comprobantes/comprobante_1447.pdf', NULL),
(1448, 85439762, 9661, '2022-04-28', '13:03:10', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-04-29 02:56:06', '2022-04-29 02:56:06', 1, NULL, 'comprobantes/comprobante_1448.pdf', NULL),
(1449, 85439762, 9661, '2023-08-26', '15:39:24', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-08-26 14:26:22', '2023-08-26 14:26:22', 1, NULL, 'comprobantes/comprobante_1449.pdf', NULL),
(1450, 85439762, 9661, '2024-06-01', '19:18:23', NULL, 1, 0, '2024-06-01 03:05:42', '2024-06-01 03:05:42', 1, NULL, 'comprobantes/comprobante_1450.pdf', NULL),
(1451, 85439762, 9661, '2022-04-27', '12:42:39', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-04-27 15:37:55', '2022-04-27 15:37:55', 1, NULL, 'comprobantes/comprobante_1451.pdf', NULL),
(1452, 85439762, 9661, '2022-06-05', '23:24:21', 'Practicar ejercicios de relajación.', 1, 0, '2022-06-05 20:49:43', '2022-06-05 20:49:43', 0, NULL, NULL, NULL),
(1453, 85439762, 9661, '2023-07-09', '01:39:16', NULL, 0, 0, '2023-07-10 00:26:08', '2023-07-10 00:26:08', 1, NULL, 'comprobantes/comprobante_1453.pdf', NULL),
(1454, 85439762, 9661, '2024-08-20', '19:43:45', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-08-20 17:04:24', '2024-08-20 17:04:24', 0, NULL, NULL, NULL),
(1455, 85439762, 9661, '2022-08-03', '05:52:26', 'Practicar ejercicios de relajación.', 1, 0, '2022-08-03 23:59:52', '2022-08-03 23:59:52', 1, NULL, 'comprobantes/comprobante_1455.pdf', NULL),
(1456, 85439762, 9661, '2024-10-26', '22:20:03', NULL, 1, 0, '2024-10-26 18:50:54', '2024-10-26 18:50:54', 1, NULL, 'comprobantes/comprobante_1456.pdf', NULL),
(1457, 85439762, 9661, '2024-10-12', '02:08:22', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-10-12 21:35:45', '2024-10-12 21:35:45', 1, NULL, 'comprobantes/comprobante_1457.pdf', NULL),
(1458, 85439762, 9661, '2023-10-15', '14:15:32', NULL, 1, 0, '2023-10-15 16:58:25', '2023-10-15 16:58:25', 1, NULL, 'comprobantes/comprobante_1458.pdf', NULL),
(1459, 85439762, 9661, '2023-08-21', '16:08:09', 'Practicar ejercicios de relajación.', 1, 0, '2023-08-21 12:48:43', '2023-08-21 12:48:43', 1, NULL, 'comprobantes/comprobante_1459.pdf', NULL),
(1460, 85439762, 9661, '2024-07-03', '01:54:36', 'Analizar situaciones laborales recientes.', 1, 0, '2024-07-03 16:24:14', '2024-07-03 16:24:14', 1, NULL, 'comprobantes/comprobante_1460.pdf', NULL),
(1461, 43822069, 9661, '2022-03-25', '04:17:07', 'Practicar ejercicios de relajación.', 0, 0, '2022-03-25 03:13:54', '2022-03-25 03:13:54', 0, NULL, NULL, NULL),
(1462, 43822069, 9661, '2022-12-04', '13:25:04', 'Revisar compromisos establecidos anteriormente.', 0, 1, '2022-12-04 16:42:36', '2022-12-04 16:42:36', 1, NULL, 'comprobantes/comprobante_1462.pdf', NULL),
(1463, 43822069, 9661, '2023-05-22', '08:29:26', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-05-22 18:32:41', '2023-05-22 18:32:41', 1, NULL, 'comprobantes/comprobante_1463.pdf', NULL),
(1464, 43822069, 9661, '2023-06-30', '08:17:51', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-06-30 21:04:36', '2023-06-30 21:04:36', 1, NULL, 'comprobantes/comprobante_1464.pdf', NULL),
(1465, 43822069, 9661, '2024-09-07', '22:05:51', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-09-07 21:28:20', '2024-09-07 21:28:20', 1, NULL, 'comprobantes/comprobante_1465.pdf', NULL),
(1466, 43822069, 9661, '2024-12-11', '23:32:49', 'Analizar situaciones laborales recientes.', 1, 0, '2024-12-11 20:57:50', '2024-12-11 20:57:50', 1, NULL, 'comprobantes/comprobante_1466.pdf', NULL),
(1467, 43822069, 9661, '2024-07-31', '03:47:03', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2024-07-31 19:17:08', '2024-07-31 19:17:08', 1, NULL, 'comprobantes/comprobante_1467.pdf', NULL),
(1468, 43822069, 9661, '2023-08-05', '12:49:21', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2023-08-05 10:16:07', '2023-08-05 10:16:07', 1, NULL, 'comprobantes/comprobante_1468.pdf', NULL),
(1469, 43822069, 9661, '2022-07-10', '20:32:55', NULL, 1, 0, '2022-07-10 13:12:59', '2022-07-10 13:12:59', 1, NULL, 'comprobantes/comprobante_1469.pdf', NULL),
(1470, 43822069, 9661, '2023-04-15', '05:02:01', 'Analizar situaciones laborales recientes.', 0, 0, '2023-04-15 09:22:13', '2023-04-15 09:22:13', 0, NULL, NULL, NULL),
(1471, 43822069, 9661, '2023-09-23', '05:37:39', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-09-23 13:12:51', '2023-09-23 13:12:51', 1, NULL, 'comprobantes/comprobante_1471.pdf', NULL),
(1472, 43822069, 9661, '2024-02-02', '11:58:57', 'Analizar situaciones laborales recientes.', 0, 0, '2024-02-02 03:44:14', '2024-02-02 03:44:14', 1, NULL, 'comprobantes/comprobante_1472.pdf', NULL),
(1473, 43822069, 9661, '2023-02-17', '03:48:31', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-02-17 06:59:03', '2023-02-17 06:59:03', 1, NULL, 'comprobantes/comprobante_1473.pdf', NULL),
(1474, 43822069, 9661, '2023-12-06', '20:40:41', NULL, 0, 0, '2023-12-06 06:11:48', '2023-12-06 06:11:48', 1, NULL, 'comprobantes/comprobante_1474.pdf', NULL),
(1475, 43822069, 9661, '2024-08-02', '21:00:37', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-08-02 16:27:33', '2024-08-02 16:27:33', 1, NULL, 'comprobantes/comprobante_1475.pdf', NULL),
(1476, 43822069, 9661, '2024-10-21', '22:59:29', 'Practicar ejercicios de relajación.', 1, 0, '2024-10-21 05:14:24', '2024-10-21 05:14:24', 1, NULL, 'comprobantes/comprobante_1476.pdf', NULL),
(1477, 43822069, 9661, '2024-07-28', '01:21:24', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-07-28 22:44:39', '2024-07-28 22:44:39', 1, NULL, 'comprobantes/comprobante_1477.pdf', NULL),
(1478, 43822069, 9661, '2023-05-07', '10:22:04', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-05-07 06:12:09', '2023-05-07 06:12:09', 1, NULL, 'comprobantes/comprobante_1478.pdf', NULL),
(1479, 43822069, 9661, '2022-07-24', '04:42:43', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-07-24 22:24:46', '2022-07-24 22:24:46', 0, NULL, NULL, NULL),
(1480, 43822069, 9661, '2022-03-02', '17:29:24', 'Analizar situaciones laborales recientes.', 1, 0, '2022-03-02 16:21:41', '2022-03-02 16:21:41', 1, NULL, 'comprobantes/comprobante_1480.pdf', NULL),
(1481, 43822069, 9661, '2024-10-06', '06:47:32', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-10-06 20:16:26', '2024-10-06 20:16:26', 1, NULL, 'comprobantes/comprobante_1481.pdf', NULL),
(1482, 43822069, 9661, '2023-08-26', '18:50:28', NULL, 1, 0, '2023-08-26 14:52:33', '2023-08-26 14:52:33', 1, NULL, 'comprobantes/comprobante_1482.pdf', NULL),
(1483, 43822069, 9661, '2024-08-11', '07:09:26', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-08-11 03:45:27', '2024-08-11 03:45:27', 0, NULL, NULL, NULL),
(1484, 43822069, 9661, '2024-09-26', '03:51:08', 'Analizar situaciones laborales recientes.', 1, 0, '2024-09-26 21:33:22', '2024-09-26 21:33:22', 1, NULL, 'comprobantes/comprobante_1484.pdf', NULL),
(1485, 43822069, 9661, '2022-07-03', '14:29:18', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-07-03 15:26:58', '2022-07-03 15:26:58', 1, NULL, 'comprobantes/comprobante_1485.pdf', NULL),
(1486, 43822069, 9661, '2024-11-23', '10:25:46', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-11-24 00:43:49', '2024-11-24 00:43:49', 1, NULL, 'comprobantes/comprobante_1486.pdf', NULL),
(1487, 22778682, 2270, '2023-11-18', '21:29:55', NULL, 1, 0, '2023-11-19 00:05:41', '2023-11-19 00:05:41', 1, NULL, 'comprobantes/comprobante_1487.pdf', NULL),
(1488, 22778682, 2270, '2023-10-18', '17:07:57', 'Practicar ejercicios de relajación.', 0, 0, '2023-10-19 02:45:54', '2023-10-19 02:45:54', 0, NULL, NULL, NULL),
(1489, 22778682, 2270, '2024-09-13', '09:00:44', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-09-13 12:59:49', '2024-09-13 12:59:49', 1, NULL, 'comprobantes/comprobante_1489.pdf', NULL),
(1490, 22778682, 2270, '2022-03-09', '14:36:32', NULL, 1, 0, '2022-03-09 12:19:51', '2022-03-09 12:19:51', 1, NULL, 'comprobantes/comprobante_1490.pdf', NULL),
(1491, 22778682, 2270, '2022-07-19', '14:15:23', NULL, 1, 0, '2022-07-19 05:33:23', '2022-07-19 05:33:23', 1, NULL, 'comprobantes/comprobante_1491.pdf', NULL),
(1492, 22778682, 2270, '2023-11-10', '21:28:20', 'Practicar ejercicios de relajación.', 1, 1, '2023-11-11 00:20:35', '2023-11-11 00:20:35', 1, NULL, 'comprobantes/comprobante_1492.pdf', NULL),
(1493, 22778682, 2270, '2024-05-08', '09:10:32', NULL, 1, 0, '2024-05-08 11:56:55', '2024-05-08 11:56:55', 1, NULL, 'comprobantes/comprobante_1493.pdf', NULL),
(1494, 22778682, 2270, '2022-05-18', '11:14:31', NULL, 1, 0, '2022-05-18 21:10:28', '2022-05-18 21:10:28', 1, NULL, 'comprobantes/comprobante_1494.pdf', NULL),
(1495, 22778682, 2270, '2023-04-30', '07:11:46', 'Explorar posibles soluciones a los conflictos actuales.', 1, 1, '2023-04-30 11:26:12', '2023-04-30 11:26:12', 1, NULL, 'comprobantes/comprobante_1495.pdf', NULL),
(1496, 22778682, 2270, '2023-03-15', '01:21:01', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-03-16 02:56:13', '2023-03-16 02:56:13', 1, NULL, 'comprobantes/comprobante_1496.pdf', NULL),
(1497, 22778682, 2270, '2024-03-14', '11:51:08', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-03-14 06:45:36', '2024-03-14 06:45:36', 1, NULL, 'comprobantes/comprobante_1497.pdf', NULL),
(1498, 22778682, 2270, '2023-09-16', '05:30:45', 'Analizar situaciones laborales recientes.', 0, 0, '2023-09-16 08:23:00', '2023-09-16 08:23:00', 1, NULL, 'comprobantes/comprobante_1498.pdf', NULL),
(1499, 22778682, 2270, '2023-01-28', '17:05:47', NULL, 1, 0, '2023-01-28 03:42:03', '2023-01-28 03:42:03', 1, NULL, 'comprobantes/comprobante_1499.pdf', NULL),
(1500, 22778682, 2270, '2024-09-18', '20:55:38', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-09-18 04:24:16', '2024-09-18 04:24:16', 1, NULL, 'comprobantes/comprobante_1500.pdf', NULL),
(1501, 22778682, 2270, '2024-05-03', '08:39:06', 'Practicar ejercicios de relajación.', 1, 0, '2024-05-04 01:03:24', '2024-05-04 01:03:24', 1, NULL, 'comprobantes/comprobante_1501.pdf', NULL),
(1502, 22778682, 2270, '2024-07-04', '22:37:07', 'Discutir avances en los objetivos establecidos.', 1, 1, '2024-07-04 22:59:38', '2024-07-04 22:59:38', 1, NULL, 'comprobantes/comprobante_1502.pdf', NULL),
(1503, 22778682, 2270, '2023-12-18', '23:22:58', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-12-18 10:18:14', '2023-12-18 10:18:14', 1, NULL, 'comprobantes/comprobante_1503.pdf', NULL),
(1504, 22778682, 2270, '2022-05-12', '11:09:25', 'Practicar ejercicios de relajación.', 0, 0, '2022-05-12 16:00:59', '2022-05-12 16:00:59', 1, NULL, 'comprobantes/comprobante_1504.pdf', NULL),
(1505, 22778682, 2270, '2023-09-14', '02:10:36', NULL, 0, 0, '2023-09-14 09:48:10', '2023-09-14 09:48:10', 1, NULL, 'comprobantes/comprobante_1505.pdf', NULL),
(1506, 22778682, 2270, '2022-06-30', '17:04:44', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-06-30 14:26:33', '2022-06-30 14:26:33', 1, NULL, 'comprobantes/comprobante_1506.pdf', NULL),
(1507, 22778682, 2270, '2023-10-31', '05:58:09', NULL, 1, 0, '2023-10-31 19:11:44', '2023-10-31 19:11:44', 1, NULL, 'comprobantes/comprobante_1507.pdf', NULL),
(1508, 22778682, 2270, '2024-08-27', '12:27:58', NULL, 1, 0, '2024-08-27 18:08:33', '2024-08-27 18:08:33', 1, NULL, 'comprobantes/comprobante_1508.pdf', NULL),
(1509, 22778682, 2270, '2024-02-24', '02:49:55', 'Discutir avances en los objetivos establecidos.', 1, 1, '2024-02-24 13:13:23', '2024-02-24 13:13:23', 0, NULL, NULL, NULL),
(1510, 22778682, 2270, '2024-10-10', '03:33:34', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-10-10 03:11:49', '2024-10-10 03:11:49', 1, NULL, 'comprobantes/comprobante_1510.pdf', NULL),
(1511, 22778682, 2270, '2024-10-05', '00:34:11', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-10-05 12:17:51', '2024-10-05 12:17:51', 1, NULL, 'comprobantes/comprobante_1511.pdf', NULL),
(1512, 22778682, 2270, '2024-09-02', '05:12:26', 'Analizar situaciones laborales recientes.', 1, 0, '2024-09-02 17:48:33', '2024-09-02 17:48:33', 1, NULL, 'comprobantes/comprobante_1512.pdf', NULL),
(1513, 22778682, 2270, '2022-06-19', '22:02:30', NULL, 1, 0, '2022-06-19 22:27:28', '2022-06-19 22:27:28', 1, NULL, 'comprobantes/comprobante_1513.pdf', NULL),
(1514, 56002846, 2270, '2022-06-03', '04:34:13', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-06-03 20:34:31', '2022-06-03 20:34:31', 1, NULL, 'comprobantes/comprobante_1514.pdf', NULL),
(1515, 56002846, 2270, '2024-11-23', '15:06:18', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-11-23 06:12:04', '2024-11-23 06:12:04', 1, NULL, 'comprobantes/comprobante_1515.pdf', NULL),
(1516, 56002846, 2270, '2023-08-31', '08:50:49', 'Practicar ejercicios de relajación.', 1, 0, '2023-08-31 21:39:48', '2023-08-31 21:39:48', 1, NULL, 'comprobantes/comprobante_1516.pdf', NULL),
(1517, 56002846, 2270, '2022-05-30', '06:11:37', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-05-31 02:38:11', '2022-05-31 02:38:11', 1, NULL, 'comprobantes/comprobante_1517.pdf', NULL),
(1518, 56002846, 2270, '2023-03-22', '03:12:01', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-03-22 21:54:27', '2023-03-22 21:54:27', 1, NULL, 'comprobantes/comprobante_1518.pdf', NULL),
(1519, 56002846, 2270, '2022-02-28', '02:22:49', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-02-28 06:58:01', '2022-02-28 06:58:01', 1, NULL, 'comprobantes/comprobante_1519.pdf', NULL),
(1520, 56002846, 2270, '2023-09-09', '01:14:14', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-09-09 13:53:07', '2023-09-09 13:53:07', 1, NULL, 'comprobantes/comprobante_1520.pdf', NULL),
(1521, 56002846, 2270, '2024-04-17', '06:47:50', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-04-17 23:25:55', '2024-04-17 23:25:55', 1, NULL, 'comprobantes/comprobante_1521.pdf', NULL),
(1522, 56002846, 2270, '2023-07-24', '11:11:38', 'Explorar posibles soluciones a los conflictos actuales.', 1, 1, '2023-07-25 00:58:53', '2023-07-25 00:58:53', 1, NULL, 'comprobantes/comprobante_1522.pdf', NULL),
(1523, 56002846, 2270, '2023-05-03', '13:00:14', NULL, 0, 0, '2023-05-03 21:15:17', '2023-05-03 21:15:17', 0, NULL, NULL, NULL),
(1524, 56002846, 2270, '2022-12-02', '12:00:12', NULL, 1, 0, '2022-12-03 01:53:37', '2022-12-03 01:53:37', 1, NULL, 'comprobantes/comprobante_1524.pdf', NULL),
(1525, 56002846, 2270, '2023-03-26', '13:16:00', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-03-26 19:37:50', '2023-03-26 19:37:50', 1, NULL, 'comprobantes/comprobante_1525.pdf', NULL),
(1526, 56002846, 2270, '2022-05-25', '23:17:39', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-05-25 21:00:39', '2022-05-25 21:00:39', 0, NULL, NULL, NULL),
(1527, 56002846, 2270, '2024-05-25', '15:21:04', NULL, 1, 0, '2024-05-25 19:59:46', '2024-05-25 19:59:46', 1, NULL, 'comprobantes/comprobante_1527.pdf', NULL),
(1528, 56002846, 2270, '2022-03-09', '15:56:26', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-03-09 18:48:18', '2022-03-09 18:48:18', 1, NULL, 'comprobantes/comprobante_1528.pdf', NULL),
(1529, 56002846, 2270, '2024-10-02', '23:48:11', NULL, 0, 0, '2024-10-02 08:06:03', '2024-10-02 08:06:03', 0, NULL, NULL, NULL),
(1530, 56002846, 2270, '2022-08-15', '21:21:53', NULL, 1, 0, '2022-08-15 10:00:20', '2022-08-15 10:00:20', 1, NULL, 'comprobantes/comprobante_1530.pdf', NULL),
(1531, 56002846, 2270, '2023-07-19', '02:42:22', NULL, 1, 0, '2023-07-19 23:35:36', '2023-07-19 23:35:36', 1, NULL, 'comprobantes/comprobante_1531.pdf', NULL),
(1532, 56002846, 2270, '2024-05-26', '11:10:37', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-05-26 22:08:11', '2024-05-26 22:08:11', 1, NULL, 'comprobantes/comprobante_1532.pdf', NULL),
(1533, 56002846, 2270, '2023-09-11', '23:52:13', 'Analizar situaciones laborales recientes.', 0, 0, '2023-09-11 18:22:08', '2023-09-11 18:22:08', 1, NULL, 'comprobantes/comprobante_1533.pdf', NULL),
(1534, 56002846, 2270, '2024-09-03', '21:47:38', NULL, 1, 0, '2024-09-03 03:20:40', '2024-09-03 03:20:40', 1, NULL, 'comprobantes/comprobante_1534.pdf', NULL),
(1535, 56002846, 2270, '2023-03-08', '21:50:22', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-03-08 18:34:21', '2023-03-08 18:34:21', 1, NULL, 'comprobantes/comprobante_1535.pdf', NULL),
(1536, 56002846, 2270, '2022-12-24', '00:10:15', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-12-25 02:09:36', '2022-12-25 02:09:36', 1, NULL, 'comprobantes/comprobante_1536.pdf', NULL),
(1537, 56002846, 2270, '2023-07-03', '06:35:31', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-07-04 01:26:54', '2023-07-04 01:26:54', 1, NULL, 'comprobantes/comprobante_1537.pdf', NULL),
(1538, 56002846, 2270, '2022-08-17', '04:43:27', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-08-17 12:10:54', '2022-08-17 12:10:54', 0, NULL, NULL, NULL),
(1539, 56002846, 2270, '2024-11-14', '13:07:31', NULL, 0, 0, '2024-11-14 16:52:30', '2024-11-14 16:52:30', 1, NULL, 'comprobantes/comprobante_1539.pdf', NULL),
(1540, 56002846, 2270, '2022-08-26', '13:07:25', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-08-26 17:25:12', '2022-08-26 17:25:12', 1, NULL, 'comprobantes/comprobante_1540.pdf', NULL),
(1541, 56002846, 2270, '2022-02-12', '08:10:23', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-02-12 07:42:32', '2022-02-12 07:42:32', 1, NULL, 'comprobantes/comprobante_1541.pdf', NULL),
(1542, 88110399, 2270, '2023-04-23', '06:32:46', NULL, 0, 0, '2023-04-23 06:28:09', '2023-04-23 06:28:09', 1, NULL, 'comprobantes/comprobante_1542.pdf', NULL),
(1543, 88110399, 2270, '2023-06-03', '09:17:33', NULL, 1, 0, '2023-06-04 02:49:34', '2023-06-04 02:49:34', 1, NULL, 'comprobantes/comprobante_1543.pdf', NULL),
(1544, 88110399, 2270, '2023-04-13', '22:52:27', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-04-14 01:24:12', '2023-04-14 01:24:12', 1, NULL, 'comprobantes/comprobante_1544.pdf', NULL),
(1545, 88110399, 2270, '2023-07-14', '18:51:20', 'Practicar ejercicios de relajación.', 0, 0, '2023-07-14 14:14:54', '2023-07-14 14:14:54', 1, NULL, 'comprobantes/comprobante_1545.pdf', NULL),
(1546, 88110399, 2270, '2023-04-16', '13:07:03', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-04-16 03:38:16', '2023-04-16 03:38:16', 1, NULL, 'comprobantes/comprobante_1546.pdf', NULL),
(1547, 88110399, 2270, '2023-08-28', '01:38:17', 'Practicar ejercicios de relajación.', 1, 0, '2023-08-28 14:29:05', '2023-08-28 14:29:05', 0, NULL, NULL, NULL),
(1548, 88110399, 2270, '2022-06-13', '16:32:23', 'Revisar tarea asignada la semana pasada.', 1, 1, '2022-06-13 04:23:57', '2022-06-13 04:23:57', 1, NULL, 'comprobantes/comprobante_1548.pdf', NULL),
(1549, 88110399, 2270, '2024-09-20', '03:39:01', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-09-20 18:29:25', '2024-09-20 18:29:25', 1, NULL, 'comprobantes/comprobante_1549.pdf', NULL),
(1550, 88110399, 2270, '2022-07-12', '03:58:48', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-07-12 15:08:48', '2022-07-12 15:08:48', 1, NULL, 'comprobantes/comprobante_1550.pdf', NULL),
(1551, 88110399, 2270, '2022-12-12', '15:25:55', 'Practicar ejercicios de relajación.', 1, 0, '2022-12-12 06:29:06', '2022-12-12 06:29:06', 1, NULL, 'comprobantes/comprobante_1551.pdf', NULL),
(1552, 62081385, 2270, '2024-07-30', '18:20:12', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-07-30 23:01:14', '2024-07-30 23:01:14', 1, NULL, 'comprobantes/comprobante_1552.pdf', NULL),
(1553, 62081385, 2270, '2023-04-17', '11:35:35', 'Analizar situaciones laborales recientes.', 1, 0, '2023-04-17 08:13:44', '2023-04-17 08:13:44', 0, NULL, NULL, NULL),
(1554, 62081385, 2270, '2022-04-24', '08:01:14', NULL, 0, 0, '2022-04-24 06:05:42', '2022-04-24 06:05:42', 1, NULL, 'comprobantes/comprobante_1554.pdf', NULL),
(1555, 62081385, 2270, '2023-03-26', '14:12:02', 'Analizar situaciones laborales recientes.', 1, 0, '2023-03-26 10:59:25', '2023-03-26 10:59:25', 1, NULL, 'comprobantes/comprobante_1555.pdf', NULL),
(1556, 62081385, 2270, '2022-02-13', '17:56:29', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-02-13 11:08:05', '2022-02-13 11:08:05', 1, NULL, 'comprobantes/comprobante_1556.pdf', NULL),
(1557, 62081385, 2270, '2024-07-30', '22:41:16', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-07-30 21:49:19', '2024-07-30 21:49:19', 1, NULL, 'comprobantes/comprobante_1557.pdf', NULL),
(1558, 62081385, 2270, '2022-01-27', '16:24:34', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-01-27 03:36:07', '2022-01-27 03:36:07', 1, NULL, 'comprobantes/comprobante_1558.pdf', NULL),
(1559, 62081385, 2270, '2022-10-06', '20:36:31', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-10-06 22:55:38', '2022-10-06 22:55:38', 1, NULL, 'comprobantes/comprobante_1559.pdf', NULL),
(1560, 62081385, 2270, '2023-05-01', '06:26:51', NULL, 1, 0, '2023-05-02 01:34:17', '2023-05-02 01:34:17', 1, NULL, 'comprobantes/comprobante_1560.pdf', NULL),
(1561, 62081385, 2270, '2022-05-31', '16:48:34', NULL, 0, 0, '2022-05-31 09:46:52', '2022-05-31 09:46:52', 1, NULL, 'comprobantes/comprobante_1561.pdf', NULL),
(1562, 62081385, 2270, '2022-07-07', '20:22:33', 'Practicar ejercicios de relajación.', 1, 0, '2022-07-08 00:37:22', '2022-07-08 00:37:22', 1, NULL, 'comprobantes/comprobante_1562.pdf', NULL),
(1563, 62081385, 2270, '2022-06-03', '17:31:37', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-06-03 03:32:33', '2022-06-03 03:32:33', 1, NULL, 'comprobantes/comprobante_1563.pdf', NULL),
(1564, 62081385, 2270, '2022-07-17', '18:24:14', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-07-17 17:46:23', '2022-07-17 17:46:23', 1, NULL, 'comprobantes/comprobante_1564.pdf', NULL),
(1565, 62081385, 2270, '2024-09-15', '08:12:20', 'Identificar patrones de pensamiento negativos.', 1, 1, '2024-09-15 20:15:35', '2024-09-15 20:15:35', 0, NULL, NULL, NULL),
(1566, 62081385, 2270, '2023-10-23', '13:06:05', NULL, 1, 0, '2023-10-23 19:20:49', '2023-10-23 19:20:49', 0, NULL, NULL, NULL),
(1567, 62081385, 2270, '2024-11-01', '05:57:45', 'Analizar situaciones laborales recientes.', 1, 0, '2024-11-01 11:25:55', '2024-11-01 11:25:55', 1, NULL, 'comprobantes/comprobante_1567.pdf', NULL),
(1568, 56002846, 8071, '2022-01-30', '08:24:52', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-01-30 14:31:32', '2022-01-30 14:31:32', 1, NULL, 'comprobantes/comprobante_1568.pdf', NULL),
(1569, 56002846, 8071, '2024-06-01', '21:58:27', NULL, 0, 1, '2024-06-01 08:00:08', '2024-06-01 08:00:08', 1, NULL, 'comprobantes/comprobante_1569.pdf', NULL),
(1570, 56002846, 8071, '2024-04-16', '22:42:04', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-04-16 05:51:22', '2024-04-16 05:51:22', 1, NULL, 'comprobantes/comprobante_1570.pdf', NULL),
(1571, 56002846, 8071, '2022-04-15', '09:07:29', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-04-15 05:40:25', '2022-04-15 05:40:25', 1, NULL, 'comprobantes/comprobante_1571.pdf', NULL),
(1572, 56002846, 8071, '2023-04-28', '05:53:58', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-04-28 17:10:25', '2023-04-28 17:10:25', 1, NULL, 'comprobantes/comprobante_1572.pdf', NULL),
(1573, 56002846, 8071, '2024-06-14', '05:09:34', 'Practicar ejercicios de relajación.', 1, 0, '2024-06-14 03:58:45', '2024-06-14 03:58:45', 1, NULL, 'comprobantes/comprobante_1573.pdf', NULL),
(1574, 56002846, 8071, '2024-03-21', '03:27:13', NULL, 1, 0, '2024-03-21 03:34:06', '2024-03-21 03:34:06', 1, NULL, 'comprobantes/comprobante_1574.pdf', NULL),
(1575, 56002846, 8071, '2023-10-25', '00:21:44', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-10-25 22:45:52', '2023-10-25 22:45:52', 1, NULL, 'comprobantes/comprobante_1575.pdf', NULL),
(1576, 56002846, 8071, '2022-08-08', '05:57:48', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-08-08 04:57:45', '2022-08-08 04:57:45', 1, NULL, 'comprobantes/comprobante_1576.pdf', NULL),
(1577, 56002846, 8071, '2023-10-17', '04:10:38', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-10-17 18:06:10', '2023-10-17 18:06:10', 1, NULL, 'comprobantes/comprobante_1577.pdf', NULL),
(1578, 56002846, 8071, '2023-03-26', '03:02:21', 'Analizar situaciones laborales recientes.', 1, 0, '2023-03-26 04:37:09', '2023-03-26 04:37:09', 1, NULL, 'comprobantes/comprobante_1578.pdf', NULL),
(1579, 56002846, 8071, '2022-04-13', '23:34:48', NULL, 1, 0, '2022-04-13 04:52:32', '2022-04-13 04:52:32', 1, NULL, 'comprobantes/comprobante_1579.pdf', NULL),
(1580, 56002846, 8071, '2022-03-30', '16:49:11', 'Practicar ejercicios de relajación.', 1, 0, '2022-03-30 14:14:19', '2022-03-30 14:14:19', 1, NULL, 'comprobantes/comprobante_1580.pdf', NULL),
(1581, 56002846, 8071, '2024-11-20', '14:13:33', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-11-20 04:44:49', '2024-11-20 04:44:49', 1, NULL, 'comprobantes/comprobante_1581.pdf', NULL),
(1582, 56002846, 8071, '2024-04-14', '05:59:25', NULL, 1, 0, '2024-04-14 05:41:44', '2024-04-14 05:41:44', 1, NULL, 'comprobantes/comprobante_1582.pdf', NULL),
(1583, 56002846, 8071, '2022-04-15', '00:15:27', 'Practicar ejercicios de relajación.', 1, 1, '2022-04-15 10:32:12', '2022-04-15 10:32:12', 1, NULL, 'comprobantes/comprobante_1583.pdf', NULL),
(1584, 56002846, 8071, '2024-10-15', '19:41:30', NULL, 1, 0, '2024-10-15 19:13:28', '2024-10-15 19:13:28', 1, NULL, 'comprobantes/comprobante_1584.pdf', NULL),
(1585, 56002846, 8071, '2024-11-17', '17:37:14', NULL, 0, 0, '2024-11-18 02:07:39', '2024-11-18 02:07:39', 0, NULL, NULL, NULL),
(1586, 56002846, 8071, '2023-03-02', '20:26:59', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-03-02 16:12:09', '2023-03-02 16:12:09', 1, NULL, 'comprobantes/comprobante_1586.pdf', NULL),
(1587, 56002846, 8071, '2022-03-24', '15:22:23', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-03-25 01:41:45', '2022-03-25 01:41:45', 1, NULL, 'comprobantes/comprobante_1587.pdf', NULL),
(1588, 64323872, 8071, '2024-01-16', '12:39:33', NULL, 0, 0, '2024-01-16 05:03:45', '2024-01-16 05:03:45', 1, NULL, 'comprobantes/comprobante_1588.pdf', NULL),
(1589, 64323872, 8071, '2023-12-28', '05:51:00', 'Analizar situaciones laborales recientes.', 0, 0, '2023-12-28 14:50:35', '2023-12-28 14:50:35', 1, NULL, 'comprobantes/comprobante_1589.pdf', NULL),
(1590, 64323872, 8071, '2024-03-18', '00:43:37', NULL, 1, 0, '2024-03-18 13:32:24', '2024-03-18 13:32:24', 1, NULL, 'comprobantes/comprobante_1590.pdf', NULL),
(1591, 64323872, 8071, '2023-01-19', '20:00:42', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2023-01-19 05:34:36', '2023-01-19 05:34:36', 1, NULL, 'comprobantes/comprobante_1591.pdf', NULL),
(1592, 64323872, 8071, '2022-05-28', '17:52:43', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-05-28 18:56:12', '2022-05-28 18:56:12', 1, NULL, 'comprobantes/comprobante_1592.pdf', NULL),
(1593, 64323872, 8071, '2024-02-07', '05:14:01', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-02-07 21:07:58', '2024-02-07 21:07:58', 1, NULL, 'comprobantes/comprobante_1593.pdf', NULL),
(1594, 64323872, 8071, '2024-08-08', '14:20:58', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-08-08 09:06:58', '2024-08-08 09:06:58', 1, NULL, 'comprobantes/comprobante_1594.pdf', NULL),
(1595, 64323872, 8071, '2022-02-10', '08:48:15', NULL, 0, 0, '2022-02-10 20:22:14', '2022-02-10 20:22:14', 1, NULL, 'comprobantes/comprobante_1595.pdf', NULL),
(1596, 64323872, 8071, '2023-06-05', '09:46:25', NULL, 0, 1, '2023-06-05 16:04:13', '2023-06-05 16:04:13', 0, NULL, NULL, NULL),
(1597, 64323872, 8071, '2024-05-21', '08:22:54', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2024-05-21 05:03:15', '2024-05-21 05:03:15', 1, NULL, 'comprobantes/comprobante_1597.pdf', NULL),
(1598, 64323872, 8071, '2022-06-23', '05:26:38', NULL, 1, 0, '2022-06-24 02:28:39', '2022-06-24 02:28:39', 1, NULL, 'comprobantes/comprobante_1598.pdf', NULL),
(1599, 64323872, 8071, '2022-03-25', '22:39:54', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-03-25 03:23:56', '2022-03-25 03:23:56', 1, NULL, 'comprobantes/comprobante_1599.pdf', NULL),
(1600, 64323872, 8071, '2022-03-28', '15:16:51', 'Practicar ejercicios de relajación.', 1, 0, '2022-03-29 00:39:20', '2022-03-29 00:39:20', 1, NULL, 'comprobantes/comprobante_1600.pdf', NULL),
(1601, 64323872, 8071, '2023-08-02', '13:27:54', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-08-02 08:28:41', '2023-08-02 08:28:41', 1, NULL, 'comprobantes/comprobante_1601.pdf', NULL),
(1602, 64323872, 8071, '2023-06-29', '11:06:16', NULL, 1, 0, '2023-06-29 05:05:37', '2023-06-29 05:05:37', 1, NULL, 'comprobantes/comprobante_1602.pdf', NULL),
(1603, 64323872, 8071, '2022-04-20', '07:22:46', NULL, 1, 0, '2022-04-20 19:28:32', '2022-04-20 19:28:32', 1, NULL, 'comprobantes/comprobante_1603.pdf', NULL);
INSERT INTO `sesion` (`id_sesion`, `dni_paciente`, `matricula_psicologo`, `fecha`, `hora`, `comentario`, `presencial`, `cancelado`, `created_at`, `updated_at`, `pago`, `payment_id`, `comprobante_path`, `fecha_pago`) VALUES
(1604, 64323872, 8071, '2023-09-05', '13:12:24', NULL, 1, 0, '2023-09-05 18:44:25', '2023-09-05 18:44:25', 1, NULL, 'comprobantes/comprobante_1604.pdf', NULL),
(1605, 64323872, 8071, '2024-06-06', '16:35:48', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-06-07 02:50:02', '2024-06-07 02:50:02', 1, NULL, 'comprobantes/comprobante_1605.pdf', NULL),
(1606, 64323872, 8071, '2024-04-21', '08:09:55', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-04-21 23:07:37', '2024-04-21 23:07:37', 1, NULL, 'comprobantes/comprobante_1606.pdf', NULL),
(1607, 64323872, 8071, '2022-10-21', '01:49:24', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-10-21 03:48:15', '2022-10-21 03:48:15', 1, NULL, 'comprobantes/comprobante_1607.pdf', NULL),
(1608, 64323872, 8071, '2022-09-11', '20:35:27', 'Trabajar en estrategias de manejo de ansiedad.', 1, 1, '2022-09-11 21:50:11', '2022-09-11 21:50:11', 1, NULL, 'comprobantes/comprobante_1608.pdf', NULL),
(1609, 64323872, 8071, '2023-02-07', '21:08:14', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-02-07 09:46:20', '2023-02-07 09:46:20', 1, NULL, 'comprobantes/comprobante_1609.pdf', NULL),
(1610, 64323872, 8071, '2024-01-20', '18:48:05', 'Practicar ejercicios de relajación.', 1, 0, '2024-01-20 05:25:45', '2024-01-20 05:25:45', 1, NULL, 'comprobantes/comprobante_1610.pdf', NULL),
(1611, 64323872, 8071, '2024-04-27', '04:21:45', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-04-27 20:58:36', '2024-04-27 20:58:36', 1, NULL, 'comprobantes/comprobante_1611.pdf', NULL),
(1612, 64323872, 8071, '2022-05-11', '04:48:25', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-05-11 20:00:49', '2022-05-11 20:00:49', 1, NULL, 'comprobantes/comprobante_1612.pdf', NULL),
(1613, 64323872, 8071, '2023-07-14', '09:22:17', NULL, 1, 0, '2023-07-14 21:40:26', '2023-07-14 21:40:26', 1, NULL, 'comprobantes/comprobante_1613.pdf', NULL),
(1614, 64323872, 8071, '2024-10-13', '03:22:52', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-10-13 09:14:43', '2024-10-13 09:14:43', 1, NULL, 'comprobantes/comprobante_1614.pdf', NULL),
(1615, 64323872, 8071, '2022-02-06', '01:19:08', 'Identificar patrones de pensamiento negativos.', 0, 1, '2022-02-06 17:14:31', '2022-02-06 17:14:31', 1, NULL, 'comprobantes/comprobante_1615.pdf', NULL),
(1616, 64323872, 8071, '2022-08-22', '02:20:58', 'Discutir avances en los objetivos establecidos.', 0, 1, '2022-08-22 17:53:22', '2022-08-22 17:53:22', 1, NULL, 'comprobantes/comprobante_1616.pdf', NULL),
(1617, 64323872, 8071, '2022-07-20', '22:23:37', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-07-20 17:39:52', '2022-07-20 17:39:52', 1, NULL, 'comprobantes/comprobante_1617.pdf', NULL),
(1618, 77742230, 8071, '2022-01-25', '21:19:33', 'Practicar ejercicios de relajación.', 1, 1, '2022-01-25 07:31:06', '2022-01-25 07:31:06', 1, NULL, 'comprobantes/comprobante_1618.pdf', NULL),
(1619, 77742230, 8071, '2022-05-05', '03:03:06', NULL, 1, 0, '2022-05-05 05:46:16', '2022-05-05 05:46:16', 1, NULL, 'comprobantes/comprobante_1619.pdf', NULL),
(1620, 77742230, 8071, '2023-07-09', '13:56:50', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-07-09 03:07:30', '2023-07-09 03:07:30', 1, NULL, 'comprobantes/comprobante_1620.pdf', NULL),
(1621, 77742230, 8071, '2022-05-23', '11:05:31', NULL, 1, 0, '2022-05-23 06:38:08', '2022-05-23 06:38:08', 1, NULL, 'comprobantes/comprobante_1621.pdf', NULL),
(1622, 77742230, 8071, '2024-02-08', '14:37:36', NULL, 0, 0, '2024-02-08 20:58:55', '2024-02-08 20:58:55', 1, NULL, 'comprobantes/comprobante_1622.pdf', NULL),
(1623, 77742230, 8071, '2022-11-29', '22:10:55', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-11-29 19:49:11', '2022-11-29 19:49:11', 1, NULL, 'comprobantes/comprobante_1623.pdf', NULL),
(1624, 77742230, 8071, '2022-05-07', '22:37:14', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2022-05-07 08:08:02', '2022-05-07 08:08:02', 1, NULL, 'comprobantes/comprobante_1624.pdf', NULL),
(1625, 77742230, 8071, '2023-07-12', '03:10:46', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-07-12 21:52:55', '2023-07-12 21:52:55', 1, NULL, 'comprobantes/comprobante_1625.pdf', NULL),
(1626, 77742230, 8071, '2024-12-26', '05:20:42', NULL, 1, 0, '2024-12-26 17:32:00', '2024-12-26 17:32:00', 1, NULL, 'comprobantes/comprobante_1626.pdf', NULL),
(1627, 77742230, 8071, '2024-06-28', '20:49:47', 'Analizar situaciones laborales recientes.', 1, 0, '2024-06-28 09:26:28', '2024-06-28 09:26:28', 1, NULL, 'comprobantes/comprobante_1627.pdf', NULL),
(1628, 77742230, 8071, '2022-03-03', '11:47:58', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2022-03-03 15:48:04', '2022-03-03 15:48:04', 0, NULL, NULL, NULL),
(1629, 77742230, 8071, '2024-01-21', '10:39:02', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-01-21 11:51:43', '2024-01-21 11:51:43', 1, NULL, 'comprobantes/comprobante_1629.pdf', NULL),
(1630, 77742230, 8071, '2022-03-30', '00:35:46', 'Analizar situaciones laborales recientes.', 1, 0, '2022-03-31 00:51:45', '2022-03-31 00:51:45', 1, NULL, 'comprobantes/comprobante_1630.pdf', NULL),
(1631, 77742230, 8071, '2022-05-20', '11:42:46', 'Analizar situaciones laborales recientes.', 1, 0, '2022-05-20 03:47:39', '2022-05-20 03:47:39', 1, NULL, 'comprobantes/comprobante_1631.pdf', NULL),
(1632, 77742230, 8071, '2023-07-19', '18:02:56', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-07-19 21:38:33', '2023-07-19 21:38:33', 1, NULL, 'comprobantes/comprobante_1632.pdf', NULL),
(1633, 77742230, 8071, '2024-06-30', '22:17:04', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-06-30 17:57:41', '2024-06-30 17:57:41', 1, NULL, 'comprobantes/comprobante_1633.pdf', NULL),
(1634, 77742230, 8071, '2022-12-02', '16:19:45', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-12-02 13:51:18', '2022-12-02 13:51:18', 1, NULL, 'comprobantes/comprobante_1634.pdf', NULL),
(1635, 77742230, 8071, '2022-07-28', '05:26:59', 'Identificar patrones de pensamiento negativos.', 0, 1, '2022-07-28 06:43:41', '2022-07-28 06:43:41', 1, NULL, 'comprobantes/comprobante_1635.pdf', NULL),
(1636, 77742230, 8071, '2024-08-04', '09:27:12', 'Practicar ejercicios de relajación.', 0, 0, '2024-08-04 12:28:36', '2024-08-04 12:28:36', 1, NULL, 'comprobantes/comprobante_1636.pdf', NULL),
(1637, 77742230, 8071, '2022-07-01', '11:05:02', 'Revisar compromisos establecidos anteriormente.', 0, 1, '2022-07-02 00:55:52', '2022-07-02 00:55:52', 1, NULL, 'comprobantes/comprobante_1637.pdf', NULL),
(1638, 77742230, 8071, '2024-01-13', '14:41:15', 'Analizar situaciones laborales recientes.', 1, 0, '2024-01-13 14:22:59', '2024-01-13 14:22:59', 1, NULL, 'comprobantes/comprobante_1638.pdf', NULL),
(1639, 77742230, 8071, '2023-01-09', '14:18:15', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-01-10 00:07:11', '2023-01-10 00:07:11', 1, NULL, 'comprobantes/comprobante_1639.pdf', NULL),
(1640, 77742230, 8071, '2023-08-08', '09:14:35', NULL, 1, 0, '2023-08-08 17:22:02', '2023-08-08 17:22:02', 1, NULL, 'comprobantes/comprobante_1640.pdf', NULL),
(1641, 62322325, 8071, '2024-01-08', '02:44:56', NULL, 1, 0, '2024-01-08 07:13:32', '2024-01-08 07:13:32', 1, NULL, 'comprobantes/comprobante_1641.pdf', NULL),
(1642, 62322325, 8071, '2024-03-08', '19:02:17', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-03-09 00:10:03', '2024-03-09 00:10:03', 1, NULL, 'comprobantes/comprobante_1642.pdf', NULL),
(1643, 62322325, 8071, '2022-07-05', '04:28:10', NULL, 1, 0, '2022-07-05 18:31:35', '2022-07-05 18:31:35', 1, NULL, 'comprobantes/comprobante_1643.pdf', NULL),
(1644, 62322325, 8071, '2024-08-03', '19:46:31', 'Revisar tarea asignada la semana pasada.', 0, 0, '2024-08-04 02:49:09', '2024-08-04 02:49:09', 0, NULL, NULL, NULL),
(1645, 62322325, 8071, '2024-10-24', '05:58:56', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-10-24 07:39:07', '2024-10-24 07:39:07', 0, NULL, NULL, NULL),
(1646, 62322325, 8071, '2024-03-26', '20:17:20', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-03-26 20:10:03', '2024-03-26 20:10:03', 0, NULL, NULL, NULL),
(1647, 62322325, 8071, '2023-02-24', '12:12:33', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-02-24 10:27:42', '2023-02-24 10:27:42', 1, NULL, 'comprobantes/comprobante_1647.pdf', NULL),
(1648, 62322325, 8071, '2024-05-08', '12:56:44', NULL, 1, 0, '2024-05-08 17:19:15', '2024-05-08 17:19:15', 1, NULL, 'comprobantes/comprobante_1648.pdf', NULL),
(1649, 62322325, 8071, '2023-09-06', '23:44:16', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-09-06 22:23:17', '2023-09-06 22:23:17', 1, NULL, 'comprobantes/comprobante_1649.pdf', NULL),
(1650, 62322325, 8071, '2023-07-19', '07:46:17', 'Practicar ejercicios de relajación.', 1, 0, '2023-07-19 05:10:12', '2023-07-19 05:10:12', 1, NULL, 'comprobantes/comprobante_1650.pdf', NULL),
(1651, 62322325, 8071, '2023-04-08', '08:01:09', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-04-09 00:37:51', '2023-04-09 00:37:51', 1, NULL, 'comprobantes/comprobante_1651.pdf', NULL),
(1652, 62322325, 8071, '2023-11-28', '18:43:20', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-11-28 14:39:38', '2023-11-28 14:39:38', 1, NULL, 'comprobantes/comprobante_1652.pdf', NULL),
(1653, 62322325, 8071, '2024-07-28', '16:06:02', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-07-28 22:48:09', '2024-07-28 22:48:09', 0, NULL, NULL, NULL),
(1654, 62322325, 8071, '2022-01-29', '08:32:20', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-01-29 12:13:16', '2022-01-29 12:13:16', 1, NULL, 'comprobantes/comprobante_1654.pdf', NULL),
(1655, 88110399, 8071, '2024-07-17', '09:46:43', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-07-17 17:50:30', '2024-07-17 17:50:30', 1, NULL, 'comprobantes/comprobante_1655.pdf', NULL),
(1656, 88110399, 8071, '2023-03-12', '02:26:31', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-03-12 03:20:49', '2023-03-12 03:20:49', 1, NULL, 'comprobantes/comprobante_1656.pdf', NULL),
(1657, 88110399, 8071, '2023-04-06', '23:50:42', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-04-06 11:08:47', '2023-04-06 11:08:47', 1, NULL, 'comprobantes/comprobante_1657.pdf', NULL),
(1658, 88110399, 8071, '2023-05-21', '01:25:31', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-05-21 19:18:05', '2023-05-21 19:18:05', 1, NULL, 'comprobantes/comprobante_1658.pdf', NULL),
(1659, 88110399, 8071, '2024-09-03', '08:08:33', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-09-03 08:39:53', '2024-09-03 08:39:53', 0, NULL, NULL, NULL),
(1660, 88110399, 8071, '2023-12-05', '22:41:19', NULL, 1, 0, '2023-12-05 20:31:06', '2023-12-05 20:31:06', 1, NULL, 'comprobantes/comprobante_1660.pdf', NULL),
(1661, 88110399, 8071, '2022-05-30', '01:57:30', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-05-30 10:04:10', '2022-05-30 10:04:10', 1, NULL, 'comprobantes/comprobante_1661.pdf', NULL),
(1662, 88110399, 8071, '2022-10-08', '08:45:44', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-10-09 00:19:56', '2022-10-09 00:19:56', 1, NULL, 'comprobantes/comprobante_1662.pdf', NULL),
(1663, 88110399, 8071, '2023-10-11', '15:00:36', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-10-11 12:45:45', '2023-10-11 12:45:45', 1, NULL, 'comprobantes/comprobante_1663.pdf', NULL),
(1664, 88110399, 8071, '2022-11-05', '03:37:09', 'Analizar situaciones laborales recientes.', 1, 0, '2022-11-05 14:40:37', '2022-11-05 14:40:37', 1, NULL, 'comprobantes/comprobante_1664.pdf', NULL),
(1665, 88110399, 8071, '2024-02-24', '13:52:42', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-02-24 04:53:04', '2024-02-24 04:53:04', 1, NULL, 'comprobantes/comprobante_1665.pdf', NULL),
(1666, 88110399, 8071, '2024-09-11', '03:41:12', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-09-12 01:41:38', '2024-09-12 01:41:38', 1, NULL, 'comprobantes/comprobante_1666.pdf', NULL),
(1667, 88110399, 8071, '2023-02-04', '01:22:40', NULL, 1, 0, '2023-02-04 20:03:38', '2023-02-04 20:03:38', 0, NULL, NULL, NULL),
(1668, 88110399, 8071, '2023-09-30', '15:38:01', 'Discutir avances en los objetivos establecidos.', 1, 1, '2023-09-30 11:26:40', '2023-09-30 11:26:40', 1, NULL, 'comprobantes/comprobante_1668.pdf', NULL),
(1669, 88110399, 8071, '2022-02-14', '07:45:48', NULL, 0, 0, '2022-02-15 02:26:15', '2022-02-15 02:26:15', 1, NULL, 'comprobantes/comprobante_1669.pdf', NULL),
(1670, 88110399, 8071, '2023-12-26', '06:23:05', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-12-26 12:49:13', '2023-12-26 12:49:13', 1, NULL, 'comprobantes/comprobante_1670.pdf', NULL),
(1671, 88110399, 8071, '2022-12-05', '18:59:55', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-12-05 04:30:17', '2022-12-05 04:30:17', 1, NULL, 'comprobantes/comprobante_1671.pdf', NULL),
(1672, 88110399, 8071, '2024-01-01', '17:58:47', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-01-01 07:40:03', '2024-01-01 07:40:03', 1, NULL, 'comprobantes/comprobante_1672.pdf', NULL),
(1673, 88110399, 8071, '2023-01-09', '17:57:09', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-01-09 09:25:07', '2023-01-09 09:25:07', 1, NULL, 'comprobantes/comprobante_1673.pdf', NULL),
(1674, 88110399, 8071, '2023-05-09', '03:45:12', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-05-09 18:14:58', '2023-05-09 18:14:58', 1, NULL, 'comprobantes/comprobante_1674.pdf', NULL),
(1675, 88110399, 8071, '2023-11-13', '15:22:33', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-11-13 23:20:24', '2023-11-13 23:20:24', 1, NULL, 'comprobantes/comprobante_1675.pdf', NULL),
(1676, 77756766, 3216, '2023-05-16', '14:07:43', NULL, 1, 0, '2023-05-16 04:22:51', '2023-05-16 04:22:51', 0, NULL, NULL, NULL),
(1677, 77756766, 3216, '2022-09-02', '14:12:19', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2022-09-02 13:47:29', '2022-09-02 13:47:29', 1, NULL, 'comprobantes/comprobante_1677.pdf', NULL),
(1678, 77756766, 3216, '2022-02-11', '11:50:21', 'Analizar situaciones laborales recientes.', 1, 0, '2022-02-11 11:39:27', '2022-02-11 11:39:27', 1, NULL, 'comprobantes/comprobante_1678.pdf', NULL),
(1679, 77756766, 3216, '2022-12-21', '11:35:35', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-12-21 16:59:07', '2022-12-21 16:59:07', 1, NULL, 'comprobantes/comprobante_1679.pdf', NULL),
(1680, 77756766, 3216, '2024-12-19', '05:12:58', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-12-19 20:58:41', '2024-12-19 20:58:41', 1, NULL, 'comprobantes/comprobante_1680.pdf', NULL),
(1681, 77756766, 3216, '2022-01-21', '10:07:51', NULL, 1, 0, '2022-01-22 02:20:51', '2022-01-22 02:20:51', 1, NULL, 'comprobantes/comprobante_1681.pdf', NULL),
(1682, 77756766, 3216, '2024-03-30', '04:50:29', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-03-30 22:32:30', '2024-03-30 22:32:30', 1, NULL, 'comprobantes/comprobante_1682.pdf', NULL),
(1683, 77756766, 3216, '2024-12-03', '02:04:48', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-12-03 04:55:44', '2024-12-03 04:55:44', 1, NULL, 'comprobantes/comprobante_1683.pdf', NULL),
(1684, 77756766, 3216, '2024-02-05', '11:13:36', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-02-05 17:12:33', '2024-02-05 17:12:33', 1, NULL, 'comprobantes/comprobante_1684.pdf', NULL),
(1685, 77756766, 3216, '2023-10-23', '15:14:24', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-10-23 14:53:01', '2023-10-23 14:53:01', 1, NULL, 'comprobantes/comprobante_1685.pdf', NULL),
(1686, 77756766, 3216, '2022-11-30', '18:37:29', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-11-30 15:22:20', '2022-11-30 15:22:20', 1, NULL, 'comprobantes/comprobante_1686.pdf', NULL),
(1687, 77756766, 3216, '2023-11-12', '17:54:04', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-11-12 18:52:47', '2023-11-12 18:52:47', 1, NULL, 'comprobantes/comprobante_1687.pdf', NULL),
(1688, 77756766, 3216, '2023-09-13', '03:42:35', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-09-13 19:21:40', '2023-09-13 19:21:40', 1, NULL, 'comprobantes/comprobante_1688.pdf', NULL),
(1689, 77756766, 3216, '2024-01-23', '10:55:47', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2024-01-24 02:40:17', '2024-01-24 02:40:17', 1, NULL, 'comprobantes/comprobante_1689.pdf', NULL),
(1690, 77756766, 3216, '2022-08-07', '19:58:28', 'Practicar ejercicios de relajación.', 1, 0, '2022-08-07 13:15:13', '2022-08-07 13:15:13', 1, NULL, 'comprobantes/comprobante_1690.pdf', NULL),
(1691, 77756766, 3216, '2022-08-25', '12:25:21', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-08-25 23:08:18', '2022-08-25 23:08:18', 1, NULL, 'comprobantes/comprobante_1691.pdf', NULL),
(1692, 77756766, 3216, '2022-10-01', '02:17:56', 'Reflexionar sobre los eventos de la semana.', 1, 1, '2022-10-02 01:39:36', '2022-10-02 01:39:36', 1, NULL, 'comprobantes/comprobante_1692.pdf', NULL),
(1693, 77756766, 3216, '2024-01-27', '05:59:46', NULL, 1, 0, '2024-01-27 23:36:31', '2024-01-27 23:36:31', 1, NULL, 'comprobantes/comprobante_1693.pdf', NULL),
(1694, 77756766, 3216, '2024-06-20', '00:15:50', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-06-20 04:08:01', '2024-06-20 04:08:01', 1, NULL, 'comprobantes/comprobante_1694.pdf', NULL),
(1695, 77756766, 3216, '2024-09-12', '09:16:34', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-09-12 06:55:36', '2024-09-12 06:55:36', 1, NULL, 'comprobantes/comprobante_1695.pdf', NULL),
(1696, 77756766, 3216, '2022-03-29', '00:52:20', NULL, 1, 0, '2022-03-29 14:43:12', '2022-03-29 14:43:12', 1, NULL, 'comprobantes/comprobante_1696.pdf', NULL),
(1697, 77756766, 3216, '2023-10-02', '23:26:24', 'Practicar ejercicios de relajación.', 1, 0, '2023-10-02 15:01:36', '2023-10-02 15:01:36', 0, NULL, NULL, NULL),
(1698, 63159870, 6189, '2023-02-23', '02:40:30', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-02-23 12:27:35', '2023-02-23 12:27:35', 1, NULL, 'comprobantes/comprobante_1698.pdf', NULL),
(1699, 63159870, 6189, '2022-06-17', '17:31:43', 'Practicar ejercicios de relajación.', 1, 0, '2022-06-18 02:11:01', '2022-06-18 02:11:01', 0, NULL, NULL, NULL),
(1700, 63159870, 6189, '2022-08-16', '01:58:15', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-08-16 08:02:45', '2022-08-16 08:02:45', 1, NULL, 'comprobantes/comprobante_1700.pdf', NULL),
(1701, 63159870, 6189, '2024-12-11', '09:04:54', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-12-11 12:41:43', '2024-12-11 12:41:43', 1, NULL, 'comprobantes/comprobante_1701.pdf', NULL),
(1702, 63159870, 6189, '2022-04-24', '16:56:17', 'Practicar ejercicios de relajación.', 1, 0, '2022-04-24 23:37:35', '2022-04-24 23:37:35', 1, NULL, 'comprobantes/comprobante_1702.pdf', NULL),
(1703, 63159870, 6189, '2022-03-29', '17:27:39', NULL, 0, 0, '2022-03-30 00:39:52', '2022-03-30 00:39:52', 1, NULL, 'comprobantes/comprobante_1703.pdf', NULL),
(1704, 63159870, 6189, '2024-04-03', '17:19:15', NULL, 1, 0, '2024-04-03 10:06:13', '2024-04-03 10:06:13', 1, NULL, 'comprobantes/comprobante_1704.pdf', NULL),
(1705, 63159870, 6189, '2022-05-10', '12:05:48', 'Practicar ejercicios de relajación.', 0, 0, '2022-05-10 11:15:12', '2022-05-10 11:15:12', 0, NULL, NULL, NULL),
(1706, 63159870, 6189, '2023-11-30', '11:25:26', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-11-30 18:11:10', '2023-11-30 18:11:10', 1, NULL, 'comprobantes/comprobante_1706.pdf', NULL),
(1707, 63159870, 6189, '2022-01-20', '20:31:23', NULL, 1, 0, '2022-01-20 05:40:38', '2022-01-20 05:40:38', 1, NULL, 'comprobantes/comprobante_1707.pdf', NULL),
(1708, 63159870, 6189, '2023-02-07', '21:34:16', NULL, 0, 0, '2023-02-07 09:19:14', '2023-02-07 09:19:14', 1, NULL, 'comprobantes/comprobante_1708.pdf', NULL),
(1709, 63159870, 6189, '2024-04-01', '12:59:04', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-04-01 17:55:59', '2024-04-01 17:55:59', 1, NULL, 'comprobantes/comprobante_1709.pdf', NULL),
(1710, 63159870, 6189, '2022-04-05', '21:03:32', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-04-05 03:41:57', '2022-04-05 03:41:57', 1, NULL, 'comprobantes/comprobante_1710.pdf', NULL),
(1711, 63159870, 6189, '2023-06-24', '14:06:56', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-06-24 12:31:42', '2023-06-24 12:31:42', 1, NULL, 'comprobantes/comprobante_1711.pdf', NULL),
(1712, 63159870, 6189, '2024-08-29', '15:09:53', NULL, 1, 1, '2024-08-29 18:08:49', '2024-08-29 18:08:49', 1, NULL, 'comprobantes/comprobante_1712.pdf', NULL),
(1713, 63159870, 6189, '2022-03-20', '11:11:07', NULL, 1, 1, '2022-03-20 18:05:21', '2022-03-20 18:05:21', 1, NULL, 'comprobantes/comprobante_1713.pdf', NULL),
(1714, 63159870, 6189, '2024-03-21', '05:45:57', NULL, 1, 1, '2024-03-21 09:51:23', '2024-03-21 09:51:23', 1, NULL, 'comprobantes/comprobante_1714.pdf', NULL),
(1715, 63159870, 6189, '2023-12-03', '10:18:57', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-12-03 05:39:56', '2023-12-03 05:39:56', 0, NULL, NULL, NULL),
(1716, 63159870, 6189, '2022-07-31', '17:41:34', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-07-31 06:15:54', '2022-07-31 06:15:54', 1, NULL, 'comprobantes/comprobante_1716.pdf', NULL),
(1717, 63159870, 6189, '2024-07-25', '03:29:09', 'Analizar situaciones laborales recientes.', 1, 0, '2024-07-26 01:21:42', '2024-07-26 01:21:42', 1, NULL, 'comprobantes/comprobante_1717.pdf', NULL),
(1718, 63159870, 6189, '2022-08-06', '01:43:10', NULL, 1, 0, '2022-08-06 16:07:34', '2022-08-06 16:07:34', 1, NULL, 'comprobantes/comprobante_1718.pdf', NULL),
(1719, 63159870, 6189, '2023-09-15', '02:51:48', NULL, 1, 0, '2023-09-15 06:50:28', '2023-09-15 06:50:28', 1, NULL, 'comprobantes/comprobante_1719.pdf', NULL),
(1720, 63159870, 6189, '2022-06-03', '02:47:05', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-06-03 03:09:51', '2022-06-03 03:09:51', 1, NULL, 'comprobantes/comprobante_1720.pdf', NULL),
(1721, 63159870, 6189, '2024-03-31', '03:26:53', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-03-31 19:41:29', '2024-03-31 19:41:29', 1, NULL, 'comprobantes/comprobante_1721.pdf', NULL),
(1722, 63159870, 6189, '2023-01-06', '00:02:45', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-01-06 10:55:40', '2023-01-06 10:55:40', 1, NULL, 'comprobantes/comprobante_1722.pdf', NULL),
(1723, 63159870, 6189, '2023-09-12', '01:10:33', NULL, 0, 0, '2023-09-13 02:03:29', '2023-09-13 02:03:29', 1, NULL, 'comprobantes/comprobante_1723.pdf', NULL),
(1724, 63159870, 6189, '2023-03-17', '23:11:49', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-03-17 06:46:57', '2023-03-17 06:46:57', 1, NULL, 'comprobantes/comprobante_1724.pdf', NULL),
(1725, 63159870, 6189, '2022-01-27', '19:20:43', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-01-27 15:05:14', '2022-01-27 15:05:14', 1, NULL, 'comprobantes/comprobante_1725.pdf', NULL),
(1726, 63159870, 6189, '2022-09-21', '18:35:30', 'Analizar situaciones laborales recientes.', 0, 0, '2022-09-21 09:56:18', '2022-09-21 09:56:18', 1, NULL, 'comprobantes/comprobante_1726.pdf', NULL),
(1727, 49991074, 6189, '2024-09-01', '20:35:30', 'Identificar patrones de pensamiento negativos.', 0, 0, '2024-09-01 17:06:42', '2024-09-01 17:06:42', 1, NULL, 'comprobantes/comprobante_1727.pdf', NULL),
(1728, 49991074, 6189, '2023-05-17', '22:16:54', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-05-17 17:00:12', '2023-05-17 17:00:12', 0, NULL, NULL, NULL),
(1729, 49991074, 6189, '2024-08-23', '16:01:59', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2024-08-24 01:07:19', '2024-08-24 01:07:19', 1, NULL, 'comprobantes/comprobante_1729.pdf', NULL),
(1730, 49991074, 6189, '2023-05-18', '07:36:12', 'Analizar situaciones laborales recientes.', 0, 0, '2023-05-18 08:14:16', '2023-05-18 08:14:16', 1, NULL, 'comprobantes/comprobante_1730.pdf', NULL),
(1731, 49991074, 6189, '2022-12-18', '06:27:41', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-12-18 04:43:41', '2022-12-18 04:43:41', 1, NULL, 'comprobantes/comprobante_1731.pdf', NULL),
(1732, 49991074, 6189, '2023-08-26', '02:09:38', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-08-26 08:24:23', '2023-08-26 08:24:23', 1, NULL, 'comprobantes/comprobante_1732.pdf', NULL),
(1733, 49991074, 6189, '2022-03-28', '14:59:55', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-03-28 16:09:25', '2022-03-28 16:09:25', 0, NULL, NULL, NULL),
(1734, 49991074, 6189, '2024-05-24', '08:06:34', 'Practicar ejercicios de relajación.', 1, 0, '2024-05-24 14:10:39', '2024-05-24 14:10:39', 1, NULL, 'comprobantes/comprobante_1734.pdf', NULL),
(1735, 49991074, 6189, '2023-05-27', '03:05:30', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-05-27 10:50:59', '2023-05-27 10:50:59', 1, NULL, 'comprobantes/comprobante_1735.pdf', NULL),
(1736, 49991074, 6189, '2024-01-26', '10:21:20', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-01-26 09:31:35', '2024-01-26 09:31:35', 1, NULL, 'comprobantes/comprobante_1736.pdf', NULL),
(1737, 49991074, 6189, '2024-09-21', '17:17:27', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-09-21 03:55:05', '2024-09-21 03:55:05', 1, NULL, 'comprobantes/comprobante_1737.pdf', NULL),
(1738, 49991074, 6189, '2024-07-04', '12:33:10', NULL, 1, 0, '2024-07-05 00:02:12', '2024-07-05 00:02:12', 1, NULL, 'comprobantes/comprobante_1738.pdf', NULL),
(1739, 49991074, 6189, '2022-02-02', '13:08:17', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-02-02 03:34:27', '2022-02-02 03:34:27', 1, NULL, 'comprobantes/comprobante_1739.pdf', NULL),
(1740, 49991074, 6189, '2023-05-16', '03:10:47', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-05-16 13:09:40', '2023-05-16 13:09:40', 1, NULL, 'comprobantes/comprobante_1740.pdf', NULL),
(1741, 14841318, 3504, '2023-04-29', '10:16:14', 'Analizar situaciones laborales recientes.', 1, 1, '2023-04-29 06:57:41', '2023-04-29 06:57:41', 1, NULL, 'comprobantes/comprobante_1741.pdf', NULL),
(1742, 14841318, 3504, '2022-04-12', '16:38:39', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-04-12 05:37:33', '2022-04-12 05:37:33', 1, NULL, 'comprobantes/comprobante_1742.pdf', NULL),
(1743, 14841318, 3504, '2024-10-01', '10:39:44', NULL, 0, 0, '2024-10-01 19:33:37', '2024-10-01 19:33:37', 1, NULL, 'comprobantes/comprobante_1743.pdf', NULL),
(1744, 14841318, 3504, '2024-11-28', '13:57:38', NULL, 1, 0, '2024-11-28 11:39:23', '2024-11-28 11:39:23', 1, NULL, 'comprobantes/comprobante_1744.pdf', NULL),
(1745, 14841318, 3504, '2024-08-13', '02:36:22', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-08-13 06:24:01', '2024-08-13 06:24:01', 1, NULL, 'comprobantes/comprobante_1745.pdf', NULL),
(1746, 14841318, 3504, '2023-08-24', '15:28:41', NULL, 1, 0, '2023-08-24 07:45:06', '2023-08-24 07:45:06', 1, NULL, 'comprobantes/comprobante_1746.pdf', NULL),
(1747, 14841318, 3504, '2024-04-16', '05:16:27', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-04-16 07:27:22', '2024-04-16 07:27:22', 1, NULL, 'comprobantes/comprobante_1747.pdf', NULL),
(1748, 14841318, 3504, '2022-07-11', '18:24:43', NULL, 1, 0, '2022-07-11 13:07:00', '2022-07-11 13:07:00', 1, NULL, 'comprobantes/comprobante_1748.pdf', NULL),
(1749, 14841318, 3504, '2023-12-06', '02:36:07', NULL, 1, 1, '2023-12-06 03:31:52', '2023-12-06 03:31:52', 1, NULL, 'comprobantes/comprobante_1749.pdf', NULL),
(1750, 14841318, 3504, '2022-09-02', '02:22:47', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-09-02 10:17:31', '2022-09-02 10:17:31', 1, NULL, 'comprobantes/comprobante_1750.pdf', NULL),
(1751, 14841318, 3504, '2022-02-12', '23:25:10', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-02-12 14:49:26', '2022-02-12 14:49:26', 0, NULL, NULL, NULL),
(1752, 14841318, 3504, '2024-11-03', '17:37:47', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-11-03 06:49:50', '2024-11-03 06:49:50', 1, NULL, 'comprobantes/comprobante_1752.pdf', NULL),
(1753, 14841318, 3504, '2024-08-22', '01:30:51', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2024-08-22 22:30:06', '2024-08-22 22:30:06', 1, NULL, 'comprobantes/comprobante_1753.pdf', NULL),
(1754, 14841318, 3504, '2023-04-10', '15:53:25', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-04-10 03:24:24', '2023-04-10 03:24:24', 1, NULL, 'comprobantes/comprobante_1754.pdf', NULL),
(1755, 14841318, 3504, '2022-05-31', '19:38:35', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-05-31 10:01:18', '2022-05-31 10:01:18', 1, NULL, 'comprobantes/comprobante_1755.pdf', NULL),
(1756, 79171088, 3504, '2022-01-24', '15:11:03', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-01-24 05:33:28', '2022-01-24 05:33:28', 1, NULL, 'comprobantes/comprobante_1756.pdf', NULL),
(1757, 79171088, 3504, '2022-04-01', '06:18:59', NULL, 1, 0, '2022-04-01 21:39:32', '2022-04-01 21:39:32', 1, NULL, 'comprobantes/comprobante_1757.pdf', NULL),
(1758, 79171088, 3504, '2024-10-23', '03:22:26', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-10-23 07:11:25', '2024-10-23 07:11:25', 1, NULL, 'comprobantes/comprobante_1758.pdf', NULL),
(1759, 79171088, 3504, '2024-09-27', '22:52:20', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-09-27 18:22:30', '2024-09-27 18:22:30', 1, NULL, 'comprobantes/comprobante_1759.pdf', NULL),
(1760, 79171088, 3504, '2022-01-28', '09:46:46', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-01-29 01:16:30', '2022-01-29 01:16:30', 1, NULL, 'comprobantes/comprobante_1760.pdf', NULL),
(1761, 79171088, 3504, '2024-10-28', '15:42:30', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-10-28 19:50:29', '2024-10-28 19:50:29', 1, NULL, 'comprobantes/comprobante_1761.pdf', NULL),
(1762, 79171088, 3504, '2024-06-05', '19:53:13', NULL, 0, 1, '2024-06-05 10:32:23', '2024-06-05 10:32:23', 1, NULL, 'comprobantes/comprobante_1762.pdf', NULL),
(1763, 79171088, 3504, '2023-05-23', '01:28:24', 'Analizar situaciones laborales recientes.', 0, 0, '2023-05-23 04:58:22', '2023-05-23 04:58:22', 1, NULL, 'comprobantes/comprobante_1763.pdf', NULL),
(1764, 79171088, 3504, '2024-05-16', '17:12:22', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-05-16 03:36:39', '2024-05-16 03:36:39', 1, NULL, 'comprobantes/comprobante_1764.pdf', NULL),
(1765, 79171088, 3504, '2022-12-16', '00:32:08', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-12-16 11:53:34', '2022-12-16 11:53:34', 1, NULL, 'comprobantes/comprobante_1765.pdf', NULL),
(1766, 79171088, 3504, '2023-10-06', '02:23:30', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2023-10-06 16:49:34', '2023-10-06 16:49:34', 0, NULL, NULL, NULL),
(1767, 79171088, 3504, '2024-11-09', '13:44:21', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-11-09 03:52:00', '2024-11-09 03:52:00', 1, NULL, 'comprobantes/comprobante_1767.pdf', NULL),
(1768, 79171088, 3504, '2023-11-05', '15:04:16', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-11-05 22:50:54', '2023-11-05 22:50:54', 1, NULL, 'comprobantes/comprobante_1768.pdf', NULL),
(1769, 79171088, 3504, '2023-03-13', '05:13:33', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-03-13 20:06:09', '2023-03-13 20:06:09', 1, NULL, 'comprobantes/comprobante_1769.pdf', NULL),
(1770, 79171088, 3504, '2022-12-20', '11:59:24', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-12-20 04:16:35', '2022-12-20 04:16:35', 1, NULL, 'comprobantes/comprobante_1770.pdf', NULL),
(1771, 79171088, 3504, '2023-01-30', '22:33:11', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-01-30 12:51:03', '2023-01-30 12:51:03', 1, NULL, 'comprobantes/comprobante_1771.pdf', NULL),
(1772, 79171088, 3504, '2023-08-09', '07:02:52', 'Practicar ejercicios de relajación.', 1, 1, '2023-08-09 08:33:10', '2023-08-09 08:33:10', 1, NULL, 'comprobantes/comprobante_1772.pdf', NULL),
(1773, 24722794, 3504, '2023-02-06', '04:00:58', NULL, 1, 0, '2023-02-06 17:23:44', '2023-02-06 17:23:44', 1, NULL, 'comprobantes/comprobante_1773.pdf', NULL),
(1774, 24722794, 3504, '2022-01-30', '06:45:35', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2022-01-30 18:21:54', '2022-01-30 18:21:54', 0, NULL, NULL, NULL),
(1775, 24722794, 3504, '2022-10-22', '07:22:22', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-10-23 00:37:19', '2022-10-23 00:37:19', 0, NULL, NULL, NULL),
(1776, 24722794, 3504, '2022-12-14', '18:52:36', NULL, 0, 1, '2022-12-14 04:34:43', '2022-12-14 04:34:43', 1, NULL, 'comprobantes/comprobante_1776.pdf', NULL),
(1777, 24722794, 3504, '2022-09-23', '03:00:37', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-09-23 11:41:09', '2022-09-23 11:41:09', 1, NULL, 'comprobantes/comprobante_1777.pdf', NULL),
(1778, 24722794, 3504, '2022-11-17', '13:34:44', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-11-17 18:39:59', '2022-11-17 18:39:59', 1, NULL, 'comprobantes/comprobante_1778.pdf', NULL),
(1779, 24722794, 3504, '2023-01-03', '09:39:24', NULL, 1, 0, '2023-01-03 07:10:04', '2023-01-03 07:10:04', 1, NULL, 'comprobantes/comprobante_1779.pdf', NULL),
(1780, 24722794, 3504, '2023-09-15', '09:40:30', 'Practicar ejercicios de relajación.', 1, 0, '2023-09-15 11:38:46', '2023-09-15 11:38:46', 1, NULL, 'comprobantes/comprobante_1780.pdf', NULL),
(1781, 24722794, 3504, '2022-04-21', '18:46:57', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-04-21 19:08:53', '2022-04-21 19:08:53', 1, NULL, 'comprobantes/comprobante_1781.pdf', NULL),
(1782, 24722794, 3504, '2023-11-13', '21:42:13', NULL, 0, 0, '2023-11-13 12:24:03', '2023-11-13 12:24:03', 1, NULL, 'comprobantes/comprobante_1782.pdf', NULL),
(1783, 24722794, 3504, '2024-09-18', '07:41:29', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-09-19 00:40:03', '2024-09-19 00:40:03', 1, NULL, 'comprobantes/comprobante_1783.pdf', NULL),
(1784, 24722794, 3504, '2022-07-11', '14:48:02', NULL, 1, 0, '2022-07-12 01:58:08', '2022-07-12 01:58:08', 1, NULL, 'comprobantes/comprobante_1784.pdf', NULL),
(1785, 24722794, 3504, '2023-07-26', '04:08:38', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-07-26 16:41:04', '2023-07-26 16:41:04', 1, NULL, 'comprobantes/comprobante_1785.pdf', NULL),
(1786, 24722794, 3504, '2023-08-15', '10:39:42', 'Practicar ejercicios de relajación.', 0, 0, '2023-08-15 22:56:10', '2023-08-15 22:56:10', 1, NULL, 'comprobantes/comprobante_1786.pdf', NULL),
(1787, 24722794, 3504, '2023-03-15', '06:49:12', NULL, 1, 0, '2023-03-15 03:13:04', '2023-03-15 03:13:04', 1, NULL, 'comprobantes/comprobante_1787.pdf', NULL),
(1788, 24722794, 3504, '2023-01-19', '01:28:11', NULL, 1, 0, '2023-01-19 10:02:12', '2023-01-19 10:02:12', 1, NULL, 'comprobantes/comprobante_1788.pdf', NULL),
(1789, 14841318, 3599, '2022-03-23', '08:41:55', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-03-23 17:35:04', '2022-03-23 17:35:04', 1, NULL, 'comprobantes/comprobante_1789.pdf', NULL),
(1790, 14841318, 3599, '2024-06-11', '00:43:52', 'Revisar tarea asignada la semana pasada.', 1, 0, '2024-06-11 12:47:44', '2024-06-11 12:47:44', 1, NULL, 'comprobantes/comprobante_1790.pdf', NULL),
(1791, 14841318, 3599, '2023-12-17', '09:36:04', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-12-17 05:08:47', '2023-12-17 05:08:47', 1, NULL, 'comprobantes/comprobante_1791.pdf', NULL),
(1792, 14841318, 3599, '2023-06-27', '19:51:50', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2023-06-27 18:07:58', '2023-06-27 18:07:58', 1, NULL, 'comprobantes/comprobante_1792.pdf', NULL),
(1793, 14841318, 3599, '2024-03-11', '22:53:06', 'Practicar ejercicios de relajación.', 1, 0, '2024-03-12 01:17:18', '2024-03-12 01:17:18', 0, NULL, NULL, NULL),
(1794, 14841318, 3599, '2022-04-28', '12:56:28', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-04-28 19:23:59', '2022-04-28 19:23:59', 0, NULL, NULL, NULL),
(1795, 14841318, 3599, '2024-07-28', '21:23:27', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-07-28 07:24:43', '2024-07-28 07:24:43', 1, NULL, 'comprobantes/comprobante_1795.pdf', NULL),
(1796, 14841318, 3599, '2023-06-21', '13:21:27', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-06-22 00:05:51', '2023-06-22 00:05:51', 1, NULL, 'comprobantes/comprobante_1796.pdf', NULL),
(1797, 14841318, 3599, '2022-12-01', '02:36:07', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-12-02 01:07:20', '2022-12-02 01:07:20', 1, NULL, 'comprobantes/comprobante_1797.pdf', NULL),
(1798, 14841318, 3599, '2023-05-29', '02:08:28', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-05-29 07:53:49', '2023-05-29 07:53:49', 1, NULL, 'comprobantes/comprobante_1798.pdf', NULL),
(1799, 14841318, 3599, '2023-08-08', '22:04:01', 'Analizar situaciones laborales recientes.', 1, 0, '2023-08-08 04:08:05', '2023-08-08 04:08:05', 1, NULL, 'comprobantes/comprobante_1799.pdf', NULL),
(1800, 14841318, 3599, '2023-07-05', '17:45:08', 'Trabajar en estrategias de manejo de ansiedad.', 0, 1, '2023-07-05 08:36:55', '2023-07-05 08:36:55', 1, NULL, 'comprobantes/comprobante_1800.pdf', NULL),
(1801, 14841318, 3599, '2024-01-24', '02:54:16', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-01-24 19:52:02', '2024-01-24 19:52:02', 1, NULL, 'comprobantes/comprobante_1801.pdf', NULL),
(1802, 14841318, 3599, '2023-05-31', '00:15:41', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2023-05-31 17:36:22', '2023-05-31 17:36:22', 1, NULL, 'comprobantes/comprobante_1802.pdf', NULL),
(1803, 14841318, 3599, '2024-07-08', '22:32:24', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-07-08 09:34:11', '2024-07-08 09:34:11', 1, NULL, 'comprobantes/comprobante_1803.pdf', NULL),
(1804, 14841318, 3599, '2024-07-26', '21:41:38', NULL, 1, 0, '2024-07-26 12:54:49', '2024-07-26 12:54:49', 1, NULL, 'comprobantes/comprobante_1804.pdf', NULL),
(1805, 14841318, 3599, '2024-10-19', '09:26:23', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2024-10-19 11:58:38', '2024-10-19 11:58:38', 1, NULL, 'comprobantes/comprobante_1805.pdf', NULL),
(1806, 14841318, 3599, '2023-11-09', '16:09:18', NULL, 0, 0, '2023-11-09 10:47:18', '2023-11-09 10:47:18', 1, NULL, 'comprobantes/comprobante_1806.pdf', NULL),
(1807, 14841318, 3599, '2022-10-23', '05:19:01', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-10-23 17:38:17', '2022-10-23 17:38:17', 1, NULL, 'comprobantes/comprobante_1807.pdf', NULL),
(1808, 14841318, 3599, '2022-01-29', '00:24:12', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-01-29 06:28:53', '2022-01-29 06:28:53', 0, NULL, NULL, NULL),
(1809, 14841318, 3599, '2024-02-29', '21:41:26', 'Practicar ejercicios de relajación.', 0, 0, '2024-02-29 04:25:35', '2024-02-29 04:25:35', 1, NULL, 'comprobantes/comprobante_1809.pdf', NULL),
(1810, 14841318, 3599, '2023-02-13', '12:38:50', 'Discutir avances en los objetivos establecidos.', 0, 0, '2023-02-13 22:45:48', '2023-02-13 22:45:48', 1, NULL, 'comprobantes/comprobante_1810.pdf', NULL),
(1811, 14841318, 3599, '2023-06-04', '12:56:53', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-06-04 21:43:55', '2023-06-04 21:43:55', 1, NULL, 'comprobantes/comprobante_1811.pdf', NULL),
(1812, 14841318, 3599, '2024-12-11', '13:05:19', NULL, 0, 0, '2024-12-11 13:54:56', '2024-12-11 13:54:56', 1, NULL, 'comprobantes/comprobante_1812.pdf', NULL),
(1813, 14841318, 3599, '2022-04-18', '17:25:45', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-04-18 03:21:20', '2022-04-18 03:21:20', 1, NULL, 'comprobantes/comprobante_1813.pdf', NULL),
(1814, 14841318, 3599, '2022-09-09', '21:14:59', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-09-09 07:16:21', '2022-09-09 07:16:21', 1, NULL, 'comprobantes/comprobante_1814.pdf', NULL),
(1815, 14841318, 3599, '2022-02-05', '23:02:02', NULL, 1, 0, '2022-02-05 08:58:53', '2022-02-05 08:58:53', 1, NULL, 'comprobantes/comprobante_1815.pdf', NULL),
(1816, 74642501, 3599, '2024-03-02', '13:42:53', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-03-02 11:29:38', '2024-03-02 11:29:38', 1, NULL, 'comprobantes/comprobante_1816.pdf', NULL),
(1817, 74642501, 3599, '2023-10-21', '18:11:58', NULL, 1, 0, '2023-10-22 02:53:39', '2023-10-22 02:53:39', 1, NULL, 'comprobantes/comprobante_1817.pdf', NULL),
(1818, 74642501, 3599, '2023-08-27', '11:55:10', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-08-27 06:21:38', '2023-08-27 06:21:38', 0, NULL, NULL, NULL),
(1819, 74642501, 3599, '2022-04-07', '09:42:36', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-04-07 22:30:05', '2022-04-07 22:30:05', 1, NULL, 'comprobantes/comprobante_1819.pdf', NULL),
(1820, 74642501, 3599, '2022-09-16', '15:14:37', NULL, 1, 0, '2022-09-16 06:11:25', '2022-09-16 06:11:25', 0, NULL, NULL, NULL),
(1821, 74642501, 3599, '2024-04-18', '11:43:51', NULL, 0, 0, '2024-04-18 08:46:08', '2024-04-18 08:46:08', 1, NULL, 'comprobantes/comprobante_1821.pdf', NULL),
(1822, 74642501, 3599, '2022-10-24', '03:38:06', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-10-24 17:01:28', '2022-10-24 17:01:28', 1, NULL, 'comprobantes/comprobante_1822.pdf', NULL),
(1823, 74642501, 3599, '2024-07-23', '22:43:59', NULL, 1, 0, '2024-07-24 01:25:25', '2024-07-24 01:25:25', 1, NULL, 'comprobantes/comprobante_1823.pdf', NULL),
(1824, 74642501, 3599, '2023-04-02', '05:09:44', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-04-03 02:43:03', '2023-04-03 02:43:03', 1, NULL, 'comprobantes/comprobante_1824.pdf', NULL),
(1825, 74642501, 3599, '2023-08-24', '14:41:52', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-08-24 20:17:44', '2023-08-24 20:17:44', 1, NULL, 'comprobantes/comprobante_1825.pdf', NULL),
(1826, 74642501, 3599, '2023-08-12', '16:15:29', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-08-12 15:14:13', '2023-08-12 15:14:13', 1, NULL, 'comprobantes/comprobante_1826.pdf', NULL),
(1827, 74642501, 3599, '2023-08-12', '07:36:51', NULL, 1, 0, '2023-08-12 03:35:28', '2023-08-12 03:35:28', 1, NULL, 'comprobantes/comprobante_1827.pdf', NULL),
(1828, 74642501, 3599, '2023-04-20', '23:41:50', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-04-20 19:50:48', '2023-04-20 19:50:48', 1, NULL, 'comprobantes/comprobante_1828.pdf', NULL),
(1829, 74642501, 3599, '2023-07-15', '06:32:17', 'Revisar tarea asignada la semana pasada.', 0, 0, '2023-07-15 09:30:45', '2023-07-15 09:30:45', 1, NULL, 'comprobantes/comprobante_1829.pdf', NULL),
(1830, 74642501, 3599, '2023-10-12', '09:46:54', NULL, 1, 1, '2023-10-13 00:51:25', '2023-10-13 00:51:25', 1, NULL, 'comprobantes/comprobante_1830.pdf', NULL),
(1831, 74642501, 3599, '2024-12-07', '17:10:17', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-12-08 00:01:18', '2024-12-08 00:01:18', 0, NULL, NULL, NULL),
(1832, 22778682, 3731, '2023-11-07', '06:26:16', NULL, 0, 0, '2023-11-07 07:22:32', '2023-11-07 07:22:32', 1, NULL, 'comprobantes/comprobante_1832.pdf', NULL),
(1833, 22778682, 3731, '2023-06-12', '06:25:06', NULL, 1, 0, '2023-06-12 07:06:21', '2023-06-12 07:06:21', 1, NULL, 'comprobantes/comprobante_1833.pdf', NULL),
(1834, 22778682, 3731, '2024-10-06', '13:56:34', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-10-06 03:12:21', '2024-10-06 03:12:21', 1, NULL, 'comprobantes/comprobante_1834.pdf', NULL),
(1835, 22778682, 3731, '2024-01-27', '20:10:30', 'Identificar patrones de pensamiento negativos.', 1, 1, '2024-01-27 21:45:25', '2024-01-27 21:45:25', 1, NULL, 'comprobantes/comprobante_1835.pdf', NULL),
(1836, 22778682, 3731, '2023-08-12', '21:21:04', NULL, 1, 0, '2023-08-12 22:18:11', '2023-08-12 22:18:11', 1, NULL, 'comprobantes/comprobante_1836.pdf', NULL),
(1837, 22778682, 3731, '2024-03-30', '05:48:55', NULL, 0, 1, '2024-03-30 14:33:22', '2024-03-30 14:33:22', 1, NULL, 'comprobantes/comprobante_1837.pdf', NULL),
(1838, 22778682, 3731, '2024-05-24', '03:25:24', NULL, 1, 1, '2024-05-25 01:16:21', '2024-05-25 01:16:21', 1, NULL, 'comprobantes/comprobante_1838.pdf', NULL),
(1839, 22778682, 3731, '2024-02-19', '13:58:59', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2024-02-19 11:25:16', '2024-02-19 11:25:16', 1, NULL, 'comprobantes/comprobante_1839.pdf', NULL),
(1840, 22778682, 3731, '2023-08-24', '01:34:48', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-08-24 13:48:54', '2023-08-24 13:48:54', 1, NULL, 'comprobantes/comprobante_1840.pdf', NULL),
(1841, 22778682, 3731, '2024-06-11', '14:58:23', 'Practicar ejercicios de relajación.', 1, 0, '2024-06-11 21:15:37', '2024-06-11 21:15:37', 1, NULL, 'comprobantes/comprobante_1841.pdf', NULL),
(1842, 24722794, 3731, '2024-01-06', '22:19:49', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2024-01-07 00:01:34', '2024-01-07 00:01:34', 1, NULL, 'comprobantes/comprobante_1842.pdf', NULL),
(1843, 24722794, 3731, '2023-03-03', '02:29:43', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-03-03 14:37:39', '2023-03-03 14:37:39', 1, NULL, 'comprobantes/comprobante_1843.pdf', NULL),
(1844, 24722794, 3731, '2024-08-06', '22:00:23', NULL, 0, 0, '2024-08-06 21:34:13', '2024-08-06 21:34:13', 1, NULL, 'comprobantes/comprobante_1844.pdf', NULL),
(1845, 24722794, 3731, '2022-01-14', '09:39:22', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-01-14 19:45:48', '2022-01-14 19:45:48', 0, NULL, NULL, NULL),
(1846, 24722794, 3731, '2024-04-22', '20:05:07', 'Analizar situaciones laborales recientes.', 1, 0, '2024-04-22 21:23:36', '2024-04-22 21:23:36', 1, NULL, 'comprobantes/comprobante_1846.pdf', NULL),
(1847, 24722794, 3731, '2022-05-17', '13:37:44', NULL, 1, 0, '2022-05-17 04:12:28', '2022-05-17 04:12:28', 1, NULL, 'comprobantes/comprobante_1847.pdf', NULL),
(1848, 24722794, 3731, '2023-11-06', '19:56:45', 'Analizar situaciones laborales recientes.', 0, 0, '2023-11-07 01:20:55', '2023-11-07 01:20:55', 1, NULL, 'comprobantes/comprobante_1848.pdf', NULL),
(1849, 24722794, 3731, '2023-08-04', '03:29:36', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-08-04 03:39:47', '2023-08-04 03:39:47', 1, NULL, 'comprobantes/comprobante_1849.pdf', NULL),
(1850, 24722794, 3731, '2024-09-10', '20:50:44', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-09-10 07:09:06', '2024-09-10 07:09:06', 1, NULL, 'comprobantes/comprobante_1850.pdf', NULL),
(1851, 24722794, 3731, '2022-01-08', '12:07:56', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-01-09 00:53:21', '2022-01-09 00:53:21', 1, NULL, 'comprobantes/comprobante_1851.pdf', NULL),
(1852, 24722794, 3731, '2022-05-07', '02:24:01', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-05-07 22:27:59', '2022-05-07 22:27:59', 1, NULL, 'comprobantes/comprobante_1852.pdf', NULL),
(1853, 24722794, 3731, '2024-12-17', '06:39:40', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-12-17 16:26:29', '2024-12-17 16:26:29', 1, NULL, 'comprobantes/comprobante_1853.pdf', NULL),
(1854, 24722794, 3731, '2024-07-03', '17:30:35', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2024-07-03 21:11:25', '2024-07-03 21:11:25', 1, NULL, 'comprobantes/comprobante_1854.pdf', NULL),
(1855, 24722794, 3731, '2022-07-04', '00:41:15', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-07-04 11:13:24', '2022-07-04 11:13:24', 1, NULL, 'comprobantes/comprobante_1855.pdf', NULL),
(1856, 24722794, 3731, '2023-05-05', '09:19:02', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-05-05 22:56:19', '2023-05-05 22:56:19', 1, NULL, 'comprobantes/comprobante_1856.pdf', NULL),
(1857, 24722794, 3731, '2023-04-09', '06:34:37', 'Practicar ejercicios de relajación.', 0, 0, '2023-04-09 21:59:14', '2023-04-09 21:59:14', 1, NULL, 'comprobantes/comprobante_1857.pdf', NULL),
(1858, 24722794, 3731, '2023-07-30', '21:54:36', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2023-07-30 16:58:28', '2023-07-30 16:58:28', 1, NULL, 'comprobantes/comprobante_1858.pdf', NULL),
(1859, 24722794, 3731, '2022-08-02', '06:32:44', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-08-03 00:30:32', '2022-08-03 00:30:32', 0, NULL, NULL, NULL),
(1860, 14841318, 3731, '2022-03-21', '09:41:07', 'Analizar situaciones laborales recientes.', 0, 0, '2022-03-21 05:43:28', '2022-03-21 05:43:28', 1, NULL, 'comprobantes/comprobante_1860.pdf', NULL),
(1861, 14841318, 3731, '2023-12-10', '23:38:50', NULL, 0, 0, '2023-12-10 13:34:31', '2023-12-10 13:34:31', 0, NULL, NULL, NULL),
(1862, 14841318, 3731, '2023-04-27', '06:36:41', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-04-27 07:33:43', '2023-04-27 07:33:43', 1, NULL, 'comprobantes/comprobante_1862.pdf', NULL),
(1863, 14841318, 3731, '2024-05-04', '04:49:21', 'Analizar situaciones laborales recientes.', 1, 0, '2024-05-04 22:47:08', '2024-05-04 22:47:08', 0, NULL, NULL, NULL),
(1864, 14841318, 3731, '2024-05-28', '10:29:38', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-05-28 14:16:47', '2024-05-28 14:16:47', 1, NULL, 'comprobantes/comprobante_1864.pdf', NULL),
(1865, 14841318, 3731, '2024-09-16', '18:15:37', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-09-16 22:15:52', '2024-09-16 22:15:52', 1, NULL, 'comprobantes/comprobante_1865.pdf', NULL),
(1866, 14841318, 3731, '2023-06-04', '21:12:20', 'Discutir avances en los objetivos establecidos.', 0, 1, '2023-06-04 17:45:38', '2023-06-04 17:45:38', 1, NULL, 'comprobantes/comprobante_1866.pdf', NULL),
(1867, 14841318, 3731, '2024-12-09', '18:18:03', 'Explorar posibles soluciones a los conflictos actuales.', 0, 1, '2024-12-09 05:25:09', '2024-12-09 05:25:09', 1, NULL, 'comprobantes/comprobante_1867.pdf', NULL);
INSERT INTO `sesion` (`id_sesion`, `dni_paciente`, `matricula_psicologo`, `fecha`, `hora`, `comentario`, `presencial`, `cancelado`, `created_at`, `updated_at`, `pago`, `payment_id`, `comprobante_path`, `fecha_pago`) VALUES
(1868, 14841318, 3731, '2024-03-29', '13:18:09', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-03-29 14:07:23', '2024-03-29 14:07:23', 1, NULL, 'comprobantes/comprobante_1868.pdf', NULL),
(1869, 14841318, 3731, '2022-05-21', '02:34:37', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-05-21 03:01:17', '2022-05-21 03:01:17', 1, NULL, 'comprobantes/comprobante_1869.pdf', NULL),
(1870, 14841318, 3731, '2024-09-26', '20:10:23', 'Revisar compromisos establecidos anteriormente.', 0, 1, '2024-09-26 21:18:24', '2024-09-26 21:18:24', 0, NULL, NULL, NULL),
(1871, 14841318, 3731, '2022-01-30', '16:01:53', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-01-30 11:33:26', '2022-01-30 11:33:26', 0, NULL, NULL, NULL),
(1872, 14841318, 3731, '2024-01-26', '07:05:08', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-01-26 19:09:21', '2024-01-26 19:09:21', 1, NULL, 'comprobantes/comprobante_1872.pdf', NULL),
(1873, 14841318, 3731, '2023-02-01', '01:53:20', 'Analizar situaciones laborales recientes.', 1, 0, '2023-02-02 02:38:34', '2023-02-02 02:38:34', 1, NULL, 'comprobantes/comprobante_1873.pdf', NULL),
(1874, 14841318, 3731, '2022-09-05', '11:21:31', 'Analizar situaciones laborales recientes.', 0, 0, '2022-09-05 13:54:22', '2022-09-05 13:54:22', 1, NULL, 'comprobantes/comprobante_1874.pdf', NULL),
(1875, 14841318, 3731, '2022-04-16', '07:55:52', 'Discutir avances en los objetivos establecidos.', 0, 0, '2022-04-16 03:41:02', '2022-04-16 03:41:02', 1, NULL, 'comprobantes/comprobante_1875.pdf', NULL),
(1876, 14841318, 3731, '2022-08-01', '20:42:28', NULL, 0, 0, '2022-08-01 05:28:23', '2022-08-01 05:28:23', 1, NULL, 'comprobantes/comprobante_1876.pdf', NULL),
(1877, 14841318, 3731, '2024-11-22', '05:40:14', NULL, 1, 0, '2024-11-22 14:09:10', '2024-11-22 14:09:10', 1, NULL, 'comprobantes/comprobante_1877.pdf', NULL),
(1878, 14841318, 3731, '2024-02-19', '05:05:28', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-02-19 07:01:58', '2024-02-19 07:01:58', 1, NULL, 'comprobantes/comprobante_1878.pdf', NULL),
(1879, 14841318, 3731, '2022-06-09', '20:38:29', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2022-06-09 21:45:20', '2022-06-09 21:45:20', 1, NULL, 'comprobantes/comprobante_1879.pdf', NULL),
(1880, 88110399, 6110, '2022-04-12', '03:05:13', NULL, 1, 0, '2022-04-12 09:55:06', '2022-04-12 09:55:06', 1, NULL, 'comprobantes/comprobante_1880.pdf', NULL),
(1881, 88110399, 6110, '2024-05-02', '18:53:02', NULL, 1, 0, '2024-05-02 12:27:32', '2024-05-02 12:27:32', 0, NULL, NULL, NULL),
(1882, 88110399, 6110, '2024-10-21', '09:52:12', NULL, 1, 0, '2024-10-21 12:32:59', '2024-10-21 12:32:59', 1, NULL, 'comprobantes/comprobante_1882.pdf', NULL),
(1883, 88110399, 6110, '2023-05-03', '04:11:35', 'Evaluar progreso en la comunicación interpersonal.', 1, 1, '2023-05-03 18:02:50', '2023-05-03 18:02:50', 0, NULL, NULL, NULL),
(1884, 88110399, 6110, '2022-02-20', '17:58:28', 'Analizar situaciones laborales recientes.', 0, 0, '2022-02-20 07:48:45', '2022-02-20 07:48:45', 1, NULL, 'comprobantes/comprobante_1884.pdf', NULL),
(1885, 88110399, 6110, '2022-01-23', '07:05:21', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-01-23 12:28:12', '2022-01-23 12:28:12', 1, NULL, 'comprobantes/comprobante_1885.pdf', NULL),
(1886, 88110399, 6110, '2024-08-24', '09:41:34', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-08-24 22:02:04', '2024-08-24 22:02:04', 0, NULL, NULL, NULL),
(1887, 88110399, 6110, '2022-03-10', '11:03:05', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-03-10 13:09:42', '2022-03-10 13:09:42', 1, NULL, 'comprobantes/comprobante_1887.pdf', NULL),
(1888, 88110399, 6110, '2022-09-01', '17:41:31', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-09-02 00:35:44', '2022-09-02 00:35:44', 1, NULL, 'comprobantes/comprobante_1888.pdf', NULL),
(1889, 88110399, 6110, '2024-09-11', '11:24:48', 'Analizar situaciones laborales recientes.', 1, 0, '2024-09-11 18:15:24', '2024-09-11 18:15:24', 0, NULL, NULL, NULL),
(1890, 88110399, 6110, '2022-02-10', '02:38:15', 'Analizar situaciones laborales recientes.', 1, 0, '2022-02-10 22:58:28', '2022-02-10 22:58:28', 1, NULL, 'comprobantes/comprobante_1890.pdf', NULL),
(1891, 88110399, 6110, '2023-10-31', '02:30:59', 'Reflexionar sobre los eventos de la semana.', 1, 1, '2023-10-31 11:47:15', '2023-10-31 11:47:15', 1, NULL, 'comprobantes/comprobante_1891.pdf', NULL),
(1892, 88110399, 6110, '2023-09-05', '13:45:52', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-09-05 07:25:02', '2023-09-05 07:25:02', 0, NULL, NULL, NULL),
(1893, 88110399, 6110, '2022-05-16', '18:50:28', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-05-16 10:02:37', '2022-05-16 10:02:37', 1, NULL, 'comprobantes/comprobante_1893.pdf', NULL),
(1894, 88110399, 6110, '2023-05-27', '04:16:56', NULL, 1, 0, '2023-05-27 14:04:25', '2023-05-27 14:04:25', 1, NULL, 'comprobantes/comprobante_1894.pdf', NULL),
(1895, 88110399, 6110, '2023-10-21', '13:01:22', 'Revisar compromisos establecidos anteriormente.', 1, 1, '2023-10-21 08:46:05', '2023-10-21 08:46:05', 1, NULL, 'comprobantes/comprobante_1895.pdf', NULL),
(1896, 88110399, 6110, '2023-09-23', '05:18:04', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-09-23 13:42:58', '2023-09-23 13:42:58', 1, NULL, 'comprobantes/comprobante_1896.pdf', NULL),
(1897, 88110399, 6110, '2023-12-14', '01:55:47', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-12-14 13:43:37', '2023-12-14 13:43:37', 1, NULL, 'comprobantes/comprobante_1897.pdf', NULL),
(1898, 88110399, 6110, '2022-11-27', '01:35:11', NULL, 1, 0, '2022-11-27 08:09:18', '2022-11-27 08:09:18', 1, NULL, 'comprobantes/comprobante_1898.pdf', NULL),
(1899, 88110399, 6110, '2022-11-02', '08:50:54', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-11-02 21:00:32', '2022-11-02 21:00:32', 1, NULL, 'comprobantes/comprobante_1899.pdf', NULL),
(1900, 88110399, 6110, '2023-03-06', '10:45:13', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-03-06 06:19:59', '2023-03-06 06:19:59', 1, NULL, 'comprobantes/comprobante_1900.pdf', NULL),
(1901, 88110399, 6110, '2022-03-23', '03:33:41', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2022-03-23 12:57:48', '2022-03-23 12:57:48', 1, NULL, 'comprobantes/comprobante_1901.pdf', NULL),
(1902, 88110399, 6110, '2024-11-20', '00:12:48', 'Discutir avances en los objetivos establecidos.', 1, 0, '2024-11-20 07:21:14', '2024-11-20 07:21:14', 1, NULL, 'comprobantes/comprobante_1902.pdf', NULL),
(1903, 88110399, 6110, '2024-12-26', '16:05:08', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-12-27 02:36:05', '2024-12-27 02:36:05', 1, NULL, 'comprobantes/comprobante_1903.pdf', NULL),
(1904, 88110399, 6110, '2022-01-17', '18:04:48', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-01-17 19:58:52', '2022-01-17 19:58:52', 1, NULL, 'comprobantes/comprobante_1904.pdf', NULL),
(1905, 88110399, 6110, '2024-01-09', '05:53:29', 'Discutir avances en los objetivos establecidos.', 0, 0, '2024-01-09 21:10:47', '2024-01-09 21:10:47', 1, NULL, 'comprobantes/comprobante_1905.pdf', NULL),
(1906, 88110399, 6110, '2023-05-02', '05:04:37', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-05-02 08:44:08', '2023-05-02 08:44:08', 1, NULL, 'comprobantes/comprobante_1906.pdf', NULL),
(1907, 88110399, 6110, '2023-09-12', '03:57:35', 'Explorar posibles soluciones a los conflictos actuales.', 0, 0, '2023-09-12 15:25:17', '2023-09-12 15:25:17', 0, NULL, NULL, NULL),
(1908, 22778682, 6110, '2022-10-04', '12:09:55', NULL, 1, 0, '2022-10-04 06:20:52', '2022-10-04 06:20:52', 1, NULL, 'comprobantes/comprobante_1908.pdf', NULL),
(1909, 22778682, 6110, '2023-02-16', '21:10:58', 'Practicar ejercicios de relajación.', 0, 1, '2023-02-16 05:33:00', '2023-02-16 05:33:00', 1, NULL, 'comprobantes/comprobante_1909.pdf', NULL),
(1910, 22778682, 6110, '2024-07-30', '23:52:47', NULL, 1, 0, '2024-07-30 08:50:21', '2024-07-30 08:50:21', 1, NULL, 'comprobantes/comprobante_1910.pdf', NULL),
(1911, 22778682, 6110, '2023-09-13', '02:18:03', 'Analizar situaciones laborales recientes.', 0, 1, '2023-09-13 03:57:00', '2023-09-13 03:57:00', 1, NULL, 'comprobantes/comprobante_1911.pdf', NULL),
(1912, 22778682, 6110, '2024-07-02', '02:01:27', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-07-02 20:30:40', '2024-07-02 20:30:40', 1, NULL, 'comprobantes/comprobante_1912.pdf', NULL),
(1913, 22778682, 6110, '2023-05-21', '05:21:36', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2023-05-21 08:20:56', '2023-05-21 08:20:56', 1, NULL, 'comprobantes/comprobante_1913.pdf', NULL),
(1914, 22778682, 6110, '2024-01-03', '19:42:33', 'Analizar situaciones laborales recientes.', 1, 0, '2024-01-03 20:00:01', '2024-01-03 20:00:01', 1, NULL, 'comprobantes/comprobante_1914.pdf', NULL),
(1915, 22778682, 6110, '2022-08-07', '15:46:24', NULL, 1, 0, '2022-08-07 12:29:10', '2022-08-07 12:29:10', 0, NULL, NULL, NULL),
(1916, 22778682, 6110, '2024-01-31', '16:21:35', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-01-31 04:37:40', '2024-01-31 04:37:40', 1, NULL, 'comprobantes/comprobante_1916.pdf', NULL),
(1917, 22778682, 6110, '2023-09-14', '06:02:49', NULL, 0, 0, '2023-09-15 02:14:07', '2023-09-15 02:14:07', 1, NULL, 'comprobantes/comprobante_1917.pdf', NULL),
(1918, 22778682, 6110, '2023-10-08', '16:07:46', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-10-08 12:04:56', '2023-10-08 12:04:56', 1, NULL, 'comprobantes/comprobante_1918.pdf', NULL),
(1919, 22778682, 6110, '2022-03-05', '07:47:51', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-03-05 08:08:17', '2022-03-05 08:08:17', 1, NULL, 'comprobantes/comprobante_1919.pdf', NULL),
(1920, 22778682, 6110, '2024-02-25', '17:24:21', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-02-25 07:12:49', '2024-02-25 07:12:49', 1, NULL, 'comprobantes/comprobante_1920.pdf', NULL),
(1921, 22778682, 6110, '2023-08-10', '00:59:48', 'Analizar situaciones laborales recientes.', 1, 0, '2023-08-10 08:41:37', '2023-08-10 08:41:37', 1, NULL, 'comprobantes/comprobante_1921.pdf', NULL),
(1922, 22778682, 6110, '2023-03-01', '10:12:06', NULL, 1, 0, '2023-03-01 14:49:07', '2023-03-01 14:49:07', 1, NULL, 'comprobantes/comprobante_1922.pdf', NULL),
(1923, 22778682, 6110, '2024-01-05', '10:05:39', 'Practicar ejercicios de relajación.', 1, 0, '2024-01-05 09:41:54', '2024-01-05 09:41:54', 0, NULL, NULL, NULL),
(1924, 22778682, 6110, '2023-12-14', '10:51:51', NULL, 1, 0, '2023-12-14 17:21:46', '2023-12-14 17:21:46', 1, NULL, 'comprobantes/comprobante_1924.pdf', NULL),
(1925, 22778682, 6110, '2024-11-08', '18:18:47', 'Practicar ejercicios de relajación.', 1, 1, '2024-11-09 00:23:18', '2024-11-09 00:23:18', 1, NULL, 'comprobantes/comprobante_1925.pdf', NULL),
(1926, 22778682, 6110, '2022-11-09', '00:37:27', 'Practicar ejercicios de relajación.', 1, 0, '2022-11-10 01:50:22', '2022-11-10 01:50:22', 1, NULL, 'comprobantes/comprobante_1926.pdf', NULL),
(1927, 22778682, 6110, '2022-09-16', '23:01:00', 'Practicar ejercicios de relajación.', 0, 0, '2022-09-16 04:13:12', '2022-09-16 04:13:12', 1, NULL, 'comprobantes/comprobante_1927.pdf', NULL),
(1928, 22778682, 6110, '2024-06-30', '02:57:34', 'Practicar ejercicios de relajación.', 1, 0, '2024-06-30 23:55:27', '2024-06-30 23:55:27', 1, NULL, 'comprobantes/comprobante_1928.pdf', NULL),
(1929, 49991074, 9205, '2022-05-10', '22:58:35', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2022-05-10 15:35:30', '2022-05-10 15:35:30', 1, NULL, 'comprobantes/comprobante_1929.pdf', NULL),
(1930, 49991074, 9205, '2024-01-29', '23:20:31', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-01-29 17:47:36', '2024-01-29 17:47:36', 1, NULL, 'comprobantes/comprobante_1930.pdf', NULL),
(1931, 49991074, 9205, '2022-06-03', '04:40:47', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2022-06-03 11:14:41', '2022-06-03 11:14:41', 1, NULL, 'comprobantes/comprobante_1931.pdf', NULL),
(1932, 49991074, 9205, '2024-11-17', '17:52:26', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-11-18 00:27:14', '2024-11-18 00:27:14', 1, NULL, 'comprobantes/comprobante_1932.pdf', NULL),
(1933, 49991074, 9205, '2022-04-23', '05:43:18', NULL, 1, 0, '2022-04-23 19:18:22', '2022-04-23 19:18:22', 1, NULL, 'comprobantes/comprobante_1933.pdf', NULL),
(1934, 49991074, 9205, '2022-05-09', '12:45:21', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-05-10 02:17:57', '2022-05-10 02:17:57', 1, NULL, 'comprobantes/comprobante_1934.pdf', NULL),
(1935, 49991074, 9205, '2023-06-29', '17:23:28', NULL, 1, 0, '2023-06-30 00:35:12', '2023-06-30 00:35:12', 1, NULL, 'comprobantes/comprobante_1935.pdf', NULL),
(1936, 49991074, 9205, '2023-07-04', '17:50:35', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-07-04 11:11:06', '2023-07-04 11:11:06', 1, NULL, 'comprobantes/comprobante_1936.pdf', NULL),
(1937, 49991074, 9205, '2024-07-08', '14:17:51', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-07-08 10:02:29', '2024-07-08 10:02:29', 1, NULL, 'comprobantes/comprobante_1937.pdf', NULL),
(1938, 49991074, 9205, '2023-04-26', '20:27:06', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-04-26 19:11:50', '2023-04-26 19:11:50', 1, NULL, 'comprobantes/comprobante_1938.pdf', NULL),
(1939, 49991074, 9205, '2022-11-13', '21:38:35', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2022-11-13 04:55:04', '2022-11-13 04:55:04', 1, NULL, 'comprobantes/comprobante_1939.pdf', NULL),
(1940, 49991074, 9205, '2022-10-28', '12:51:50', 'Revisar tarea asignada la semana pasada.', 0, 0, '2022-10-28 09:07:15', '2022-10-28 09:07:15', 1, NULL, 'comprobantes/comprobante_1940.pdf', NULL),
(1941, 49991074, 9205, '2023-01-17', '12:31:05', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-01-17 17:29:13', '2023-01-17 17:29:13', 1, NULL, 'comprobantes/comprobante_1941.pdf', NULL),
(1942, 49991074, 9205, '2023-10-23', '10:16:01', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2023-10-23 22:57:15', '2023-10-23 22:57:15', 1, NULL, 'comprobantes/comprobante_1942.pdf', NULL),
(1943, 49991074, 9205, '2024-01-05', '06:22:33', NULL, 1, 0, '2024-01-05 15:09:12', '2024-01-05 15:09:12', 1, NULL, 'comprobantes/comprobante_1943.pdf', NULL),
(1944, 49991074, 9205, '2023-02-28', '15:19:14', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-02-28 16:09:35', '2023-02-28 16:09:35', 1, NULL, 'comprobantes/comprobante_1944.pdf', NULL),
(1945, 49991074, 9205, '2023-10-15', '18:38:40', 'Trabajar en estrategias de manejo de ansiedad.', 0, 1, '2023-10-15 03:00:22', '2023-10-15 03:00:22', 1, NULL, 'comprobantes/comprobante_1945.pdf', NULL),
(1946, 14841318, 9205, '2024-09-15', '23:15:23', 'Trabajar en estrategias de manejo de ansiedad.', 1, 0, '2024-09-15 21:23:30', '2024-09-15 21:23:30', 1, NULL, 'comprobantes/comprobante_1946.pdf', NULL),
(1947, 14841318, 9205, '2022-12-28', '18:46:37', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2022-12-29 01:09:25', '2022-12-29 01:09:25', 1, NULL, 'comprobantes/comprobante_1947.pdf', NULL),
(1948, 14841318, 9205, '2022-01-17', '03:01:27', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-01-18 01:13:46', '2022-01-18 01:13:46', 1, NULL, 'comprobantes/comprobante_1948.pdf', NULL),
(1949, 14841318, 9205, '2022-02-27', '23:32:07', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2022-02-27 06:28:01', '2022-02-27 06:28:01', 1, NULL, 'comprobantes/comprobante_1949.pdf', NULL),
(1950, 14841318, 9205, '2024-07-28', '07:49:53', 'Analizar situaciones laborales recientes.', 1, 0, '2024-07-28 09:37:28', '2024-07-28 09:37:28', 1, NULL, 'comprobantes/comprobante_1950.pdf', NULL),
(1951, 14841318, 9205, '2024-07-30', '17:05:52', 'Analizar situaciones laborales recientes.', 1, 0, '2024-07-30 13:07:27', '2024-07-30 13:07:27', 1, NULL, 'comprobantes/comprobante_1951.pdf', NULL),
(1952, 14841318, 9205, '2022-05-12', '04:50:06', 'Identificar patrones de pensamiento negativos.', 1, 0, '2022-05-12 06:55:02', '2022-05-12 06:55:02', 1, NULL, 'comprobantes/comprobante_1952.pdf', NULL),
(1953, 14841318, 9205, '2022-10-14', '13:56:03', NULL, 1, 0, '2022-10-14 23:13:20', '2022-10-14 23:13:20', 1, NULL, 'comprobantes/comprobante_1953.pdf', NULL),
(1954, 14841318, 9205, '2022-10-18', '11:43:41', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-10-18 03:40:29', '2022-10-18 03:40:29', 1, NULL, 'comprobantes/comprobante_1954.pdf', NULL),
(1955, 14841318, 9205, '2023-11-02', '17:20:08', NULL, 0, 1, '2023-11-03 02:56:58', '2023-11-03 02:56:58', 1, NULL, 'comprobantes/comprobante_1955.pdf', NULL),
(1956, 14841318, 9205, '2023-03-06', '14:19:22', 'Identificar patrones de pensamiento negativos.', 0, 0, '2023-03-06 10:29:38', '2023-03-06 10:29:38', 1, NULL, 'comprobantes/comprobante_1956.pdf', NULL),
(1957, 14841318, 9205, '2024-12-17', '18:09:50', NULL, 1, 0, '2024-12-17 18:27:47', '2024-12-17 18:27:47', 1, NULL, 'comprobantes/comprobante_1957.pdf', NULL),
(1958, 14841318, 9205, '2022-07-22', '13:44:48', 'Revisar tarea asignada la semana pasada.', 1, 0, '2022-07-22 18:01:18', '2022-07-22 18:01:18', 1, NULL, 'comprobantes/comprobante_1958.pdf', NULL),
(1959, 14841318, 9205, '2023-06-18', '05:52:21', 'Revisar compromisos establecidos anteriormente.', 0, 1, '2023-06-18 15:54:54', '2023-06-18 15:54:54', 1, NULL, 'comprobantes/comprobante_1959.pdf', NULL),
(1960, 14841318, 9205, '2023-03-21', '10:08:15', 'Identificar patrones de pensamiento negativos.', 1, 0, '2023-03-22 02:44:51', '2023-03-22 02:44:51', 1, NULL, 'comprobantes/comprobante_1960.pdf', NULL),
(1961, 14841318, 9205, '2023-02-11', '06:36:45', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-02-11 03:11:40', '2023-02-11 03:11:40', 1, NULL, 'comprobantes/comprobante_1961.pdf', NULL),
(1962, 77742230, 9205, '2023-02-17', '00:49:52', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-02-17 21:09:19', '2023-02-17 21:09:19', 1, NULL, 'comprobantes/comprobante_1962.pdf', NULL),
(1963, 77742230, 9205, '2023-08-29', '13:32:46', NULL, 1, 1, '2023-08-29 04:17:39', '2023-08-29 04:17:39', 1, NULL, 'comprobantes/comprobante_1963.pdf', NULL),
(1964, 77742230, 9205, '2024-10-31', '11:02:14', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2024-10-31 23:29:21', '2024-10-31 23:29:21', 1, NULL, 'comprobantes/comprobante_1964.pdf', NULL),
(1965, 77742230, 9205, '2024-05-14', '18:41:45', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-05-15 01:01:34', '2024-05-15 01:01:34', 1, NULL, 'comprobantes/comprobante_1965.pdf', NULL),
(1966, 77742230, 9205, '2024-08-13', '09:18:43', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-08-13 13:53:21', '2024-08-13 13:53:21', 1, NULL, 'comprobantes/comprobante_1966.pdf', NULL),
(1967, 77742230, 9205, '2022-06-24', '18:07:37', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-06-24 08:00:25', '2022-06-24 08:00:25', 1, NULL, 'comprobantes/comprobante_1967.pdf', NULL),
(1968, 77742230, 9205, '2023-03-12', '08:41:41', NULL, 1, 0, '2023-03-12 17:53:43', '2023-03-12 17:53:43', 1, NULL, 'comprobantes/comprobante_1968.pdf', NULL),
(1969, 77742230, 9205, '2023-06-07', '17:57:18', NULL, 1, 0, '2023-06-07 03:17:49', '2023-06-07 03:17:49', 1, NULL, 'comprobantes/comprobante_1969.pdf', NULL),
(1970, 77742230, 9205, '2024-01-13', '15:19:02', 'Analizar situaciones laborales recientes.', 1, 0, '2024-01-14 02:04:09', '2024-01-14 02:04:09', 1, NULL, 'comprobantes/comprobante_1970.pdf', NULL),
(1971, 77742230, 9205, '2022-09-09', '09:21:34', NULL, 0, 0, '2022-09-09 03:00:49', '2022-09-09 03:00:49', 1, NULL, 'comprobantes/comprobante_1971.pdf', NULL),
(1972, 77742230, 9205, '2022-08-31', '22:39:28', 'Analizar situaciones laborales recientes.', 1, 1, '2022-08-31 13:34:49', '2022-08-31 13:34:49', 0, NULL, NULL, NULL),
(1973, 77742230, 9205, '2023-06-13', '22:42:12', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-06-13 14:56:52', '2023-06-13 14:56:52', 1, NULL, 'comprobantes/comprobante_1973.pdf', NULL),
(1974, 77742230, 9205, '2022-11-20', '15:28:41', 'Evaluar progreso en la comunicación interpersonal.', 0, 0, '2022-11-20 09:17:41', '2022-11-20 09:17:41', 1, NULL, 'comprobantes/comprobante_1974.pdf', NULL),
(1975, 77742230, 9205, '2024-01-01', '11:31:29', NULL, 1, 0, '2024-01-01 19:10:48', '2024-01-01 19:10:48', 1, NULL, 'comprobantes/comprobante_1975.pdf', NULL),
(1976, 77742230, 9205, '2024-12-30', '00:28:29', NULL, 1, 0, '2024-12-30 23:02:11', '2024-12-30 23:02:11', 1, NULL, 'comprobantes/comprobante_1976.pdf', NULL),
(1977, 77742230, 9205, '2022-12-07', '05:07:43', 'Trabajar en estrategias de manejo de ansiedad.', 1, 1, '2022-12-07 21:21:40', '2022-12-07 21:21:40', 1, NULL, 'comprobantes/comprobante_1977.pdf', NULL),
(1978, 77742230, 9205, '2024-02-11', '13:57:50', 'Practicar ejercicios de relajación.', 0, 0, '2024-02-11 18:17:37', '2024-02-11 18:17:37', 1, NULL, 'comprobantes/comprobante_1978.pdf', NULL),
(1979, 77742230, 9205, '2022-09-29', '04:29:20', 'Analizar situaciones laborales recientes.', 1, 1, '2022-09-29 13:06:38', '2022-09-29 13:06:38', 1, NULL, 'comprobantes/comprobante_1979.pdf', NULL),
(1980, 77742230, 9205, '2024-11-18', '07:49:48', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-11-18 06:10:31', '2024-11-18 06:10:31', 1, NULL, 'comprobantes/comprobante_1980.pdf', NULL),
(1981, 77742230, 9205, '2024-10-09', '18:13:14', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2024-10-10 02:43:08', '2024-10-10 02:43:08', 1, NULL, 'comprobantes/comprobante_1981.pdf', NULL),
(1982, 77742230, 9205, '2023-11-22', '22:54:01', NULL, 0, 0, '2023-11-22 20:44:24', '2023-11-22 20:44:24', 1, NULL, 'comprobantes/comprobante_1982.pdf', NULL),
(1983, 77742230, 9205, '2023-08-25', '17:26:41', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-08-25 19:45:04', '2023-08-25 19:45:04', 1, NULL, 'comprobantes/comprobante_1983.pdf', NULL),
(1984, 76637170, 9205, '2023-01-05', '05:02:03', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2023-01-05 15:26:36', '2023-01-05 15:26:36', 1, NULL, 'comprobantes/comprobante_1984.pdf', NULL),
(1985, 76637170, 9205, '2023-10-19', '03:49:57', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-10-19 12:13:50', '2023-10-19 12:13:50', 1, NULL, 'comprobantes/comprobante_1985.pdf', NULL),
(1986, 76637170, 9205, '2022-07-07', '03:29:35', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-07-07 03:05:43', '2022-07-07 03:05:43', 1, NULL, 'comprobantes/comprobante_1986.pdf', NULL),
(1987, 76637170, 9205, '2023-07-24', '04:47:14', 'Reflexionar sobre los eventos de la semana.', 0, 0, '2023-07-24 09:29:52', '2023-07-24 09:29:52', 1, NULL, 'comprobantes/comprobante_1987.pdf', NULL),
(1988, 76637170, 9205, '2024-09-03', '05:55:43', 'Trabajar en estrategias de manejo de ansiedad.', 0, 0, '2024-09-03 06:22:40', '2024-09-03 06:22:40', 0, NULL, NULL, NULL),
(1989, 76637170, 9205, '2022-06-08', '15:32:51', 'Analizar situaciones laborales recientes.', 1, 0, '2022-06-08 08:41:54', '2022-06-08 08:41:54', 1, NULL, 'comprobantes/comprobante_1989.pdf', NULL),
(1990, 76637170, 9205, '2024-08-28', '17:42:09', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-08-28 21:32:25', '2024-08-28 21:32:25', 1, NULL, 'comprobantes/comprobante_1990.pdf', NULL),
(1991, 76637170, 9205, '2023-03-22', '18:23:03', 'Revisar compromisos establecidos anteriormente.', 1, 0, '2023-03-22 06:18:00', '2023-03-22 06:18:00', 1, NULL, 'comprobantes/comprobante_1991.pdf', NULL),
(1992, 76637170, 9205, '2024-11-20', '00:59:42', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-11-21 01:36:32', '2024-11-21 01:36:32', 1, NULL, 'comprobantes/comprobante_1992.pdf', NULL),
(1993, 76637170, 9205, '2024-05-19', '02:41:15', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-05-19 13:48:02', '2024-05-19 13:48:02', 1, NULL, 'comprobantes/comprobante_1993.pdf', NULL),
(1994, 76637170, 9205, '2024-10-15', '22:41:38', 'Evaluar progreso en la comunicación interpersonal.', 1, 0, '2024-10-15 21:45:27', '2024-10-15 21:45:27', 1, NULL, 'comprobantes/comprobante_1994.pdf', NULL),
(1995, 76637170, 9205, '2024-01-19', '04:56:13', 'Reflexionar sobre los eventos de la semana.', 1, 0, '2024-01-19 23:37:27', '2024-01-19 23:37:27', 1, NULL, 'comprobantes/comprobante_1995.pdf', NULL),
(1996, 76637170, 9205, '2022-04-23', '09:04:31', NULL, 1, 0, '2022-04-23 13:59:44', '2022-04-23 13:59:44', 1, NULL, 'comprobantes/comprobante_1996.pdf', NULL),
(1997, 76637170, 9205, '2022-04-19', '01:39:44', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2022-04-20 00:13:57', '2022-04-20 00:13:57', 1, NULL, 'comprobantes/comprobante_1997.pdf', NULL),
(1998, 72521835, 2248, '2024-12-08', '00:42:10', NULL, 1, 0, '2024-12-08 12:22:05', '2024-12-08 12:22:05', 1, NULL, 'comprobantes/comprobante_1998.pdf', NULL),
(1999, 72521835, 2248, '2023-01-06', '15:25:21', NULL, 0, 0, '2023-01-06 23:08:59', '2023-01-06 23:08:59', 1, NULL, 'comprobantes/comprobante_1999.pdf', NULL),
(2000, 72521835, 2248, '2023-11-13', '15:36:25', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2023-11-13 21:31:13', '2023-11-13 21:31:13', 1, NULL, 'comprobantes/comprobante_2000.pdf', NULL),
(2001, 72521835, 2248, '2023-03-14', '17:51:29', 'Revisar tarea asignada la semana pasada.', 1, 0, '2023-03-14 11:20:22', '2023-03-14 11:20:22', 1, NULL, 'comprobantes/comprobante_2001.pdf', NULL),
(2002, 72521835, 2248, '2022-05-25', '21:43:38', 'Identificar patrones de pensamiento negativos.', 0, 0, '2022-05-25 19:24:28', '2022-05-25 19:24:28', 1, NULL, 'comprobantes/comprobante_2002.pdf', NULL),
(2003, 72521835, 2248, '2022-03-08', '04:45:14', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2022-03-09 02:57:26', '2022-03-09 02:57:26', 1, NULL, 'comprobantes/comprobante_2003.pdf', NULL),
(2004, 72521835, 2248, '2022-09-06', '03:11:20', 'Revisar tarea asignada la semana pasada.', 1, 1, '2022-09-07 00:40:38', '2022-09-07 00:40:38', 1, NULL, 'comprobantes/comprobante_2004.pdf', NULL),
(2005, 72521835, 2248, '2024-12-12', '01:47:22', 'Identificar patrones de pensamiento negativos.', 1, 0, '2024-12-12 14:55:15', '2024-12-12 14:55:15', 1, NULL, 'comprobantes/comprobante_2005.pdf', NULL),
(2006, 72521835, 2248, '2023-04-07', '01:59:32', 'Discutir avances en los objetivos establecidos.', 1, 0, '2023-04-08 00:42:53', '2023-04-08 00:42:53', 1, NULL, 'comprobantes/comprobante_2006.pdf', NULL),
(2007, 72521835, 2248, '2024-02-06', '11:44:45', 'Explorar posibles soluciones a los conflictos actuales.', 1, 0, '2024-02-06 12:33:24', '2024-02-06 12:33:24', 1, NULL, 'comprobantes/comprobante_2007.pdf', NULL),
(2008, 72521835, 2248, '2022-08-17', '16:36:37', 'Analizar situaciones laborales recientes.', 1, 0, '2022-08-17 09:10:24', '2022-08-17 09:10:24', 1, NULL, 'comprobantes/comprobante_2008.pdf', NULL),
(2009, 72521835, 2248, '2022-11-26', '23:38:41', NULL, 0, 0, '2022-11-26 03:22:00', '2022-11-26 03:22:00', 1, NULL, 'comprobantes/comprobante_2009.pdf', NULL),
(2010, 72521835, 2248, '2023-05-18', '09:12:13', 'Discutir avances en los objetivos establecidos.', 1, 1, '2023-05-18 10:03:39', '2023-05-18 10:03:39', 1, NULL, 'comprobantes/comprobante_2010.pdf', NULL),
(2011, 72521835, 2248, '2022-10-13', '19:39:38', 'Discutir avances en los objetivos establecidos.', 1, 0, '2022-10-13 22:17:10', '2022-10-13 22:17:10', 1, NULL, 'comprobantes/comprobante_2011.pdf', NULL),
(2012, 72521835, 2248, '2023-06-30', '15:47:14', 'Revisar compromisos establecidos anteriormente.', 0, 0, '2023-06-30 21:45:42', '2023-06-30 21:45:42', 1, NULL, 'comprobantes/comprobante_2012.pdf', NULL),
(2013, 72521835, 2248, '2022-07-03', '08:35:23', NULL, 1, 0, '2022-07-03 23:58:18', '2022-07-03 23:58:18', 1, NULL, 'comprobantes/comprobante_2013.pdf', NULL),
(2014, 72521835, 2248, '2023-10-25', '07:35:59', NULL, 1, 0, '2023-10-25 20:12:48', '2023-10-25 20:12:48', 1, NULL, 'comprobantes/comprobante_2014.pdf', NULL),
(2015, 72521835, 2248, '2022-03-29', '01:35:08', NULL, 1, 0, '2022-03-29 06:25:46', '2022-03-29 06:25:46', 0, NULL, NULL, NULL),
(2016, 72521835, 2248, '2023-02-09', '08:18:36', NULL, 0, 0, '2023-02-09 18:33:35', '2023-02-09 18:33:35', 1, NULL, 'comprobantes/comprobante_2016.pdf', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tematica`
--

CREATE TABLE `tematica` (
  `id_tematica` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tematica`
--

INSERT INTO `tematica` (`id_tematica`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Online', NULL, NULL),
(2, 'Presencial', NULL, NULL),
(3, 'Ambas', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD UNIQUE KEY `calificacion_dni_paciente_matricula_psicologo_unique` (`dni_paciente`,`matricula_psicologo`),
  ADD KEY `calificacion_matricula_psicologo_foreign` (`matricula_psicologo`);

--
-- Indices de la tabla `corriente`
--
ALTER TABLE `corriente`
  ADD PRIMARY KEY (`id_corriente`);

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id_historico`),
  ADD KEY `historico_dni_paciente_foreign` (`dni_paciente`),
  ADD KEY `historico_matricula_psicologo_foreign` (`matricula_psicologo`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`codigo_postal`);

--
-- Indices de la tabla `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`id_match`),
  ADD KEY `match_dni_paciente_foreign` (`dni_paciente`),
  ADD KEY `match_matricula_psicologo_foreign` (`matricula_psicologo`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `mensaje_dni_paciente_foreign` (`dni_paciente`),
  ADD KEY `mensaje_matricula_psicologo_foreign` (`matricula_psicologo`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`model_id`,`model_type`,`permission_id`),
  ADD KEY `model_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`model_id`,`model_type`,`role_id`),
  ADD KEY `model_has_roles_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`dni`),
  ADD UNIQUE KEY `paciente_email_unique` (`email`);

--
-- Indices de la tabla `paciente_patologia`
--
ALTER TABLE `paciente_patologia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_patologia_dni_paciente_foreign` (`dni_paciente`),
  ADD KEY `paciente_patologia_id_patologia_foreign` (`id_patologia`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`nro_transaccion`),
  ADD KEY `pago_dni_paciente_foreign` (`dni_paciente`),
  ADD KEY `pago_matricula_psicologo_foreign` (`matricula_psicologo`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `patologia`
--
ALTER TABLE `patologia`
  ADD PRIMARY KEY (`id_patologia`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `preferencias`
--
ALTER TABLE `preferencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preferencias_dni_paciente_foreign` (`dni_paciente`),
  ADD KEY `preferencias_id_tematica_foreign` (`id_tematica`),
  ADD KEY `preferencias_id_corriente_foreign` (`id_corriente`);

--
-- Indices de la tabla `preferencias_patologias`
--
ALTER TABLE `preferencias_patologias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preferencias_patologias_id_preferencia_foreign` (`id_preferencia`),
  ADD KEY `preferencias_patologias_id_patologia_foreign` (`id_patologia`);

--
-- Indices de la tabla `preferencias_respuestas`
--
ALTER TABLE `preferencias_respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preferencias_respuestas_id_preferencia_foreign` (`id_preferencia`);

--
-- Indices de la tabla `psicologo`
--
ALTER TABLE `psicologo`
  ADD PRIMARY KEY (`matricula`),
  ADD UNIQUE KEY `psicologo_email_unique` (`email`),
  ADD KEY `psicologo_codigo_postal_foreign` (`codigo_postal`),
  ADD KEY `psicologo_id_tematica_foreign` (`id_tematica`),
  ADD KEY `psicologo_id_corriente_foreign` (`id_corriente`);

--
-- Indices de la tabla `psicologo_corriente`
--
ALTER TABLE `psicologo_corriente`
  ADD PRIMARY KEY (`id_psicologo_corriente`),
  ADD KEY `psicologo_corriente_matricula_psicologo_foreign` (`matricula_psicologo`),
  ADD KEY `psicologo_corriente_id_corriente_foreign` (`id_corriente`);

--
-- Indices de la tabla `psicologo_paciente`
--
ALTER TABLE `psicologo_paciente`
  ADD PRIMARY KEY (`id_psicologo_paciente`),
  ADD KEY `psicologo_paciente_dni_paciente_foreign` (`dni_paciente`),
  ADD KEY `psicologo_paciente_matricula_psicologo_foreign` (`matricula_psicologo`);

--
-- Indices de la tabla `psicologo_patologia`
--
ALTER TABLE `psicologo_patologia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `psicologo_patologia_matricula_psicologo_foreign` (`matricula_psicologo`),
  ADD KEY `psicologo_patologia_id_patologia_foreign` (`id_patologia`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD PRIMARY KEY (`id_sesion`),
  ADD KEY `sesion_dni_paciente_foreign` (`dni_paciente`),
  ADD KEY `sesion_matricula_psicologo_foreign` (`matricula_psicologo`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tematica`
--
ALTER TABLE `tematica`
  ADD PRIMARY KEY (`id_tematica`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id_calificacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `corriente`
--
ALTER TABLE `corriente`
  MODIFY `id_corriente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `historico`
--
ALTER TABLE `historico`
  MODIFY `id_historico` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `match`
--
ALTER TABLE `match`
  MODIFY `id_match` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id_mensaje` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `paciente_patologia`
--
ALTER TABLE `paciente_patologia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `nro_transaccion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `patologia`
--
ALTER TABLE `patologia`
  MODIFY `id_patologia` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `preferencias`
--
ALTER TABLE `preferencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `preferencias_patologias`
--
ALTER TABLE `preferencias_patologias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preferencias_respuestas`
--
ALTER TABLE `preferencias_respuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `psicologo_corriente`
--
ALTER TABLE `psicologo_corriente`
  MODIFY `id_psicologo_corriente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `psicologo_paciente`
--
ALTER TABLE `psicologo_paciente`
  MODIFY `id_psicologo_paciente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `psicologo_patologia`
--
ALTER TABLE `psicologo_patologia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sesion`
--
ALTER TABLE `sesion`
  MODIFY `id_sesion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2017;

--
-- AUTO_INCREMENT de la tabla `tematica`
--
ALTER TABLE `tematica`
  MODIFY `id_tematica` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `calificacion_dni_paciente_foreign` FOREIGN KEY (`dni_paciente`) REFERENCES `paciente` (`dni`) ON DELETE CASCADE,
  ADD CONSTRAINT `calificacion_matricula_psicologo_foreign` FOREIGN KEY (`matricula_psicologo`) REFERENCES `psicologo` (`matricula`) ON DELETE CASCADE;

--
-- Filtros para la tabla `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_dni_paciente_foreign` FOREIGN KEY (`dni_paciente`) REFERENCES `paciente` (`dni`),
  ADD CONSTRAINT `historico_matricula_psicologo_foreign` FOREIGN KEY (`matricula_psicologo`) REFERENCES `psicologo` (`matricula`);

--
-- Filtros para la tabla `match`
--
ALTER TABLE `match`
  ADD CONSTRAINT `match_dni_paciente_foreign` FOREIGN KEY (`dni_paciente`) REFERENCES `paciente` (`dni`) ON DELETE CASCADE,
  ADD CONSTRAINT `match_matricula_psicologo_foreign` FOREIGN KEY (`matricula_psicologo`) REFERENCES `psicologo` (`matricula`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_dni_paciente_foreign` FOREIGN KEY (`dni_paciente`) REFERENCES `paciente` (`dni`) ON DELETE CASCADE,
  ADD CONSTRAINT `mensaje_matricula_psicologo_foreign` FOREIGN KEY (`matricula_psicologo`) REFERENCES `psicologo` (`matricula`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `paciente_patologia`
--
ALTER TABLE `paciente_patologia`
  ADD CONSTRAINT `paciente_patologia_dni_paciente_foreign` FOREIGN KEY (`dni_paciente`) REFERENCES `paciente` (`dni`) ON DELETE CASCADE,
  ADD CONSTRAINT `paciente_patologia_id_patologia_foreign` FOREIGN KEY (`id_patologia`) REFERENCES `patologia` (`id_patologia`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_dni_paciente_foreign` FOREIGN KEY (`dni_paciente`) REFERENCES `paciente` (`dni`),
  ADD CONSTRAINT `pago_matricula_psicologo_foreign` FOREIGN KEY (`matricula_psicologo`) REFERENCES `psicologo` (`matricula`);

--
-- Filtros para la tabla `preferencias`
--
ALTER TABLE `preferencias`
  ADD CONSTRAINT `preferencias_dni_paciente_foreign` FOREIGN KEY (`dni_paciente`) REFERENCES `paciente` (`dni`) ON DELETE CASCADE,
  ADD CONSTRAINT `preferencias_id_corriente_foreign` FOREIGN KEY (`id_corriente`) REFERENCES `corriente` (`id_corriente`) ON DELETE CASCADE,
  ADD CONSTRAINT `preferencias_id_tematica_foreign` FOREIGN KEY (`id_tematica`) REFERENCES `tematica` (`id_tematica`) ON DELETE CASCADE;

--
-- Filtros para la tabla `preferencias_patologias`
--
ALTER TABLE `preferencias_patologias`
  ADD CONSTRAINT `preferencias_patologias_id_patologia_foreign` FOREIGN KEY (`id_patologia`) REFERENCES `patologia` (`id_patologia`) ON DELETE CASCADE,
  ADD CONSTRAINT `preferencias_patologias_id_preferencia_foreign` FOREIGN KEY (`id_preferencia`) REFERENCES `preferencias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `preferencias_respuestas`
--
ALTER TABLE `preferencias_respuestas`
  ADD CONSTRAINT `preferencias_respuestas_id_preferencia_foreign` FOREIGN KEY (`id_preferencia`) REFERENCES `preferencias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `psicologo`
--
ALTER TABLE `psicologo`
  ADD CONSTRAINT `psicologo_codigo_postal_foreign` FOREIGN KEY (`codigo_postal`) REFERENCES `localidad` (`codigo_postal`) ON DELETE CASCADE,
  ADD CONSTRAINT `psicologo_id_corriente_foreign` FOREIGN KEY (`id_corriente`) REFERENCES `corriente` (`id_corriente`) ON DELETE CASCADE,
  ADD CONSTRAINT `psicologo_id_tematica_foreign` FOREIGN KEY (`id_tematica`) REFERENCES `tematica` (`id_tematica`) ON DELETE CASCADE;

--
-- Filtros para la tabla `psicologo_corriente`
--
ALTER TABLE `psicologo_corriente`
  ADD CONSTRAINT `psicologo_corriente_id_corriente_foreign` FOREIGN KEY (`id_corriente`) REFERENCES `corriente` (`id_corriente`),
  ADD CONSTRAINT `psicologo_corriente_matricula_psicologo_foreign` FOREIGN KEY (`matricula_psicologo`) REFERENCES `psicologo` (`matricula`);

--
-- Filtros para la tabla `psicologo_paciente`
--
ALTER TABLE `psicologo_paciente`
  ADD CONSTRAINT `psicologo_paciente_dni_paciente_foreign` FOREIGN KEY (`dni_paciente`) REFERENCES `paciente` (`dni`) ON DELETE CASCADE,
  ADD CONSTRAINT `psicologo_paciente_matricula_psicologo_foreign` FOREIGN KEY (`matricula_psicologo`) REFERENCES `psicologo` (`matricula`) ON DELETE CASCADE;

--
-- Filtros para la tabla `psicologo_patologia`
--
ALTER TABLE `psicologo_patologia`
  ADD CONSTRAINT `psicologo_patologia_id_patologia_foreign` FOREIGN KEY (`id_patologia`) REFERENCES `patologia` (`id_patologia`) ON DELETE CASCADE,
  ADD CONSTRAINT `psicologo_patologia_matricula_psicologo_foreign` FOREIGN KEY (`matricula_psicologo`) REFERENCES `psicologo` (`matricula`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD CONSTRAINT `sesion_dni_paciente_foreign` FOREIGN KEY (`dni_paciente`) REFERENCES `paciente` (`dni`),
  ADD CONSTRAINT `sesion_matricula_psicologo_foreign` FOREIGN KEY (`matricula_psicologo`) REFERENCES `psicologo` (`matricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
