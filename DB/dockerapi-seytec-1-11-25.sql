-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 01-11-2025 a las 21:00:56
-- Versión del servidor: 10.6.11-MariaDB-1:10.6.11+maria~ubu2004
-- Versión de PHP: 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `docker`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendaeventos`
--

CREATE TABLE `agendaeventos` (
  `cod_ave` int(11) NOT NULL,
  `cod_mne_ave` int(11) DEFAULT NULL COMMENT 'codigo evento',
  `tit_ave` varchar(250) DEFAULT NULL COMMENT 'titulo evento',
  `tit_ave_ing` varchar(250) DEFAULT NULL COMMENT 'titulo evento ingles ',
  `des_ave` text DEFAULT NULL COMMENT 'descricpcion',
  `des_ave_ing` text DEFAULT NULL COMMENT 'descricpcion ingles',
  `fec_ave` date DEFAULT NULL COMMENT 'fecha evento',
  `hor_ave` time DEFAULT NULL COMMENT 'hora evento ',
  `not_ave` varchar(250) DEFAULT NULL COMMENT 'nota evento ej: ACTIVIDAD EN INGLÉS CON TRADUCCIÓN SIMULTÁNEA ',
  `nor_ave_ing` varchar(250) DEFAULT NULL COMMENT 'nota evento ingles ',
  `pre_ave` varchar(250) DEFAULT NULL COMMENT 'requisito previo evento ej: Requiere inscripción previa ',
  `pre_ave_ing` varchar(250) DEFAULT NULL COMMENT 'requisito previo evento  ingles ',
  `vir_ave` int(11) DEFAULT NULL COMMENT 'virtual 1 virutal - 2 presencial evento',
  `url_ave` varchar(250) DEFAULT NULL COMMENT 'url si virtutal ',
  `lug_ave` varchar(250) DEFAULT NULL COMMENT 'lugar si es presencial ',
  `img_ave` varchar(250) DEFAULT NULL COMMENT 'imagen ',
  `ali_ave` text DEFAULT NULL COMMENT 'imagen de aliado logos',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendaeventosregiones`
--

CREATE TABLE `agendaeventosregiones` (
  `cod_ave` int(11) NOT NULL,
  `cod_reg_ave` int(11) DEFAULT NULL COMMENT 'codigo de la region',
  `tip_eve_ave` int(11) DEFAULT NULL COMMENT 'tipo de evento en parametros tipoeveregion',
  `tit_ave` varchar(250) DEFAULT NULL COMMENT 'titulo evento',
  `tit_ave_ing` varchar(250) DEFAULT NULL COMMENT 'titulo evento ingles ',
  `des_ave` text DEFAULT NULL COMMENT 'descricpcion',
  `des_ave_ing` text DEFAULT NULL COMMENT 'descricpcion ingles',
  `fec_ave` date DEFAULT NULL COMMENT 'fecha evento',
  `hor_ave` time DEFAULT NULL COMMENT 'hora evento ',
  `not_ave` varchar(250) DEFAULT NULL COMMENT 'nota evento ej: ACTIVIDAD EN INGLÉS CON TRADUCCIÓN SIMULTÁNEA ',
  `nor_ave_ing` varchar(250) DEFAULT NULL COMMENT 'nota evento ingles ',
  `pre_ave` varchar(250) DEFAULT NULL COMMENT 'requisito previo evento ej: Requiere inscripción previa ',
  `pre_ave_ing` varchar(250) DEFAULT NULL COMMENT 'requisito previo evento  ingles ',
  `vir_ave` int(11) DEFAULT NULL COMMENT 'virtual 1 virutal - 2 presencial evento',
  `url_ave` varchar(250) DEFAULT NULL COMMENT 'url si virtutal ',
  `lug_ave` varchar(250) DEFAULT NULL COMMENT 'lugar si es presencial ',
  `img_ave` varchar(250) DEFAULT NULL COMMENT 'imagen ',
  `log_ave` varchar(200) DEFAULT NULL COMMENT 'logo ',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendalugares`
--

CREATE TABLE `agendalugares` (
  `cod_lug` int(11) NOT NULL,
  `nom_lug` varchar(50) DEFAULT NULL COMMENT 'nombre',
  `des_lug` varchar(250) DEFAULT NULL COMMENT 'descripcion de direccion o algo mas',
  `des_lug_ing` varchar(250) DEFAULT NULL COMMENT 'descricpcion en ingles',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `agendalugares`
--

INSERT INTO `agendalugares` (`cod_lug`, `nom_lug`, `des_lug`, `des_lug_ing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sede Industria | Auditorio 1 to 1 ', 'Cámara de Comercio de Bogotá - Sede Chapinero (Calle 67 # 8 - 32)', 'descip ingles', NULL, '2024-06-20 18:23:25', NULL),
(4, 'Sede Experiencia', 'Gimnasio Moderno de Bogotá (Carrera 9 # 74 – 99)', 'desc ing', '2024-05-29 16:33:02', '2024-06-26 18:42:10', NULL),
(5, 'Casa ARK', 'Calle 70 # 9 - 95', NULL, '2024-06-19 11:51:58', '2024-06-19 11:51:58', NULL),
(6, 'Sede Industria | Auditorio -1', 'Cámara de Comercio de Bogotá - Sede Chapinero (Calle 67 # 8 - 32)', NULL, '2024-06-20 18:24:00', '2024-06-20 18:24:00', NULL),
(7, 'Sede Industria', 'CCB Sede Chapinero (Calle 67 # 8 - 32)', 'Industry Headquarters - BAM', '2024-06-20 18:35:23', '2024-06-20 18:35:40', NULL),
(8, 'Cine Colombia Av. Chile', 'C.C. Avenida Chile (Calle 72 # 10-34)', NULL, '2024-06-20 19:47:43', '2024-06-20 19:52:20', NULL),
(9, 'Cinema Paraíso', 'Calle 69 # 6 - 20', NULL, '2024-06-20 19:49:41', '2024-06-20 19:52:12', NULL),
(10, 'Planetario de Bogotá', 'Cl 26b #5-93, Santa Fé, Bogotá', 'The Planetarium of Bogotá ', '2024-07-01 12:53:55', '2024-07-01 14:56:34', NULL),
(11, 'Club El Nogal', 'Cra. 7 #78-96', 'The Nogal Club', '2024-07-01 14:00:02', '2024-07-01 14:00:21', NULL),
(12, 'Centro Nacional de las Artes Delia Zapata Olivella', 'Cl. 11 #5 - 60, Bogotá', 'National Center of the Arts Delia Zapata Oliveira', '2024-07-01 15:02:46', '2024-07-01 15:02:46', NULL),
(13, 'Museo de Arte Moderno de Bogotá - MAMBO', 'Calle 24 #6 - 00', 'Museum of Modern Art of Bogota - MAMBO', '2024-07-01 15:05:49', '2024-07-01 15:06:01', NULL),
(14, 'TIS Colombia - Estudios. ', 'Carrera 50 # 17 – 77, Bogotá. ', 'TIS Colombia - Studios. ', '2024-07-01 15:11:50', '2024-07-05 20:12:29', NULL),
(15, 'Candelario - BAR', 'Cl. 12b #4-94', 'Candelerio - BAR', '2024-07-01 15:13:03', '2024-07-01 15:13:03', NULL),
(16, 'Casa del Embajador de Francia Frédéric Doré', 'Calle 87 #8-98', 'House of the Ambassador of France Frédéric Doré', '2024-07-01 15:22:23', '2024-07-01 15:22:23', NULL),
(17, 'Restaurante La Herencia', 'Cra 9 #69a-26', 'La Herencia Restaurant', '2024-07-01 15:23:16', '2024-07-01 15:23:16', NULL),
(18, 'Sede industria - Salón 207/208', NULL, NULL, '2024-07-01 21:17:56', '2024-07-01 21:17:56', NULL),
(19, 'Restaurante MINTIC', 'Cena', NULL, '2024-07-02 18:29:13', '2024-07-02 18:29:13', NULL),
(20, 'Cinemateca de Bogotá ', NULL, NULL, '2024-07-06 18:39:09', '2024-07-06 18:39:09', NULL),
(21, 'Restaurante Famiglia Pizzería ', 'Calle 69 #10-06', NULL, '2024-07-06 22:45:21', '2024-07-06 22:45:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendamantenimiento`
--

CREATE TABLE `agendamantenimiento` (
  `cod_ama` int(5) NOT NULL,
  `fec_ama` date DEFAULT NULL COMMENT 'fecha mantenimiento',
  `tip_ama` varchar(250) DEFAULT NULL COMMENT 'preventio- instalcion -correctivo- dar de baja',
  `des_ama` text DEFAULT NULL COMMENT 'descripcion',
  `cod_equ_ama` varchar(10) DEFAULT NULL COMMENT 'codigo equipo',
  `sta_ama` varchar(20) DEFAULT NULL COMMENT 'pendiente, cerrado, cancelado',
  `id_equ_ama` int(6) DEFAULT NULL COMMENT 'id de la tabla equipos',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agendamantenimiento`
--

INSERT INTO `agendamantenimiento` (`cod_ama`, `fec_ama`, `tip_ama`, `des_ama`, `cod_equ_ama`, `sta_ama`, `id_equ_ama`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '2025-08-05', 'Dar de baja', 'notasssss sdgsd sdf gsdgsdfgsdfhg sdfg', 'ID-2001', 'Pendiente', 211, '2025-07-24 15:08:16', '2025-10-14 15:28:57', NULL),
(4, '2025-10-15', 'Correctivo', 'nota de control', 'ID-2001', 'Ejecutado', 211, '2025-10-14 12:18:48', '2025-10-14 12:19:32', NULL),
(5, '2025-10-14', 'Correctivo', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ID-2001', 'Cancelado', 211, '2025-10-14 13:06:44', '2025-10-14 13:06:44', NULL),
(16, '2025-10-06', 'Correctivo', 'zzzzzzzzz', 'ID-2001', 'Ejecutado', 211, '2025-10-14 13:19:19', '2025-10-14 13:19:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendamiento`
--

CREATE TABLE `agendamiento` (
  `cod_age` int(11) NOT NULL,
  `fec_age` date DEFAULT NULL COMMENT 'fecha ideal del mantenimiento',
  `ffe_age` date DEFAULT NULL COMMENT 'fecha de realizado el mantenimiento',
  `cod_equ_age` int(5) DEFAULT NULL COMMENT 'codigo del equipo ',
  `usu_age` int(5) DEFAULT NULL COMMENT 'usuario q realizo ',
  `not_age` text DEFAULT NULL COMMENT 'nota de la agenda',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendatipo`
--

CREATE TABLE `agendatipo` (
  `cod_tag` int(11) NOT NULL,
  `nom_tag` varchar(50) DEFAULT NULL COMMENT 'nombre',
  `col_tag` varchar(10) DEFAULT NULL COMMENT 'color',
  `nom_tag_ing` varchar(50) DEFAULT NULL COMMENT 'nombre ingles',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `agendatipo`
--

INSERT INTO `agendatipo` (`cod_tag`, `nom_tag`, `col_tag`, `nom_tag_ing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eventos Generales', '#123456', 'Eventos Generales ingles', NULL, '2024-06-11 10:20:19', NULL),
(3, 'Eventos Industria', '#572364', 'Eventos Industria ingles', '2024-06-11 10:20:47', '2024-06-28 13:26:48', NULL),
(4, 'Citas uno a uno', '#987654', 'Citas uno a uno ingles', '2024-06-11 10:21:07', '2024-06-11 10:21:07', NULL),
(5, 'Eventos Experiencia', '#987654', NULL, '2024-06-26 19:20:46', '2024-06-26 19:20:59', NULL),
(6, 'BAM Brunch', '#987654', NULL, '2024-06-28 16:03:30', '2024-06-28 16:03:30', NULL),
(7, 'Otros eventos', '#ff6a72', NULL, '2024-06-30 13:05:57', '2024-06-30 13:07:17', NULL),
(8, 'Entrevista BAM', '#987654', NULL, '2024-07-02 10:55:31', '2024-07-02 11:01:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendaubicacion`
--

CREATE TABLE `agendaubicacion` (
  `cod_ubi` int(11) NOT NULL,
  `nom_ubi` varchar(20) DEFAULT NULL COMMENT 'nombre',
  `cod_lug_ubi` int(11) DEFAULT NULL COMMENT 'codigo lugar al q pertenece',
  `des_ubi` varchar(250) DEFAULT NULL COMMENT 'descrupcion',
  `des_ubi_ing` varchar(250) DEFAULT NULL COMMENT 'descipcion',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `agendaubicacion`
--

INSERT INTO `agendaubicacion` (`cod_ubi`, `nom_ubi`, `cod_lug_ubi`, `des_ubi`, `des_ubi_ing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mesa 3', 1, 'descipcion', 'desc ingles', NULL, '2024-06-20 18:27:13', NULL),
(3, 'Mesa 1', 1, 'Sótano, Cámara de Comercio de Bogotá', '4445', '2024-05-29 16:41:00', '2024-06-20 18:22:09', NULL),
(4, 'Mesa 2', 1, NULL, NULL, '2024-06-11 15:54:51', '2024-06-20 18:27:07', NULL),
(5, 'Mesa 4', 1, NULL, NULL, '2024-06-11 15:55:26', '2024-06-20 18:27:23', NULL),
(6, 'Mesa 5', 1, NULL, NULL, '2024-06-20 18:27:35', '2024-06-20 18:27:35', NULL),
(7, 'Mesa 6', 1, NULL, NULL, '2024-06-20 18:27:41', '2024-06-20 18:27:41', NULL),
(8, 'Mesa 8', 1, NULL, NULL, '2024-06-20 18:27:48', '2024-06-20 18:28:04', NULL),
(9, 'Mesa 7', 1, NULL, NULL, '2024-06-20 18:27:56', '2024-06-20 18:27:56', NULL),
(10, 'Mesa 9', 1, NULL, NULL, '2024-06-20 18:28:18', '2024-06-20 18:28:18', NULL),
(11, 'Mesa 10', 1, NULL, NULL, '2024-06-20 18:28:25', '2024-06-20 18:28:25', NULL),
(12, 'Mesa 11', 1, NULL, NULL, '2024-06-20 18:28:32', '2024-06-20 18:28:32', NULL),
(13, 'Mesa 12', 1, NULL, NULL, '2024-06-20 18:28:39', '2024-06-20 18:28:39', NULL),
(14, 'Mesa 13', 1, NULL, NULL, '2024-06-20 18:28:45', '2024-06-20 18:28:45', NULL),
(15, 'Mesa 14', 1, NULL, NULL, '2024-06-20 18:28:52', '2024-06-20 18:28:52', NULL),
(16, 'Mesa 15', 1, NULL, NULL, '2024-06-20 18:28:59', '2024-06-20 18:28:59', NULL),
(17, 'Mesa 16', 1, NULL, NULL, '2024-06-20 18:29:05', '2024-06-20 18:29:05', NULL),
(18, 'Mesa 17', 1, NULL, NULL, '2024-06-20 18:29:11', '2024-06-20 18:29:11', NULL),
(19, 'Mesa 18', 1, NULL, NULL, '2024-06-20 18:29:18', '2024-06-20 18:29:18', NULL),
(20, 'Mesa 19', 1, NULL, NULL, '2024-06-20 18:29:25', '2024-06-20 18:29:25', NULL),
(21, 'Mesa 20', 1, NULL, NULL, '2024-06-20 18:29:32', '2024-06-20 18:29:32', NULL),
(22, 'Mesa 21', 1, NULL, NULL, '2024-06-20 18:29:38', '2024-06-20 18:29:38', NULL),
(23, 'Mesa 22', 1, NULL, NULL, '2024-06-20 18:29:47', '2024-06-20 18:29:47', NULL),
(24, 'Mesa 23', 1, NULL, NULL, '2024-06-20 18:29:54', '2024-06-20 18:29:54', NULL),
(25, 'Mesa 24', 1, NULL, NULL, '2024-06-20 18:30:03', '2024-06-20 18:30:03', NULL),
(26, 'Mesa 25', 1, NULL, NULL, '2024-06-20 18:30:10', '2024-06-20 18:30:10', NULL),
(27, 'Mesa 26', 1, NULL, NULL, '2024-06-20 18:30:44', '2024-06-20 18:30:44', NULL),
(28, 'Mesa 27', 1, NULL, NULL, '2024-06-20 18:30:52', '2024-06-20 18:30:52', NULL),
(29, 'Mesa 28', 1, NULL, NULL, '2024-06-20 18:31:23', '2024-06-20 18:31:23', NULL),
(30, 'Mesa 29', 1, NULL, NULL, '2024-06-20 18:31:32', '2024-06-20 18:31:32', NULL),
(31, 'Mesa 30', 1, NULL, NULL, '2024-06-20 18:31:42', '2024-06-20 18:31:42', NULL),
(32, 'Mesa 31', 1, NULL, NULL, '2024-06-20 18:31:51', '2024-06-20 18:31:51', NULL),
(33, 'Mesa 32', 1, NULL, NULL, '2024-06-20 18:31:58', '2024-06-20 18:31:58', NULL),
(34, 'Mesa 33', 1, NULL, NULL, '2024-06-20 18:32:04', '2024-06-20 18:32:04', NULL),
(35, 'Mesa 34', 1, NULL, NULL, '2024-06-20 18:32:11', '2024-06-20 18:32:11', NULL),
(36, 'Mesa 35', 1, NULL, NULL, '2024-06-20 18:32:17', '2024-06-20 18:32:17', NULL),
(37, 'Salón Tanque de P.', 7, '2do Piso', 'Sala Tanque de P.', '2024-06-20 18:37:09', '2024-06-27 11:05:27', NULL),
(38, 'Salón Market Session', 7, '2do Piso Salón 203', NULL, '2024-06-20 18:39:31', '2024-06-27 11:21:40', NULL),
(39, 'Salón Locarno', 7, '2do Piso - Salón 204', NULL, '2024-06-20 19:03:01', '2024-07-01 16:33:21', NULL),
(40, 'Sala 1', 7, '2do Piso', NULL, '2024-06-20 19:44:52', '2024-06-20 19:44:52', NULL),
(41, 'Sala Taller', 7, '2do Piso', 'Sala Taller', '2024-06-20 19:45:10', '2024-06-20 19:49:11', NULL),
(42, 'Sala Animación', 7, '2do Piso', NULL, '2024-06-20 19:45:29', '2024-06-20 19:45:29', NULL),
(43, 'Sala U. y D.', 7, '2do Piso', NULL, '2024-06-20 19:45:51', '2024-06-20 19:45:51', NULL),
(44, 'Salón Industry Bites', 7, '2do Piso', NULL, '2024-06-20 19:46:14', '2024-06-27 12:14:34', NULL),
(45, 'Sala 2', 7, '2do Piso', NULL, '2024-06-20 19:46:30', '2024-06-20 19:46:30', NULL),
(46, 'Salón Meet & Co-prod', 7, '3er Piso', NULL, '2024-06-20 19:46:55', '2024-06-27 14:03:09', NULL),
(47, 'Sala Bammers', 7, '3er Piso', NULL, '2024-06-20 19:47:53', '2024-06-20 19:47:53', NULL),
(48, 'Sala Lab', 7, '3er Piso', NULL, '2024-06-20 19:48:10', '2024-06-20 19:48:10', NULL),
(49, 'Sala 2', 8, NULL, NULL, '2024-06-20 19:48:14', '2024-06-20 19:48:14', NULL),
(50, 'Salón Projects', 7, '3er Piso', NULL, '2024-06-20 19:48:24', '2024-06-28 13:09:53', NULL),
(51, 'Sala 3', 8, NULL, NULL, '2024-06-20 19:49:09', '2024-06-20 19:49:09', NULL),
(52, 'Forum ', 4, NULL, NULL, '2024-06-24 11:12:10', '2024-06-24 11:12:10', NULL),
(53, 'Sala de Prensa', 5, NULL, NULL, '2024-06-25 09:25:08', '2024-06-25 09:25:08', NULL),
(54, 'Lounge', 4, 'Mintic', NULL, '2024-06-25 15:23:29', '2024-06-28 15:55:15', '2024-06-28 15:55:15'),
(55, 'Sala 1', 8, NULL, NULL, '2024-06-26 14:37:23', '2024-06-26 14:37:23', NULL),
(56, 'Lounge', 4, 'Mintic', NULL, '2024-06-26 16:52:34', '2024-06-26 16:52:34', NULL),
(57, 'Auditorio ', 4, NULL, NULL, '2024-06-26 19:20:00', '2024-06-26 19:20:00', NULL),
(58, 'Salón 1', 5, NULL, NULL, '2024-06-27 16:54:04', '2024-06-27 16:54:04', NULL),
(59, 'Salón 2', 5, NULL, NULL, '2024-06-27 16:54:13', '2024-06-27 16:54:13', NULL),
(60, 'Salón 3', 5, NULL, NULL, '2024-06-27 16:54:22', '2024-06-27 16:54:22', NULL),
(61, 'Salón 4', 5, NULL, NULL, '2024-06-27 16:54:31', '2024-06-27 16:54:31', NULL),
(62, 'Sala de proyección', 9, NULL, NULL, '2024-06-28 12:04:49', '2024-06-28 12:04:49', NULL),
(63, 'Lounge Mesa 1', 4, 'Mintic', NULL, '2024-06-28 15:58:33', '2024-06-28 15:58:33', NULL),
(64, 'Lounge Mesa 2', 4, 'Mintic', NULL, '2024-06-28 15:58:47', '2024-06-28 15:58:47', NULL),
(65, 'Lounge Mesa 3', 4, 'Mintic', NULL, '2024-06-28 15:58:58', '2024-06-28 15:58:58', NULL),
(66, 'Lounge Mesa 4', 4, 'Mintic', NULL, '2024-06-28 15:59:09', '2024-06-28 15:59:09', NULL),
(67, 'Lounge Mesa 5', 4, 'Mintic', NULL, '2024-06-28 15:59:19', '2024-06-28 15:59:19', NULL),
(68, 'Lounge Mesa 6', 4, 'Mintic', NULL, '2024-06-28 15:59:33', '2024-06-28 15:59:33', NULL),
(69, 'BAM Café - Mesa 1', 4, NULL, NULL, '2024-06-29 15:46:37', '2024-06-29 15:50:25', NULL),
(70, 'BAM Café - Mesa 2', 4, NULL, NULL, '2024-06-29 15:50:34', '2024-06-29 15:50:41', NULL),
(71, 'BAM Café - Mesa 3', 4, NULL, NULL, '2024-06-29 15:50:48', '2024-06-29 15:50:48', NULL),
(72, 'No aplica', 6, NULL, NULL, '2024-06-30 10:09:09', '2024-06-30 10:09:09', NULL),
(73, 'Salón Locarno Scr.', 7, '2do Piso - Salón 204', NULL, '2024-07-01 17:20:44', '2024-07-01 17:22:02', NULL),
(74, 'Lounge Mesa 7', 4, 'Mintic', NULL, '2024-07-02 00:21:19', '2024-07-02 00:21:19', NULL),
(75, 'Salón 207', 7, NULL, NULL, '2024-07-02 09:38:51', '2024-07-02 09:38:51', NULL),
(76, 'Salon Bammers- Mesa ', 7, NULL, NULL, '2024-07-02 09:39:52', '2024-07-02 09:39:52', NULL),
(77, 'Salon Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:40:11', '2024-07-02 09:40:11', NULL),
(78, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:40:31', '2024-07-02 09:40:31', NULL),
(79, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:40:51', '2024-07-02 09:40:51', NULL),
(80, 'Salón Bammers- Mesa ', 7, NULL, NULL, '2024-07-02 09:41:12', '2024-07-02 09:41:12', NULL),
(81, 'Salón Bammers- Mesa ', 7, NULL, NULL, '2024-07-02 09:41:25', '2024-07-02 09:41:25', NULL),
(82, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:41:37', '2024-07-02 09:41:37', NULL),
(83, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:41:50', '2024-07-02 09:41:50', NULL),
(84, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:42:24', '2024-07-02 09:42:24', NULL),
(85, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:42:36', '2024-07-02 09:42:36', NULL),
(86, 'Salón Bammers- Mesa ', 7, NULL, NULL, '2024-07-02 09:42:50', '2024-07-02 09:42:50', NULL),
(87, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:43:01', '2024-07-02 09:43:01', NULL),
(88, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:43:14', '2024-07-02 09:43:14', NULL),
(89, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:43:25', '2024-07-02 09:43:25', NULL),
(90, 'Salón Bammers - Mesa', 7, NULL, NULL, '2024-07-02 09:43:45', '2024-07-02 09:43:45', NULL),
(91, 'Salón general', 5, NULL, NULL, '2024-07-02 09:57:22', '2024-07-02 09:57:22', NULL),
(92, 'Ubicación 1', 19, 'Se llevará a cabo una invitación especial para los invitados internacionales financiados por MinTIC para una cena de relacionamiento para hasta 15 personas.', NULL, '2024-07-02 18:33:30', '2024-07-02 21:09:47', NULL),
(93, 'Ubicación 2', 19, NULL, NULL, '2024-07-02 21:10:09', '2024-07-02 21:10:09', NULL),
(94, 'Ubicación 3', 19, NULL, NULL, '2024-07-02 21:10:19', '2024-07-02 21:10:19', NULL),
(95, 'Ubicación 4', 19, NULL, NULL, '2024-07-02 21:10:28', '2024-07-02 21:10:28', NULL),
(96, 'Ubicación 5', 19, NULL, NULL, '2024-07-02 21:10:36', '2024-07-02 21:10:36', NULL),
(97, 'Ubicación 7', 19, NULL, NULL, '2024-07-02 21:10:48', '2024-07-02 21:11:09', NULL),
(98, 'Ubicación 6', 19, NULL, NULL, '2024-07-02 21:10:59', '2024-07-02 21:10:59', NULL),
(99, 'Ubicación 8', 19, NULL, NULL, '2024-07-02 21:11:19', '2024-07-02 21:11:19', NULL),
(100, 'Ubicación 9', 19, NULL, NULL, '2024-07-02 21:11:30', '2024-07-02 21:11:30', NULL),
(101, 'Ubicación 10', 19, NULL, NULL, '2024-07-02 21:11:40', '2024-07-02 21:11:40', NULL),
(102, 'Ubicación 11', 19, NULL, NULL, '2024-07-02 21:11:52', '2024-07-02 21:11:52', NULL),
(103, 'Lounge Mesa 6', 4, 'Mintic', NULL, '2024-07-02 21:17:55', '2024-07-02 21:17:55', NULL),
(104, 'Auditorio -1', 7, NULL, NULL, '2024-07-03 12:07:21', '2024-07-03 12:07:21', NULL),
(105, 'Salón T. de P. *', 7, '2do Piso Sede Industria del BAM - CCB Sede Chapinero ', NULL, '2024-07-03 12:34:27', '2024-07-03 13:01:03', NULL),
(106, 'Lounge Actividades I', 4, NULL, NULL, '2024-07-03 18:00:39', '2024-07-03 18:00:39', NULL),
(107, 'BAM Café - Mesa 3.', 4, NULL, NULL, '2024-07-03 18:00:40', '2024-07-03 18:00:40', NULL),
(108, 'Brunch Forum', 4, 'Mesa 7 ', NULL, '2024-07-04 15:24:54', '2024-07-04 15:24:54', NULL),
(109, 'Salón Meet & Co-prod', 7, 'Salón Meet & Co-prod*', NULL, '2024-07-05 11:00:28', '2024-07-05 11:00:28', NULL),
(110, 'Salón Locarno Scr', 7, NULL, NULL, '2024-07-05 13:29:23', '2024-07-05 13:29:23', NULL),
(111, 'Mesa 19.', 1, NULL, NULL, '2024-07-06 07:56:05', '2024-07-06 07:56:05', NULL),
(112, 'Mesa 8.', 1, NULL, NULL, '2024-07-06 08:03:43', '2024-07-06 08:03:43', NULL),
(113, 'Mesa', 21, NULL, NULL, '2024-07-06 22:48:21', '2024-07-06 22:48:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aliados`
--

CREATE TABLE `aliados` (
  `cod_ali` int(11) NOT NULL,
  `cat_ali` varchar(250) DEFAULT NULL COMMENT 'nombre categoria',
  `img_ali` varchar(250) DEFAULT NULL COMMENT 'imagen',
  `cat_ali_ing` varchar(250) DEFAULT NULL COMMENT 'categoria ingles',
  `ord_ali` int(11) DEFAULT NULL COMMENT 'orden',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `aliados`
--

INSERT INTO `aliados` (`cod_ali`, `cat_ali`, `img_ali`, `cat_ali_ing`, `ord_ali`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Organizadores', 'https://bogotamarket.com/images/site/1718817457_71694c4d004d4619215b.png', 'Event organizers', 1, NULL, '2024-06-19 12:17:39', NULL),
(2, 'Aliados oficiales', 'https://test.bogotamarket.com/images/site/1670889069_ab74fc26d1592e25adfa.png', 'Aliados oficiales', 2, NULL, '2022-12-14 14:22:39', '2022-12-14 14:22:39'),
(3, 'Socios principales', 'https://test.bogotamarket.com/images/site/1670889090_120fac3a3ff8e7e9ac9e.png', 'Socios principales', 3, NULL, '2022-12-14 14:22:42', '2022-12-14 14:22:42'),
(29, 'Aliados de industria', 'https://test.bogotamarket.com/images/site/1670889102_0c7dcc0f19ca4cbd2e11.png', 'Aliados de industria', 4, '2022-11-14 09:11:44', '2022-12-14 14:24:04', '2022-12-14 14:24:04'),
(30, 'Medios aliados', 'https://test.bogotamarket.com/images/site/1670889113_86ae55a5fb7ed8edeb72.png', 'Medios aliados', 5, '2022-11-14 09:12:03', '2022-12-14 14:24:07', '2022-12-14 14:24:07'),
(31, '11111166', 'http://localhost/images/site/1670713616_07e34fd13e627f54cffb.jpeg', '22222', 55566, '2022-12-10 17:07:20', '2022-12-10 17:07:49', '2022-12-10 17:07:49'),
(32, 'Con el apoyo de ', 'https://bogotamarket.com/images/site/1720306470_038f8eafaa17b96840f5.png', 'With the support of', 2, '2023-06-13 12:38:05', '2024-07-06 17:54:32', NULL),
(33, 'Aliados oficiales ', 'https://bogotamarket.com/images/site/1689020561_9e42d0020a392fa6bebb.png', 'Official Partners', 3, '2023-06-13 12:42:31', '2024-05-23 12:26:05', '2024-05-23 12:26:05'),
(34, 'Aliados de industria', 'https://bogotamarket.com/images/site/1710425133_d8056ba6097128feea17.jpg', NULL, 4, '2023-07-10 10:43:27', '2024-05-23 12:26:20', '2024-05-23 12:26:20'),
(35, 'Aliados de Fomento Regional ', 'https://bogotamarket.com/images/site/1691185123_3f92b893c8dc6092f688.jpg', NULL, 5, '2023-07-10 10:43:59', '2024-05-23 12:26:23', '2024-05-23 12:26:23'),
(36, 'Aliados Técnicos', 'https://bogotamarket.com/images/site/1708550043_fe811e96c440c136b478.png', NULL, 6, '2023-07-10 10:44:29', '2024-05-23 12:26:18', '2024-05-23 12:26:18'),
(37, 'Medios Aliados', 'https://bogotamarket.com/images/site/1708548890_a8b36ebbe892f1f9789c.png', NULL, 7, '2023-07-10 10:44:52', '2024-05-23 12:26:26', '2024-05-23 12:26:26'),
(38, 'Aliados oficiales', 'https://bogotamarket.com/images/site/1716919633_1cccd38d415b27157374.png', NULL, 3, '2024-05-28 13:07:14', '2024-05-28 13:07:30', '2024-05-28 13:07:30'),
(39, 'Aliados oficiales', 'https://bogotamarket.com/images/site/1716919761_c600932989b95eb604f1.png', NULL, 3, '2024-05-28 13:09:23', '2024-05-29 14:51:41', '2024-05-29 14:51:41'),
(40, 'Aliados oficiales', 'https://bogotamarket.com/images/site/1720306516_932d9c7af226e1a09278.png', NULL, 3, '2024-06-19 13:03:34', '2024-07-06 17:55:18', NULL),
(41, 'Aliados de industria', 'https://bogotamarket.com/images/site/1719699594_b202ced836a5aa0dec3c.png', NULL, 2, '2024-06-29 17:19:55', '2024-06-29 17:20:06', '2024-06-29 17:20:06'),
(42, 'Aliados de industria', 'https://bogotamarket.com/images/site/1720305725_ec3356e4c4bb3ec9bfb4.png', NULL, 4, '2024-07-06 17:33:58', '2024-07-06 17:42:07', NULL),
(43, 'Aliados de fomento regional', 'https://bogotamarket.com/images/site/1720305876_89a7cd191c39b1ebde65.png', NULL, 5, '2024-07-06 17:35:06', '2024-07-06 17:44:39', NULL),
(44, 'Aliados de experiencia', 'https://bogotamarket.com/images/site/1720306033_97a1e17389cc49a01104.png', NULL, 6, '2024-07-06 17:39:17', '2024-07-06 17:47:15', NULL),
(45, 'Aliado técnicos', 'https://bogotamarket.com/images/site/1720306105_feae1bef67e3138a70e4.png', NULL, 7, '2024-07-06 17:40:15', '2024-07-06 17:48:27', NULL),
(46, 'Medios aliados', 'https://bogotamarket.com/images/site/1720306579_44030009b4355562bff8.png', NULL, 8, '2024-07-06 17:41:01', '2024-07-06 17:56:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aliadosacreditacion`
--

CREATE TABLE `aliadosacreditacion` (
  `cod_alc` int(11) NOT NULL,
  `nom_alc` varchar(250) DEFAULT NULL COMMENT 'nombre aliado',
  `nit_alc` varchar(250) DEFAULT NULL COMMENT 'nit',
  `cup_alc` varchar(200) DEFAULT NULL COMMENT 'cantidad de cupos',
  `tar_alc` int(5) DEFAULT NULL COMMENT 'codigo de la tarifa aplicada',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `aliadosacreditacion`
--

INSERT INTO `aliadosacreditacion` (`cod_alc`, `nom_alc`, `nit_alc`, `cup_alc`, `tar_alc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aliado de prueba', '9000', '20', 2, NULL, '2023-06-08 07:30:06', '2024-05-01 16:46:02'),
(2, 'mottif', '226', '5', 6, '2023-05-22 13:58:00', '2023-05-22 13:58:15', '2024-05-01 16:46:02'),
(3, 'BAM', '226', '10', 1, '2023-05-22 13:58:00', '2023-05-22 13:58:15', '2024-05-01 16:46:02'),
(4, 'mottif-1', '900-9', '5', 3, '2023-06-05 13:05:42', '2023-06-05 13:06:12', '2024-05-01 16:46:02'),
(5, 'mottif-9999', '9000-9', '5', 3, '2023-06-05 14:04:35', '2023-06-05 14:20:44', '2024-05-01 16:46:02'),
(6, 'BAM', '7000', '10', 5, '2023-06-05 14:06:11', '2023-06-05 14:20:41', '2024-05-01 16:46:02'),
(7, 'leonardo', '99898', '5', 1, '2023-06-05 14:10:13', '2023-06-05 14:20:35', '2024-05-01 16:46:02'),
(8, 'Academia de Cine', '8989', '500', 3, '2023-06-05 14:15:57', '2023-06-08 07:30:10', '2024-05-01 16:46:02'),
(9, 'Fundación Oveja Electrica - FantasoLab ', '901372765-1', '12', 1, '2023-06-05 17:19:26', '2023-06-21 12:46:48', '2024-05-01 16:46:02'),
(10, 'Prueba 1 ', '12222', '32', 5, '2023-06-05 17:23:07', '2023-06-08 07:30:01', '2024-05-01 16:46:02'),
(11, 'Centro Ático - Universidad Javeriana ', '860013720', '7', 1, '2023-06-14 07:01:46', '2023-06-26 16:52:53', '2024-05-01 16:46:02'),
(12, 'ATREZZO ', '900979565', '2', 1, '2023-06-14 07:02:51', '2023-06-14 07:16:41', '2024-05-01 16:46:02'),
(13, 'ATREZZO', '900969565', '2', 3, '2023-06-14 07:17:04', '2023-06-14 12:33:59', '2024-05-01 16:46:02'),
(14, 'Prueba', '90000000', '2', 1, '2023-06-14 08:38:25', '2023-06-14 08:38:32', '2024-05-01 16:46:02'),
(15, 'mottif', '96969696', '3', 3, '2023-06-14 09:02:11', '2023-06-14 09:02:11', '2024-05-01 16:46:02'),
(16, 'ATREZZO', '900969565', '2', 1, '2023-06-14 12:34:16', '2023-06-14 12:34:38', '2024-05-01 16:46:02'),
(17, 'ACADEMIA COLOMBIANA DE ARTES Y CIENCIAS CINEMATOGRÁFICAS ', '900327862', '200', 13, '2023-06-15 14:45:52', '2023-06-15 15:11:09', '2024-05-01 16:46:02'),
(18, 'FOLKS ', '901286427', '4', 1, '2023-06-16 10:22:53', '2023-06-16 12:33:28', '2024-05-01 16:46:02'),
(19, 'TRINEO TV', '900493876', '2', 1, '2023-06-16 12:34:03', '2023-06-16 12:34:03', '2024-05-01 16:46:02'),
(20, 'CLAP STUDIOS ', '900473828', '1', 1, '2023-06-16 12:55:06', '2023-06-16 12:55:06', '2024-05-01 16:46:02'),
(21, 'HD CINEMA ', '900061209', '1', 1, '2023-06-16 16:15:46', '2023-06-16 16:15:46', '2024-05-01 16:46:02'),
(22, 'DOC:CO - AGENCIA DE PROMOCIÓN Y DISTRIBUCIÓN', '900162810', '2', 1, '2023-06-20 14:24:39', '2023-06-20 14:42:15', '2024-05-01 16:46:02'),
(23, 'ACTORES - SOCIEDAD COLOMBIANA DE GESTIÓN ', '800336522', '2', 1, '2023-06-20 14:43:21', '2023-06-20 14:54:12', '2024-05-01 16:46:02'),
(24, 'MINISTERIO DE LAS CULTURAS, LOS ARTES Y LOS SABERES', '830034348', '15', 1, '2023-06-20 16:31:30', '2023-06-20 17:09:45', '2024-05-01 16:46:02'),
(25, 'FESTIVAL INTERNACIONAL DE CINE POR LOS DERECHOS HUMANOS - COLOMBIA ', '900912421', '3', 1, '2023-06-20 18:45:35', '2023-06-20 18:55:15', '2024-05-01 16:46:02'),
(26, 'GAUTEQUE CINE ', '900365667', '3', 1, '2023-06-21 09:28:22', '2023-06-21 11:33:04', '2024-05-01 16:46:02'),
(27, 'UMAÑA ABOGADOS ', '901247711', '6', 1, '2023-06-21 11:39:26', '2023-06-21 12:04:29', '2024-05-01 16:46:02'),
(28, 'TELEPACÍFICO ', '890331524', '2', 1, '2023-06-21 12:10:05', '2023-06-21 12:10:05', '2024-05-01 16:46:02'),
(29, 'FUNDACIÓN OVEJA ELECTRICA - FANTASOLAB ', '901372765', '17', 1, '2023-06-21 12:51:15', '2023-06-21 12:51:15', '2024-05-01 16:46:02'),
(30, 'RADIO TELEVISIÓN NACIONAL DE COLOMBIA  - RTVC', '900002583', '8', 1, '2023-06-21 21:39:04', '2023-06-21 22:11:55', '2024-05-01 16:46:02'),
(31, 'COLOMBO FILMS ', '830144944', '8', 1, '2023-06-21 22:13:06', '2023-06-21 22:13:06', '2024-05-01 16:46:02'),
(32, 'FACULTAD DE CINE DE MÉXICO ', 'FCI170601NH7', '4', 1, '2023-06-26 15:26:42', '2023-06-26 15:26:42', '2024-05-01 16:46:02'),
(33, 'EMBAJADA DE FRANCIA EN COLOMBIA ', '800090871', '3', 1, '2023-06-26 16:20:51', '2023-06-26 16:25:01', '2024-05-01 16:46:02'),
(34, 'LA POST', '900209655', '4', 1, '2023-06-26 17:18:58', '2023-06-26 17:18:58', '2024-05-01 16:46:02'),
(35, 'EGEDA COLOMBIA ', '900085684', '2', 1, '2023-06-26 20:27:30', '2023-06-26 20:32:33', '2024-05-01 16:46:02'),
(36, 'CINE COLOMBIA ', '890900076', '10', 1, '2023-06-26 20:33:35', '2023-06-26 21:01:41', '2024-05-01 16:46:02'),
(37, 'FUNDACIÓN PATRIMONIO FÍLMICO COLOMBIANO', '860533189', '3', 1, '2023-06-26 21:02:34', '2023-06-26 21:06:00', '2024-05-01 16:46:02'),
(38, 'BOGOTA INTERNATIONAL FILM FESTIVAL – BIFF ', '900789040', '1', 1, '2023-06-26 21:11:11', '2023-06-26 21:13:26', '2024-05-01 16:46:02'),
(39, 'FESTIVAL INTERNACIONAL DE CINE DE CARTAGENA DE INDIAS - FICCI ', '890480268', '2', 1, '2023-06-26 21:16:48', '2023-06-26 21:21:35', '2024-05-01 16:46:02'),
(40, 'FESTIVAL DE CINE DE BOGOTA - CORPORACION BOGOCINE ', '901282785', '1', 1, '2023-06-26 21:22:00', '2023-06-26 21:31:52', '2024-05-01 16:46:02'),
(41, 'UNIVERSIDAD CENTRAL ', '860024746', '3', 1, '2023-06-26 21:32:34', '2023-06-26 21:40:19', '2024-05-01 16:46:02'),
(42, 'FILMS TO FESTIVAL ', '27940494', '1', 1, '2023-06-26 21:42:06', '2023-06-26 21:42:06', '2024-05-01 16:46:02'),
(43, 'JAGUAR BITE ', '901153261', '2', 1, '2023-06-26 22:00:27', '2023-06-26 22:04:45', '2024-05-01 16:46:02'),
(44, 'POLITÉCNICO GRANCOLOMBIANO ', '860078643', '5', 1, '2023-06-26 22:15:58', '2023-06-26 22:18:28', '2024-05-01 16:46:02'),
(45, 'MADLOVE ', '900205579', '2', 1, '2023-06-26 22:44:46', '2023-06-26 22:46:26', '2024-05-01 16:46:02'),
(46, 'PROCOLOMBIA ', '830054060', '2', 1, '2023-06-26 23:02:58', '2023-07-06 12:34:48', '2024-05-01 16:46:02'),
(47, 'SERVICIO NACIONAL DE APRENDIZAJE - SENA ', '899999034', '3', 1, '2023-06-26 23:13:56', '2023-06-26 23:27:50', '2024-05-01 16:46:02'),
(48, 'FUTURO DIGITAL ', '900089155', '2', 1, '2023-06-26 23:38:05', '2023-06-27 14:56:17', '2024-05-01 16:46:02'),
(49, 'TALLE PUFA ', '900413030D', '18', 13, '2023-06-27 10:19:26', '2023-06-27 10:48:42', '2024-05-01 16:46:02'),
(50, 'Instituto Distrital de las Artes - IDARTES ', '900413030', '2', 1, '2023-06-27 10:54:28', '2023-07-05 18:26:32', '2024-05-01 16:46:02'),
(51, 'CINEMATECA DE BOGOTÁ ', '900413030B', '7', 1, '2023-06-27 10:55:11', '2023-06-27 10:55:11', '2024-05-01 16:46:02'),
(52, 'COMISIÓN FÍLMICA DE BOGOTÁ ', '900413030C', '2', 1, '2023-06-27 10:55:38', '2023-06-27 10:55:38', '2024-05-01 16:46:02'),
(53, 'Casting Workbook Services INc.', 'N/A', '2', 1, '2023-06-27 12:37:23', '2023-06-27 12:37:23', '2024-05-01 16:46:02'),
(54, 'FUTURO DIGITAL 2 ', '900089155', '2', 1, '2023-06-27 14:56:48', '2023-06-27 14:56:56', '2024-05-01 16:46:02'),
(55, 'SECRETARIA DE CULTURA DE CALI ', '890399011', '4', 1, '2023-06-27 15:05:40', '2023-06-27 15:07:44', '2024-05-01 16:46:02'),
(56, 'SECRETARÍA DE DESAROLLO ECONÓMICO DE CALI ', '860399011', '3', 1, '2023-06-27 15:17:09', '2023-06-27 15:41:17', '2024-05-01 16:46:02'),
(57, 'CARACOL TELEVISIÓN', '860025674', '10', 1, '2023-06-27 15:41:34', '2023-06-27 16:58:36', '2024-05-01 16:46:02'),
(58, 'AUDIONETWORK ', '26-1292350', '1', 1, '2023-06-27 21:09:04', '2023-06-27 21:09:04', '2024-05-01 16:46:02'),
(59, 'RX GLOBAL ', '41021936400081', '2', 1, '2023-06-27 22:35:03', '2023-06-27 22:38:51', '2024-05-01 16:46:02'),
(60, 'CÁMARA COLOMBIANA DEL LIBRO ', '860006601', '2', 1, '2023-06-27 22:39:09', '2023-06-27 22:56:14', '2024-05-01 16:46:02'),
(61, 'RED TAL ', '30717600645 ', '4', 1, '2023-06-27 22:56:41', '2023-06-28 08:52:22', '2024-05-01 16:46:02'),
(62, 'MEDIAPRO ', '900659975', '1', 1, '2023-06-28 10:42:12', '2023-06-28 10:59:19', '2024-05-01 16:46:02'),
(63, 'RHAYUELA FILMS ', '830004673', '2', 1, '2023-06-28 11:27:49', '2024-05-14 16:45:07', '2024-05-01 16:46:02'),
(64, 'PRECIOSA MEDIA ', '900946090', '1', 1, '2023-06-28 12:29:46', '2024-05-14 16:45:10', '2024-05-01 16:46:02'),
(65, 'BURNING ', '901185940', '3', 1, '2023-06-28 13:47:57', '2024-05-14 16:45:12', '2024-05-01 16:46:02'),
(66, 'CONGO FILMS ', '890323576', '4', 1, '2023-06-28 13:56:02', '2024-05-14 16:45:48', '2024-05-01 16:46:02'),
(67, 'ZONA A ', '800097779', '1', 1, '2023-06-28 15:51:15', '2023-06-28 15:56:04', '2024-05-01 16:46:02'),
(68, 'DRAMAX', '900370852', '1', 1, '2023-06-28 15:56:19', '2023-06-28 17:20:09', '2024-05-01 16:46:02'),
(69, 'LINGUA VIVA', '900692954', '4', 1, '2023-06-28 17:32:41', '2023-06-28 17:46:22', '2024-05-01 16:46:02'),
(70, 'RISK MEDIA GROUP ', '901568611', '2', 1, '2023-06-28 17:46:45', '2023-06-28 17:55:41', '2024-05-01 16:46:02'),
(71, 'CASTING WORKBOOK ', '84937047RC0', '3', 1, '2023-06-28 17:56:25', '2023-06-28 18:04:46', '2024-05-01 16:46:02'),
(72, 'ESTUCINE ', '901636357', '5', 1, '2023-06-28 18:17:13', '2023-06-28 18:28:03', '2024-05-01 16:46:02'),
(73, 'TIS PRODUCTION COLOMBIA ', '860063869', '5', 1, '2023-06-28 18:28:22', '2023-06-28 19:04:00', '2024-05-01 16:46:02'),
(74, 'IMAN MUSIC ', '900741231', '4', 1, '2023-06-29 16:13:43', '2023-06-29 16:39:20', '2024-05-01 16:46:02'),
(75, 'EL PUERTO MEDIA ', '901067274', '5', 1, '2023-06-29 16:39:54', '2023-06-29 16:39:54', '2024-05-01 16:46:02'),
(76, '64A - FILMS ', '90036421', '1', 1, '2023-06-30 09:32:56', '2023-06-30 09:32:56', '2024-05-01 16:46:02'),
(77, 'SONY ', '900261429', '5', 1, '2023-06-30 10:14:06', '2023-07-02 17:23:42', '2024-05-01 16:46:02'),
(78, 'LA TINA ', '900383976', '4', 1, '2023-06-30 11:04:50', '2023-06-30 11:04:50', '2024-05-01 16:46:02'),
(79, 'SONATA ', '900748430', '3', 1, '2023-06-30 11:13:31', '2023-06-30 11:34:39', '2024-05-01 16:46:02'),
(80, 'CÁMARA DE COMERCIO DE BOGOTÁ ', '860007322', '25', 1, '2023-06-30 11:35:44', '2023-06-30 11:35:44', '2024-05-01 16:46:02'),
(81, 'CMO ', '830055884', '1', 1, '2023-06-30 12:13:36', '2023-06-30 14:23:21', '2024-05-01 16:46:02'),
(82, 'CIUDAD LUNAR ', '900073514', '1', 1, '2023-06-30 15:40:11', '2023-06-30 15:47:34', '2024-05-01 16:46:02'),
(83, 'CORPORACION CULTURAL MUNICIPAL DE VILLAVICENCIO.', '8220012454', '2', 1, '2023-06-30 15:48:59', '2023-06-30 16:01:45', '2024-05-01 16:46:02'),
(84, 'VCR ', '800196743', '1', 1, '2023-06-30 16:03:59', '2023-06-30 16:24:07', '2024-05-01 16:46:02'),
(85, 'DOLBY ', '901618993', '2', 1, '2023-06-30 16:24:21', '2023-06-30 17:37:44', '2024-05-01 16:46:02'),
(86, 'MINISTERIO DE TECNOLOGÍAS DE LA INFORMACIÓN Y LAS COMUNICACIONES', '899999053', '32', 1, '2023-06-30 18:08:18', '2023-06-30 19:24:45', '2024-05-01 16:46:02'),
(87, 'MINISTERIO DE CULTURA - COMPRA ', '830034348', '29', 1, '2023-06-30 19:08:35', '2023-06-30 19:11:27', '2024-05-01 16:46:02'),
(88, 'SECRETARÍA DE CULTURA DE BOGOTÁ ', '899999326', '3', 1, '2023-06-30 19:41:29', '2023-06-30 20:24:12', '2024-05-01 16:46:02'),
(89, 'MEI LABORATORIO DIGITAL ', '900727084', '3', 1, '2023-06-30 20:24:38', '2023-06-30 20:29:07', '2024-05-01 16:46:02'),
(90, 'INVEST IN BOGOTA ', '900106691', '2', 1, '2023-06-30 20:29:32', '2023-06-30 20:42:45', '2024-05-01 16:46:02'),
(91, 'INVEST IN BOGOTÁ ', '900106691', '2', 1, '2023-06-30 20:37:14', '2023-06-30 20:37:27', '2024-05-01 16:46:02'),
(92, 'INSTITUTO DE CULTURA Y PATRIMONIO DE ANTIOQUIA - ICPA', '900425129', '8', 1, '2023-06-30 20:43:34', '2023-06-30 20:53:59', '2024-05-01 16:46:02'),
(93, 'GENTE QUE HACE CINE ', '900842654', '2', 1, '2023-06-30 20:54:16', '2023-06-30 21:22:27', '2024-05-01 16:46:02'),
(94, 'CAPITAL SISTEMA DE COMUNICACIÓN PÚBLICA ', '830012587', '3', 1, '2023-06-30 21:23:04', '2023-06-30 21:23:04', '2024-05-01 16:46:02'),
(95, 'CINEMPRESA', '830073324', '1', 1, '2023-06-30 21:28:38', '2023-06-30 21:28:38', '2024-05-01 16:46:02'),
(96, 'ACADEMIA COLOMBIANA DE ARTES Y CIENCIAS CINEMATOGRÁFICAS 2', '900327862', '2', 1, '2023-07-01 10:54:26', '2023-07-01 10:54:26', '2024-05-01 16:46:02'),
(97, 'FUNDACIÓN ALGO EN COMÚN ', '900641363', '1', 1, '2023-07-02 12:49:50', '2023-07-02 13:27:10', '2024-05-01 16:46:02'),
(98, 'PIPELINE ', '900378925', '3', 1, '2023-07-02 13:27:26', '2023-07-02 13:27:26', '2024-05-01 16:46:02'),
(99, 'SONY 2 ', '900261429', '2', 1, '2023-07-02 17:23:55', '2023-07-03 14:58:54', '2024-05-01 16:46:02'),
(100, 'UNIVERSIDAD DEL MAGDALENA ', '891780111', '3', 1, '2023-07-03 15:48:21', '2023-07-03 15:48:21', '2024-05-01 16:46:02'),
(101, 'BLACK VELVET | BOGOSHORTS ', '9002266614', '10', 1, '2023-07-03 16:09:26', '2023-07-03 16:30:27', '2024-05-01 16:46:02'),
(102, 'BLACK VELVET | BOGOSHORTS', '9002266614', '13', 1, '2023-07-03 16:30:53', '2023-07-03 16:30:53', '2024-05-01 16:46:02'),
(103, 'TRANSMILENIO ', '900381036', '8', 1, '2023-07-03 17:01:07', '2023-07-03 17:07:11', '2024-05-01 16:46:02'),
(104, 'CANAL ZOOM', '900216241', '2', 1, '2023-07-03 17:49:17', '2023-07-03 18:08:24', '2024-05-01 16:46:02'),
(105, 'CANAL TRECE - TEVEANDINA ', '830005370', '2', 1, '2023-07-03 18:08:53', '2023-07-03 18:09:12', '2024-05-01 16:46:02'),
(106, 'PUNTA FINA ', '395291', '1', 1, '2023-07-04 15:37:22', '2023-07-04 16:14:33', '2024-05-01 16:46:02'),
(107, 'CREDICORP', '860068182', '4', 1, '2023-07-04 16:15:03', '2023-07-04 17:01:12', '2024-05-01 16:46:02'),
(108, 'ESCUELA DE CINE ETECCI', '900689890', '2', 1, '2023-07-04 17:02:22', '2023-07-04 17:02:28', '2024-05-01 16:46:02'),
(109, 'DYNAMO PRODUCCIONES ', '900081133', '1', 1, '2023-07-04 17:49:03', '2023-07-04 18:16:34', '2024-05-01 16:46:02'),
(110, 'INSERT COIN ANIMATION ', '900666620', '5', 1, '2023-07-04 18:22:34', '2023-07-04 19:32:35', '2024-05-01 16:46:02'),
(111, 'MARGINAL CINE ', '901473732', '1', 1, '2023-07-04 19:32:51', '2023-07-05 12:33:28', '2024-05-01 16:46:02'),
(112, 'PROCHILE ', '766204686', '1', 1, '2023-07-05 16:20:41', '2023-07-05 16:20:53', '2024-05-01 16:46:02'),
(113, 'PROCHILE 2', '766204686', '1', 13, '2023-07-05 16:21:26', '2023-07-05 17:17:06', '2024-05-01 16:46:02'),
(114, 'ONE THOUSAND BIRDS ', '901372710', '3', 1, '2023-07-05 17:17:30', '2023-07-05 17:17:30', '2024-05-01 16:46:02'),
(115, 'MUCINE ', '901178463', '12', 13, '2023-07-05 17:56:24', '2023-07-05 17:56:24', '2024-05-01 16:46:02'),
(116, 'IDARTES 2 ', '900413030', '2', 1, '2023-07-05 18:39:53', '2023-07-05 18:51:16', '2024-05-01 16:46:02'),
(117, 'EMBAJADA DE ESPAÑA', '900637973', '2', 1, '2023-07-05 19:07:44', '2023-07-05 19:12:57', '2024-05-01 16:46:02'),
(118, 'DE LA PIÑA ', '901302559', '4', 1, '2023-07-05 20:10:35', '2023-07-05 20:10:35', '2024-05-01 16:46:02'),
(119, 'MIRADAS MEDELLÍN ', '900425129', '2', 1, '2023-07-05 20:43:20', '2023-07-05 20:43:20', '2024-05-01 16:46:02'),
(120, 'PROCOLOMBIA 2 ', '830054060', '2', 1, '2023-07-06 12:35:05', '2023-07-06 12:35:05', '2024-05-01 16:46:02'),
(121, 'JACOBO ALVAREZ ', '94510212', '1', 1, '2023-07-06 12:44:52', '2023-07-06 12:44:52', '2024-05-01 16:46:02'),
(122, 'MARIA IBAÑEZ TALENT MANAGER', '901721165', '1', 1, '2023-07-06 12:59:55', '2023-07-06 12:59:55', '2024-05-01 16:46:02'),
(123, 'INSTITUTO DI CULTURA DE ITALIA ', '830000684', '2', 1, '2023-07-06 15:26:16', '2023-07-06 15:34:40', '2024-05-01 16:46:02'),
(124, 'TELEPACÍFICO 2', '890331524', '2', 1, '2023-07-06 16:44:35', '2023-07-06 16:44:35', '2024-05-01 16:46:02'),
(125, 'ASOCIACIÓN DE DISEÑADORES DE PRODUCCIÓN ', '1026267547', '3', 1, '2023-07-06 16:58:48', '2023-07-06 17:53:49', '2024-05-01 16:46:02'),
(126, 'JULIÁN DAVID CORREA ', '71709152', '1', 1, '2023-07-06 17:20:40', '2023-07-06 17:20:40', '2024-05-01 16:46:02'),
(127, 'ASOCIACIÓN DE DISEÑADORES DE PRODUCCIÓN 2', '1026267547', '3', 13, '2023-07-06 17:56:30', '2023-07-06 17:56:30', '2024-05-01 16:46:02'),
(128, 'WE CAM FEST ', '900365162', '3', 1, '2023-07-06 18:02:09', '2023-07-06 18:16:27', '2024-05-01 16:46:02'),
(129, 'DIAMON FILMS ', '900765786', '1', 1, '2023-07-06 18:28:32', '2023-07-06 18:28:32', '2024-05-01 16:46:02'),
(130, 'CANAL TRO ', '807000294', '2', 1, '2023-07-06 18:40:36', '2023-07-06 19:53:38', '2024-05-01 16:46:02'),
(131, 'TELEISLAS ', '827000481', '2', 1, '2023-07-06 19:54:46', '2023-07-06 20:02:03', '2024-05-01 16:46:02'),
(132, 'TELECARIBE ', '890116965', '2', 1, '2023-07-06 20:03:13', '2023-07-06 20:03:13', '2024-05-01 16:46:02'),
(133, 'CAPITAL SISTEMA DE COMUNICACIÓN PÚBLICA 2', '830012587', '2', 1, '2023-07-06 20:08:34', '2023-07-06 20:08:34', '2024-05-01 16:46:02'),
(134, 'RTVC 2', '900002583', '2', 1, '2023-07-06 20:11:52', '2023-07-06 20:11:52', '2024-05-01 16:46:02'),
(135, 'PROCOLOMBIA 3', '830054060', '2', 1, '2023-07-07 09:25:32', '2023-07-07 09:25:32', '2024-05-01 16:46:02'),
(136, 'CAROL JAIMES ', '52864390', '1', 1, '2023-07-07 09:41:55', '2023-07-07 09:43:24', '2024-05-01 16:46:02'),
(137, 'SANTIAGO TRUJILLO ', '0000000000', '1', 1, '2023-07-07 09:49:54', '2023-07-07 09:53:38', '2024-05-01 16:46:02'),
(138, 'Dirección de Estrategia, Desarrollo y Emprendimiento', '830034348', '1', 1, '2023-07-07 09:54:11', '2023-07-07 09:54:11', '2024-05-01 16:46:02'),
(139, 'NARRATIVAS CUIR ', '1111111111', '9', 1, '2023-07-07 10:28:51', '2023-07-07 10:29:03', '2024-05-01 16:46:02'),
(140, 'DOC:CO AGENCIA DE PROMOCIÓN Y DISTRIBUSICÓN 2', '900162810', '1', 1, '2023-07-07 11:18:03', '2023-07-07 11:20:30', '2024-05-01 16:46:02'),
(141, 'TELEANTIOQUIA', '890937233', '4', 1, '2023-07-08 09:53:08', '2023-07-08 09:53:08', '2024-05-01 16:46:02'),
(142, 'Atrezzo', '900979565', '3', 19, '2024-05-16 17:10:46', '2024-05-16 20:28:01', '2024-05-16 20:28:01'),
(143, 'CÁMARA COLOMBIANA DEL LIBRO ', '830006601', '2', 19, '2024-05-30 16:18:31', '2024-05-30 16:18:31', NULL),
(144, 'CÁMARA DE COMERCIO DE VILLAVICENCIO', '892000102-1', '12', 19, '2024-06-04 09:23:17', '2024-06-04 09:23:17', NULL),
(145, 'CONTAVISUALES', '901808879-4', '2', 19, '2024-06-04 09:47:56', '2024-06-04 09:54:26', NULL),
(146, 'AUDIONETWORK ', '26-1292350', '2', 19, '2024-06-04 10:40:16', '2024-06-04 10:40:16', NULL),
(147, 'test mottif', '900', '10', 19, '2024-06-04 11:53:16', '2024-06-04 11:53:16', NULL),
(148, 'JULIO LAMAÑA', '519884', '1', 19, '2024-06-04 19:41:15', '2024-06-04 19:56:43', NULL),
(149, 'INSTITUTO DISTRITAL DE LAS ARTES - IDARTES ', '900413030', '18', 19, '2024-06-05 07:03:07', '2024-06-05 07:03:07', NULL),
(150, 'COLOMBO FILMS ', '830.144.944-7', '8', 19, '2024-06-11 15:36:44', '2024-06-11 16:01:30', NULL),
(151, 'WILHELM EDUARDO GARAVITO MALDONADO', '72436378', '1', 19, '2024-06-11 16:52:04', '2024-06-11 16:56:14', NULL),
(152, 'LUZ ANGELA RUBIANO', '52427481', '1', 19, '2024-06-11 16:56:34', '2024-06-11 17:07:17', NULL),
(153, 'Emotion SAS', '900702573-6', '9', 19, '2024-06-11 19:17:43', '2024-06-11 19:17:43', NULL),
(154, 'OVEJA ELÉCTRICA / FANTASOLAB', '901372765-1', '8', 19, '2024-06-11 21:00:02', '2024-06-11 21:00:02', NULL),
(155, 'Isabel Dolores Ospina Dávila', '1204840472', '1', 19, '2024-06-12 12:39:37', '2024-06-12 12:39:37', NULL),
(156, 'Viviana Lissette Puyol Moscoso', '915648984', '1', 19, '2024-06-12 14:12:32', '2024-06-12 14:15:14', NULL),
(157, 'Dalia Susana González Rosado', '914326483', '1', 19, '2024-06-12 14:15:29', '2024-06-12 14:17:48', NULL),
(158, 'Jorge Daniel Huertas Cherrez', '926059064', '1', 19, '2024-06-12 14:18:08', '2024-06-12 14:22:15', NULL),
(159, 'ACADEMIA COLOMBIANA DE CINE ', '900327862', '3', 19, '2024-06-12 14:22:30', '2024-06-12 14:49:13', NULL),
(160, 'PANDA SCOUT ', '900906956-1', '2', 19, '2024-06-12 14:49:37', '2024-06-12 14:49:37', NULL),
(161, 'EMPRESAS ANIMACIÓN ', '000000000-1', '15', 19, '2024-06-13 15:16:54', '2024-06-13 15:39:14', NULL),
(162, 'ACTORES SOCIEDAD COLOMBIANA DE GESTIÓN ', '830036522-1', '5', 19, '2024-06-13 15:39:43', '2024-06-13 15:52:17', NULL),
(163, 'RX GLOBAL', '000000000-2', '2', 19, '2024-06-13 15:52:39', '2024-06-13 15:52:39', NULL),
(164, 'CLAP STUDIOS ', '900473828-5', '2', 19, '2024-06-18 14:26:06', '2024-06-18 14:42:13', NULL),
(165, 'UMAÑA ABOGADOS', '901247118-1', '6', 19, '2024-06-18 14:42:44', '2024-06-18 15:09:33', NULL),
(166, 'UNIVERSIDAD JAVERIANA ', '860013720-1', '8', 19, '2024-06-18 15:10:00', '2024-06-18 15:10:00', NULL),
(167, 'CARACOL TELEVISIÓN ', '860025674-2', '4', 19, '2024-06-18 15:35:02', '2024-06-18 15:35:02', NULL),
(168, 'GENTE QUE HACE CINE ', '900842654-4', '4', 19, '2024-06-18 18:33:06', '2024-06-18 18:33:06', NULL),
(169, 'Ministerio de las Culturas, las Artes y Los Saberes', '830034348-5', '15', 19, '2024-06-19 14:16:54', '2024-06-19 14:16:54', NULL),
(170, 'DELEGACIÓN COSTA RICA ', '000000000-2', '2', 19, '2024-06-19 18:51:32', '2024-06-19 18:51:32', NULL),
(171, 'COMOSIÓN FILMICA DEL VALLE ', '000000000-3', '1', 19, '2024-06-19 20:04:12', '2024-06-19 20:18:37', NULL),
(172, 'TIS PRODUCTIONS', '860063869-3', '15', 19, '2024-06-19 20:18:57', '2024-06-19 20:59:46', NULL),
(173, 'RHAYUELA ', '83004673-6', '1', 19, '2024-06-19 21:00:12', '2024-06-19 21:00:12', NULL),
(174, 'Marcela Mar ', '000000000-4', '1', 19, '2024-06-20 11:22:32', '2024-06-20 11:25:37', NULL),
(175, 'Flora Martínez ', '000000000-5', '1', 19, '2024-06-20 11:25:55', '2024-06-20 11:59:55', NULL),
(176, 'CINEPLEX', '800066413-4', '1', 19, '2024-06-20 12:00:14', '2024-06-20 12:16:35', NULL),
(177, 'CINE CITY ', '000000000-6', '1', 19, '2024-06-20 12:16:48', '2024-06-20 12:16:48', NULL),
(178, 'BURNING ', '901185940-0', '5', 19, '2024-06-20 12:23:37', '2024-06-20 12:33:47', NULL),
(179, 'Alejandra Rocas ', '000000000-7', '1', 19, '2024-06-20 12:34:07', '2024-06-20 12:48:04', NULL),
(180, 'BRIOSA FILMS ', '901468122', '2', 19, '2024-06-20 12:48:20', '2024-06-20 12:55:58', NULL),
(181, 'Dago García', '000000000-8', '1', 19, '2024-06-20 12:56:22', '2024-06-20 12:56:22', NULL),
(182, '64A-FILMS', '900336421', '1', 19, '2024-06-20 14:18:10', '2024-06-20 14:26:24', NULL),
(183, 'EVIDENCIA FILMS ', '900431675-5', '1', 19, '2024-06-20 14:26:42', '2024-06-20 14:31:18', NULL),
(184, 'FESTIVAL INTERNACIONAL DE CINE POR LOS DERECHOS HUMANOS', '900912421-6', '1', 19, '2024-06-20 14:31:49', '2024-06-20 16:02:32', NULL),
(185, 'Melisa Zapata ', '000000000-9', '1', 19, '2024-06-20 16:03:47', '2024-06-20 16:12:27', NULL),
(186, 'Daniel Mateo Vallejo ', '000000001-1', '1', 19, '2024-06-20 16:12:44', '2024-06-20 16:34:19', NULL),
(187, 'DOC:CO ', '900162810-9', '1', 19, '2024-06-20 16:35:42', '2024-06-20 17:16:16', NULL),
(188, 'DOS CUARTOS PRODUCCIONES ', '000000001-2', '1', 19, '2024-06-20 17:16:47', '2024-06-20 17:20:06', NULL),
(189, 'Mauricio Leiva ', '000000001-3', '1', 19, '2024-06-20 17:20:26', '2024-06-20 17:20:26', NULL),
(190, 'FESTIVAL UNIVERSITARIO EQUINOXIO ', '000000001-4', '2', 19, '2024-06-21 12:50:51', '2024-06-21 12:50:51', NULL),
(191, 'COCREA', '000000001-5', '3', 19, '2024-06-21 17:20:18', '2024-06-21 17:36:18', NULL),
(192, 'ALGO EN COMÚN ', '900641363', '2', 19, '2024-06-21 17:36:38', '2024-06-21 17:36:38', NULL),
(193, 'BOGOTÁ INTERNATIONAL FILM FESTIVAL - BIFF', '900789040-6', '3', 19, '2024-06-21 17:44:12', '2024-06-21 17:54:10', NULL),
(194, 'LABORATORIOS BLACK VELVET', '900334077-5', '10', 19, '2024-06-21 17:54:37', '2024-06-21 17:54:37', NULL),
(195, 'LINGUA VIVA ', '900692954-4', '2', 19, '2024-06-21 18:38:38', '2024-06-21 18:38:38', NULL),
(196, 'SPCINE ', '000000001-6', '13', 19, '2024-06-21 19:51:33', '2024-06-21 19:58:04', NULL),
(197, 'SECRETARÍA DE DESARROLLO ECONÓMICO DE CALI', '890399011-3', '8', 19, '2024-06-21 19:58:24', '2024-06-21 20:06:18', NULL),
(198, 'PROCINAL', '890939520-9', '1', 19, '2024-06-21 20:22:35', '2024-06-21 20:22:35', NULL),
(199, 'LINGUA VIVA 2 ', '900692954-4', '1', 19, '2024-06-21 20:38:22', '2024-06-21 20:47:29', NULL),
(200, 'DIRECTORES AUDIOVISUALES SOCIEDAD COLOMBIANA - DASC ', '000000001-6', '80', 19, '2024-06-22 16:31:11', '2024-06-22 16:49:20', NULL),
(201, 'DIRECTORES AUDIOVISUALES SOCIEDAD COLOMBIANA - DASC ', '000000001-7', '3', 19, '2024-06-22 16:49:59', '2024-06-22 16:55:42', NULL),
(202, 'PROCHILE', '000000001-8', '2', 19, '2024-06-22 16:56:59', '2024-06-22 17:27:45', NULL),
(203, 'GARCÍA RENTAL ', '900338551-3', '3', 19, '2024-06-22 17:28:09', '2024-06-22 17:35:34', NULL),
(204, 'CINEPLEX 2', '800066413-4', '1', 19, '2024-06-22 17:36:11', '2024-06-22 17:41:58', NULL),
(205, 'TRANSMILENIO ', '830063506-6', '10', 19, '2024-06-22 17:42:11', '2024-06-22 18:01:15', NULL),
(206, 'CINECOLOMBIA', '890900076-0', '10', 19, '2024-06-22 18:01:38', '2024-06-22 18:26:30', NULL),
(207, 'CENTAURO COMUNICACIONES ', '9005553341', '2', 19, '2024-06-22 18:26:54', '2024-06-22 18:26:54', NULL),
(208, 'GUATEQUE CINE ', '900365667', '3', 19, '2024-06-22 18:44:21', '2024-06-22 18:55:14', NULL),
(209, 'INVEST IN BOGOTÁ ', '900106691-0', '4', 19, '2024-06-22 18:55:32', '2024-06-22 19:15:02', NULL),
(210, 'SONY ', '9003214723', '5', 19, '2024-06-22 19:15:40', '2024-06-22 19:15:40', NULL),
(211, 'LA TINA ', '900383976-0', '3', 19, '2024-06-23 13:42:43', '2024-06-23 13:42:43', NULL),
(212, 'INSTITUTO DE CULTURA Y PATRIMONIO DE ANTIOQUIA ', '000000001-9', '3', 19, '2024-06-23 16:20:58', '2024-06-23 16:30:32', NULL),
(213, 'HD CINEMA ', '900061209-8', '3', 19, '2024-06-23 16:30:45', '2024-06-23 16:42:51', NULL),
(214, 'ALCALDÍA DE MEDELLÍN ', '000000002-0', '5', 19, '2024-06-23 16:43:03', '2024-06-23 16:54:37', NULL),
(215, 'TERCER CINE ', '000000002-1', '2', 19, '2024-06-23 16:55:00', '2024-06-23 16:55:00', NULL),
(216, 'CINENJULI', '000000002-2', '2', 19, '2024-06-23 18:29:11', '2024-06-23 18:54:15', NULL),
(217, 'Javier Hidalgo ', '', '000000002-3', 19, '2024-06-23 18:54:44', '2024-06-23 18:55:01', '2024-06-23 18:55:01'),
(218, 'Javier Hidalgo ', '000000002-3', '1', 19, '2024-06-23 18:55:16', '2024-06-23 19:02:08', NULL),
(219, 'DYNAMO PRODUCCIONES', '900081133-2', '5', 19, '2024-06-24 12:04:29', '2024-06-24 12:58:59', NULL),
(220, 'CINECROPSIA', '1030590403', '2', 19, '2024-06-24 15:35:52', '2024-06-24 16:21:04', NULL),
(221, 'EMBAJADA DE FRANCIA ', '800090871-5', '4', 19, '2024-06-24 16:21:23', '2024-06-24 16:21:23', NULL),
(222, 'ACADEMIA COLOMBIANA DE CINE 2', '900327862', '15', 19, '2024-06-24 16:43:45', '2024-06-24 16:46:49', '2024-06-24 16:46:49'),
(223, 'ACADEMIA COLOMBIANA DE CINE 2', '900327862', '15', 23, '2024-06-24 16:50:23', '2024-06-24 16:50:23', NULL),
(224, 'FUTURO DIGITAL ', '900089155', '3', 19, '2024-06-24 18:25:07', '2024-06-24 18:33:37', NULL),
(225, 'CENTRO ÁTICO ', '860013720-1', '7', 19, '2024-06-25 09:49:59', '2024-06-25 09:49:59', NULL),
(226, 'POLITÉCNICO GRAN COLOMBIANO ', '860078643-1', '10', 19, '2024-06-25 10:56:42', '2024-06-25 11:07:56', NULL),
(227, 'ALCALDÍA DE MEDELLÍN 2', '000000002-0', '1', 19, '2024-06-25 12:56:54', '2024-06-25 12:56:59', NULL),
(228, 'María Alejandra Briganti ', '000000002-4', '1', 19, '2024-06-25 19:56:21', '2024-06-25 20:00:05', NULL),
(229, 'Gustavo Vasco ', '000000002-5', '1', 19, '2024-06-25 20:00:22', '2024-06-25 20:13:27', NULL),
(230, 'Diana Diaz Soto ', '000000002-6', '1', 19, '2024-06-25 20:13:50', '2024-06-25 20:13:50', NULL),
(231, 'Lizbeth Torres ', '000000002-7', '1', 19, '2024-06-25 20:58:36', '2024-06-25 21:03:03', NULL),
(232, 'Alina Hleap ', '000000002-8', '1', 19, '2024-06-25 21:03:18', '2024-06-25 21:07:08', NULL),
(233, 'Marcela Aguilar ', '000000002-9', '1', 19, '2024-06-25 21:07:26', '2024-06-25 21:10:50', NULL),
(234, 'Consuelo Castillo ', '000000003-0', '1', 19, '2024-06-25 21:12:33', '2024-06-25 21:19:21', NULL),
(235, 'Gustavo Palacio Correa ', '000000003-1', '1', 19, '2024-06-25 21:19:37', '2024-06-25 21:22:54', NULL),
(236, 'Sasha Quintero ', '000000003-2', '1', 19, '2024-06-25 21:23:17', '2024-06-25 21:27:00', NULL),
(237, 'Leonardo Cubillos ', '000000003-3', '1', 19, '2024-06-25 21:27:20', '2024-06-25 21:30:40', NULL),
(238, 'Ana Lucía Flórez ', '000000003-4', '1', 19, '2024-06-25 21:31:03', '2024-06-25 21:34:46', NULL),
(239, 'Liliana Guaca ', '000000003-5', '1', 19, '2024-06-25 21:36:24', '2024-06-25 21:40:33', NULL),
(240, 'Hernando Gallo ', '000000003-6', '1', 19, '2024-06-25 21:40:52', '2024-06-25 21:43:53', NULL),
(241, 'Juan Guillermo Buenaventura ', '000000003-7', '1', 19, '2024-06-25 21:44:23', '2024-06-25 21:47:51', NULL),
(242, 'Paola Rezk ', '000000003-8', '1', 19, '2024-06-25 21:48:11', '2024-06-25 21:52:23', NULL),
(243, 'Antoine Themistocleous ', '000000003-9', '1', 19, '2024-06-25 21:55:24', '2024-06-25 21:58:45', NULL),
(244, 'Alexandra Falla ', '000000004-0', '1', 19, '2024-06-25 21:59:47', '2024-06-25 22:02:36', NULL),
(245, 'Nancy Fernández ', '000000004-1', '1', 19, '2024-06-25 22:02:58', '2024-06-26 11:47:25', NULL),
(246, 'FUNDACIÓN CINE SOCIAL', '900365162-6', '3', 19, '2024-06-26 11:47:59', '2024-06-26 12:28:10', NULL),
(247, 'Natalia Santa ', '000000004-2', '1', 19, '2024-06-26 12:28:25', '2024-06-26 12:43:22', NULL),
(248, 'BLOND INDIAN ', '900496141-3', '2', 19, '2024-06-26 12:52:38', '2024-06-26 12:52:38', NULL),
(249, 'CÁMARA DE COMERCIO DE BOGOTÁ ', '860007322', '80', 19, '2024-06-26 17:40:47', '2024-06-26 18:04:30', NULL),
(250, 'EGEDA COLOMBIA ', '900085684-7', '4', 19, '2024-06-26 18:14:52', '2024-06-26 18:20:30', NULL),
(251, 'SECRETARÍA DE DESARROLLO ECONÓMICO DE CALI 2', '890399011-3', '1', 19, '2024-06-26 18:20:50', '2024-06-26 18:34:42', NULL),
(252, 'Francisco Saco ', '000000004-3', '1', 19, '2024-06-26 18:43:28', '2024-06-27 10:34:33', NULL),
(253, 'EMBAJADA DE CANADA', '899999706-0', '3', 19, '2024-06-27 10:35:31', '2024-06-27 11:27:03', NULL),
(254, 'SMART FILMS', '900525880-3', '5', 19, '2024-06-27 11:27:29', '2024-06-27 11:40:14', NULL),
(255, 'Silvia Prietov', '000000004-4', '1', 19, '2024-06-27 14:58:37', '2024-06-27 15:15:18', NULL),
(256, 'CANAL TRECE ', '830005370-4', '6', 19, '2024-06-27 15:15:31', '2024-06-27 15:36:19', NULL),
(257, 'A VOZ ', '000000004-5', '2', 19, '2024-06-27 15:36:39', '2024-06-27 15:46:52', NULL),
(258, 'PRODU', '000000004-6', '2', 19, '2024-06-27 15:49:30', '2024-06-27 16:24:41', NULL),
(259, 'TALLER PUFA ', '000000004-7', '13', 23, '2024-06-27 16:39:42', '2024-06-27 17:05:29', NULL),
(260, 'TALLER NARRATIVAS CLIMÁTICAS', '000000004-8', '24', 23, '2024-06-27 17:05:53', '2024-06-27 17:43:13', NULL),
(261, 'Marcela Mar 2', '000000000-4', '1', 19, '2024-06-27 17:43:31', '2024-06-27 20:34:46', NULL),
(262, 'SAP CINE ', '000000004-9', '1', 19, '2024-06-27 20:48:09', '2024-06-27 20:48:09', NULL),
(263, 'LABORATORIO DE PROYECTOS DE CINE INFANTIL', '000000005-0', '17', 19, '2024-06-27 21:10:47', '2024-06-27 22:03:58', NULL),
(264, 'PRECIOSA MEDIA ', '900946090', '1', 19, '2024-06-27 22:05:24', '2024-06-27 22:18:46', NULL),
(265, 'NETFLIX', '000000005-1', '6', 19, '2024-06-27 22:18:58', '2024-06-27 22:18:58', NULL),
(266, 'CANAL TRECE 2', '830005370-4', '3', 19, '2024-06-27 22:26:20', '2024-06-27 22:26:20', NULL),
(267, 'MINTIC ', '000000005-2', '32', 19, '2024-06-28 09:11:07', '2024-06-28 10:25:25', NULL),
(268, 'MINTIC 2', '000000005-2', '3', 19, '2024-06-28 09:30:20', '2024-06-28 09:30:20', NULL),
(269, 'Cristina Umaña ', '000000005-3', '1', 19, '2024-06-28 11:43:19', '2024-06-28 11:45:36', NULL),
(270, 'Heny Cuesta ', '000000005-4', '1', 19, '2024-06-28 15:09:20', '2024-06-28 15:16:15', NULL),
(271, 'Aseneth Suárez Ruiz', '000000005-5', '1', 19, '2024-06-28 15:16:38', '2024-06-28 15:16:38', NULL),
(272, 'Adriana Ángel ', '000000005-6', '1', 19, '2024-06-28 15:31:36', '2024-06-28 15:38:05', NULL),
(273, 'Thais Scabio', '000000005-7', '1', 19, '2024-06-28 16:07:08', '2024-06-28 16:14:43', NULL),
(274, 'Kerexu Martim', '000000005-8', '1', 19, '2024-06-28 16:15:04', '2024-06-28 16:20:37', NULL),
(275, 'Andrio Candio', '000000005-9', '1', 19, '2024-06-28 16:20:52', '2024-06-28 16:26:15', NULL),
(276, 'Sophia Pinheiro', '000000006-0', '1', 19, '2024-06-28 16:26:28', '2024-06-28 16:29:11', NULL),
(277, 'Nay Mendl', '000000006-1', '1', 19, '2024-06-28 16:29:25', '2024-06-28 16:40:34', NULL),
(278, 'Juliana Brombim', '000000006-2', '1', 19, '2024-06-28 16:40:48', '2024-06-28 16:50:55', NULL),
(279, 'Sarah Pimentel', '000000006-3', '1', 19, '2024-06-28 16:51:08', '2024-06-28 16:52:39', NULL),
(280, 'Mariana Lozano ', '000000006-4', '1', 19, '2024-06-28 17:48:45', '2024-06-28 17:58:30', NULL),
(281, 'DACMI - COMUNICACIONES ', '000000006-5', '22', 19, '2024-06-28 18:23:53', '2024-06-28 18:58:53', NULL),
(282, 'Red Colombiana de Escritores Audiovisuales', '901295540-1', '28', 19, '2024-06-28 18:59:44', '2024-06-28 19:32:07', NULL),
(283, 'José Castro ', '000000006-6', '1', 19, '2024-06-28 19:32:30', '2024-06-28 19:39:44', NULL),
(284, 'ACADEMIA COLOMBIANA DE CINE 3', '900327862', '6', 23, '2024-06-28 19:40:00', '2024-06-28 19:40:00', NULL),
(285, 'PROCOLOMBIA ', '830054060', '7', 19, '2024-06-29 09:51:25', '2024-06-29 10:12:32', NULL),
(286, 'MEI LABORATORIO DIGITAL', '900727084', '2', 19, '2024-06-29 10:13:04', '2024-06-29 10:37:25', NULL),
(287, 'Natalia Barrera', '000000006-7', '1', 19, '2024-06-29 10:37:41', '2024-06-29 11:27:22', NULL),
(288, 'MANOS VISIBLES ', '900370492-1', '23', 19, '2024-06-29 11:27:38', '2024-06-29 12:18:44', NULL),
(289, 'Natalia Cortés ', '000000006-8', '1', 19, '2024-06-29 14:55:47', '2024-06-29 15:00:46', NULL),
(290, 'Ana López Ortego', '000000006-9', '1', 19, '2024-06-29 15:01:05', '2024-06-29 15:15:07', NULL),
(291, 'Samuel Rubin', '000000007-0', '1', 19, '2024-06-29 15:15:21', '2024-06-29 15:21:10', NULL),
(292, 'Tatiana Barrero ', '000000007-1', '1', 19, '2024-06-29 15:21:26', '2024-06-29 15:25:08', NULL),
(293, 'Babilla Cine ', '000000007-2', '2', 19, '2024-06-29 15:25:36', '2024-06-29 15:28:14', NULL),
(294, 'Arturo Bravo ', '000000007-3', '1', 19, '2024-06-29 15:29:17', '2024-06-29 15:38:01', NULL),
(295, 'Adriana Molano ', '000000007-4', '1', 19, '2024-06-29 15:38:13', '2024-07-01 11:11:50', NULL),
(296, 'FEF audiovisual BAM animación', '800090871-5', '12', 19, '2024-07-01 13:42:48', '2024-07-01 18:47:53', NULL),
(297, 'Jaime Avello Banfi ', '000000007-5', '1', 19, '2024-07-02 07:05:26', '2024-07-02 08:57:15', NULL),
(298, 'Carmen Caballero ', '000000007-6', '1', 19, '2024-07-02 08:57:34', '2024-07-02 09:08:54', NULL),
(299, 'Daniel Tellez', '000000007-7', '1', 19, '2024-07-02 09:09:05', '2024-07-02 09:30:55', NULL),
(300, 'Juliana Restrepo ', '000000007-8', '1', 19, '2024-07-02 09:31:14', '2024-07-02 10:39:48', NULL),
(301, 'Sylvia Ospina ', '000000007-9', '1', 19, '2024-07-02 10:40:00', '2024-07-02 10:50:25', NULL),
(302, 'SPCINE 2', '000000001-6', '4', 19, '2024-07-02 10:55:13', '2024-07-02 12:12:19', NULL),
(303, 'Juan David Orozco', '000000008-0', '1', 19, '2024-07-02 15:13:25', '2024-07-02 15:13:25', NULL),
(304, 'Juliana Restrepo 2 ', '000000007-8', '1', 19, '2024-07-02 15:46:56', '2024-07-02 15:47:02', NULL),
(305, 'DACMI 2 ', '000000006-5', '29', 19, '2024-07-02 19:39:28', '2024-07-02 19:39:28', NULL),
(306, 'DYNAMO PRODUCCIONES 2', '900081133-2', '1', 19, '2024-07-02 20:06:53', '2024-07-02 20:06:53', NULL),
(307, 'Consejo Distrital de Artes Audiovisuales', '000000008-1', NULL, NULL, '2024-07-03 09:23:02', '2024-07-03 09:30:03', '2024-07-03 09:30:03'),
(308, 'Consejo Distrital de Artes Audiovisuales', '000000008-1', '3', 20, '2024-07-03 09:30:21', '2024-07-03 09:32:43', NULL),
(309, 'RED TAL ', '000000008-2', '5', 19, '2024-07-03 14:35:33', '2024-07-03 14:53:58', NULL),
(310, 'Danne Belmont', '000000008-3', '1', 19, '2024-07-03 14:54:09', '2024-07-03 15:06:13', NULL),
(311, 'Frank Merino ', '000000008-4', '2', 19, '2024-07-03 17:15:32', '2024-07-03 17:45:02', NULL),
(312, 'Malila Ohki', '000000008-5', '1', 19, '2024-07-06 18:37:03', '2024-07-06 18:37:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianzaagenda`
--

CREATE TABLE `alianzaagenda` (
  `cod_aag` int(11) NOT NULL,
  `cod_ave_agg` int(11) DEFAULT NULL COMMENT 'codigo del evento',
  `img_agg` varchar(250) DEFAULT NULL COMMENT 'url de la imagen',
  `ord_agg` int(11) DEFAULT NULL COMMENT 'orden',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `alianzaagenda`
--

INSERT INTO `alianzaagenda` (`cod_aag`, `cod_ave_agg`, `img_agg`, `ord_agg`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'https://test.bogotamarket.com/images/site/logo_Idartes.png', 1, NULL, NULL, NULL),
(2, 1, 'https://test.bogotamarket.com/images/site/logo_CinematecaDeBogota.png', 2, NULL, NULL, NULL),
(3, 1, 'https://test.bogotamarket.com/images/site/logo_alianza_masterclass.png', 3, NULL, NULL, NULL),
(8, 7, 'https://bogotamarket.com/images/site/Logo_ProimagenesColombia.png', 2, NULL, NULL, NULL),
(9, 7, 'https://bogotamarket.com/images/site/logo_Mincultura.png', 3, NULL, NULL, NULL),
(19, 11, 'https://bogotamarket.com/images/site/logo_UniversidadJaveriana.png', 1, NULL, NULL, NULL),
(20, 11, 'https://bogotamarket.com/images/site/logo_CentroAtico.png', 2, NULL, NULL, NULL),
(21, 13, 'https://bogotamarket.com/images/site/logo_Idartes.png', 1, NULL, NULL, NULL),
(24, 15, 'https://bogotamarket.com/images/site/logo_Sena.png', 1, NULL, NULL, NULL),
(25, 20, 'https://bogotamarket.com/images/site/logo_Sena.png', 1, NULL, NULL, NULL),
(26, 22, 'https://bogotamarket.com/images/site/logo_UniversidadJaveriana.png', 1, NULL, NULL, NULL),
(27, 22, 'https://bogotamarket.com/images/site/logo_CentroAtico.png', 2, NULL, NULL, NULL),
(28, 6, 'https://bogotamarket.com/images/site/logo_RadioNacional.png', 1, NULL, NULL, NULL),
(29, 23, 'https://bogotamarket.com/images/site/logo_SenalMemoria.png', 1, NULL, NULL, NULL),
(30, 25, 'https://bogotamarket.com/images/site/logo_GEMA.png', 1, NULL, NULL, NULL),
(31, 26, 'https://bogotamarket.com/images/site/logo_Idartes.png', 1, NULL, NULL, NULL),
(32, 27, 'https://bogotamarket.com/images/site/logo_Colombia_40.png', 1, NULL, NULL, NULL),
(33, 28, 'https://bogotamarket.com/images/site/logo_Mucine.png', 1, NULL, NULL, NULL),
(34, 29, 'https://bogotamarket.com/images/site/logo_Mincultura.png', 1, NULL, NULL, NULL),
(35, 30, 'https://bogotamarket.com/images/site/logo_RTVC_Play.png', 1, NULL, NULL, NULL),
(36, 33, 'https://bogotamarket.com/images/site/logo_SCRD.png', 1, NULL, NULL, NULL),
(37, 34, 'https://bogotamarket.com/images/site/logo_Egeda.png', 1, NULL, NULL, NULL),
(38, 35, 'https://bogotamarket.com/images/site/logo_Cluster_ICC_CCB.png', 1, NULL, NULL, NULL),
(39, 36, 'https://bogotamarket.com/images/site/logo_Cluster_ICC_CCB.png', 1, NULL, NULL, NULL),
(40, 39, 'https://bogotamarket.com/images/site/logo_ComisionFilmicaAntioquia.png', 1, NULL, NULL, NULL),
(41, 39, 'https://bogotamarket.com/images/site/logo_Antioquia_es_magica.png', 2, NULL, NULL, NULL),
(42, 40, 'https://bogotamarket.com/images/site/logo_RTVC.png', 2, NULL, NULL, NULL),
(43, 41, 'https://bogotamarket.com/images/site/logo_Chiledoc.png', 2, NULL, NULL, NULL),
(44, 42, 'https://bogotamarket.com/images/site/Logo_ProimagenesCF.png', 2, NULL, NULL, NULL),
(45, 43, 'https://bogotamarket.com/images/site/logo_Trece.png', 2, NULL, NULL, NULL),
(46, 44, 'https://bogotamarket.com/images/site/logo_CinematecaDeBogota.png', 1, NULL, NULL, NULL),
(47, 44, 'https://bogotamarket.com/images/site/logo_Idartes.png', 2, NULL, NULL, NULL),
(48, 45, 'https://bogotamarket.com/images/site/logo_RTVC.png', 2, NULL, NULL, NULL),
(49, 53, 'https://bogotamarket.com/images/site/FundacionCineSocial_WeCamFest.pn', 1, NULL, NULL, NULL),
(50, 55, 'https://bogotamarket.com/images/site/logo_Egeda.png', 1, NULL, NULL, NULL),
(51, 57, 'https://bogotamarket.com/images/site/logo_Egeda.png', 1, NULL, NULL, NULL),
(52, 68, 'https://bogotamarket.com/images/site/logo_Capital.png', 1, NULL, NULL, NULL),
(53, 69, 'https://bogotamarket.com/images/site/logo_Sena.png', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `cod_ban` int(11) NOT NULL,
  `tip_ban` int(11) DEFAULT NULL COMMENT '1 para imagenes  - 2 -  para textos --- 3para logos del home -- 4 guia de industria\r\n',
  `nom_ban` varchar(200) NOT NULL COMMENT 'nombre de ¿l banner',
  `img_ban` varchar(250) DEFAULT NULL COMMENT 'ruta imagen',
  `txt_ban` varchar(200) DEFAULT NULL COMMENT 'texto',
  `txt_ban_ing` varchar(250) DEFAULT NULL COMMENT 'texto q rota en ingles',
  `ord_ban` int(11) DEFAULT NULL COMMENT 'orden de la rotacion',
  `lin_bam` varchar(250) DEFAULT NULL COMMENT 'link para el banner',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`cod_ban`, `tip_ban`, `nom_ban`, `img_ban`, `txt_ban`, `txt_ban_ing`, `ord_ban`, `lin_bam`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Convocatorias', 'https://test.bogotamarket.com/images/banners/1674134580_dfbbd9d81bdcb5c1225b.jpg', NULL, '', 1, 'https://bogotamarket.com/convocatorias/filmprojects', NULL, '2023-01-19 07:23:41', '2023-01-19 07:23:41'),
(2, 1, 'nombre  2', 'https://test.bogotamarket.com/images/banners/bannerhome-2.jpg', NULL, '', 2, NULL, NULL, '2022-12-15 08:06:03', '2022-12-15 08:06:03'),
(3, 1, 'nombre  3', 'https://test.bogotamarket.com/images/banners/bannerhome-3.jpg', NULL, '', 3, NULL, NULL, '2022-12-15 08:06:06', '2022-12-15 08:06:06'),
(4, 1, 'nombre  4', 'https://test.bogotamarket.com/images/banners/bannerhome-4.jpg', NULL, '', 4, NULL, NULL, '2022-12-15 08:06:09', '2022-12-15 08:06:09'),
(5, 2, 'Cifras BAM 2023', '', 'BOGOTÁ AUDIOVISUAL MARKET 2023: 1622 participantes', 'BOGOTÁ AUDIOVISUAL MARKET 2023: 1622 attendees', 1, NULL, NULL, '2023-07-25 11:15:21', NULL),
(6, 2, 'Cifras BAM 2023 (2)', '', 'BOGOTÁ AUDIOVISUAL MARKET 2023: 105 invitados internacionales', 'BOGOTÁ AUDIOVISUAL MARKET 2023: 105 International guests ', 2, NULL, NULL, '2023-09-01 08:36:40', NULL),
(7, 2, 'Cifras BAM 2023 (3)', '', 'BOGOTÁ AUDIOVISUAL MARKET 2023: 520 citas de negocios', 'BOGOTÁ AUDIOVISUAL MARKET 2023: 520 business meetings', 3, NULL, NULL, '2023-07-25 11:17:21', NULL),
(8, 2, 'Cifras BAM 2023 (4)', '', 'BOGOTÁ AUDIOVISUAL MARKET 2023: 116 talentos colombianos seleccionados por convocatoria', 'BOGOTÁ AUDIOVISUAL MARKET 2023: 116 Colombian talents selected by open call', 4, NULL, NULL, '2023-07-25 11:18:26', NULL),
(9, 3, 'nombre  1', 'https://test.bogotamarket.com/images/banners/prebanner_logos_1.png', '', '', 1, NULL, NULL, '2022-12-15 08:48:55', '2022-12-15 08:48:55'),
(10, 3, 'nombre  2', 'https://test.bogotamarket.com/images/banners/prebanner_logos_2.png', '', '', 2, NULL, NULL, '2022-12-15 08:49:35', '2022-12-15 08:49:35'),
(11, 3, 'nombre  33', 'https://test.bogotamarket.com/images/banners/prebanner_logos_3.png', '', '', 3, NULL, NULL, '2022-12-15 08:49:38', '2022-12-15 08:49:38'),
(24, 2, '1111199', NULL, '222999', '33399', 4999, NULL, '2022-11-12 22:15:24', '2022-11-12 22:17:20', '2022-11-12 22:17:20'),
(25, 2, 'on nombre', NULL, 'Texto español:', 'Texto ingles:', 50, NULL, '2022-11-12 22:18:05', '2022-12-12 11:52:43', '2022-12-12 11:52:43'),
(26, 1, 'un banner', 'https://test.bogotamarket.com/images/banners/1668316722_70086383538506d520e0.jpg', NULL, NULL, 100, NULL, '2022-11-12 23:20:25', '2022-11-12 23:28:56', '2022-11-12 23:28:56'),
(29, 3, 'Organizadores', 'https://bogotamarket.com/images/banners/1671124116_fd44e68afa98d929441d.png', NULL, NULL, 1, NULL, '2022-12-15 11:06:57', '2023-01-25 15:38:26', NULL),
(30, 1, 'Convocatorias', 'https://bogotamarket.com/images/banners/1674481756_9c5f646078843b50145a.jpg', NULL, NULL, 1, 'https://bogotamarket.com/convocatorias/filmprojects', '2023-01-19 07:24:10', '2023-02-07 13:44:58', '2023-02-07 13:44:58'),
(31, 1, 'Segunda etapa BAM 2023', 'https://bogotamarket.com/images/banners/1678829072_baf9470fe5fe032943af.jpg', NULL, NULL, 1, 'https://bogotamarket.com/convocatorias/filmscreenings', '2023-02-07 13:44:15', '2023-04-12 17:37:09', '2023-04-12 17:37:09'),
(32, 1, 'EVENTO ', 'https://bogotamarket.com/images/banners/1688859091_5b495c96a6fa9974793b.jpg', NULL, NULL, 1, 'https://bogotamarket.com/programacion/2023/TALKS', '2023-04-12 17:36:50', '2023-07-25 11:13:31', '2023-07-25 11:13:31'),
(33, 1, 'Acreditaciones Early Bird', 'http://localhost/images/banners/1684948365_848d17d4187bd1f6e321.jpg', NULL, NULL, 1, 'https://bogotamarket.com/registro', '2023-05-24 12:13:23', '2023-05-24 12:13:31', '2023-05-24 12:13:31'),
(34, 1, 'BAM REGIONES', 'https://bogotamarket.com/images/banners/1700158693_89075ec3fa857dccd518.png', NULL, NULL, 1, 'https://bogotamarket.com/regiones', '2023-07-25 11:09:25', '2023-11-24 16:26:02', '2023-11-24 16:26:02'),
(35, 1, 'convocoatia', 'https://bogotamarket.com/images/banners/1700840020_fe675098dfc7f6d7b042.png', NULL, NULL, 2, NULL, '2023-11-24 09:33:50', '2023-11-24 09:34:19', '2023-11-24 09:34:19'),
(36, 1, 'CONVOCATORIAS BAM 2024', 'https://bogotamarket.com/images/banners/1701282025_9a5c2346508ab6f203a9.png', NULL, NULL, 1, 'https://bogotamarket.com/convocatorias/filmprojects', '2023-11-24 16:25:57', '2024-01-30 11:35:00', '2024-01-30 11:35:00'),
(37, 1, 'prueba', 'https://bogotamarket.com/images/banners/1706567566_052a40b0cc20e2cc6b3f.jpg', NULL, NULL, NULL, NULL, '2024-01-29 16:32:54', '2024-01-29 16:33:16', '2024-01-29 16:33:16'),
(38, 1, 'knkn', 'https://bogotamarket.com/images/banners/1706567634_1400f25df21798b988d7.jpg', NULL, NULL, NULL, NULL, '2024-01-29 16:33:57', '2024-01-29 16:34:26', '2024-01-29 16:34:26'),
(39, 1, 'Locarno', 'https://bogotamarket.com/images/banners/1710434231_1f2dfb6da50d17927d16.png', NULL, NULL, NULL, 'https://bogotamarket.com/docs/CALL_2024_INDUSTRY_ACADEMY_AMERICA_LATINA_ES%20CR_CO_MX.pdf', '2024-01-30 11:34:57', '2024-04-01 11:48:01', '2024-04-01 11:48:01'),
(40, 1, 'Alianzas', 'https://bogotamarket.com/images/banners/1710449221_75f781a3ed68c814c959.png', NULL, NULL, 3, 'https://drive.google.com/file/d/1vmT-A6j8LkN7oy45BTkavzY51skuupxo/view?usp=sharing', '2024-03-07 16:11:05', '2024-05-16 14:56:11', '2024-05-16 14:56:11'),
(41, 1, 'Seleccionados ', 'https://bogotamarket.com/images/banners/1712353501_6509b586c634a493bdd0.jpg', NULL, NULL, NULL, NULL, '2024-04-05 16:46:05', '2024-04-05 16:46:29', '2024-04-05 16:46:29'),
(42, 1, 'Seleccionados ', 'https://bogotamarket.com/images/banners/1712354546_7a40c0c74133de01a4ab.png', NULL, NULL, 4, 'https://mailchi.mp/bogotamarket/seleccionados-primera-etapa-bam-quince?e=eb27f73d47', '2024-04-05 17:02:29', '2024-06-20 11:16:14', '2024-06-20 11:16:14'),
(43, 1, 'sadasda', 'https://bogotamarket.com/images/banners/1714757059_38bf8fa280abae5b5096.png', NULL, NULL, 1, NULL, '2024-05-03 12:24:21', '2024-05-03 12:24:48', '2024-05-03 12:24:48'),
(44, 1, 'scasda', 'https://bogotamarket.com/images/banners/1714777966_d71f4484730c858687b0.png', NULL, NULL, NULL, NULL, '2024-05-03 18:12:48', '2024-05-03 18:13:14', '2024-05-03 18:13:14'),
(45, 1, 'Seleccionados 2da etapa', 'https://bogotamarket.com/images/banners/1715116059_a8c685f0bc59fd915a61.png', NULL, NULL, 3, 'https://mailchi.mp/bogotamarket/seleccionados-segunda-etapa-bam-quince', '2024-05-07 16:07:41', '2024-06-20 11:16:13', '2024-06-20 11:16:13'),
(46, 1, 'Acreditaciones', 'https://bogotamarket.com/images/banners/1715196334_1633dcf1bd4f2f674927.jpg', NULL, NULL, 1, NULL, '2024-05-08 14:25:36', '2024-05-08 14:26:22', '2024-05-08 14:26:22'),
(47, 1, 'acreddd', 'https://bogotamarket.com/images/banners/1715270301_54e2adb8d4ef09185ec1.jpg', NULL, NULL, NULL, NULL, '2024-05-09 10:58:24', '2024-05-09 10:58:55', '2024-05-09 10:58:55'),
(48, 1, 'abjhwd', 'https://bogotamarket.com/images/banners/1715282080_a7ec89dafd2019062aaf.jpg', NULL, NULL, NULL, NULL, '2024-05-09 14:14:42', '2024-05-09 14:15:23', '2024-05-09 14:15:23'),
(49, 1, 'edeew', 'https://bogotamarket.com/images/banners/1715729457_c355ea33e08ea46daf42.png', NULL, NULL, NULL, NULL, '2024-05-14 18:30:59', '2024-05-14 18:31:08', '2024-05-14 18:31:08'),
(50, 1, 'sdvsd', 'https://bogotamarket.com/images/banners/1715793089_a8248a4ee72856f1f8cb.jpg', NULL, NULL, 1, NULL, '2024-05-15 12:11:34', '2024-05-15 12:12:21', '2024-05-15 12:12:21'),
(51, 1, 'sd', 'https://bogotamarket.com/images/banners/1715801465_5d6c5e6d624950a2e964.jpg', NULL, NULL, NULL, NULL, '2024-05-15 14:31:07', '2024-05-15 14:31:34', '2024-05-15 14:31:34'),
(52, 1, 'dffffffew', 'https://bogotamarket.com/images/banners/1715870968_3fdedbac8d276aa354a2.jpg', NULL, NULL, NULL, NULL, '2024-05-16 09:49:29', '2024-05-16 09:49:39', '2024-05-16 09:49:39'),
(53, 1, 'Étnicos', 'https://bogotamarket.com/images/banners/1717102002_0aa6e94f04097f7775c0.jpg', NULL, NULL, 2, 'https://docs.google.com/forms/d/e/1FAIpQLSdDNaeVUnsoTjOvncYzHhSQL2by-PwoPma8g7ZZcBmtGgP2Fg/viewform', '2024-05-16 14:34:40', '2024-06-17 18:01:48', '2024-06-17 18:01:48'),
(54, 1, 'Convocatorias abiertas', 'https://bogotamarket.com/images/banners/1718900168_7320ce3233661bd257fa.png', NULL, NULL, 1, 'https://bogotamarket.com/infoacreditacion', '2024-05-16 18:25:18', '2024-06-29 11:36:52', '2024-06-29 11:36:52'),
(55, 4, 'test 1', 'https://bogotamarket.com/images/banners/1718663244_97bfd4e43e9bbc89f940.jpeg', NULL, NULL, 1, 'https://www.bogotamarket.com/bam/que-es-el-bam', '2024-06-17 17:27:27', '2024-06-17 17:45:04', '2024-06-17 17:45:04'),
(56, 4, 'test 1', 'https://bogotamarket.com/images/banners/1718664379_9ffc2bf2ac5eb9e35f6b.jpg', NULL, NULL, 1, 'https://www.bogotamarket.com/bam/que-es-el-bam', '2024-06-17 17:46:22', '2024-06-17 18:18:53', '2024-06-17 18:18:53'),
(57, 4, 'Content Americas', 'https://bogotamarket.com/images/banners/1718805920_f73621c2ddfdeda991da.jpg', NULL, NULL, 3, 'https://www.bogotamarket.com/bam/que-es-el-bam', '2024-06-17 17:46:42', '2024-07-08 11:35:18', '2024-07-08 11:35:18'),
(58, 4, 'Content Americas', 'https://bogotamarket.com/images/banners/1718805920_f73621c2ddfdeda991da.jpg', NULL, NULL, 1, 'https://contentamericas.net/es/', '2024-06-19 09:05:22', '2024-06-19 11:02:10', '2024-06-19 11:02:10'),
(59, 4, 'CFC', 'https://bogotamarket.com/images/banners/1719015346_d606b912cccf0e5bf3fa.png', NULL, NULL, 2, 'https://locationcolombia.com/registro-personas/', '2024-06-21 19:16:03', '2024-07-01 10:43:55', '2024-07-01 10:43:55'),
(60, 1, 'Programación', 'https://bogotamarket.com/images/banners/1719020440_21afd642bdfe361d1f19.png', NULL, NULL, 2, 'https://drive.google.com/file/d/1JgHgMcjQldPsL2a4WdO9rRYS6rDrtUdi/view?usp=drive_link', '2024-06-21 20:40:57', '2024-07-05 14:25:00', '2024-07-05 14:25:00'),
(61, 1, 'Acreditaciones', 'https://bogotamarket.com/images/banners/1719682912_e1a3a9cbb5d794831dde.png', NULL, NULL, 1, 'https://www.bogotamarket.com/infoacreditacion', '2024-06-29 12:40:33', '2024-07-04 09:44:12', '2024-07-04 09:44:12'),
(62, 4, 'IDARTES', 'https://bogotamarket.com/images/banners/1719848705_26f052877e03941cdfc0.jpg', NULL, NULL, 1, 'https://cinematecadebogota.gov.co/', '2024-07-01 10:45:06', '2024-07-08 11:35:16', '2024-07-08 11:35:16'),
(63, 4, 'La Tina', 'https://bogotamarket.com/images/banners/1719848773_af40b206036a731f4a4b.png', NULL, NULL, 2, 'https://la-tina.co/', '2024-07-01 10:46:15', '2024-07-01 10:46:15', NULL),
(64, 1, 'BAM', 'https://bogotamarket.com/images/banners/1720211551_fead2a13797eabc6a1d8.png', NULL, NULL, 1, 'https://drive.google.com/file/d/1JgHgMcjQldPsL2a4WdO9rRYS6rDrtUdi/view', '2024-07-05 14:24:56', '2024-07-05 15:32:33', NULL),
(65, 4, 'MIP CANCUN', 'https://bogotamarket.com/images/banners/1720456536_93d5363d703df38448e1.jpg', NULL, NULL, 1, 'https://www.mipcancun.com/', '2024-07-08 11:35:53', '2024-07-08 11:35:53', NULL),
(66, 4, 'FUTURO DIGITAL', 'https://bogotamarket.com/images/banners/1720456564_efd6de246cdee1b9495a.png', NULL, NULL, 3, 'https://futurodigital.com.co/', '2024-07-08 11:36:18', '2024-07-08 11:36:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bom`
--

CREATE TABLE `bom` (
  `cod_bom` int(11) NOT NULL,
  `cod_cli_bom` int(11) DEFAULT NULL COMMENT 'codigo cliente',
  `pro_bom` varchar(200) DEFAULT NULL COMMENT 'nombre proyecto',
  `des_bom` text DEFAULT NULL COMMENT 'descripcion',
  `not_bom` varchar(200) DEFAULT NULL,
  `fec_bom` date DEFAULT NULL,
  `cgo_bom` varchar(20) DEFAULT NULL COMMENT 'codigo',
  `mar_bom` float DEFAULT NULL,
  `sta_bom` varchar(20) DEFAULT NULL,
  `tim_bom` text DEFAULT NULL COMMENT 'tiempo estimado de ejecucion',
  `per_bom` text DEFAULT NULL COMMENT 'cantidad de personas',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `usu_acce` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `bom`
--

INSERT INTO `bom` (`cod_bom`, `cod_cli_bom`, `pro_bom`, `des_bom`, `not_bom`, `fec_bom`, `cgo_bom`, `mar_bom`, `sta_bom`, `tim_bom`, `per_bom`, `created_at`, `updated_at`, `usu_acce`, `deleted_at`) VALUES
(15, 3, 'leonardo', '', NULL, NULL, NULL, NULL, 'En Proceso', 'se estima dos semanas ', '5 personas ', '2022-09-06 14:48:34', '2023-03-10 13:14:40', NULL, '2023-03-10 13:14:40'),
(16, 58, 'instalación camaras nueva porteria ', 'Instalar dos camaras sobre un poste de 3 metros, se suministra camara adicional.', NULL, NULL, NULL, NULL, 'En Proceso', '2 dias', '2 tecnicos', '2022-11-08 11:43:47', '2023-02-02 14:17:19', NULL, '2023-02-02 14:17:19'),
(17, 58, '', '', NULL, NULL, NULL, NULL, 'En Proceso', '', '', '2022-11-23 15:23:01', '2022-11-23 15:23:05', NULL, '2022-11-23 15:23:05'),
(18, 58, 'Camaras Porteria', 'Instalación 6 cámaras en la nueva portera', NULL, NULL, NULL, NULL, 'En Proceso', '1 semana', '3 personas', '2023-02-02 14:18:16', '2023-07-17 12:11:12', NULL, NULL),
(19, 58, 'DATOS OFICINA NUEVA', 'INTALACION 50 PUESTOS DE TRBAJO', NULL, NULL, NULL, NULL, 'En Proceso', '1 MES ', '4 PERSONAS', '2023-03-10 14:42:40', '2023-03-10 14:44:51', NULL, NULL),
(20, 65, 'Bom Julio', 'una descripcion', NULL, NULL, NULL, NULL, 'En Proceso', 'Tiempo de ejecucicion:\n', 'Personal estimado:\n', '2023-07-17 15:45:31', '2023-08-18 17:41:49', NULL, NULL),
(21, 14, 'nombre proyecto 11', 'Descripcion proyecto222', NULL, NULL, NULL, NULL, 'En Proceso', NULL, NULL, '2025-10-08 13:39:56', '2025-10-08 13:40:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabezotebomdetalle`
--

CREATE TABLE `cabezotebomdetalle` (
  `cod_cab` int(11) NOT NULL,
  `cod_bom_cab` int(11) DEFAULT NULL COMMENT 'codigo del bom',
  `tip_det_cab` int(11) DEFAULT NULL COMMENT 'tipo de seleccion grupo de items(partida, subpartida, material)',
  `cod_tip_cab` int(11) DEFAULT NULL COMMENT 'codigo de la seleccion del grupo',
  `nom_det_cab` varchar(200) DEFAULT NULL COMMENT 'el nombre del tipo de agrupacion',
  `cod_cap_cab` int(11) NOT NULL COMMENT 'codigo del capitulo',
  `can_cab` int(11) NOT NULL COMMENT 'cantidad',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `usu_acce` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cabezotebomdetalle`
--

INSERT INTO `cabezotebomdetalle` (`cod_cab`, `cod_bom_cab`, `tip_det_cab`, `cod_tip_cab`, `nom_det_cab`, `cod_cap_cab`, `can_cab`, `created_at`, `updated_at`, `usu_acce`, `deleted_at`) VALUES
(15, 12, 1, 1, 'partidas', 4, 5, '2022-07-11 16:13:49', '2022-07-11 16:13:49', NULL, NULL),
(16, 13, 1, 1, 'partidas', 2, 10, '2022-07-11 16:33:39', '2022-07-11 16:33:39', NULL, NULL),
(17, 12, 1, 1, 'partidas', 4, 10, '2022-07-11 16:53:42', '2022-07-11 16:53:42', NULL, NULL),
(18, 12, 1, 1, 'partidas', 2, 20, '2022-07-11 17:08:54', '2022-07-11 17:08:54', NULL, NULL),
(19, 12, 1, 1, 'partidas', 2, 5, '2022-07-11 17:27:52', '2022-07-11 17:27:52', NULL, NULL),
(20, 13, 1, 2, 'partidas', 2, 20, '2022-07-12 15:58:24', '2022-07-12 15:58:24', NULL, NULL),
(21, 13, 1, 4, 'partidas', 2, 20, '2022-07-12 16:00:12', '2022-07-12 16:00:12', NULL, NULL),
(22, 12, 3, 13, 'materiales', 2, 1, '2022-09-06 14:42:39', '2022-09-06 14:42:39', NULL, NULL),
(23, 12, 3, 13, 'materiales', 2, 1, '2022-09-06 14:42:47', '2022-09-06 14:42:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `cod_cap` int(11) NOT NULL,
  `nom_cap` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`cod_cap`, `nom_cap`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Datos', NULL, NULL, NULL),
(2, 'Eléctrico', NULL, NULL, NULL),
(3, 'S.D.I', NULL, NULL, NULL),
(4, 'Alarmas', NULL, NULL, NULL),
(5, 'Mantenimiento', NULL, NULL, NULL),
(6, 'Iluminacion', NULL, NULL, NULL),
(7, 'CCTV', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulosbom`
--

CREATE TABLE `capitulosbom` (
  `cod_cbo` int(11) NOT NULL,
  `cod_bom_cbo` int(11) NOT NULL COMMENT 'codigo del bom',
  `nom_cbo` text DEFAULT NULL COMMENT 'nombere del capitulo',
  `can_cbo` int(11) DEFAULT NULL COMMENT 'cantidad de veces de este capitulo',
  `tip_cbo` varchar(50) DEFAULT NULL COMMENT 'tipo de capitulo',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `capitulosbom`
--

INSERT INTO `capitulosbom` (`cod_cbo`, `cod_bom_cbo`, `nom_cbo`, `can_cbo`, `tip_cbo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 15, 'nombre iluminacion', 123, '6', '2022-09-06 18:25:40', '2022-10-15 17:14:03', '2022-10-15 17:14:03'),
(2, 15, 'nombre 2dffdfdf', 22, '2', '2022-09-06 18:27:02', '2022-10-15 17:21:41', '2022-10-15 17:14:03'),
(3, 15, 'nombre 3', 33, '5', '2022-09-06 18:27:18', '2022-10-15 17:10:23', '2022-10-15 17:14:03'),
(4, 15, 'salida a toma regulada', 10, '2', '2022-09-07 11:15:27', '2022-09-07 11:15:27', '2022-10-15 17:14:03'),
(5, 15, 'alarma test', 10, '4', '2022-10-06 11:52:22', '2022-10-06 11:52:22', '2022-10-15 17:14:03'),
(6, 15, 'mi partida modificada4444 65656565', 5, '4', '2022-10-06 17:55:48', '2022-12-23 14:56:10', '2022-12-23 14:56:10'),
(7, 15, 'dfsdfsdf', 1, '2', '2022-10-15 17:22:52', '2022-10-15 17:44:06', '2022-10-15 17:44:06'),
(8, 15, 'leonardo modificado', 105, '3', '2022-10-15 17:23:08', '2022-12-23 14:56:07', '2022-12-23 14:56:07'),
(9, 15, '67676', 676767, '3', '2022-10-15 17:27:54', '2022-10-15 17:30:07', '2022-10-15 17:30:07'),
(10, 15, 'sdfdssd', 454545, '3', '2022-10-15 17:29:27', '2022-10-15 17:30:03', '2022-10-15 17:30:03'),
(11, 15, '4545', 565656, '3', '2022-10-15 17:34:14', '2022-10-15 17:44:30', '2022-10-15 17:44:30'),
(12, 15, 'para ver q cambia 2 cmbia muy rapidote', 800, '2', '2022-10-15 17:36:32', '2022-10-15 17:46:52', '2022-10-15 17:46:52'),
(13, 15, '333', 333, '3', '2022-10-15 17:37:01', '2022-10-15 17:43:01', '2022-10-15 17:43:01'),
(14, 15, '454545', 77, '2', '2022-10-15 17:39:05', '2022-10-15 17:43:44', '2022-10-15 17:43:44'),
(15, 15, '9998887777', 77, '2', '2022-10-15 17:39:40', '2022-12-23 14:56:04', '2022-12-23 14:56:04'),
(16, 15, 'para borrar', 9, '4', '2022-10-15 17:45:17', '2022-10-15 17:45:24', '2022-10-15 17:45:24'),
(17, 15, 'partida de mante', 5, '5', '2022-10-19 13:14:41', '2022-12-23 14:56:00', '2022-12-23 14:56:00'),
(18, 15, '4545', 676767, '2', '2022-10-19 13:16:29', '2022-10-19 14:10:14', '2022-10-19 14:10:14'),
(19, 15, 'partida de uli cambio mantenimient6o', 100, '5', '2022-10-19 13:19:15', '2022-12-23 14:55:56', '2022-12-23 14:55:56'),
(20, 15, 'Panel de incendios', 1, '3', '2022-10-21 12:00:09', '2022-12-23 14:53:56', '2022-12-23 14:53:56'),
(21, 16, 'SUMINISTRO E INSTALACIÓN CÁMARA IP SISTEMA CCTV PARQUEADEROS CASETA INGRESO, INCLUYE SOPORTE CAMARAS', 1, '5', '2022-11-08 11:48:58', '2022-12-23 14:53:40', '2022-12-23 14:53:40'),
(22, 16, 'SUMINISTRO E INSTALACIÓN DE SALIDA TELECOMUNICACIONES CAT. 6A', 1, '5', '2022-11-08 11:49:35', '2022-12-23 14:53:35', '2022-12-23 14:53:35'),
(23, 16, 'SUMINISTRO E INSTALACIÓN DE CANALIZACIÓN CON TUBERIA METALICA EMT', 3, '5', '2022-11-08 11:50:19', '2022-12-23 14:53:52', '2022-12-23 14:53:52'),
(24, 16, 'Sumnistro e instalcion puntos de datos', 20, '1', '2022-12-28 16:14:00', '2022-12-28 16:14:00', NULL),
(25, 15, 'ewerwer', 5, '2', '2023-01-13 17:27:52', '2023-01-13 17:27:52', NULL),
(26, 16, 'cámara dos megapixeles', 5, '7', '2023-01-31 08:45:16', '2023-01-31 08:45:16', NULL),
(27, 18, 'Camaras tipo Domo 2 Megapixeles', 6, '7', '2023-02-02 14:20:56', '2023-02-02 14:20:56', NULL),
(28, 18, 'partida general', 10, '6', '2023-02-27 09:20:02', '2023-02-27 09:20:02', NULL),
(29, 19, 'PUESTOS DE TRABAJO', 50, '1', '2023-03-10 14:43:14', '2023-03-10 14:43:14', NULL),
(30, 19, 'mi partida', 5, '3', '2023-07-17 15:38:16', '2023-07-17 15:38:16', NULL),
(31, 20, 'capitulo uno', 5, '3', '2023-07-25 15:44:01', '2023-07-25 15:44:01', NULL),
(32, 20, 'Partida 2', 10, '4', '2023-07-25 15:44:54', '2023-07-25 15:44:54', NULL),
(33, 20, 'aaaa', 1, '6', '2023-07-25 15:47:01', '2023-07-25 15:47:01', NULL),
(40, 20, 'EMT ', 30, '7', '2023-07-26 15:10:45', '2023-07-26 15:10:45', NULL),
(41, 21, 'Descripcion Partida', 1000, '4', '2025-10-08 14:48:16', '2025-10-08 14:48:16', NULL),
(42, 21, 'otra Descripcion Partida', 50, '3', '2025-10-08 15:42:47', '2025-10-08 15:42:47', NULL),
(43, 21, 'Salida terminada en roseta, 120, incluye tubería PVC diámetro de ½\" y/o ¾ según se indique en plano, cable12 AWG, caja, soporte y accesorios (no incluye luminaria)', 120, '2', '2025-10-08 15:52:35', '2025-10-08 15:52:35', NULL),
(44, 21, 'Salida terminada en roseta, 120, incluye tubería PVC diámetro de ½\" y/o ¾ según se indique en plano, cable12 AWG, caja, soporte y accesorios (no incluye luminaria)', 5424, '2', '2025-10-14 16:18:58', '2025-10-14 16:18:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `cod_cat` int(11) NOT NULL,
  `edi_cat` int(11) DEFAULT NULL COMMENT 'edicion a la q pertenece la categoria',
  `nom_cat` varchar(250) DEFAULT NULL COMMENT 'nombre',
  `tit_cat` varchar(250) DEFAULT NULL COMMENT 'titulo parrafo',
  `des_cat` text DEFAULT NULL COMMENT 'parrafa descripctivo',
  `img_cat` varchar(250) DEFAULT NULL COMMENT 'imagene lateral en la interna',
  `ad1_cat` varchar(250) DEFAULT NULL COMMENT 'pdf adjunto como participo',
  `ad2_cat` varchar(250) DEFAULT NULL COMMENT 'pdf quiero postularme',
  `ord_cat` int(11) DEFAULT NULL COMMENT 'orden',
  `ord_bam` int(11) DEFAULT NULL COMMENT 'orden de la rotacion',
  `eva_cat` int(11) DEFAULT NULL COMMENT 'evaluacion del proyecto: 1 para tipo  pelicula - 2 para tipo perfil de persona ',
  `slu_cat` varchar(250) DEFAULT NULL COMMENT 'slug categoria',
  `fon_cat` varchar(250) DEFAULT NULL COMMENT 'imagen de fondo',
  `tit_cat_ing` varchar(250) DEFAULT NULL,
  `des_cat_ing` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`cod_cat`, `edi_cat`, `nom_cat`, `tit_cat`, `des_cat`, `img_cat`, `ad1_cat`, `ad2_cat`, `ord_cat`, `ord_bam`, `eva_cat`, `slu_cat`, `fon_cat`, `tit_cat_ing`, `des_cat_ing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Film Projects', 'FILM PROJECTS', 'Catorce proyectos de largometraje, once de ellos de ficción, entre los que predomina el drama como género, dos documentales y un experimental. Estos son los proyectos seleccionados en la categoría Film Projects para el BAM 2022 en búsqueda de socios y coproductores para completar su financiación.', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://www.orimi.com/pdf-test.pdf', 'https://www.orimi.com/pdf-test.pdf', 1, 1, 1, 'projects', 'https://test.bogotamarket.com/images/site/banner_forum.jpg', NULL, '', NULL, '2023-11-27 10:47:41', NULL),
(2, 1, 'Series Projects', 'Series Projects', 'Nueve propuestas de series, dos de documental y siete de ficción incluyendo un thriller y una comedia. Estos son los proyectos de la industria audiovisual colombiana seleccionados en la categoría Series Projects para el BAM 2022 en búsqueda de socios y coproductores para completar su financiación.', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 2, 1, 1, 'series-projects', 'https://test.bogotamarket.com/images/site/banner_forum.jpg', NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Animation', 'FILM PROJECTS', 'Seis proyectos de animación, entre los que predomina el educativo y la aventura como género, todos ellos destinados al público infantil. Estos son los proyectos de la industria audiovisual colombiana seleccionados en la categoría Animation para el BAM 2022 en búsqueda de socios y coproductores para completar su financiación.', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 3, 1, 1, 'animation', 'https://test.bogotamarket.com/images/site/banner_forum.jpg', NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Screenings', 'FILM PROJECTS', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año tres largometrajes documentales y tres largometrajes de ficción, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 4, 1, 1, 'screenings', 'https://test.bogotamarket.com/images/site/banner_forum.jpg', NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Bammers', 'Bammers', 'Los talentos más jóvenes de la industria nacional tienen su cita en la edición número 13 del BAM con sus novedosas propuestas de cortos y largometrajes y series que van desde lo experimental a lo infantil. Se trata de los proyectos de ficción y documental de 14 nuevas promesas de la industria nacional que inician en el BAM un proceso de asesoramiento y networking con el que consolidan sus pasos dentro del circuito audiovisual. La selección de los Bammers estuvo a cargo de jurados de Proimagenes colombia.', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 7, 1, 2, 'bammers', 'https://test.bogotamarket.com/images/site/banner_forum.jpg', NULL, NULL, NULL, '2022-12-11 23:49:45', NULL),
(6, 1, 'Talents', 'FILM PROJECTS', 'CONVOCATORIA ABIERTA HASTA EL 11 DE ABRIL 2022\r\nPara su décima tercera edición, el Bogotá Audiovisual Market – BAM busca apoyar el desarrollo de largometrajes que requieran alternativas de financiación para continuar su proceso de producción y finalización. Para ello, el Mercado convoca a empresas productoras colombianas a que sean parte de la categoría FILM PROJECTS para que se postulen con un proyecto que haya finalizado su etapa de desarrollo y preproducción y que cuente con un mínimo demostrable de financiación.', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 20, 1, 1, 'talents', 'https://test.bogotamarket.com/images/site/banner_forum.jpg', NULL, NULL, NULL, NULL, '2022-11-06 10:50:49'),
(7, 1, 'Short Screenings', 'Short film Screenings', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 5, 1, 1, 'short-film-screenings', 'https://test.bogotamarket.com/images/site/banner_forum.jpg', NULL, NULL, NULL, NULL, NULL),
(8, 1, 'Stories\r\n', 'Stories\r\n', 'Doce guionistas colombianos, cuyos perfiles y proyectos fueron seleccionados por convocatoria, comparten sus historias en el BAM con la pretensión de encontrar el mejor camino para hacerlas realidad. El drama, la ciencia ficción y el suspenso, son los tres géneros propuestos por estos 12 guionistas, hombres y mujeres, desde distintas partes del territorio nacional.\r\n\r\n', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 'https://test.bogotamarket.com/images/site/ico_cat1.png', 6, 1, 2, 'stories', 'https://test.bogotamarket.com/images/site/banner_forum.jpg', NULL, NULL, NULL, '2022-12-11 23:49:39', NULL),
(9, 1, '999', '888', '<p>777</p>', NULL, NULL, NULL, 66, NULL, 2, NULL, NULL, '55', '<p>44</p>', '2022-12-11 23:47:08', '2022-12-11 23:48:27', '2022-12-11 23:48:27'),
(18, NULL, '111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-11 23:48:32', '2022-12-11 23:50:56', '2022-12-11 23:50:56'),
(19, 1, '1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-11 23:49:03', '2022-12-11 23:49:23', '2022-12-11 23:49:23'),
(20, NULL, '44444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-11 23:50:46', '2022-12-11 23:50:54', '2022-12-11 23:50:54'),
(21, 3, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-30 15:16:31', '2023-06-27 09:00:47', NULL),
(22, 2, 'Film projects', 'Film projects', '<p>&nbsp;fjsf dsf asjhfg sadjhfg ajshfg ajhfg jahfg ajhfg asjkhfg asjhfg dsjhfg sjh&nbsp;</p>', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '2023-02-16 15:23:57', '2023-02-16 15:23:57', NULL),
(23, 2, 'Series projects', 'Series projects', NULL, NULL, NULL, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL, '2023-02-18 11:40:43', '2023-02-18 11:40:56', NULL),
(24, 2, 'Animation', 'Animation', NULL, NULL, NULL, NULL, 3, NULL, 1, NULL, NULL, NULL, NULL, '2023-02-18 12:10:58', '2023-02-18 12:10:58', NULL),
(25, 2, 'Screenings', 'Screenings', NULL, NULL, NULL, NULL, 4, NULL, 1, NULL, NULL, NULL, NULL, '2023-02-18 12:33:44', '2023-02-18 12:34:24', NULL),
(26, 2, 'Short Screenings', 'Short Screenings', NULL, NULL, NULL, NULL, 5, NULL, 1, NULL, NULL, NULL, NULL, '2023-02-18 12:57:23', '2023-02-18 12:57:23', NULL),
(27, 2, 'Stories', 'Stories', NULL, NULL, NULL, NULL, 6, NULL, 2, NULL, NULL, NULL, NULL, '2023-02-18 13:22:52', '2023-02-18 13:23:05', NULL),
(28, 2, 'Bammers', 'Bammers', NULL, NULL, NULL, NULL, 7, NULL, 2, NULL, NULL, NULL, NULL, '2023-02-18 13:54:51', '2023-02-18 13:54:51', NULL),
(29, 4, 'Film Projects', 'FILM PROJECTS', '<p>Doce proyectos de largometraje, diez de ellos de ficci&oacute;n, entre los que predomina el drama como g&eacute;nero y dos documentales. Estos son los proyectos seleccionados en la categor&iacute;a Film Projects para el BAM 2023 en b&uacute;squeda de socios y coproductores para completar su financiaci&oacute;n.</p>', NULL, NULL, NULL, 1, NULL, 1, 'projects', NULL, 'Film Projects', '<p>Twelve feature film projects, ten of them fiction, among which drama predominates as a genre and two documentaries. These are the projects selected in the Film Projects category for BAM 2023 in search of partners and co-producers to complete their financing.</p>', '2023-05-09 15:00:26', '2023-11-27 10:48:29', NULL),
(30, 4, 'Animation ', 'ANIMATION', '<p style=\"text-align: justify;\">Esta categor&iacute;a se centra en los contenidos para audiencias infantiles, con seis proyectos que exploran historias para audiencias desde los 3 hasta los 14 a&ntilde;os, as&iacute; como en la producci&oacute;n de largometrajes para todas las audiencias que buscan alternativas de financiaci&oacute;n para continuar su proceso de producci&oacute;n y finalizaci&oacute;n. Estos talentosos creadores se enfocan en cautivar a los m&aacute;s j&oacute;venes, brindando entretenimiento educativo, imaginativo y enriquecedor en conjunto con g&eacute;neros que exploran la fantas&iacute;a, comedia o aventura.</p>', NULL, NULL, NULL, 2, NULL, 1, 'animation', NULL, 'Animation ', '<p style=\"text-align: justify;\">This category focuses on content for children\'s audiences, with six projects that explore stories for audiences from 3 to 14 years old, as well as the production of feature films for all audiences looking for financing alternatives to continue their production process and ending. These talented creators focus on captivating young people, providing educational, imaginative and enriching entertainment in conjunction with genres that explore fantasy, comedy or adventure.</p>', '2023-06-02 14:07:07', '2023-11-20 11:13:57', NULL),
(31, 4, 'BAMMERS', 'BAMMERS', '<p dir=\"ltr\" style=\"text-align: justify;\">Es una selecci&oacute;n exclusiva de creativos que representan lo mejor del talento audiovisual emergente en Colombia. A trav&eacute;s de sus proyectos, exploran diversas formas de expresi&oacute;n audiovisual, abarcando desde largometrajes y documentales hasta g&eacute;neros especializados como Horror &Eacute;tnico, Ficci&oacute;n, Experimental y Animaci&oacute;n. Aqu&iacute; conocer&aacute;n a 25 talentos de la industria audiovisual latinoamericana.</p>', NULL, NULL, NULL, 3, NULL, 2, 'bammers', NULL, 'BAMMERS', '<p>It is an exclusive selection of creatives who represent the best of emerging audiovisual talent in Colombia. Through their projects, they explore various forms of audiovisual expression, ranging from feature films and documentaries to specialized genres such as Ethnic Horror, Fiction, Experimental and Animation. Here they will meet 25 talents from the Latin American audiovisual industry.</p>', '2023-06-08 12:36:14', '2023-11-20 11:14:24', NULL),
(32, 4, 'Film Screenings', 'FILM SCREENINGS', '<p style=\"text-align: justify;\">Cuatro empresas colombianas destacadas en la industria audiovisual han llegado a la etapa avanzada de postproducci&oacute;n de sus largometrajes, que en BAM encuentran las herramientas necesarias para mejorar la promoci&oacute;n de sus obras, aumentar sus posibilidades de circulaci&oacute;n, reconocimiento por parte de aliados estrat&eacute;gicos como festivales de cine, agentes de venta y distribuidores tanto nacionales como internacionales.</p>', NULL, NULL, NULL, 4, NULL, 1, 'film-Screenings', NULL, 'Film Screenings', '<p>Four prominent Colombian companies in the audiovisual industry have reached the advanced stage of post-production of their feature films, and in BAM they find the necessary tools to improve the promotion of their works, increase their circulation possibilities, recognition by strategic allies such as film festivals. cinema, sales agents and distributors both national and international.</p>', '2023-06-08 14:17:18', '2023-11-20 11:14:45', NULL),
(33, 4, 'Series Projects', 'SERIES PROJECTS', '<p style=\"text-align: justify;\">En esta categor&iacute;a, encuentra siete productoras nacionales que cuentan con proyectos de series en desarrollo, donde se brinda una ruta de preparaci&oacute;n y una agenda de reuniones uno a uno que potenciar&aacute; las posibilidades de concretar negocios para llevar a cabo la realizaci&oacute;n de sus contenidos. Por otro lado, estas empresas productoras est&aacute;n listas para llevar sus ideas a la pantalla y cautivar al p&uacute;blico nacional e internacional con el desarrollo de proyectos desde conceptos de ficci&oacute;n hasta historias cautivadoras con g&eacute;neros como el documental, thriller hasta el humor negro.</p>', NULL, NULL, NULL, 5, NULL, 1, 'series-projects', NULL, 'Series Projects', '<p style=\"text-align: justify;\">In this category, you will find seven national production companies that have series projects in development, where a preparation route and a one-on-one meeting agenda are provided that will enhance the possibilities of closing deals to carry out the production of their content. On the other hand, these production companies are ready to bring their ideas to the screen and captivate national and international audiences with the development of projects from fictional concepts to captivating stories with genres such as documentary, thriller to black humor.</p>', '2023-06-08 14:54:30', '2023-11-20 11:15:13', NULL),
(34, 4, 'Stories', 'STORIES', '<p>La categor&iacute;a de Stories re&uacute;ne a doce talentos con pasi&oacute;n por la escritura y los audiovisuales con propuestas que se abren paso en la b&uacute;squeda de posibilidades de llevar las historias del papel a la pantalla grande. As&iacute; mismo, establecer conexiones, compartir ideas y explorar colaboraciones que impulsen la realizaci&oacute;n de historias de ficci&oacute;n, drama, comedia, thriller o animaci&oacute;n.</p>', NULL, NULL, NULL, 6, NULL, 2, 'stories', NULL, 'Stories', '<p style=\"text-align: justify;\">The Stories category brings together twelve talents with a passion for writing and audiovisuals with proposals that make their way in the search for possibilities of taking stories from paper to the big screen. Likewise, establish connections, share ideas and explore collaborations that promote the creation of fiction, drama, comedy, thriller or animation stories.</p>', '2023-06-09 16:19:00', '2023-11-20 11:15:44', NULL),
(35, 4, 'Rough Shorts', 'Rough Shorts - Laboratorio de montaje para cortos', '<p>Se re&uacute;nen seis cortometrajes con sus productores y directores para otorgarles la oportunidad &uacute;nica, que los profesionales del cine buscan, para perfeccionar sus habilidades en el proceso de montaje de proyectos audiovisuales. Aqu&iacute;, los seleccionados tendr&aacute;n la posibilidad de elevar la calidad de sus creaciones con la orientaci&oacute;n y retroalimentaci&oacute;n de expertos en la industria.</p>', NULL, NULL, NULL, 7, NULL, 1, 'rough-shorts', NULL, 'Rough Shorts', '<p style=\"text-align: justify;\">Six short films are brought together with their producers and directors to give them the unique opportunity that film professionals seek, to perfect their skills in the editing process of audiovisual projects. Here, those selected will have the opportunity to raise the quality of their creations with guidance and feedback from industry experts.</p>', '2023-06-16 10:20:04', '2023-11-20 11:16:10', NULL),
(36, 5, 'Film Projects', 'FILM PROJECTS', '<p style=\"text-align: justify;\">Quince proyectos de largometraje han sido seleccionados para el BAM 2024, incluyendo once de ficci&oacute;n, donde el drama y el thriller predominan como g&eacute;neros, adem&aacute;s de cuatro documentales. Estos proyectos est&aacute;n en b&uacute;squeda de socios y coproductores para completar su financiaci&oacute;n.</p>', NULL, NULL, NULL, 1, NULL, 1, 'film-projects', NULL, 'Film Projects', '<p style=\"text-align: justify;\">Fifteen projects have been selected for the BAM 2024 Film Projects category, including eleven fiction films, with drama and thriller predominating as genres, along with four documentaries. These projects are seeking partners and co-producers to complete their financing.</p>\n<p>&nbsp;</p>', '2024-04-02 20:10:36', '2024-06-13 16:55:40', NULL),
(37, 5, 'Animation', 'ANIMATION', '<p style=\"text-align: justify;\">Siete proyectos de animaci&oacute;n en los que predominan la ficci&oacute;n y la comedia como g&eacute;neros. Estos son los proyectos colombianos seleccionados en la categor&iacute;a de Animaci&oacute;n para BAM 15, en busca de socios y coproductores para completar su financiaci&oacute;n.</p>', NULL, NULL, NULL, 3, NULL, 1, 'animation', NULL, 'Animation', '<p style=\"text-align: justify;\">Seven animation projects in which fiction and comedy predominate as genres. These are the Colombian projects selected in the Animation category for BAM 15, seeking partners and co-producers to complete their financing.</p>', '2024-04-02 20:10:50', '2024-06-13 20:35:43', NULL),
(38, 5, 'Bammers', 'BAMMERS', NULL, NULL, NULL, NULL, 3, NULL, 2, 'bammers', NULL, NULL, NULL, '2024-04-02 20:11:43', '2024-04-03 14:35:51', '2024-04-03 14:35:51'),
(39, 5, 'Film Screenings', 'FILM SCREENINGS', NULL, NULL, NULL, NULL, 4, NULL, 1, 'film-screenings', NULL, NULL, NULL, '2024-04-02 20:12:11', '2024-04-03 14:36:01', '2024-04-03 14:36:01'),
(40, 5, 'Series Projects', 'SERIES PROJECTS', '<p style=\"text-align: justify;\">En esta categor&iacute;a se encuentran seis productoras nacionales y una argentina que est&aacute;n desarrollando proyectos de series. Desde el BAM, ofrecemos una ruta de fortalecimiento y una agenda de reuniones uno a uno para potenciar las oportunidades de concretar negocios y llevar a cabo la realizaci&oacute;n de estos contenidos. Por otro lado, estas empresas productoras est&aacute;n preparadas para llevar sus ideas a la pantalla y cautivar tanto al p&uacute;blico nacional como internacional con una variedad de proyectos, desde conceptos de ficci&oacute;n hasta historias cautivadoras que abarcan g&eacute;neros como el thriller y el suspenso.&nbsp;</p>', NULL, NULL, NULL, 2, NULL, 1, 'series-projects', NULL, 'Series Projects', '<p style=\"text-align: justify;\">In this category, there are six national production companies and one Argentine company developing series projects. From BAM, we offer a strengthening pathway and a one-on-one meeting agenda to enhance business opportunities and realize these contents. Additionally, these production companies are ready to bring their ideas to the screen and captivate both national and international audiences with a variety of projects, from fiction concepts to compelling stories spanning genres such as thriller and suspense.</p>', '2024-04-02 20:12:38', '2024-06-13 20:20:39', NULL),
(41, 5, 'Stories', 'STORIES', '<p style=\"text-align: justify;\">La categor&iacute;a Stories agrupa a once talentos apasionados por la escritura y los medios audiovisuales, quienes presentan propuestas que buscan abrirse paso en la b&uacute;squeda de llevar las historias del papel a la pantalla grande. Adem&aacute;s, buscan establecer conexiones, compartir ideas y promover colaboraciones para impulsar la realizaci&oacute;n de historias que abarcan g&eacute;neros como ficci&oacute;n, drama, comedia, thriller y aventura.</p>', NULL, NULL, NULL, 4, NULL, 2, 'stories', NULL, 'Stories', '<p style=\"text-align: justify;\">The Stories category brings together eleven talents passionate about writing and audiovisual media, who present proposals aiming to transition stories from paper to the big screen. Additionally, they seek to establish connections, share ideas, and promote collaborations to drive the creation of stories that span genres such as fiction, drama, comedy, thriller, and adventure.</p>', '2024-04-02 20:12:59', '2024-06-13 20:38:02', NULL),
(42, 5, 'Rough Shorts', 'ROUGH SHORTS', NULL, NULL, NULL, NULL, 7, NULL, 1, 'rough-shorts', NULL, NULL, NULL, '2024-04-02 20:13:20', '2024-04-03 14:35:46', '2024-04-03 14:35:46'),
(44, 5, 'Film Screenings', 'Film Screenings', '<p style=\"text-align: justify;\">Con sus largometrajes en estado de postproducci&oacute;n, cuatro productoras colombianas tendr&aacute;n encuentros con expertos internacionales invitados a las proyecciones de mercado. Los realizadores podr&aacute;n mejorar la promoci&oacute;n de sus obras, aumentar sus posibilidades de circulaci&oacute;n, conectar con posibles aliados estrat&eacute;gicos, como festivales de cine, agentes de venta y distribuidores internacionales y nacionales.</p>', NULL, NULL, NULL, 5, NULL, 1, 'film-screenings', NULL, 'Film Screenings', '<p style=\"text-align: justify;\">With their feature films in post-production, four Colombian production companies will have meetings with international experts invited to the market screenings. The creators will be able to improve the promotion of their works, increase their distribution possibilities, and connect with potential strategic partners, such as film festivals, sales agents, and both international and national distributors.</p>', '2024-06-11 09:33:43', '2024-06-13 20:13:54', NULL),
(45, 5, 'BAMMERS', 'BAMMERS', '<p style=\"text-align: justify;\">Es una selecci&oacute;n de los j&oacute;venes talentos de la industria audiovisual nacional e internacional. En esta decimoquinta edici&oacute;n del BAM, los 23 realizadores estar&aacute;n invitados a experimentar, de la mano de sus proyectos, una agenda de formaci&oacute;n y de industria dise&ntilde;ada para participar de las din&aacute;micas de un mercado internacional de contenidos audiovisuales.&nbsp;</p>', NULL, NULL, NULL, 6, NULL, 2, 'bammners', NULL, 'BAMMERS', '<p style=\"text-align: justify;\">It is a selection of young talents from the national and international audiovisual industry. In this fifteenth edition of BAM, the 23 creators will be invited to experience, alongside their projects, a training and industry agenda designed to engage with the dynamics of an international audiovisual content market.</p>', '2024-06-11 09:53:14', '2024-06-13 20:26:21', NULL),
(46, 5, 'Rough Shorts', 'Rough Shorts', '<p style=\"text-align: justify;\">Con los seis cortometrajes que fueron seleccionados para esta edici&oacute;n del BAM, se retoma la apuesta por los productores y directores emergentes. Estos ser&aacute;n parte de un laboratorio de montaje enfocado en construcci&oacute;n narrativa. Los proyectos, en su gran mayor&iacute;a documentales, tambi&eacute;n podr&aacute;n explorar rutas de circulaci&oacute;n y fortalecer sus redes de contacto dentro del marco de una agenda de mercado.</p>', NULL, NULL, NULL, 7, NULL, 1, 'rough-horts', NULL, 'Rough Shorts', '<p style=\"text-align: justify;\">With the six short films selected for this edition of BAM, the focus on emerging producers and directors is renewed. They will be part of an editing lab focused on narrative construction. The projects, mostly documentaries, will also have the opportunity to explore distribution pathways and strengthen their networks within the framework of a market agenda.</p>', '2024-06-11 09:54:10', '2024-06-13 17:40:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriasconvocatoria`
--

CREATE TABLE `categoriasconvocatoria` (
  `cod_cac` int(11) NOT NULL,
  `nom_cac` varchar(250) DEFAULT NULL COMMENT 'nombre',
  `tit_cac` varchar(250) DEFAULT NULL COMMENT 'titulo parrafo',
  `des_cac` text DEFAULT NULL COMMENT 'parrafa descripctivo',
  `img_cac` varchar(250) DEFAULT NULL COMMENT 'imagene lateral en la interna',
  `ad1_cac` varchar(250) DEFAULT NULL COMMENT 'pdf adjunto como participo',
  `ad2_cac` varchar(250) DEFAULT NULL COMMENT 'pdf quiero postularme',
  `ord_cac` int(11) DEFAULT NULL COMMENT 'orden',
  `slu_cac` varchar(250) DEFAULT NULL COMMENT 'slug categoria',
  `fon_cac` varchar(250) DEFAULT NULL COMMENT 'imagen de fondo',
  `tit_cac_ing` varchar(250) DEFAULT NULL,
  `des_cac_ing` text DEFAULT NULL,
  `col_cac` varchar(20) DEFAULT NULL COMMENT 'color de la categoria',
  `ico_cac` text DEFAULT NULL COMMENT 'icono para guia',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cifras`
--

CREATE TABLE `cifras` (
  `cod_cif` int(11) NOT NULL,
  `tit_cif` varchar(250) DEFAULT NULL COMMENT 'titulo cifra',
  `tit_cif_ing` varchar(250) DEFAULT NULL COMMENT 'titulo en ingles',
  `dat_cif` varchar(200) DEFAULT NULL COMMENT 'dato de la cifra',
  `ord_cif` int(11) DEFAULT NULL COMMENT 'orden del registro',
  `tip_cif` int(11) DEFAULT NULL COMMENT '1 doble columna, - 2 una columna',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `cifras`
--

INSERT INTO `cifras` (`cod_cif`, `tit_cif`, `tit_cif_ing`, `dat_cif`, `ord_cif`, `tip_cif`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Acreditados de industria', 'Industry accredited  ', '1.363', 1, 2, '2021-09-09 00:44:26', '2023-09-04 13:16:42', NULL),
(2, 'Citas de negocios ', 'Effective business appointments  ', '520', 2, 2, '2021-09-09 00:44:26', '2023-09-01 08:33:01', NULL),
(3, 'Países representados', 'Countries represented', '18', 3, 4, '2021-09-09 00:44:26', '2023-09-01 08:31:06', NULL),
(4, 'Citas entre contenidos seleccionados y compradores', 'Citas entre contenidos seleccionados y compradores', '466', 4, 4, '2021-09-09 00:44:26', '2022-08-23 19:06:31', '2022-08-23 19:06:31'),
(6, 'Acreditados de población étnica', 'Acreditados de población étnica', '56', 5, 4, NULL, NULL, '2022-04-26 17:37:19'),
(8, 'Invitados internacionales de 17 países', 'Invitados internacionales de 17 países', '92', 6, 4, NULL, NULL, '2022-04-26 17:37:23'),
(21, 'Invitados internacionales', 'International guests', '105', 4, 2, '2021-09-09 00:44:26', '2023-09-01 08:31:11', NULL),
(22, 'Acreditados de poblaciones étnicas', 'Afro-descendants, Indigenous, Rom and racialized accredited groups ', '79', 5, 2, '2021-09-09 00:44:26', '2023-09-01 08:29:10', NULL),
(23, 'Contenidos y talentos', 'Audiovisual projects', '116', 6, 4, '2021-09-09 00:44:26', '2023-09-01 08:30:59', NULL),
(24, 'Citas entre contenidos seleccionados y compradores', 'Citas entre contenidos seleccionados y compradores', '466', 10, 4, '2021-09-09 00:44:26', '2022-08-23 19:06:31', '2022-08-23 19:06:31'),
(25, 'Acreditados de población étnica', 'Acreditados de población étnica', '56', 11, 4, NULL, NULL, '2022-04-26 17:37:19'),
(26, 'Invitados internacionales de 17 países', 'Invitados internacionales de 17 países', '92', 12, 4, NULL, NULL, '2022-04-26 17:37:23'),
(27, '11s', '22', '33', 10, 2, '2022-11-13 02:53:57', '2022-11-13 03:03:30', '2022-11-13 03:03:30'),
(28, 'aaa', 'bbb', 'cc', NULL, NULL, '2022-11-13 02:54:57', '2022-11-13 02:55:21', '2022-11-13 02:55:21'),
(29, '1111', '222', '333', 444, 4, '2022-11-13 03:03:21', '2022-11-13 03:03:27', '2022-11-13 03:03:27'),
(30, '111999', '2229899', '333999', 6, 2, '2022-12-10 17:00:33', '2022-12-10 17:01:16', '2022-12-10 17:01:16'),
(31, 'Proyectos seleccionados', NULL, '996', 7, 2, '2022-12-12 16:22:50', '2022-12-14 09:12:22', '2022-12-14 09:12:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cod_cli` int(11) NOT NULL COMMENT 'codigo',
  `nom_cli` varchar(250) DEFAULT NULL COMMENT 'nombre ',
  `dir_cli` varchar(250) DEFAULT NULL COMMENT 'direccion\r\n',
  `nit_cli` varchar(100) DEFAULT NULL COMMENT 'nit',
  `log_nit` varchar(250) DEFAULT NULL COMMENT 'logo',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cod_cli`, `nom_cli`, `dir_cli`, `nit_cli`, `log_nit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cliente 1', 'la calle 100', '9000-1', NULL, NULL, NULL, NULL),
(2, 'Lys', 'calle 100', '9000-1', NULL, NULL, NULL, NULL),
(3, 'Transmilenio', 'calle 100', '9000-1', NULL, NULL, NULL, NULL),
(4, 'cliente 100', 'calle 100', '9000-1', NULL, NULL, NULL, NULL),
(5, 'zona franca', 'calle 100', '9000-1', NULL, NULL, NULL, NULL),
(6, '1111', '333', '222', NULL, '2024-12-18 14:33:39', '2024-12-18 14:34:59', '2024-12-18 14:34:59'),
(7, 'aaa', 'ddddd', 'sss', NULL, '2024-12-18 14:33:51', '2024-12-18 14:34:55', '2024-12-18 14:34:55'),
(8, '999', '777', '888', NULL, '2024-12-18 14:34:21', '2024-12-18 14:34:52', '2024-12-18 14:34:52'),
(9, '999', '777', '888', 'http://localhost/images/matenimiento/1734554136_03065fbf7f670b73ed26.jpg', '2024-12-18 14:35:18', '2024-12-18 14:35:38', NULL),
(10, '111144', '33334', '222244', 'http://localhost/images/matenimiento/1751503351_29bb2b3ed45b9dbbc37a.png', '2025-07-02 19:42:33', '2025-07-02 19:42:40', NULL),
(11, '11111', '3333', '2222', NULL, '2025-07-23 19:29:43', '2025-07-23 19:29:43', NULL),
(12, '11111111', NULL, NULL, NULL, '2025-07-23 19:34:03', '2025-07-23 19:34:03', NULL),
(13, '989898989898954545454545', NULL, NULL, NULL, '2025-07-23 19:34:12', '2025-07-23 19:34:22', NULL),
(14, 'cliente para PAU', '22222', '11111', NULL, '2025-10-08 13:34:54', '2025-10-08 13:34:54', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigosacreditacion`
--

CREATE TABLE `codigosacreditacion` (
  `cod_coa` int(11) NOT NULL,
  `cod_ali_coa` int(5) DEFAULT NULL COMMENT 'codigo aliado',
  `sec_coa` varchar(12) DEFAULT NULL COMMENT 'secreto',
  `fin_coa` int(2) DEFAULT 0 COMMENT '0 libre  - 1 usado',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comiteevaluador`
--

CREATE TABLE `comiteevaluador` (
  `cod_coe` int(11) NOT NULL,
  `cod_cat_coe` int(11) DEFAULT NULL COMMENT 'codigo de la categoria evaluada',
  `nom_coe` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'nombre de la personas',
  `pai_coe` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'pais de la paersona',
  `per_coe` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'perfil',
  `per_coe_ing` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'perfil ingles',
  `ord_coe` int(11) DEFAULT NULL COMMENT 'orden del registro',
  `img_coe` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'imagen del perfil',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `cod_con` int(11) NOT NULL,
  `slu_con` varchar(200) NOT NULL COMMENT 'slug para url y busquedas',
  `img_con` varchar(250) DEFAULT NULL COMMENT 'imagen',
  `tit_con_esp` varchar(250) DEFAULT NULL COMMENT 'titulo de la seccion',
  `tit_con_ing` varchar(250) DEFAULT NULL,
  `des_con_esp` text DEFAULT NULL COMMENT 'descripcion de la seccion',
  `des_con_ing` text DEFAULT NULL,
  `cod_mep_con` int(11) DEFAULT NULL COMMENT 'codigo del menu principal',
  `img2_con_esp` varchar(250) DEFAULT NULL COMMENT 'imagen auxiliar solo para bam anteriores\r\n',
  `men_con` varchar(100) DEFAULT NULL COMMENT 'nombre del menu',
  `cod_gal_con` int(11) NOT NULL COMMENT 'galerai relacionada',
  `men_con_ing` varchar(100) DEFAULT NULL COMMENT 'nombre del menu',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`cod_con`, `slu_con`, `img_con`, `tit_con_esp`, `tit_con_ing`, `des_con_esp`, `des_con_ing`, `cod_mep_con`, `img2_con_esp`, `men_con`, `cod_gal_con`, `men_con_ing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'que-es-el-bam', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', '¿Qué es el BAM? ', 'About BAM', '<p dir=\"ltr\">El Bogot&aacute; Audiovisual Market - BAM, el mercado audiovisual m&aacute;s importante de Colombia, es la realizaci&oacute;n de una de las vocaciones esenciales de Proim&aacute;genes Colombia y de la C&aacute;mara de Comercio de Bogot&aacute;: ofrecer espacios de encuentro entre los diferentes agentes del sector audiovisual con el fin de fomentar intercambios entre profesionales, propiciar nuevos negocios e impulsar nuevos talentos.</p>\n<p dir=\"ltr\">&nbsp;</p>\n<p dir=\"ltr\">El BAM es un mercado que centraliza la oferta de contenidos audiovisuales nacionales y que busca acercar la mejor demanda posible para la creaci&oacute;n de una industria sostenible y competitiva a nivel internacional. Durante 14 a&ntilde;os el BAM ha estado identificando, fortaleciendo y visibilizando a creadores y creadoras audiovisuales en el pa&iacute;s con sus tem&aacute;ticas y formatos diversos y facilitando la circulaci&oacute;n de sus contenidos a nivel nacional e internacional y la creaci&oacute;n de alianzas para la financiaci&oacute;n de los mismos.&nbsp;</p>\n<p dir=\"ltr\">&nbsp;</p>\n<p dir=\"ltr\">En cada edici&oacute;n el BAM proporciona a sus visitantes recursos y actividades especializadas de formaci&oacute;n, relacionamiento y citas de negocio para que los sue&ntilde;os se concreten a trav&eacute;s de historias contadas con im&aacute;genes en movimiento. El mercado tambi&eacute;n funciona como un ente articulador de estrategias de aliados p&uacute;blicos y privados para el cumplimiento de objetivos comunes para el desarrollo de la industria audiovisual y es una plataforma de promoci&oacute;n para que empresas e instituciones, nacionales e internacionales, puedan presentar nuevos productos, programas o iniciativas al servicio del sector audiovisual.</p>', '<p dir=\"ltr\">The Bogota Audiovisual Market - BAM, the most important audiovisual market in Colombia, is the realization of one of the essential vocations of Proim&aacute;genes Colombia and the Bogota Chamber of Commerce: to offer meeting spaces between the different agents of the audiovisual sector in order to promote exchanges between professionals, foster new businesses and promote new talents.</p>\n<p dir=\"ltr\">The BAM is a market that centralizes the supply of national audiovisual content and seeks to bring together the best possible demand for the creation of a sustainable and competitive industry at the international level. For 13 years the BAM has been identifying, strengthening and making visible audiovisual creators in the country with its diverse themes and formats and facilitating the circulation of its contents nationally and internationally and the creation of alliances for their financing.&nbsp;</p>\n<p dir=\"ltr\">In each edition, BAM provides its visitors with resources and specialized training activities, networking and business appointments so that dreams come true through stories told with moving pictures. The market also functions as an articulating entity of strategies of public and private allies for the fulfillment of common objectives for the development of the audiovisual industry and is a promotional platform for companies and institutions, national and international, to present new products, programs or initiatives to serve the audiovisual sector.</p>', 1, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2024-02-21 09:30:17', NULL),
(28, 'faq', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Preguntas frecuentes', 'Frequently Asked Questions', '', '\r\n\r\n', 1, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2023-11-25 14:04:11', NULL),
(29, 'aliados', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Aliados', 'Partners', '<p>Nuestros aliados son fundamentales para fortalecer el sector audiovisual en Colombia y crear m&aacute;s oportunidades para los diferentes actores que intervienen en el.</p>\n<p>Todos los a&ntilde;os se suman programas, empresas e instituciones que contribuyen al crecimiento del mercado y facilitan este espacio de encuentro. &iexcl;Gracias por apostarle a la consolidaci&oacute;n de una industria fuerte y sostenible! As&iacute; mismo, la programaci&oacute;n acad&eacute;mica, sumada a otras actividades que el mercado organiza, permiten a los asistentes estar al tanto de las nuevas tendencias de la industria y ampliar los horizontes de futuros proyectos.</p>', '<p dir=\"ltr\">Our partners are fundamental to strengthen the audiovisual sector in Colombia and create more opportunities for the different actors involved in it.</p>\n<p dir=\"ltr\">Every year we add new programs, companies and institutions that contribute to the growth of the market and facilitate this meeting space. Thank you for betting on the consolidation of a strong and sustainable industry! Likewise, the academic activities organized by the market, in addition to other activities, allow attendees to keep abreast of new industry trends and broaden the horizons of future projects.</p>', 1, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2023-11-25 14:25:50', NULL),
(30, 'sedes', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Sedes', 'Venues ', '<p>El BAM cuenta con dos sedes tradicionales principales: la sede INDUSTRIA en la C&aacute;mara de Comercio de Bogot&aacute; de Chapinero, la sede EXPERIENCIA en el Gimnasio Moderno.</p>', '<p dir=\"ltr\">The BAM has two main traditional venues: the INDUSTRY venue at the Bogota Chamber of Commerce in Chapinero, and the EXPERIENCE venue at the Gimnasio Moderno of Bogota.</p>\n<p>&nbsp;</p>', 1, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2023-06-13 12:45:24', NULL),
(31, 'equipo', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Equipo', 'Equipo', '\r\n\r\n', '\r\n\r\n', 1, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2023-11-30 14:15:14', NULL),
(32, 'convocatorias', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Convocatorias', 'Convocatorias BAM 2023', '', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.', 2, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2022-12-14 10:12:50', NULL),
(33, 'prensa', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Oficina de prensa', 'Oficina de prensa', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.', 6, '', 'NEWSLETTERS Y COMUNICADOS DE PRENSA', 0, 'NEWSLETTERS and press releases', '2021-09-03 17:08:00', '2023-11-30 14:24:54', NULL),
(34, 'contacto', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Contacto', 'Convocatorias BAM 2023', '<p>Si tiene inquietudes sobre el BAM es posible que encuentre la respuesta en nuestra secci&oacute;n de PREGUNTAS FRECUENTES. Si quiere contactarnos, llene los campos a continuaci&oacute;n.</p>', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.', 2, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2022-12-09 17:26:55', NULL),
(35, 'regiones', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'BAM Regiones', 'BAM en las regiones...', '<p><span lang=\"ES\">El <strong>Bogot&aacute; Audiovisual Market - BAM</strong> es el mercado audiovisual m&aacute;s importante de Colombia y es organizado por la C&aacute;mara de Comercio de Bogot&aacute; y Proim&aacute;genes Colombia, con el apoyo del Fondo para el Desarrollo Cinematogr&aacute;fico de Colombia. El BAM es un espacio de conexi&oacute;n e intercambio del sector, en el que las ideas, los proyectos y los talentos convergen y participan de actividades especializadas. </span><span lang=\"ES\">Este a&ntilde;o con el apoyo del <strong>Ministerio de Tecnolog&iacute;as para la Informaci&oacute;n y las Comunicaciones MinTIC</strong>, llevaremos en su tercera edici&oacute;n toda la experiencia de nuestro mercado a las regiones de Colombia. Nuestros destinos para este a&ntilde;o son: <strong>Pasto</strong> (Agosto 22 al 25), <strong>Pereira</strong> (Septiembre 25 al 28), <strong>Cali</strong> (Octubre 17 al 20) y <strong>Santa Marta</strong> (Noviembre 7 al 10). Esta iniciativa busca conocer los agentes de la industria audiovisual de la regi&oacute;n, as&iacute; como promover espacios de formaci&oacute;n, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y la construcci&oacute;n de redes entre los principales actores del gremio audiovisual en la zona oriente del nuestro pa&iacute;s.</span></p>\n<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;BAM Regiones es la iniciativa del Ministerio de las Tecnolog&iacute;as de la Informaci&oacute;n y de las Comunicaciones MinTIC y Proim&aacute;genes Colombia, que busca llevar a distintas ciudades de Colombia la experiencia del mercado audiovisual m&aacute;s importante del pa&iacute;s con el fin de conocer las formas de hacer contenidos y narrar historias en la industria local.\\nEl BAM en las regiones tiene como objetivo principal reunir a realizadores y productores audiovisuales desde profesionales independientes, empresas, estudiantes y otros actores interesados en la creaci&oacute;n audiovisual y brindar espacios de formaci&oacute;n y fortalecimiento, networking y relacionamiento que permitan dar una mayor visibilidad y oportunidades a sus proyectos y contenidos. En 2023 visitaremos: Pasto (agosto 22 - 25), Pereira (septiembre 25 - 28), Cali (octubre 17 -20) y Santa Marta (noviembre 7 - 10).\\n&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:33567683,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15724527},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10,&quot;28&quot;:1}\">&nbsp;</span></p>', 'Este año en nuestra segunda edición del BAM en las regiones con el apoyo del Ministerio de Tecnologías de la Información y las Comunicaciones MinTIC y Teveandina, llevaremos toda la experiencia de nuestro mercado a nuevas ciudades de Colombia, y desde junio hasta octubre, haremos BAM en Armenia, Tunja, Riohacha y Villavicencio.\r\n\r\nEsta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, así como promover espacios de formación, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y a la construcción de redes entre los principales actores del gremio audiovisual en cada una de estas ciudades.', 5, 'https://bogotamarket.com/images/site/1690488593_73e1ce0aea5b1cd474c0.png', '', 2, '', '2021-09-03 17:08:00', '2023-09-04 13:16:58', NULL),
(36, '', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Nuestras actividades en región', 'Nuestras actividades en región', '<ul>\n<li><strong> Talleres con &eacute;nfasis espec&iacute;ficos: </strong>El eje de formaci&oacute;n de BAM en las Regiones comprende sesiones de taller en tem&aacute;ticas espec&iacute;ficas concertados con la industria local, los cuales se desarrollan el d&iacute;a previo a la apertura del mercado con un m&aacute;ximo de 10 proyectos. Para participar debe postularse con la informaci&oacute;n de su proyecto al momento de formalizar su acreditaci&oacute;n en l&iacute;nea.</li>\n<li><strong>Formaci&oacute;n con invitados expertos: </strong>Brindamos a nuestros acreditados una agenda con masterclass y mesas redondas con expertos de la industria sobre temas de actualidad del audiovisual pensados desde las necesidades y b&uacute;squedas de los productores y realizadores locales.</li>\n<li><strong>Relacionamiento: </strong>El encuentro y el intercambio son la base de nuestro mercado, abrimos espacios para nuestros acreditados como citas r&aacute;pidas, proyecciones en la ciudad y happy hour de relacionamiento con el apoyo de nuestros anfitriones.</li>\n<li><strong>Networking: </strong>Nuestras mesas redondas y sesiones de One to Many (exclusivas para los proyectos seleccionados para los talleres con &eacute;nfasis espec&iacute;ficos) con compradores nacionales e internacionales son los espacios propicios para la formaci&oacute;n de redes profesionales y de negocios.</li>\n</ul>', 'TALLER DE PITCH\r\nUn eje central del BAM en las Regiones es el taller de pitch que se desarrolla dos días previos al mercado con un máximo de 10 proyectos. Para participar debe postularse con la información de su proyecto al momento de formalizar su acreditación en línea.\r\n\r\nFORMACIÓN\r\nBrindamos a nuestros acreditados una agenda con masterclass, mesas redondas y talleres con expertos de la industria sobre temas de actualidad del audiovisual pensados desde las necesidades y búsquedas de los productores y realizadores locales.\r\n\r\nRELACIONAMIENTO\r\nEl encuentro y el intercambio son la base de nuestro mercado, abrimos espacios para nuestros acreditados como citas rápidas, proyecciones en la ciudad y happy hour de relacionamiento con el apoyo de nuestros anfitriones.\r\n\r\nNETWORKING\r\nNuestras mesas redondas y sesiones de One to Many (exclusivas para los proyectos seleccionados en el Taller de Pitch) con compradores nacionales e internacionales son los espacios propicios para la formación de redes profesionales y de negocios.', 5, 'https://bogotamarket.com/images/site/1690388745_539ac850786829187b9b.png', '', 0, '', '2021-09-03 17:08:00', '2023-07-26 11:26:00', NULL),
(37, 'ediciones', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'BAM 2021\r\n', 'BAM en las regiones', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.', 'Este año en nuestra segunda edición del BAM en las regiones con el apoyo del Ministerio de Tecnologías de la Información y las Comunicaciones MinTIC y Teveandina, llevaremos toda la experiencia de nuestro mercado a nuevas ciudades de Colombia, y desde junio hasta octubre, haremos BAM en Armenia, Tunja, Riohacha y Villavicencio.\r\n\r\nEsta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, así como promover espacios de formación, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y a la construcción de redes entre los principales actores del gremio audiovisual en cada una de estas ciudades.', 6, 'http://lyssoluciones.com/desarrollos/bam/markup/images/site/banner_EdicionesAnteriores.jpg', 'BAM EDICIONES ANTERIORES', 0, 'BAM previous editions', '2021-09-03 17:08:00', '2022-12-09 17:26:55', NULL),
(38, 'registro', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Creación de cuenta BAM ', 'Formulario de registro en BAM', '<p>Cree su cuenta BAM para poder iniciar el proceso de acreditaci&oacute;n y acceder a los servicios en linea y a toda la informaci&oacute;n del Bogot&aacute; Audiovisual Market - BAM 2024</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu fermentum enim. Phasellus mattis libero ut eleifend lacinia. Vestibulum eget volutpat ligula, nec venenatis justo. Phasellus sit amet dictum erat. Sed id ex orci. Donec vestibulum metus sed lacus auctor, vel vulputate eros fringilla. Vivamus ornare purus accumsan, mollis lacus sed, varius dolor. Fusce consequat orci quis leo pellentesque, a eleifend orci faucibus. Ut vehicula dictum ex vitae porttitor. Morbi est mi, posuere et elit non, imperdiet ornare mi. Maecenas eu interdum ipsum, eu interdum leo.', 0, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2023-05-19 19:18:04', NULL),
(39, 'activacion', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Activar cuenta ', 'Activar cuenta \r\n', 'Se ha enviado a la dirección de correo electrónico facilitada un mensaje con un enlace que confirma su registro. Haga clic en el enlace para activar su cuenta.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu fermentum enim. Phasellus mattis libero ut eleifend lacinia. Vestibulum eget volutpat ligula, nec venenatis justo. Phasellus sit amet dictum erat. Sed id ex orci. Donec vestibulum metus sed lacus auctor, vel vulputate eros fringilla. Vivamus ornare purus accumsan, mollis lacus sed, varius dolor. Fusce consequat orci quis leo pellentesque, a eleifend orci faucibus. Ut vehicula dictum ex vitae porttitor. Morbi est mi, posuere et elit non, imperdiet ornare mi. Maecenas eu interdum ipsum, eu interdum leo.', 0, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2022-12-09 17:26:55', NULL),
(40, 'panelusuario', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Hola', 'Formulario de registro en BAM', 'Esta es su área personal del sitio web del Bogotá Audiovisual Market. Ya puede iniciar su proceso de solicitud de acreditación. \n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu fermentum enim. Phasellus mattis libero ut eleifend lacinia. Vestibulum eget volutpat ligula, nec venenatis justo. Phasellus sit amet dictum erat. Sed id ex orci. Donec vestibulum metus sed lacus auctor, vel vulputate eros fringilla. Vivamus ornare purus accumsan, mollis lacus sed, varius dolor. Fusce consequat orci quis leo pellentesque, a eleifend orci faucibus. Ut vehicula dictum ex vitae porttitor. Morbi est mi, posuere et elit non, imperdiet ornare mi. Maecenas eu interdum ipsum, eu interdum leo.', 0, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2022-12-09 17:26:55', NULL),
(41, 'acreditacion', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Formulario de acreditación\r\n', 'Formulario de registro en BAM', 'Rellene todos los campos obligatorios del formulario de acreditación y revise la exactitud de los mismos. Una vez revisada su solicitud, el equipo BAM le comunicará por correo electrónico si ha sido aceptada. Le agredecemos por su paciencia, el tiempo de aprobación podrá tardar hasta 5 días hábiles.\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu fermentum enim. Phasellus mattis libero ut eleifend lacinia. Vestibulum eget volutpat ligula, nec venenatis justo. Phasellus sit amet dictum erat. Sed id ex orci. Donec vestibulum metus sed lacus auctor, vel vulputate eros fringilla. Vivamus ornare purus accumsan, mollis lacus sed, varius dolor. Fusce consequat orci quis leo pellentesque, a eleifend orci faucibus. Ut vehicula dictum ex vitae porttitor. Morbi est mi, posuere et elit non, imperdiet ornare mi. Maecenas eu interdum ipsum, eu interdum leo.', 0, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2022-12-09 17:26:55', NULL),
(42, 'panelusuariofin', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Hola', 'Formulario de registro en BAM', 'Esta es su área personal del sitio web del Bogotá Audiovisual Market.\r\nSu solicitud de acreditación ha sido enviada y se tramitará lo antes posible. Le agredecemos por su paciencia, el tiempo de aprobación podrá tardar hasta 5 días hábiles. Le comunicaremos por correo electrónico si su solicitud ha sido aceptada.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu fermentum enim. Phasellus mattis libero ut eleifend lacinia. Vestibulum eget volutpat ligula, nec venenatis justo. Phasellus sit amet dictum erat. Sed id ex orci. Donec vestibulum metus sed lacus auctor, vel vulputate eros fringilla. Vivamus ornare purus accumsan, mollis lacus sed, varius dolor. Fusce consequat orci quis leo pellentesque, a eleifend orci faucibus. Ut vehicula dictum ex vitae porttitor. Morbi est mi, posuere et elit non, imperdiet ornare mi. Maecenas eu interdum ipsum, eu interdum leo.', 0, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2022-12-09 17:26:55', NULL),
(43, 'panelusuariopago', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Hola', 'Formulario de registro en BAM', 'Esta es su área personal del sitio web del Bogotá Audiovisual Market. Su proceso de acreditación ha sido completado. Ya puede disfrutar de todos nuestros servicios en línea.', 'Welcome to your personal area of the Bogotá Audiovisual Market website. Your accreditation process has been completed. You can now enjoy all our online services.', 0, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2022-12-09 17:26:55', NULL),
(44, 'guiaindustria', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Guía de industria', 'Guía de industria', '<p>En el Bogot&aacute; Audiovisual Market buscamos conectar a los agentes del sector audiovisual nacional e internacional. Por eso, presentamos nuestra nueva versi&oacute;n de la Gu&iacute;a de Participantes BAM, una herramienta digital en donde encontrar&aacute; toda la informaci&oacute;n de contacto de las empresas y profesionales que hacen parte de nuestra decimoquinta edici&oacute;n. Conozca los perfiles y empresas de su inter&eacute;s y ag&eacute;ndese en nuestras sedes de Industria y Experiencia.</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu fermentum enim. Phasellus mattis libero ut eleifend lacinia. Vestibulum eget volutpat ligula, nec venenatis justo. Phasellus sit amet dictum erat. Sed id ex orci. Donec vestibulum metus sed lacus auctor, vel vulputate eros fringilla. Vivamus ornare purus accumsan, mollis lacus sed, varius dolor. Fusce consequat orci quis leo pellentesque, a eleifend orci faucibus. Ut vehicula dictum ex vitae porttitor. Morbi est mi, posuere et elit non, imperdiet ornare mi. Maecenas eu interdum ipsum, eu interdum leo.', 0, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2024-06-17 19:13:30', NULL),
(45, 'Agenda', 'https://www.bogotamarket.com/images/site/banner_forum.jpg', 'Agenda BAM 2024', 'Agenda', '<p>En esta secci&oacute;n hemos creado su agenda digital personalizada. Haciendo clic sobre cada evento, podr&aacute; consultar la ficha completa de cada actividad.</p>', 'Consulte aqui su agenda', 0, '', NULL, 0, NULL, '2021-09-03 17:08:00', '2024-07-04 16:30:29', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpobomdetalle`
--

CREATE TABLE `cuerpobomdetalle` (
  `cod_cub` int(11) NOT NULL,
  `cod_bom_cub` int(11) DEFAULT NULL COMMENT 'codigo del bom',
  `cod_hed_cub` int(11) DEFAULT NULL COMMENT 'codigo del maestro header tabla capitulosbom',
  `cod_mat_cub` int(11) DEFAULT NULL COMMENT 'codigo del material',
  `cos_mat_cub` int(11) DEFAULT NULL COMMENT 'costo final del material al cerrar el bom',
  `cod_cap_cub` int(11) DEFAULT NULL COMMENT 'codigo de tipo de capitulo',
  `fac_can_cub` decimal(10,0) DEFAULT NULL COMMENT 'cantidad por el factor ',
  `can_hed_cub` int(11) DEFAULT NULL COMMENT 'cantidad del material',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cuerpobomdetalle`
--

INSERT INTO `cuerpobomdetalle` (`cod_cub`, `cod_bom_cub`, `cod_hed_cub`, `cod_mat_cub`, `cos_mat_cub`, `cod_cap_cub`, `fac_can_cub`, `can_hed_cub`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 15, 1, 157, 2, 0, '1', NULL, '2022-09-06 19:45:18', '2022-09-06 19:45:18', NULL),
(2, 15, 1, 157, 2, 0, '1', NULL, '2022-09-06 19:45:29', '2022-09-06 19:45:29', NULL),
(3, 15, 1, 157, 2, 0, '1', NULL, '2022-09-06 19:45:32', '2022-09-06 19:45:32', NULL),
(4, 15, 1, 14, 22, 0, '11', NULL, '2022-09-06 19:46:15', '2022-09-06 19:46:15', NULL),
(5, 15, 4, 13, 2000, 0, '2', NULL, '2022-09-07 11:30:09', '2022-09-07 11:30:09', NULL),
(6, 15, 1, 14, 50000, 0, '50', NULL, '2022-09-15 16:48:27', '2022-09-15 16:48:27', NULL),
(7, 15, 1, 170, 0, 0, '0', NULL, '2022-09-15 16:54:35', '2022-09-15 16:54:35', NULL),
(8, 15, 19, 170, 666666, 0, '4444', 100, '2022-09-15 16:56:14', '2022-09-15 16:56:14', NULL),
(9, 15, 19, 91, 5000, 0, '50', 50, '2022-09-15 16:57:06', '2022-09-15 16:57:06', NULL),
(10, 15, 16, 49, 350, 0, NULL, NULL, '2022-10-06 14:33:09', '2022-10-06 14:33:09', NULL),
(11, 15, 19, 49, 350, 0, NULL, 8, '2022-10-06 14:35:20', '2022-10-06 14:35:20', NULL),
(12, 15, 6, 0, 0, 0, NULL, NULL, '2022-10-06 17:59:44', '2022-10-06 17:59:44', NULL),
(13, 15, 6, 171, 48000, 0, NULL, 10, '2022-10-19 12:46:26', '2022-10-19 12:46:26', NULL),
(14, 15, 6, 14, 3061, 0, '1', 777, '2022-10-19 14:37:45', '2022-10-19 14:37:45', NULL),
(16, 15, 6, 136, 162240, 0, NULL, 7777, '2022-10-19 14:46:30', '2022-10-19 14:46:30', NULL),
(17, 15, 6, 171, 48000, 0, NULL, 98989, '2022-10-19 14:47:10', '2022-10-19 14:47:10', NULL),
(18, 15, 6, 132, 80000, 0, NULL, 1010, '2022-10-19 14:52:47', '2022-10-19 14:52:47', NULL),
(19, 15, 6, 84, 120000, 0, NULL, 123456, '2022-10-19 15:22:40', '2022-10-19 15:22:40', NULL),
(20, 15, 8, 68, 5300, 0, NULL, 50, '2022-10-19 15:40:37', '2022-10-19 15:40:37', NULL),
(21, 15, 8, 1, 794, 0, NULL, 20, '2022-10-19 15:40:49', '2022-10-19 15:40:49', NULL),
(22, 15, 8, 59, 640, 0, NULL, 100, '2022-10-19 15:40:59', '2022-10-19 15:40:59', NULL),
(23, 15, 6, 13, 3061, 0, NULL, 5, '2022-10-19 15:47:36', '2022-10-19 15:47:36', NULL),
(24, 15, 6, 102, 35000, 0, NULL, 2, '2022-10-19 15:47:57', '2022-10-19 15:47:57', NULL),
(25, 15, 19, 49, 350, 0, NULL, 44, '2022-10-19 15:50:36', '2022-10-19 15:50:36', NULL),
(26, 15, 19, 103, 52000, 0, NULL, 1, '2022-10-19 15:50:57', '2022-10-19 15:50:57', NULL),
(27, 15, 19, 23, 1973, 0, NULL, 89, '2022-10-19 15:53:15', '2022-10-19 15:53:15', NULL),
(28, 15, 19, 74, 1650, 0, NULL, 8, '2022-10-19 15:55:54', '2022-10-19 15:55:54', NULL),
(29, 15, 6, 70, 26229, 0, NULL, 50, '2022-10-20 16:15:53', '2022-10-20 16:15:53', NULL),
(30, 15, 6, 14, 3061, 0, NULL, 50, '2022-10-21 11:54:42', '2022-10-21 11:54:42', NULL),
(31, 16, 21, 0, 0, 0, NULL, 0, '2022-11-23 15:25:55', '2022-11-23 15:25:55', NULL),
(32, 16, 21, 117, 10000, 0, NULL, 10, '2022-11-23 15:26:13', '2022-11-23 15:26:13', NULL),
(33, 16, 24, 0, 0, 0, NULL, 0, '2022-12-28 16:14:32', '2022-12-28 16:14:32', NULL),
(34, 16, 24, 0, 0, 0, NULL, 0, '2022-12-28 16:15:00', '2022-12-28 16:15:00', NULL),
(35, 15, 25, 10, 81011, 0, NULL, 10, '2023-01-13 17:28:10', '2023-01-13 17:28:10', NULL),
(36, 18, 27, 185, 125000, 0, NULL, 6, '2023-02-02 14:29:35', '2023-02-02 14:29:35', NULL),
(37, 18, 27, 0, 0, 0, NULL, 0, '2023-02-02 14:30:16', '2023-02-02 14:30:16', NULL),
(38, 16, 24, 0, 0, 0, NULL, 0, '2023-02-20 11:06:03', '2023-02-20 11:06:03', NULL),
(39, 18, 28, 9, 63770, 0, NULL, 1, '2023-02-27 09:20:17', '2023-02-27 09:20:17', NULL),
(40, 15, 25, 4, 1703, 0, NULL, 5, '2023-02-27 11:17:45', '2023-02-27 11:17:45', NULL),
(41, 18, 27, 0, 0, 0, NULL, 0, '2023-02-27 11:18:21', '2023-02-27 11:18:21', NULL),
(42, 19, 29, 0, 0, 0, NULL, 0, '2023-03-10 14:43:36', '2023-03-10 14:43:36', NULL),
(43, 19, 29, 0, 0, 0, NULL, 0, '2023-03-10 14:43:58', '2023-03-10 14:43:58', NULL),
(44, 19, 29, 0, 0, 0, NULL, 0, '2023-03-10 14:44:45', '2023-03-10 14:44:45', NULL),
(45, 18, 27, 160, 6500, 0, NULL, 5, '2023-07-17 12:11:08', '2023-07-17 12:11:08', NULL),
(46, 18, 27, 103, 39496, 0, NULL, 8, '2023-07-17 12:12:05', '2023-07-17 12:12:05', NULL),
(47, 18, 27, 0, 0, 0, NULL, 0, '2023-07-17 12:12:26', '2023-07-17 12:12:26', NULL),
(48, 19, 30, 92, 20588, 0, NULL, 50, '2023-07-17 15:38:29', '2023-07-17 15:38:29', NULL),
(49, 19, 30, 92, 20588, 0, NULL, 50, '2023-07-17 15:38:34', '2023-07-17 15:38:34', NULL),
(104, 20, 33, 112, 5182, 0, '1', 1, '2023-07-25 17:40:05', '2023-07-25 17:40:05', NULL),
(105, 20, 33, 114, 1703, 0, '1', 1, '2023-07-25 17:40:05', '2023-07-25 17:40:05', NULL),
(106, 20, 33, 117, 531, 0, '2', 2, '2023-07-25 17:40:05', '2023-07-25 17:40:05', NULL),
(107, 20, 33, 118, 21778, 0, '1', 1, '2023-07-25 17:40:05', '2023-07-25 17:40:05', NULL),
(108, 20, 33, 119, 16000, 0, '10', 10, '2023-07-25 17:40:05', '2023-07-25 17:40:05', NULL),
(109, 20, 33, 120, 10555, 0, '1', 1, '2023-07-25 17:40:05', '2023-07-25 17:40:05', NULL),
(110, 20, 33, 138, 788, 0, '100', 100, '2023-07-25 17:40:05', '2023-07-25 17:40:05', NULL),
(111, 20, 33, 139, 2500, 0, '5000', 5000, '2023-07-25 17:40:05', '2023-07-25 17:40:05', NULL),
(112, 20, 34, 112, 5182, 0, '1', 1, '2023-07-26 14:51:23', '2023-07-26 14:51:23', NULL),
(113, 20, 34, 114, 1703, 0, '1', 1, '2023-07-26 14:51:23', '2023-07-26 14:51:23', NULL),
(114, 20, 34, 117, 531, 0, '2', 2, '2023-07-26 14:51:23', '2023-07-26 14:51:23', NULL),
(115, 20, 34, 118, 21778, 0, '1', 1, '2023-07-26 14:51:23', '2023-07-26 14:51:23', NULL),
(116, 20, 34, 119, 16000, 0, '10', 10, '2023-07-26 14:51:23', '2023-07-26 14:51:23', NULL),
(117, 20, 34, 120, 10555, 0, '1', 1, '2023-07-26 14:51:23', '2023-07-26 14:51:23', NULL),
(118, 20, 34, 138, 788, 0, '100', 100, '2023-07-26 14:51:23', '2023-07-26 14:51:23', NULL),
(119, 20, 34, 139, 2500, 0, '5000', 5000, '2023-07-26 14:51:23', '2023-07-26 14:51:23', NULL),
(120, 20, 34, 3, 1975, 0, NULL, 2, '2023-07-26 14:51:52', '2023-07-26 14:51:52', NULL),
(121, 20, 34, 123, 12000, 0, '1', 1, '2023-07-26 14:52:44', '2023-07-26 14:52:44', NULL),
(122, 20, 34, 124, 1550, 0, '1', 1, '2023-07-26 14:52:44', '2023-07-26 14:52:44', NULL),
(123, 20, 34, 131, 3607, 0, '1', 1, '2023-07-26 14:55:33', '2023-07-26 14:55:33', NULL),
(124, 20, 34, 133, 21429, 0, '2', 2, '2023-07-26 14:55:33', '2023-07-26 14:55:33', NULL),
(125, 20, 34, 134, 5800, 0, '1', 1, '2023-07-26 14:55:33', '2023-07-26 14:55:33', NULL),
(126, 20, 34, 136, 558, 0, '1', 1, '2023-07-26 14:55:33', '2023-07-26 14:55:33', NULL),
(127, 20, 34, 137, 2500, 0, '2', 2, '2023-07-26 14:55:33', '2023-07-26 14:55:33', NULL),
(128, 20, 35, 131, 3607, 0, '1', 1, '2023-07-26 14:57:07', '2023-07-26 14:57:07', NULL),
(129, 20, 35, 133, 21429, 0, '2', 2, '2023-07-26 14:57:07', '2023-07-26 14:57:07', NULL),
(130, 20, 35, 134, 5800, 0, '1', 1, '2023-07-26 14:57:07', '2023-07-26 14:57:07', NULL),
(131, 20, 35, 136, 558, 0, '1', 1, '2023-07-26 14:57:07', '2023-07-26 14:57:07', NULL),
(132, 20, 35, 137, 2500, 0, '2', 2, '2023-07-26 14:57:07', '2023-07-26 14:57:07', NULL),
(133, 20, 37, 140, 28655, 0, '0', 0, '2023-07-26 15:05:12', '2023-07-26 15:05:12', NULL),
(134, 20, 37, 141, 1303, 0, '0', 0, '2023-07-26 15:05:12', '2023-07-26 15:05:12', NULL),
(135, 20, 38, 142, 28655, 0, '2', 2, '2023-07-26 15:07:40', '2023-07-26 15:07:40', NULL),
(136, 20, 38, 143, 1303, 0, '2', 2, '2023-07-26 15:07:40', '2023-07-26 15:07:40', NULL),
(137, 20, 39, 142, 28655, 0, '2', 2, '2023-07-26 15:09:29', '2023-07-26 15:09:29', NULL),
(138, 20, 39, 143, 1303, 0, '2', 2, '2023-07-26 15:09:29', '2023-07-26 15:09:29', NULL),
(139, 20, 39, 123, 12000, 0, '1', 1, '2023-07-26 15:09:39', '2023-07-26 15:09:39', NULL),
(140, 20, 39, 124, 1550, 0, '1', 1, '2023-07-26 15:09:39', '2023-07-26 15:09:39', NULL),
(141, 20, 40, 144, 28655, 0, '1', 1, '2023-07-26 15:10:54', '2023-07-26 15:10:54', NULL),
(142, 20, 40, 145, 1303, 0, '2', 2, '2023-07-26 15:10:54', '2023-07-26 15:10:54', NULL),
(143, 20, 33, 3, 1975, 0, NULL, 10, '2023-07-26 15:14:46', '2023-07-26 15:14:46', NULL),
(144, 20, 40, 1, 5555, 0, NULL, 1111, '2023-08-09 16:49:29', '2023-08-09 16:49:29', NULL),
(145, 20, 40, 49, 4500, 0, NULL, 10, '2023-08-18 17:20:34', '2023-08-18 17:20:34', NULL),
(146, 20, 40, 115, 208319, 0, NULL, 20, '2023-08-18 17:22:44', '2023-08-18 17:22:44', NULL),
(147, 20, 40, 68, 104299, 0, NULL, 25, '2023-08-18 17:24:02', '2023-08-18 17:24:02', NULL),
(148, 20, 40, 71, 245, 0, NULL, 150, '2023-08-18 17:38:36', '2023-08-18 17:38:36', NULL),
(149, 20, 40, 179, 47000, 0, NULL, 12, '2023-08-18 17:39:22', '2023-08-18 17:39:22', NULL),
(150, 20, 40, 135, 330998, 0, NULL, 3, '2023-08-18 17:48:39', '2023-08-18 17:48:39', NULL),
(151, 21, 43, 164, 44, NULL, NULL, 33, '2025-10-08 16:55:47', '2025-10-08 16:55:47', NULL),
(152, 21, 43, 185, 50000, NULL, NULL, 10, '2025-10-08 16:57:20', '2025-10-08 16:57:20', NULL),
(153, 21, 43, 65, 4343434, NULL, NULL, 3, '2025-10-08 16:58:33', '2025-10-08 16:58:33', NULL),
(154, 21, 43, 66, 3545345, NULL, NULL, 656, '2025-10-08 17:02:24', '2025-10-08 17:02:24', NULL),
(155, 21, 43, 67, 7978979, NULL, NULL, 78, '2025-10-08 17:05:36', '2025-10-08 17:05:36', NULL),
(156, 21, 43, 68, 45456456, NULL, NULL, 67, '2025-10-08 17:05:55', '2025-10-08 17:05:55', NULL),
(157, 21, 43, 153, 9999, NULL, NULL, 999, '2025-10-08 17:41:05', '2025-10-08 17:41:05', NULL),
(158, 21, 43, 109, 9999, NULL, NULL, 898989, '2025-10-09 15:09:29', '2025-10-09 15:09:29', NULL),
(159, 21, 43, 31, 5000, NULL, NULL, 100, '2025-10-14 16:11:18', '2025-10-14 16:11:18', NULL),
(160, 21, 44, 3, 2000, NULL, NULL, 2, '2025-10-14 16:20:01', '2025-10-14 16:20:01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `cod_dep` int(2) UNSIGNED NOT NULL,
  `nom_dep` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`cod_dep`, `nom_dep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'ANTIOQUIA', NULL, NULL, NULL),
(8, 'ATLÁNTICO', NULL, NULL, NULL),
(11, 'BOGOTÁ, D.C.', NULL, NULL, NULL),
(13, 'BOLÍVAR', NULL, NULL, NULL),
(15, 'BOYACÁ', NULL, NULL, NULL),
(17, 'CALDAS', NULL, NULL, NULL),
(18, 'CAQUETÁ', NULL, NULL, NULL),
(19, 'CAUCA', NULL, NULL, NULL),
(20, 'CESAR', NULL, NULL, NULL),
(23, 'CÓRDOBA', NULL, NULL, NULL),
(25, 'CUNDINAMARCA', NULL, NULL, NULL),
(27, 'CHOCÓ', NULL, NULL, NULL),
(41, 'HUILA', NULL, NULL, NULL),
(44, 'LA GUAJIRA', NULL, NULL, NULL),
(47, 'MAGDALENA', NULL, NULL, NULL),
(50, 'META', NULL, NULL, NULL),
(52, 'NARIÑO', NULL, NULL, NULL),
(54, 'NORTE DE SANTANDER', NULL, NULL, NULL),
(63, 'QUINDIO', NULL, NULL, NULL),
(66, 'RISARALDA', NULL, NULL, NULL),
(68, 'SANTANDER', NULL, NULL, NULL),
(70, 'SUCRE', NULL, NULL, NULL),
(73, 'TOLIMA', NULL, NULL, NULL),
(76, 'VALLE DEL CAUCA', NULL, NULL, NULL),
(81, 'ARAUCA', NULL, NULL, NULL),
(85, 'CASANARE', NULL, NULL, NULL),
(86, 'PUTUMAYO', NULL, NULL, NULL),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA', NULL, NULL, NULL),
(91, 'AMAZONAS', NULL, NULL, NULL),
(94, 'GUAINÍA', NULL, NULL, NULL),
(95, 'GUAVIARE', NULL, NULL, NULL),
(97, 'VAUPÉS', NULL, NULL, NULL),
(99, 'VICHADA', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detagendaparticioantes`
--

CREATE TABLE `detagendaparticioantes` (
  `cod_dap` int(11) NOT NULL,
  `cod_age_dap` int(11) DEFAULT NULL COMMENT 'codigo de la agenada',
  `cod_acr_dap` int(11) DEFAULT NULL COMMENT 'codigo acreditado',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detplantillaitem`
--

CREATE TABLE `detplantillaitem` (
  `cod_dpi` int(11) NOT NULL,
  `cod_pla_dpi` int(11) NOT NULL,
  `cod_ite_dpi` int(11) NOT NULL,
  `fac_ite_dpi` double DEFAULT NULL COMMENT 'factor del producto',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `usu_acce` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detplantillaitem`
--

INSERT INTO `detplantillaitem` (`cod_dpi`, `cod_pla_dpi`, `cod_ite_dpi`, `fac_ite_dpi`, `created_at`, `updated_at`, `usu_acce`, `deleted_at`) VALUES
(2, 1, 3, NULL, '2022-02-14 18:08:22', '2022-02-14 18:08:22', NULL, NULL),
(3, 1, 4, NULL, '2022-02-14 18:08:31', '2022-02-14 18:08:31', NULL, NULL),
(6, 1, 4, NULL, NULL, NULL, NULL, NULL),
(32, 13, 3, NULL, NULL, NULL, NULL, NULL),
(33, 13, 13, NULL, NULL, NULL, NULL, NULL),
(34, 13, 57, NULL, NULL, NULL, NULL, NULL),
(36, 14, 4, NULL, NULL, NULL, NULL, NULL),
(38, 14, 150, NULL, NULL, NULL, NULL, NULL),
(39, 14, 117, NULL, NULL, NULL, NULL, NULL),
(40, 15, 42, NULL, NULL, NULL, NULL, NULL),
(41, 15, 44, NULL, NULL, NULL, NULL, NULL),
(42, 16, 113, NULL, NULL, NULL, NULL, NULL),
(43, 17, 4, NULL, NULL, NULL, NULL, NULL),
(44, 17, 17, NULL, NULL, NULL, NULL, NULL),
(45, 17, 66, NULL, NULL, NULL, NULL, NULL),
(46, 14, 3, NULL, NULL, NULL, NULL, NULL),
(47, 14, 27, NULL, NULL, NULL, NULL, NULL),
(48, 14, 34, NULL, NULL, NULL, NULL, NULL),
(49, 18, 3, NULL, NULL, NULL, NULL, NULL),
(50, 19, 15, NULL, NULL, '2022-07-12 15:42:03', NULL, '2022-07-12 15:42:03'),
(51, 19, 27, NULL, NULL, '2022-07-12 15:41:59', NULL, '2022-07-12 15:41:59'),
(52, 19, 77, NULL, NULL, '2022-07-12 15:41:57', NULL, '2022-07-12 15:41:57'),
(53, 21, 14, NULL, NULL, NULL, NULL, NULL),
(54, 2, 20, NULL, '2022-05-19 15:13:14', '2022-05-19 15:13:14', NULL, NULL),
(56, 24, 13, NULL, '2022-05-25 17:48:22', '2022-05-25 17:48:22', NULL, NULL),
(57, 24, 15, NULL, '2022-05-25 18:10:05', '2022-05-25 18:10:05', NULL, NULL),
(58, 24, 14, NULL, '2022-05-25 18:11:37', '2022-05-25 18:11:37', NULL, NULL),
(60, 24, 30, NULL, '2022-05-25 18:22:41', '2022-05-25 18:22:41', NULL, NULL),
(61, 0, 0, NULL, '2022-05-26 16:29:44', '2022-05-26 16:29:44', NULL, NULL),
(62, 25, 13, NULL, '2022-05-31 15:10:36', '2022-05-31 15:10:36', NULL, NULL),
(63, 25, 15, NULL, '2022-05-31 15:10:57', '2022-05-31 15:10:57', NULL, NULL),
(64, 25, 147, NULL, '2022-06-14 15:42:00', '2022-06-14 15:42:00', NULL, NULL),
(65, 26, 14, NULL, '2022-07-06 14:30:35', '2022-07-06 14:30:35', NULL, NULL),
(66, 26, 81, NULL, '2022-07-06 14:30:42', '2022-07-06 14:30:42', NULL, NULL),
(67, 26, 58, NULL, '2022-07-06 14:31:07', '2022-07-06 14:31:07', NULL, NULL),
(68, 27, 158, NULL, '2022-07-06 14:32:58', '2022-07-06 14:32:58', NULL, NULL),
(69, 27, 103, NULL, '2022-07-06 14:33:10', '2022-07-06 14:33:10', NULL, NULL),
(70, 27, 101, NULL, '2022-07-06 14:34:11', '2022-07-06 14:34:11', NULL, NULL),
(71, 27, 116, NULL, '2022-07-11 16:28:40', '2022-07-11 16:28:40', NULL, NULL),
(72, 19, 42, NULL, '2022-07-12 15:42:30', '2022-09-15 16:36:14', NULL, '2022-09-15 16:36:14'),
(73, 19, 170, NULL, '2022-07-12 15:46:02', '2022-09-15 16:36:17', NULL, '2022-09-15 16:36:17'),
(74, 19, 150, NULL, '2022-07-12 15:46:41', '2022-09-15 16:36:19', NULL, '2022-09-15 16:36:19'),
(75, 19, 171, NULL, '2022-07-12 15:49:18', '2022-09-15 16:36:21', NULL, '2022-09-15 16:36:21'),
(76, 28, 74, NULL, '2022-09-15 15:59:45', '2022-10-06 11:17:34', NULL, '2022-10-06 11:17:34'),
(77, 28, 47, NULL, '2022-09-15 16:20:33', '2022-10-06 11:17:37', NULL, '2022-10-06 11:17:37'),
(78, 28, 16, NULL, '2022-09-15 16:21:12', '2022-10-06 11:17:40', NULL, '2022-10-06 11:17:40'),
(79, 28, 106, NULL, '2022-09-15 16:22:33', '2022-10-06 11:17:44', NULL, '2022-10-06 11:17:44'),
(80, 28, 15, NULL, '2022-09-15 16:23:25', '2022-10-06 11:19:56', NULL, '2022-10-06 11:19:56'),
(81, 19, 14, NULL, '2022-09-15 16:25:15', '2022-09-15 16:36:23', NULL, '2022-09-15 16:36:23'),
(82, 19, 170, NULL, '2022-09-15 16:25:26', '2022-09-15 16:36:25', NULL, '2022-09-15 16:36:25'),
(83, 19, 88, NULL, '2022-09-15 16:27:03', '2022-09-15 16:36:27', NULL, '2022-09-15 16:36:27'),
(84, 19, 13, NULL, '2022-09-15 16:29:10', '2022-09-15 16:36:29', NULL, '2022-09-15 16:36:29'),
(85, 19, 13, NULL, '2022-09-15 16:29:54', '2022-09-15 16:36:32', NULL, '2022-09-15 16:36:32'),
(86, 19, 15, 101, '2022-09-15 16:32:55', '2022-10-04 20:00:31', NULL, '2022-10-04 20:00:31'),
(87, 19, 171, 89, '2022-09-15 16:33:16', '2022-09-15 16:33:16', NULL, NULL),
(88, 19, 108, 1, '2022-09-15 16:36:37', '2022-09-15 16:36:37', NULL, NULL),
(89, 19, 13, 90, '2022-09-15 16:37:46', '2022-09-15 16:37:46', NULL, NULL),
(90, 19, 171, 115, '2022-09-15 16:39:02', '2022-09-15 16:39:02', NULL, NULL),
(91, 19, 156, 222, '2022-09-15 16:39:52', '2022-09-15 16:39:52', NULL, NULL),
(92, 19, 11, 555, '2022-09-15 16:41:46', '2022-09-15 16:41:46', NULL, NULL),
(93, 28, 125, 45, '2022-09-15 18:44:14', '2022-10-06 11:19:58', NULL, '2022-10-06 11:19:58'),
(94, 28, 1, 0, '2022-10-06 11:14:55', '2022-10-06 11:20:00', NULL, '2022-10-06 11:20:00'),
(95, 28, 154, 20, '2022-10-06 11:15:20', '2022-10-06 11:33:17', NULL, '2022-10-06 11:33:17'),
(96, 28, 154, 20, '2022-10-06 11:15:23', '2022-10-06 11:32:00', NULL, '2022-10-06 11:32:00'),
(97, 28, 13, 111, '2022-10-06 11:16:56', '2022-10-06 11:31:57', NULL, '2022-10-06 11:31:57'),
(98, 28, 171, 50, '2022-10-06 11:17:54', '2022-10-06 11:33:15', NULL, '2022-10-06 11:33:15'),
(99, 28, 49, 56, '2022-10-06 11:18:37', '2022-10-06 11:32:29', NULL, '2022-10-06 11:32:29'),
(100, 28, 171, 99, '2022-10-06 11:20:09', '2022-10-06 11:31:55', NULL, '2022-10-06 11:31:55'),
(101, 28, 84, 122, '2022-10-06 11:22:20', '2022-10-06 11:32:27', NULL, '2022-10-06 11:32:27'),
(102, 28, 88, 500, '2022-10-06 11:24:58', '2022-10-06 11:32:25', NULL, '2022-10-06 11:32:25'),
(103, 28, 13, 999, '2022-10-06 11:27:26', '2022-10-06 11:30:39', NULL, '2022-10-06 11:30:39'),
(104, 28, 48, 888, '2022-10-06 11:28:13', '2022-10-06 11:30:37', NULL, '2022-10-06 11:30:37'),
(105, 28, 83, 4444, '2022-10-06 11:28:51', '2022-10-06 11:30:35', NULL, '2022-10-06 11:30:35'),
(106, 28, 170, 88888, '2022-10-06 11:30:47', '2022-10-06 11:32:19', NULL, '2022-10-06 11:32:19'),
(107, 28, 138, 8989, '2022-10-06 11:31:06', '2022-10-06 11:32:22', NULL, '2022-10-06 11:32:22'),
(108, 28, 70, 2, '2022-10-06 11:32:11', '2022-10-06 11:34:39', NULL, '2022-10-06 11:34:39'),
(109, 28, 170, 1, '2022-10-06 11:32:37', '2022-10-06 11:34:37', NULL, '2022-10-06 11:34:37'),
(110, 28, 63, 6, '2022-10-06 11:33:42', '2022-10-06 11:34:34', NULL, '2022-10-06 11:34:34'),
(111, 28, 48, 1, '2022-10-06 11:33:52', '2022-10-06 11:34:32', NULL, '2022-10-06 11:34:32'),
(112, 28, 45, 1, '2022-10-06 11:34:46', '2022-10-06 11:34:46', NULL, NULL),
(113, 28, 107, 5, '2022-10-06 11:34:55', '2022-10-06 11:51:36', NULL, '2022-10-06 11:51:36'),
(114, 28, 4, 1, '2022-10-06 11:35:37', '2022-10-06 11:35:37', NULL, NULL),
(115, 28, 14, 90, '2022-10-06 11:36:59', '2022-10-06 11:51:28', NULL, '2022-10-06 11:51:28'),
(116, 28, 14, 10, '2022-10-06 11:38:01', '2022-10-06 11:51:26', NULL, '2022-10-06 11:51:26'),
(117, 28, 70, 1.5, '2022-10-06 11:39:35', '2022-10-06 11:39:35', NULL, NULL),
(118, 28, 48, 1.1, '2022-10-06 11:50:03', '2022-10-06 11:50:03', NULL, NULL),
(119, 28, 171, 9.9, '2022-10-06 11:50:25', '2022-10-06 11:50:25', NULL, NULL),
(120, 28, 15, 0.6, '2022-10-06 11:51:16', '2022-10-06 11:51:16', NULL, NULL),
(121, 19, 170, 1.2, '2022-10-06 17:59:30', '2022-10-06 17:59:30', NULL, NULL),
(122, 29, 81, 1, '2022-11-09 09:02:56', '2022-12-28 16:08:07', NULL, '2022-12-28 16:08:07'),
(123, 29, 147, 0.5, '2022-11-09 09:03:52', '2022-11-09 09:03:52', NULL, NULL),
(124, 29, 38, 1, '2022-12-28 16:08:43', '2022-12-28 16:08:43', NULL, NULL),
(125, 30, 169, 1, '2022-12-28 16:09:59', '2023-03-10 13:15:13', NULL, '2023-03-10 13:15:13'),
(126, 30, 70, 1, '2022-12-28 16:10:46', '2023-03-10 13:15:15', NULL, '2023-03-10 13:15:15'),
(127, 30, 70, 1, '2022-12-28 16:11:00', '2023-03-10 13:15:17', NULL, '2023-03-10 13:15:17'),
(128, 30, 64, 0, '2022-12-28 16:11:10', '2022-12-28 16:11:23', NULL, '2022-12-28 16:11:23'),
(129, 30, 64, 1, '2022-12-28 16:11:34', '2023-03-10 13:15:18', NULL, '2023-03-10 13:15:18'),
(130, 28, 10, 5656, '2023-01-13 17:27:26', '2023-01-13 17:27:32', NULL, '2023-01-13 17:27:32'),
(131, 30, 23, 1, '2023-03-10 13:15:52', '2023-03-10 13:15:52', NULL, NULL),
(132, 30, 93, 1, '2023-03-10 13:16:43', '2023-03-10 13:17:09', NULL, '2023-03-10 13:17:09'),
(133, 30, 93, 2, '2023-03-10 13:17:28', '2023-03-10 13:17:28', NULL, NULL),
(134, 30, 86, 1, '2023-03-10 13:17:51', '2023-03-10 13:17:51', NULL, NULL),
(135, 30, 186, 1, '2023-03-10 13:24:55', '2023-03-10 13:25:04', NULL, '2023-03-10 13:25:04'),
(136, 30, 186, 1, '2023-03-10 13:26:17', '2023-03-10 13:26:17', NULL, NULL),
(137, 30, 187, 2, '2023-03-10 14:39:21', '2023-03-10 14:39:21', NULL, NULL),
(138, 28, 104, 100, '2023-07-25 15:59:56', '2023-07-25 15:59:56', NULL, NULL),
(139, 28, 187, 5000, '2023-07-25 17:31:25', '2023-07-25 17:31:25', NULL, NULL),
(140, 31, 120, 0.33, '2023-07-26 15:01:48', '2023-07-26 15:01:48', NULL, NULL),
(141, 31, 113, 0.25, '2023-07-26 15:02:24', '2023-07-26 15:02:24', NULL, NULL),
(142, 32, 120, 1.5, '2023-07-26 15:06:10', '2023-07-26 15:06:10', NULL, NULL),
(143, 32, 113, 2, '2023-07-26 15:06:42', '2023-07-26 15:06:42', NULL, NULL),
(144, 33, 120, 1, '2023-07-26 15:10:14', '2023-07-26 15:10:14', NULL, NULL),
(145, 33, 113, 2, '2023-07-26 15:10:27', '2023-07-26 15:10:27', NULL, NULL),
(146, 32, 47, 0.5, '2025-05-28 17:11:22', '2025-05-28 17:11:22', NULL, NULL),
(147, 32, 161, 5, '2025-05-28 17:11:34', '2025-05-28 17:11:34', NULL, NULL),
(148, 29, 84, 5, '2025-05-29 10:36:01', '2025-05-29 10:36:01', NULL, NULL),
(149, 28, 187, NULL, '2025-07-22 18:07:17', '2025-07-22 18:07:17', NULL, NULL),
(150, 28, 186, NULL, '2025-07-22 18:07:36', '2025-07-22 18:07:36', NULL, NULL),
(151, 28, 186, NULL, '2025-07-22 18:08:07', '2025-07-22 18:08:07', NULL, NULL),
(276, 34, 57, NULL, '2025-07-23 20:22:37', '2025-07-23 20:22:37', NULL, NULL),
(277, 34, 43, NULL, '2025-07-23 20:25:22', '2025-07-23 20:25:22', NULL, NULL),
(282, 34, 60, NULL, '2025-07-23 20:40:28', '2025-07-23 20:40:28', NULL, NULL),
(283, 34, 183, NULL, '2025-07-23 20:40:41', '2025-07-23 20:40:41', NULL, NULL),
(284, 34, 108, NULL, '2025-07-23 20:40:54', '2025-07-23 20:40:54', NULL, NULL),
(285, 34, 72, NULL, '2025-08-06 17:52:15', '2025-08-06 17:52:15', NULL, NULL),
(286, 29, 26, NULL, '2025-09-23 18:07:46', '2025-09-23 18:07:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detsubpartidas`
--

CREATE TABLE `detsubpartidas` (
  `cod_dsu` int(11) NOT NULL,
  `cod_par_dsu` int(11) NOT NULL,
  `cod_sub_dsu` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `usu_acce` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `detsubpartidas`
--

INSERT INTO `detsubpartidas` (`cod_dsu`, `cod_par_dsu`, `cod_sub_dsu`, `created_at`, `updated_at`, `usu_acce`, `deleted_at`) VALUES
(9, 2, 19, '2022-05-19 15:41:53', '2022-05-19 15:46:36', NULL, '2022-05-19 15:46:36'),
(10, 2, 20, '2022-05-19 15:46:48', '2022-05-19 15:47:05', NULL, '2022-05-19 15:47:05'),
(11, 2, 21, '2022-05-19 15:47:15', '2022-05-19 15:47:18', NULL, '2022-05-19 15:47:18'),
(12, 2, 21, '2022-05-19 15:48:55', '2022-05-19 15:51:05', NULL, '2022-05-19 15:51:05'),
(13, 2, 20, '2022-05-19 15:49:01', '2022-05-19 15:49:01', NULL, NULL),
(14, 2, 19, '2022-05-19 15:49:05', '2022-05-25 18:13:19', NULL, '2022-05-25 18:13:19'),
(15, 2, 21, '2022-05-19 15:51:13', '2022-05-25 18:13:17', NULL, '2022-05-25 18:13:17'),
(17, 2, 21, '2022-05-19 15:55:42', '2022-05-19 15:55:46', NULL, '2022-05-19 15:55:46'),
(18, 2, 22, '2022-05-25 18:12:58', '2022-05-25 18:13:14', NULL, '2022-05-25 18:13:14'),
(19, 2, 24, '2022-05-25 18:13:32', '2022-05-25 18:13:32', NULL, NULL),
(20, 2, 19, '2022-05-25 18:18:05', '2022-05-25 18:18:05', NULL, NULL),
(22, 2, 25, '2022-05-31 15:51:14', '2022-05-31 15:51:14', NULL, NULL),
(24, 1, 24, '2022-06-14 16:26:05', '2022-06-14 16:26:05', NULL, NULL),
(25, 1, 25, '2022-06-14 16:30:34', '2022-06-14 16:30:34', NULL, NULL),
(26, 1, 27, '2022-07-06 14:34:43', '2022-07-06 14:34:43', NULL, NULL),
(27, 4, 19, '2022-07-12 15:53:19', '2022-07-12 15:53:19', NULL, NULL),
(28, 4, 20, '2022-09-15 15:59:24', '2022-09-15 15:59:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ediciones`
--

CREATE TABLE `ediciones` (
  `cod_edi` int(11) NOT NULL,
  `ano_edi` int(11) DEFAULT NULL COMMENT 'año de la edicion',
  `tit_edi` varchar(250) DEFAULT NULL COMMENT 'titulo de la edicion en convocatorias',
  `des_edi` text DEFAULT NULL COMMENT 'descripcion en convocatorias',
  `tit_edi_ing` varchar(250) DEFAULT NULL COMMENT 'ingles',
  `des_edi_ing` text DEFAULT NULL COMMENT 'ingles',
  `act_edi` int(11) DEFAULT 0 COMMENT 'edicion activa',
  `sti_edi` varchar(200) DEFAULT NULL COMMENT 'subtitulo',
  `sti_edi_ing` varchar(200) DEFAULT NULL,
  `img_edi` varchar(250) DEFAULT NULL COMMENT 'imagen para historico',
  `pro_edi` varchar(250) DEFAULT NULL COMMENT 'adjunto prgramacion pdf',
  `gal_edi` int(11) DEFAULT NULL COMMENT 'codigo de la galeria ',
  `ad1_edi` varchar(250) NOT NULL COMMENT 'adjunto para programacion',
  `ad2_edi` varchar(250) NOT NULL,
  `ad3_edi` varchar(250) NOT NULL,
  `ad4_edi` varchar(250) NOT NULL,
  `ad5_edi` varchar(250) NOT NULL,
  `im1_edi` varchar(250) NOT NULL COMMENT 'imagen para la programacion',
  `im2_edi` varchar(250) NOT NULL,
  `im3_edi` varchar(250) NOT NULL,
  `im4_edi` varchar(250) NOT NULL,
  `im5_edi` varchar(250) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ediciones`
--

INSERT INTO `ediciones` (`cod_edi`, `ano_edi`, `tit_edi`, `des_edi`, `tit_edi_ing`, `des_edi_ing`, `act_edi`, `sti_edi`, `sti_edi_ing`, `img_edi`, `pro_edi`, `gal_edi`, `ad1_edi`, `ad2_edi`, `ad3_edi`, `ad4_edi`, `ad5_edi`, `im1_edi`, `im2_edi`, `im3_edi`, `im4_edi`, `im5_edi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2022, 'BAM 2022', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.\n\n', 'BAM 2022..', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno....', 0, 'Julio 26 al 31 de 2022\r\n', 'Julio 26 al 31 de 2022..', 'https://bogotamarket.com/images/site/banner_EdicionesAnteriores.jpg', 'http://localhost/docs/1673382503_399280fffa0318719950.pdf', 4, 'http://localhost/docs/1673382486_1c0093882304d6514b7b.pdf', 'http://localhost/docs/1673382495_357d0d797b0baf0e0bde.pdf', 'http://localhost/docs/1673382498_a197459227c559703790.pdf', 'http://localhost/docs/1673382501_5b29deb2c9eb80e86186.pdf', 'http://localhost/docs/1673382501_5b29deb2c9eb80e86186.pdf', 'http://localhost/images/site/1673382491_cfd1b671192c30c00061.jpg', 'http://localhost/images/site/1673382507_fedf3b6c1b73dc4097f6.jpg', 'http://localhost/images/site/1673382510_c91a2428be0e5d393826.jpg', 'http://localhost/images/site/1673382514_1cb5eeb10c1509cd7646.jpg', 'http://localhost/images/site/1673382519_e6810af001751dd4206d.jpg', NULL, '2023-01-10 14:28:41', NULL),
(2, 2021, 'BAM 2021', '<p>La secci&oacute;n Proyecciones presenta las m&aacute;s recientes novedades de la cinematograf&iacute;a nacional. Este a&ntilde;o cinco cortometrajes de ficci&oacute;n incluyendo un corto para el p&uacute;blico infantil, todos en avanzado estado de postproducci&oacute;n, se exhiben en funciones privadas a festivales, fondos y mercados, en b&uacute;squeda de su inminente estreno.</p>', '', '', 0, 'Julio 26 al 30 de 2021', NULL, 'https://bogotamarket.com/images/site/1677005443_2bf7fa195c60ece713b8.jpg', 'https://www.orimi.com/pdf-test.pdf', 4, '', '', '', '', '', '', '', '', '', '', NULL, '2023-03-27 11:08:14', NULL),
(3, 2020, 'BAM 2020', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.\r\n\r\n', '', '', 0, 'Julio 26 al 31 de 2020', NULL, 'http://lyssoluciones.com/desarrollos/bam/markup/images/site/banner_EdicionesAnteriores.jpg', 'https://www.orimi.com/pdf-test.pdf', 4, '', '', '', '', '', '', '', '', '', '', NULL, '2023-03-27 11:06:59', NULL),
(4, 2023, 'CONVOCATORIAS BAM 2024', 'La sección Proyecciones presenta las más recientes novedades de la cinematografía nacional. Este año cinco cortometrajes de ficción incluyendo un corto para el público infantil, todos en avanzado estado de postproducción, se exhiben en funciones privadas a festivales, fondos y mercados, en búsqueda de su inminente estreno.\r\n\r\n', 'CONVOCATORIAS BAM 2024...', '', 1, 'Julio 26 al 31 de 2022\r\n', NULL, 'http://lyssoluciones.com/desarrollos/bam/markup/images/site/banner_EdicionesAnteriores.jpg', 'https://www.orimi.com/pdf-test.pdf', 4, '', '', '', '', '', '', '', '', '', '', NULL, '2024-04-02 16:11:58', NULL),
(5, 2024, 'CONVOCATORIAS BAM 2024', NULL, 'CALLS BAM 2024', NULL, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '2024-04-02 21:15:00', '2024-04-02 21:15:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `cod_equ` int(11) NOT NULL,
  `nom_equ` varchar(200) DEFAULT NULL COMMENT 'nombre',
  `cod_cli_equ` int(5) DEFAULT NULL COMMENT 'codigo del cliente',
  `cod_sed_equ` int(5) DEFAULT NULL COMMENT 'codigo de la sede',
  `cod_teq_equ` int(5) DEFAULT NULL COMMENT 'codigo tipo de equipo',
  `ser_equ` varchar(250) DEFAULT NULL COMMENT 'serial',
  `mar_equ` varchar(250) DEFAULT NULL COMMENT 'marca',
  `pro_equ` varchar(50) DEFAULT NULL COMMENT 'parametro si es propio o arreiendo',
  `mac_equ` varchar(250) DEFAULT NULL COMMENT 'direccion mac',
  `rak_equ` varchar(250) DEFAULT NULL COMMENT 'num ero de ubucacion en el rak',
  `ubi_equ` varchar(250) DEFAULT NULL COMMENT 'descripcion ubicacion',
  `tab_equ` varchar(250) DEFAULT NULL COMMENT 'numero en el tablero',
  `cto_equ` varchar(250) DEFAULT NULL COMMENT 'cto al q conecta',
  `pan_equ` varchar(250) DEFAULT NULL COMMENT 'numero de panel',
  `not_equ` text DEFAULT NULL COMMENT 'nota',
  `qr_equ` varchar(100) DEFAULT NULL COMMENT 'codigo del equipo',
  `ip_equ` varchar(25) DEFAULT NULL COMMENT 'IP Dispositivo',
  `cod_ubi_equ` int(11) DEFAULT NULL COMMENT 'codigo ubucacion',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`cod_equ`, `nom_equ`, `cod_cli_equ`, `cod_sed_equ`, `cod_teq_equ`, `ser_equ`, `mar_equ`, `pro_equ`, `mac_equ`, `rak_equ`, `ubi_equ`, `tab_equ`, `cto_equ`, `pan_equ`, `not_equ`, `qr_equ`, `ip_equ`, `cod_ubi_equ`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Principal1', 5, 6, 1, 'serial', 'marca', 'arriendo', 'mac', 'puerto 100', 'detras del tablero', 'tablero 1', NULL, '5', 'una nota', NULL, '0.0.0.1', 1, NULL, '2025-10-26 10:14:55', NULL),
(211, '111111444', 4, 24, 4, 'serial44', 'marca44', '1', 'mac44', 'rack44', NULL, 'tablero 144', NULL, 'panel44', 'esta malito444', 'ID-2001', NULL, 1, '2025-07-02 20:27:50', '2025-07-03 14:44:33', NULL),
(212, '1111119', 10, 6, 21, '3333999', '222299999', '1', '44499', '55555999', NULL, '66666999', NULL, '77777999', '999999111111', 'Generador de Códigos QR de TEC-IT', NULL, 3, '2025-07-14 20:22:41', '2025-07-15 14:51:13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq`
--

CREATE TABLE `faq` (
  `cod_faq` int(11) NOT NULL,
  `pre_fac` text DEFAULT NULL COMMENT 'pregunta',
  `pre_fac_ing` text DEFAULT NULL COMMENT 'pregunta ingles ',
  `res_fac` text DEFAULT NULL COMMENT 'respuesta',
  `res_fac_ing` text DEFAULT NULL COMMENT 'respuesta ingles',
  `ord_faq` int(11) DEFAULT NULL COMMENT 'orden',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `faq`
--

INSERT INTO `faq` (`cod_faq`, `pre_fac`, `pre_fac_ing`, `res_fac`, `res_fac_ing`, `ord_faq`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '¿Cuántas convocatorias tiene el BAM?', 'How many calls for entries does the BAM have?', 'El BAM cuenta con 7 convocatorias: Film Projects, Series Projects, Animation, Stories, Film Screenings, Rough Shorts y Bammers.', 'BAM has 7 calls for entries: Film Projects, Series Projects, Animation, Stories, Film Screenings, Rough Shorts and Bammers.', 1, NULL, '2023-06-13 11:38:22', NULL),
(2, '¿Cuándo abren las convocatorias?', 'When does the calls for entries open?', 'La segunda etapa de convocatoria en las categorías de Film Screenings, Rough Shorts y BAMMERS, se encuentra abierta hasta el 4 de marzo a las 11:59 p.m. (hora Colombia).', 'The first call for entries (Film Projects, Series Projects, Animation, Stories) opened on December 15, 2022 and closed on February 6, 2023.\nThe second call for entries (Film Screenings, Rough Short Film and Bammers) opened on March 14, 2023 and closed on April 14, 2023. \n', 2, NULL, '2024-02-13 14:16:07', NULL),
(3, '¿Dónde puedo encontrar los formularios para postular? ', 'Where can I find the application forms?', 'Los formularios están disponibles en nuestra página web en la pestaña “Convocatoria”.', 'The forms are available on our website under the \"Call for entries\" tab. All of our calls for entries are closed for this year. Stay tuned for our 2024 calls for entries! ', 3, NULL, '2023-06-13 11:41:35', NULL),
(4, '¿Pueden participar proyectos internacionales? ', 'Are international projects eligible?', 'No, pero podrán acreditarse para participar en la edición 15 del BAM. ', 'No, but they may be accredited to participate in the 14th edition of BAM.', 4, NULL, '2024-02-13 14:16:25', NULL),
(5, '¿Se pueden compartir los pases entre colegas?', '¿Se pueden compartir los pases entre colegas?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', 5, NULL, '2022-12-14 14:12:18', '2022-12-14 14:12:18'),
(6, 'Me he inscrito, pero no he recibido un correo electrónico de confirmación.', 'Me he inscrito, pero no he recibido un correo electrónico de confirmación.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', 6, NULL, '2022-12-14 14:12:22', '2022-12-14 14:12:22'),
(8, '¿Puedo montar un stand o ser expositor?', '¿Puedo montar un stand o ser expositor?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', 7, '2022-11-14 10:15:13', '2022-12-14 14:12:28', '2022-12-14 14:12:28'),
(9, '¿Dónde puedo encontrar una lista de profesionales de la industria que asisten al BAM?', '¿Dónde puedo encontrar una lista de profesionales de la industria que asisten al BAM?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', 8, '2022-11-14 10:15:33', '2022-12-14 14:12:33', '2022-12-14 14:12:33'),
(10, '¿Cuáles son las restricciones actuales para viajar a Colombia?', '¿Cuáles son las restricciones actuales para viajar a Colombia?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', '------Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula sed ante at ullamcorper. Cras accumsan porttitor felis et ultrices. Aenean ipsum augue, aliquet id sagittis vel, aliquet at orci. Quisque venenatis nulla dolor, et lobortis odio accumsan in. Vestibulum non porttitor metus, in pulvinar nunc. Phasellus non placerat lorem. Aenean ut ultrices magna, non volutpat eros. Quisque ornare semper mauris, non vulputate dolor placerat eu.', 9, '2022-11-14 10:15:52', '2022-12-14 14:12:38', '2022-12-14 14:12:38'),
(11, '1', '4', '2', '5', 3, '2022-12-09 18:20:11', '2022-12-09 18:20:17', '2022-12-09 18:20:17'),
(12, '11', '41', '21', '51', 31, '2022-12-09 18:20:43', '2022-12-09 18:21:23', '2022-12-09 18:21:23'),
(13, '111774545', '44477', '1111177454545', '555777', 2147483647, '2022-12-09 18:21:54', '2022-12-09 18:22:45', '2022-12-09 18:22:45'),
(14, '11177', '44477', '22222277', '55577', 3377, '2022-12-10 17:04:33', '2022-12-10 17:05:14', '2022-12-10 17:05:14'),
(15, '¿Cuándo abren las acreditaciones? ', 'When accreditations open? ', 'Las acreditaciones para la decimoquinta edición del BAM abrirán entre mayo y junio de 2024.', 'Accreditations for the 14th edition of BAM opened on May 15, 2023 and will close on July 6, 2023.', 5, '2023-06-13 11:42:52', '2024-02-13 14:17:24', NULL),
(16, '¿Dónde puedo encontrar los formularios para acreditarme?', 'Where can I find the accreditation forms?', 'Los formularios están disponibles en nuestra página web en la pestaña “Acreditaciones”.', 'The forms are available on our website under the \"accreditation\" tab', 6, '2023-06-13 11:43:44', '2024-02-13 14:17:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritosguia`
--

CREATE TABLE `favoritosguia` (
  `cod_fav` int(11) NOT NULL,
  `lif_fav` int(11) DEFAULT NULL COMMENT 'codigo lista favoritos',
  `usu_fav` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'codigo del usuario favoritos',
  `tip_cif` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '1- perticipante, 2- empresa',
  `pro_fav` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'usuario propietario',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeriaimagenes`
--

CREATE TABLE `galeriaimagenes` (
  `cod_gal` int(11) NOT NULL,
  `nom_gal` varchar(50) DEFAULT NULL COMMENT 'seccion a la que pertenece la galeria',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `galeriaimagenes`
--

INSERT INTO `galeriaimagenes` (`cod_gal`, `nom_gal`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Que es el bam', NULL, '2024-02-21 12:26:27', NULL),
(2, 'bam en las regiones', NULL, '2023-07-25 16:41:41', NULL),
(3, 'galeria Armenia', NULL, '2023-03-27 10:57:47', NULL),
(4, 'galeria 2022', NULL, NULL, NULL),
(5, 'test leo', '2023-03-25 18:25:35', '2023-03-25 18:26:54', '2023-03-25 18:26:54'),
(6, 'prueba borrar', '2023-03-27 10:58:06', '2023-03-27 11:00:04', '2023-03-27 11:00:04'),
(7, 'test', '2024-01-23 10:53:19', '2024-01-23 10:53:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeriaimagenesdetalle`
--

CREATE TABLE `galeriaimagenesdetalle` (
  `cod_dga` int(11) NOT NULL,
  `sec_dal` int(11) DEFAULT NULL COMMENT 'codigo de agenda ',
  `img_dal` varchar(250) DEFAULT NULL COMMENT 'url de la imagen',
  `des_dal` varchar(250) DEFAULT NULL COMMENT 'pie de foto',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `galeriaimagenesdetalle`
--

INSERT INTO `galeriaimagenesdetalle` (`cod_dga`, `sec_dal`, `img_dal`, `des_dal`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'http://localhost/images/galeria/1754428703_474b0c1a9414834a14b2.jpeg', NULL, '2025-08-05 16:18:24', '2025-08-05 16:18:24', NULL),
(2, 3, 'http://localhost/images/galeria/1754428721_47df7654757da9d96258.jpeg', NULL, '2025-08-05 16:18:41', '2025-10-14 15:28:37', '2025-10-14 15:28:37'),
(3, 3, 'http://localhost/images/galeria/1754428729_844aeef7db026d0324b0.jpeg', NULL, '2025-08-05 16:18:49', '2025-08-05 16:19:16', '2025-08-05 16:19:16'),
(4, 3, 'http://localhost/images/galeria/1754428735_fbe363b92c0d2ef5885f.jpeg', NULL, '2025-08-05 16:18:56', '2025-10-14 15:28:34', '2025-10-14 15:28:34'),
(5, 4, 'http://localhost/images/galeria/1760462355_971f10e6be02ea9d59b0.jpeg', NULL, '2025-10-14 12:19:15', '2025-10-14 12:19:15', NULL),
(6, 4, 'http://localhost/images/galeria/1760462360_ae46988cbcb659b8a223.jpg', NULL, '2025-10-14 12:19:21', '2025-10-14 12:19:21', NULL),
(7, 4, 'http://localhost/images/galeria/1760462368_3ecd706762760020b0aa.png', NULL, '2025-10-14 12:19:28', '2025-10-14 12:19:28', NULL),
(8, 3, 'http://localhost/images/galeria/1760473699_73e05c766011aee2b91e.jpeg', NULL, '2025-10-14 15:28:20', '2025-10-14 15:28:40', '2025-10-14 15:28:40'),
(9, 3, 'http://localhost/images/galeria/1760473728_7d128d31f0203e1671a8.png', NULL, '2025-10-14 15:28:48', '2025-10-14 15:28:48', NULL),
(10, 3, 'http://localhost/images/galeria/1760473735_e3ed4d9c7d904e848882.jpeg', NULL, '2025-10-14 15:28:55', '2025-10-14 15:28:55', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `cod_ite` int(11) NOT NULL,
  `nom_ite` varchar(200) DEFAULT NULL,
  `des_ite` varchar(200) DEFAULT NULL,
  `mar_ite` varchar(50) DEFAULT NULL COMMENT 'marca',
  `cod_uni_ite` int(11) DEFAULT NULL COMMENT 'unidad de medida',
  `pre_ite` int(11) DEFAULT NULL COMMENT 'precio',
  `fac_ite` int(11) DEFAULT NULL,
  `ser_ite` varchar(50) DEFAULT NULL COMMENT 'codificacion',
  `pro_ite` varchar(250) DEFAULT NULL COMMENT 'proveedor',
  `iva_ite` int(2) DEFAULT NULL COMMENT 'iva para los calculos',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `usu_acce` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`cod_ite`, `nom_ite`, `des_ite`, `mar_ite`, `cod_uni_ite`, `pre_ite`, `fac_ite`, `ser_ite`, `pro_ite`, `iva_ite`, `created_at`, `updated_at`, `usu_acce`, `deleted_at`) VALUES
(1, 'ABRAZADERA COLGANTE 1 1/2 SELLO UL', NULL, 'Nacional', 3, 1600, NULL, 'IEG-NACXD3/2', '', 11, NULL, '2025-09-23 18:07:28', NULL, NULL),
(2, 'ABRAZADERA COLGANTE FIJA 1\"', NULL, 'Nacional', 3, 989, NULL, 'IEG-NACXD1', '', 0, NULL, NULL, NULL, NULL),
(3, 'TAPA RAWELLT 5800', NULL, 'Rawelt', 3, 1975, NULL, 'IEG-WTYXF580', '', 0, NULL, NULL, NULL, NULL),
(4, 'ALAMBRE DESNUDO 12 AWG COBRE PROCABLES', NULL, 'Procables', 1, 1703, NULL, 'IEC-RADXC12', '', 0, NULL, NULL, NULL, NULL),
(5, 'ALQUILER DE ESCALERA DIELECTRICA EN FIBRA 8 PASOS', NULL, 'Nacional', 3, 20000, NULL, 'AEG-NEDXP8', '', 0, NULL, NULL, NULL, NULL),
(6, 'AMARRE PL¡STICO 20CM PAQ 100 NEGRO DEXSON', NULL, 'Dexson', 3, 7143, NULL, 'IEG-GA2NU100', '', 0, NULL, NULL, NULL, NULL),
(7, 'ARANDELA 3/8\"', NULL, 'Nacional', 3, 126, NULL, 'IEG-NANXD3/8', '', 0, NULL, NULL, NULL, NULL),
(8, 'CINTA AISLANTE X18mtr AMARILLA', NULL, '3M', 3, 2762, NULL, 'IEG-3NAML18', '', 0, NULL, NULL, NULL, NULL),
(9, 'BANDEJA PORTA CABLES 20 CM REJIBAND', NULL, 'Rejiband', 1, 63770, NULL, 'IEG-JBPXN20', '', 0, NULL, NULL, NULL, NULL),
(10, 'BANDEJA PORTA CABLES 30 CM REJIBAND', NULL, 'Rejiband', 1, 81011, NULL, 'IEG-JBPXN30', '', 0, NULL, NULL, NULL, NULL),
(11, 'BANDEJA PORTA CABLES 40 CM REJIBAND', NULL, 'Rejiband', 1, 97140, NULL, 'IEG-JBPXN40', '', 0, NULL, NULL, NULL, NULL),
(12, 'BANDEJA PORTA CABLES 60 CM REJIBAND', NULL, 'Rejiband', 1, 126056, NULL, 'IEG-JBPXN60', '', 0, NULL, NULL, NULL, NULL),
(13, 'VARILLA ROSCADA 3/8\" X 3 MTS', NULL, 'Nacional', 3, 10896, NULL, 'IEG-NBSXD3/8', '', 0, NULL, NULL, NULL, NULL),
(14, 'BORNERA ESCALERILLA CABLOFIL', NULL, 'Nacional', 3, 1921, NULL, 'IEG-NBOXU', '', 0, NULL, NULL, NULL, NULL),
(15, 'BREAKER ENCHUFABLE 1*20 AMP SCHNEIDER', NULL, 'Schneider', 3, 10555, NULL, 'IEE-HB1XA20', '', 0, NULL, NULL, NULL, NULL),
(16, 'BREAKER ENCHUFABLE 1X20A LUMINEX', NULL, 'Luminex', 3, 10242, NULL, 'IEE-XB1XA20', '', 0, NULL, NULL, NULL, NULL),
(17, 'BREAKER ENCHUFABLE 1X40A LUMINEX', NULL, 'Luminex', 3, 10242, NULL, 'IEE-XB1XA40', '', 0, NULL, NULL, NULL, NULL),
(18, 'BREAKER ENCHUFABLE 1X60A LUMINEX', NULL, 'Luminex', 3, 10177, NULL, 'IEE-XB1XA60', '', 0, NULL, NULL, NULL, NULL),
(19, 'BREAKER ENCHUFABLE 3*20AMP SCHNEIDER', NULL, 'Schneider', 3, 79940, NULL, 'IEE-HB3XA20', '', 0, NULL, NULL, NULL, NULL),
(20, 'BREAKER TRIPOLAR 30AMP EZC100N3030 SCHNEIDER', NULL, 'Schneider', 3, 79940, NULL, 'IEE-HB6XA30', '', 0, NULL, NULL, NULL, NULL),
(21, 'BROCA ACERO RAPIDO HSS 015 1/4\"', NULL, 'Nacional', 3, 3697, NULL, 'HEG-NBAXD1/4', '', 0, NULL, NULL, NULL, NULL),
(22, 'BROCA TUNGSTENO 04 SDS-PLUS 5/16\" X 6\" plus 5 x', NULL, 'Nacional', 3, 8824, NULL, 'HEG-NT5XL6', '', 0, NULL, NULL, NULL, NULL),
(23, 'CABLE F/UTP CAT 6A LS0H COMMSCOPE', NULL, 'Commscope - AMP', 1, 3607, NULL, 'IEG-DC7XO6a', '', 0, NULL, NULL, NULL, NULL),
(24, 'CABLE DUPLEX No 10 LIBRE HALOGENOS 90?C 600V AMARILLO', NULL, 'Procables', 1, 7100, NULL, 'IEE-RCHMC10', '', 0, NULL, NULL, NULL, NULL),
(25, 'CABLE No 10 LIBRE HALOGENOS 90?C 600V AZUL', NULL, 'Procables', 1, 3195, NULL, 'IEE-RCHAC10', '', 0, NULL, NULL, NULL, NULL),
(26, 'CABLE No 10 LIBRE HALOGENOS 90?C 600V BLANCO', NULL, 'Procables', 1, 3195, NULL, 'IEE-RCHBC10', '', 0, NULL, NULL, NULL, NULL),
(27, 'CABLE No 10 LIBRE HALOGENOS 90?C 600V NEGRO', NULL, 'Procables', 1, 3195, NULL, 'IEE-RCHNC10', '', 0, NULL, NULL, NULL, NULL),
(28, 'CABLE No 10 LIBRE HALOGENOS 90?C 600V ROJO', NULL, 'Procables', 1, 3195, NULL, 'IEE-RCHRC10', '', 0, NULL, NULL, NULL, NULL),
(29, 'CABLE No 10 LIBRE HALOGENOS 90?C 600V VERDE', NULL, 'Procables', 1, 3195, NULL, 'IEE-RCHVC10', '', 0, NULL, NULL, NULL, NULL),
(30, 'CABLE No 12 LIBRE HALOGENOS 90?C 600V AMARILLO', NULL, 'Procables', 1, 2048, NULL, 'IEE-RCHMC12', '', 0, NULL, NULL, NULL, NULL),
(31, 'CABLE No 12 LIBRE HALOGENOS 90?C 600V AZUL', NULL, 'Procables', 1, 2048, NULL, 'IEE-RCHAC12', '', 0, NULL, NULL, NULL, NULL),
(32, 'CABLE No 12 LIBRE HALOGENOS 90?C 600V BLANCO', NULL, 'Procables', 1, 2048, NULL, 'IEE-RCHBC12', '', 0, NULL, NULL, NULL, NULL),
(33, 'CABLE No 12 LIBRE HALOGENOS 90?C 600V NE', NULL, 'Procables', 1, 2048, NULL, 'IEE-RCHNC12', '', 0, NULL, NULL, NULL, NULL),
(34, 'CABLE No 12 LIBRE HALOGENOS 90?C 600V ROJO', NULL, 'Procables', 1, 2048, NULL, 'IEE-RCHRC12', '', 0, NULL, NULL, NULL, NULL),
(35, 'CABLE No 12 LIBRE HALOGENOS 90?C 600V VERDE', NULL, 'Procables', 1, 2048, NULL, 'IEE-RCHVC12', '', 0, NULL, NULL, NULL, NULL),
(36, 'CABLE No 14 LIBRE HALOGENOS 90?C 600V AMARILLO', NULL, 'Procables', 1, 1550, NULL, 'IEE-RCHMC14', '', 0, NULL, NULL, NULL, NULL),
(37, 'CABLE No 14 LIBRE HALOGENOS 90?C 600V AZUL', NULL, 'Procables', 1, 1550, NULL, 'IEE-RCHAC14', '', 0, NULL, NULL, NULL, NULL),
(38, 'CABLE No 14 LIBRE HALOGENOS 90?C 600V BLANCO', NULL, 'Procables', 1, 1550, NULL, 'IEE-RCHBC14', '', 0, NULL, NULL, NULL, NULL),
(39, 'CABLE No 14 LIBRE HALOGENOS 90?C 600V NEGRO', NULL, 'Procables', 1, 1550, NULL, 'IEE-RCHNC14', '', 0, NULL, NULL, NULL, NULL),
(40, 'CABLE No 14 LIBRE HALOGENOS 90?C 600V ROJO', NULL, 'Procables', 1, 1550, NULL, 'IEE-RCHRC14', '', 0, NULL, NULL, NULL, NULL),
(41, 'CABLE No 14 LIBRE HALOGENOS 90?C 600V VERDE', NULL, 'Procables', 1, 1550, NULL, 'IEE-RCHVC14', '', 0, NULL, NULL, NULL, NULL),
(42, 'CABLE No 8 LIBRE HALOGENOS 90?C 600V AMARILLO', NULL, 'Procables', 1, 5182, NULL, 'IEE-RCHMC8', '', 0, NULL, NULL, NULL, NULL),
(43, 'CABLE No 8 LIBRE HALOGENOS 90?C 600V AZUL', NULL, 'Procables', 1, 5182, NULL, 'IEE-RCHAC8', '', 0, NULL, NULL, NULL, NULL),
(44, 'CABLE No 8 LIBRE HALOGENOS 90?C 600V BLANCO', NULL, 'Procables', 1, 5182, NULL, 'IEE-RCHBC8', '', 0, NULL, NULL, NULL, NULL),
(45, 'CABLE No 8 LIBRE HALOGENOS 90?C 600V NEGRO', NULL, 'Procables', 1, 5182, NULL, 'IEE-RCHNC8', '', 0, NULL, NULL, NULL, NULL),
(46, 'CABLE No 8 LIBRE HALOGENOS 90?C 600V ROJO', NULL, 'Procables', 1, 5182, NULL, 'IEE-RCHRC8', '', 0, NULL, NULL, NULL, NULL),
(47, 'CABLE No 8 LIBRE HALOGENOS 90?C 600V VERDE', NULL, 'Procables', 1, 5182, NULL, 'IEE-RCHVC8', '', 0, NULL, NULL, NULL, NULL),
(48, 'CABLE PARA FIBRA OPTICA F.O. MULTIMODO 50/125 UM OM4 12 HILOS INDOOR /', NULL, 'Siemons', 1, 21778, NULL, 'IEG-FCOXH12', '', 0, NULL, NULL, NULL, NULL),
(49, 'CABLE S/FTP CATEGORÕA 7A  COMMSCOPE', NULL, 'Commscope - AMP', 1, 4500, NULL, 'IEG-DC7XO7a', '', 0, NULL, NULL, NULL, NULL),
(50, 'CABLE S/FTP CATEGORÕA 7A PANDUIT', NULL, 'Panduit', 1, 12490, NULL, 'IEG-PC7XO6a', '', 0, NULL, NULL, NULL, NULL),
(51, 'CABLE S/FTP CATEGORÕA 7A SIEMONS', NULL, 'Siemons', 1, 6557, NULL, 'IEG-FC7XO6a', '', 0, NULL, NULL, NULL, NULL),
(52, 'CINTA AISLANTE X18mtr AZUL', NULL, '3M', 3, 2762, NULL, 'IEG-3NAAL18', '', 0, NULL, NULL, NULL, NULL),
(53, 'CABLE TRENZADO SINTOX 3X12 LSZH AZUL', NULL, 'Centelsa', 1, 7252, NULL, 'IEE-CCNAC12', '', 0, NULL, NULL, NULL, NULL),
(54, 'CABLE TRENZADO SINTOX 3X12 LSZH ROJO', NULL, 'Centelsa', 1, 7252, NULL, 'IEE-CCNRC12', '', 0, NULL, NULL, NULL, NULL),
(55, 'CAJA RAWELLT 2400 4 HUECOS 3/4', NULL, 'Rawelt', 3, 14571, NULL, 'IEE-WCFXD3/4', '', 0, NULL, NULL, NULL, NULL),
(56, 'CAJA RAWELLT 5800 2 HUECOS 3/4', NULL, 'Rawelt', 3, 9139, NULL, 'IEE-WC9XD3/4', '', 0, NULL, NULL, NULL, NULL),
(57, 'CINTA AISLANTE X18mtr BLANCA', NULL, '3M', 3, 2762, NULL, 'IEG-3NABL18', '', 0, NULL, NULL, NULL, NULL),
(58, 'CINTA AISLANTE X18mtr NEGRA ADLER', NULL, '3M', 3, 2762, NULL, 'IEG-3NANL18', '', 0, NULL, NULL, NULL, NULL),
(59, 'CINTA AISLANTE X18mtr ROJA ADLER', NULL, '3M', 3, 2762, NULL, 'IEG-3NARL18', '', 0, NULL, NULL, NULL, NULL),
(60, 'TAPA RAWELLT 2400', NULL, 'Rawelt', 3, 3067, NULL, 'IEG-WTYXF240', '', 0, NULL, NULL, NULL, NULL),
(61, 'VARILLA ROSCADA 1/4X3M ZINC', NULL, 'Nacional', 3, 6134, NULL, 'IEG-NV3XD1/4', '', 0, NULL, NULL, NULL, NULL),
(62, 'VARILLA ROSCADA 3/8X3M ZINC', NULL, 'Nacional', 3, 11891, NULL, 'IEG-NV3XD3/8', '', 0, NULL, NULL, NULL, NULL),
(63, 'ADAPTADOR ANGULAR PARA FACEPLATE CT', NULL, 'Nacional', 3, 2353, NULL, 'IEG-NAPBTCT', '', 0, NULL, NULL, NULL, NULL),
(64, 'ARBOL SIERRA COPA BIMETAL 1-1/4\"A6\"', NULL, 'Makita', 3, 28319, NULL, 'HEG-MS1XL6', '', 0, NULL, NULL, NULL, NULL),
(65, 'CABLE TERMOFLEX 3X16 600V 90?C (ENCAUCHETADO)', NULL, 'Centelsa', 1, 3727, NULL, 'IEE-CCTXC16', '', 0, NULL, NULL, NULL, NULL),
(66, 'CANALETA METALICA DB 12*5 BLANCA', NULL, 'Nacional', 1, 73361, NULL, 'IEG-NCMBN5', '', 0, NULL, NULL, NULL, NULL),
(67, 'CARTUCHO CINTA ADHESIVA 1\" 25 MM BLANCO P/IMPRESORA MP', NULL, 'Panduit', 3, 149304, NULL, 'IEG-PCCBN1', '', 0, NULL, NULL, NULL, NULL),
(68, 'CARTUCHO CINTA ADHESIVA 1/2\" 12 MM BLANCO P/IMPRESORA MP', NULL, 'Panduit', 3, 104299, NULL, 'IEG-PCCBN1/2', '', 0, NULL, NULL, NULL, NULL),
(69, 'CARTUCHO MP DE ETIQUETA AUTOLAMINABLE VINILO 1\" X 1.5\" TRANSPARENTE / BLANCO', NULL, 'Panduit', 3, 7539, NULL, 'IEG-PCVBN1', '', 0, NULL, NULL, NULL, NULL),
(70, 'CHAZO DE 1/4 PLASTCO SUPRA CON TORNILLO', NULL, 'Nacional', 3, 531, NULL, 'IEG-NZSXN1/4', '', 0, NULL, NULL, NULL, NULL),
(71, 'CHAZO PUNTILLA 1/4 *1/4', NULL, 'Nacional', 3, 245, NULL, 'IEG-NZPXN1/4', '', 0, NULL, NULL, NULL, NULL),
(72, 'CHAZO PUNTILLA 1/4 *5/8', NULL, 'Nacional', 3, 294, NULL, 'IEG-NZPXD5/8', '', 0, NULL, NULL, NULL, NULL),
(73, 'CHAZO RL 1/4', NULL, 'Nacional', 3, 380, NULL, 'IEG-NZRXN1/4', '', 0, NULL, NULL, NULL, NULL),
(74, 'CHAZO RL 3/8', NULL, 'Nacional', 3, 520, NULL, 'IEG-NZRXN3/8', '', 0, NULL, NULL, NULL, NULL),
(75, 'CINTA SUPER 33', NULL, 'Scotch', 3, 18706, NULL, 'IEG-TNANL20', '', 0, NULL, NULL, NULL, NULL),
(76, 'CINTA VELCRO 1.9 CM X 10 MTS ROLLO', NULL, 'Panduit', 3, 15882, NULL, 'IEG-PCRNL10', '', 0, NULL, NULL, NULL, NULL),
(77, 'CONECTOR AUTODESFORRE 10-12 3M', NULL, '3M', 3, 1428, NULL, 'IEG-3NDXC12', '', 0, NULL, NULL, NULL, NULL),
(78, 'PATCH CORD CONECTOR LC/LC PARA FIBRA OPTICA', NULL, 'Nacional', 3, 22437, NULL, 'IEG-NL4XU1', '', 0, NULL, NULL, NULL, NULL),
(79, 'CONECTOR RESORTE NARANJA/AZUL', NULL, '3M', 3, 630, NULL, 'IEE-3NRJC12', '', 0, NULL, NULL, NULL, NULL),
(80, 'CONECTOR RESORTE ROJO AMARLLO 3M', NULL, '3M', 3, 1450, NULL, 'IEE-3NRRC12', '', 0, NULL, NULL, NULL, NULL),
(81, 'CURVAS EMT 1', NULL, 'Steel', 3, 2689, NULL, 'IEE-SCEXD1', '', 0, NULL, NULL, NULL, NULL),
(82, 'CURVAS EMT 1 1/2', NULL, 'Steel', 3, 8697, NULL, 'IEE-SCEXD1/2', '', 0, NULL, NULL, NULL, NULL),
(83, 'CURVAS EMT 3/4', NULL, 'Steel', 3, 1900, NULL, 'IEE-SCEXD3/4', '', 0, NULL, NULL, NULL, NULL),
(84, 'DISCO 03 CORTE ACERO INOX EXTRAD T1 4.1/2\"X 1.2mm', NULL, 'Nacional', 3, 3613, NULL, 'IEG-NDCXN4,5', '', 0, NULL, NULL, NULL, NULL),
(85, 'FACE PLATE 2 SALIDAS HUESO CON ICONO DE IDENTIFICACION MINICOM', NULL, 'Minicom', 3, 5800, NULL, 'IED-IFPBS2', '', 0, NULL, NULL, NULL, NULL),
(86, 'FACEPLATE DOBLE', NULL, 'Nacional', 3, 5800, NULL, 'IEG-NFPXS2', '', 0, NULL, NULL, NULL, NULL),
(87, 'FACEPLATE SENCILLO', NULL, 'Nacional', 3, 5800, NULL, 'IEG-NFPXS1', '', 0, NULL, NULL, NULL, NULL),
(88, 'GRAPA 1 1/2 DOBLE OREJA GALV. TB EMT', NULL, 'Steel', 3, 1134, NULL, 'IEE-SGDXD1,5', '', 0, NULL, NULL, NULL, NULL),
(89, 'GRAPA 1 1/4 DOBLE OREJA GALV. TB EMT', NULL, 'Steel', 3, 1008, NULL, 'IEE-SGDXD1,75', '', 0, NULL, NULL, NULL, NULL),
(90, 'JACK RJ 45 CAT 6A COLOR BLANCO  PANDUIT', NULL, 'Panduit', 3, 21429, NULL, 'IEG-PJ6BO6a', '', 0, NULL, NULL, NULL, NULL),
(91, 'JACK RJ 45 CAT 6A COLOR BLANCO COMMSCOPE', NULL, 'Commscope - AMP', 3, 23109, NULL, 'IEG-DJ6BO6a', '', 0, NULL, NULL, NULL, NULL),
(92, 'JACK RJ 45 CAT 6A COLOR BLANCO SIEMONS', NULL, 'Siemons', 3, 20588, NULL, 'IEG-FJ6BO6a', '', 0, NULL, NULL, NULL, NULL),
(93, 'JACK RJ 45 CAT 6A COLOR NEGRO COMMSCOPE', NULL, 'Commscope - AMP', 3, 21429, NULL, 'IEG-DJ6NO6a', '', 0, NULL, NULL, NULL, NULL),
(94, 'JACK RJ 45 CAT 6A COLOR NEGRO PANDUIT', NULL, 'Panduit', 3, 23109, NULL, 'IEG-PJ6NO6a', '', 0, NULL, NULL, NULL, NULL),
(95, 'JACK RJ 45 CAT 6A COLOR NEGRO SIEMONS', NULL, 'Siemons', 3, 20588, NULL, 'IEG-FJ6NO6a', '', 0, NULL, NULL, NULL, NULL),
(96, 'JACK RJ45 CAT. 6A NEGRO MINICOM', NULL, 'Panduit', 3, 21429, NULL, 'IED-PJ6XTJ45', '', 0, NULL, NULL, NULL, NULL),
(97, 'JACK TERA 4 PARES COLOR NEGRO', NULL, 'Siemons', 3, 23109, NULL, 'IEG-FJ6NO7', '', 0, NULL, NULL, NULL, NULL),
(98, 'GRAPA 1 DOBLE OREJA GALV. TB EMT', NULL, 'Steel', 3, 348, NULL, 'IEE-SGDXD1', '', 0, NULL, NULL, NULL, NULL),
(99, 'GRAPA 3/4 DOBLE OREJA GALV. TB EMT', NULL, 'Steel', 3, 329, NULL, 'IEE-SGDXD3/4', '', 0, NULL, NULL, NULL, NULL),
(100, 'PATCH CORD CAT. 6A 1 MTS AZUL ( 3,5 FT) F/UTP LSZH MINICOM', NULL, 'Panduit', 3, 25400, NULL, 'IEG-PP6AL1', '', 0, NULL, NULL, NULL, NULL),
(101, 'PATCH CORD CAT. 6A 1.5 MTS AZUL ( 5 FT) F/UTP LSZH MINICOM', NULL, 'Panduit', 3, 28000, NULL, 'IED-PP6AL1,5', '', 0, NULL, NULL, NULL, NULL),
(102, 'PATCH CORD CAT. 6A 2 MTS AZUL ( 7 FT) F/UTP LSZH MINICOM', NULL, 'Panduit', 3, 31400, NULL, 'IED-PP6AL2', '', 0, NULL, NULL, NULL, NULL),
(103, 'PATCH CORD TERA 4 PARES A RJ45 2 MTS LARGO CON BOTAS', NULL, 'Siemons', 3, 39496, NULL, 'IEG-FP8XTTra', '', 0, NULL, NULL, NULL, NULL),
(104, 'GRAPA COLGANTE BE-CLAMP VARILLA 1/4-3/8', NULL, 'B-clamp', 3, 788, NULL, 'IEE-BGCXD3/8', '', 0, NULL, NULL, NULL, NULL),
(105, 'HERRAJE PATCH PANEL 24 PUERTOS CAT 6A PLANO MODULAR 1RU MINICOM', NULL, 'Panduit', 3, 75000, NULL, 'IED-PCIXE24', '', 0, NULL, NULL, NULL, NULL),
(106, 'MANDRIL SIERRA COPA SHEETE METAL 5/8\" X 1 3/8\"', NULL, 'Makita', 3, 16723, NULL, 'HEG-MM5XD3/8', '', 0, NULL, NULL, NULL, NULL),
(107, 'MULTITOMA 8 SALIDAS C/POLO AISL. HORIZONTAL GRADO IND.NARANJA', NULL, 'Axxis', 3, 186218, NULL, 'IEE-AMTJS8', '', 0, NULL, NULL, NULL, NULL),
(108, 'REDUCCION DE 1 A 3/4', NULL, 'Nacional', 3, 9160, NULL, 'IEE-NR1XD3/4', '', 0, NULL, NULL, NULL, NULL),
(109, 'SIERRA COPA 1.1/8\"  29MM', NULL, 'Makita', 3, 24958, NULL, 'HEG-MS8XD1/8', '', 0, NULL, NULL, NULL, NULL),
(110, 'TERMINAL 1 1/2 EMT-ACERO UL STEEL', NULL, 'Steel', 3, 4328, NULL, 'IEE-STLXD1,5', '', 0, NULL, NULL, NULL, NULL),
(111, 'TERMINAL 1 1/4 EMT-ACERO UL STEEL', NULL, 'Steel', 3, 3445, NULL, 'IEE-STLXD1,75', '', 0, NULL, NULL, NULL, NULL),
(112, 'TERMINAL 1 EMT-ACERO UL STEEL', NULL, 'Steel', 3, 2101, NULL, 'IEE-STLXD1', '', 0, NULL, NULL, NULL, NULL),
(113, 'TERMINAL 3/4 EMT-ACERO UL STEEL', NULL, 'Steel', 3, 1303, NULL, 'IEE-STLXD3/4', '', 0, NULL, NULL, NULL, NULL),
(114, 'SIERRA COPA BIMETAL 1-3/8\"  35MM', NULL, 'Makita', 3, 30252, NULL, 'HEG-MS3XD3/8', '', 0, NULL, NULL, NULL, NULL),
(115, 'TABLERO 12 NTQ-T C/ESPACIO TRIF.SCHNEIDER ZA000611096', NULL, 'Schneider', 3, 208319, NULL, 'IEE-HTEXF12', '', 0, NULL, NULL, NULL, NULL),
(116, 'TERMINAL PLUG RJ 45 CAT 6A/6/5E ENSAMBLE CON TAPA BLINDADO', NULL, 'Panduit', 3, 42000, NULL, 'IED-PPGXO6a', '', 0, NULL, NULL, NULL, NULL),
(117, 'TUBO 1 1/2 EMT-X 3MTRS COLMENA', NULL, 'Colmena', 3, 71218, NULL, 'IEE-OTBXD1,5', '', 0, NULL, NULL, NULL, NULL),
(118, 'TUBO 1 1/4 EMT-X 3MTRS COLMENA', NULL, 'Colmena', 3, 66387, NULL, 'IEE-OTBXD1,75', '', 0, NULL, NULL, NULL, NULL),
(119, 'TUBO 1 EMT-X 3MTRS COLMENA', NULL, 'Colmena', 3, 44202, NULL, 'IEE-OTBXD1', '', 0, NULL, NULL, NULL, NULL),
(120, 'TUBO 3/4 EMT-X 3MTRS COLMENA', NULL, 'Colmena', 3, 28655, NULL, 'IEE-OTBXD3/4', '', 0, NULL, NULL, NULL, NULL),
(121, 'TUERCA 1/4 ZINC', NULL, 'Nacional', 3, 184, NULL, 'IEG-NTAXD1/4', '', 0, NULL, NULL, NULL, NULL),
(122, 'TUERCA 3/8 ZINC', NULL, 'Nacional', 3, 344, NULL, 'IEG-NTAXD3/8', '', 0, NULL, NULL, NULL, NULL),
(123, 'UNION 1 1/2 EMT-ACERO UL STEEL', NULL, 'Steel', 3, 3571, NULL, 'IEE-SUEXD1,5', '', 0, NULL, NULL, NULL, NULL),
(124, 'UNION 1 1/4 EMT-ACERO UL STEEL', NULL, 'Colmena', 3, 3361, NULL, 'IEE-OUEXD1,75', '', 0, NULL, NULL, NULL, NULL),
(125, 'UNION 1 EMT-ACERO UL STEEL', NULL, 'Steel', 3, 3109, NULL, 'IEE-SUEXD1', '', 0, NULL, NULL, NULL, NULL),
(126, 'UNION 3/4 EMT-ACERO UL STEEL', NULL, 'Steel', 3, 1933, NULL, 'IEE-SUEXD3/4', '', 0, NULL, NULL, NULL, NULL),
(127, 'TROQUEL DATOS 12*5 BLANCO', NULL, 'Nacional', 3, 7143, NULL, 'IEG-NTDBL5', '', 0, NULL, NULL, NULL, NULL),
(128, 'TROQUEL ELECTRICO 12*5 BLANCO', NULL, 'Nacional', 3, 7143, NULL, 'IEG-NTOBL5', '', 0, NULL, NULL, NULL, NULL),
(129, 'VELCRO ROLLO DE 25 METROS NEGRO NACIONAL', NULL, 'Nacional', 3, 61261, NULL, 'IEG-NCRNL25', '', 0, NULL, NULL, NULL, NULL),
(130, 'M,O. DESINSTALACIÓN BANDEJA PORTA CABLES', NULL, 'Nacional', 1, 4200, NULL, 'MEG-NPT2M', '', 0, NULL, NULL, NULL, NULL),
(131, 'M,O. DESINSTALACIÓN CANALETA MET¡LICA', NULL, 'Nacional', 3, 3000, NULL, 'MEG-NCM2M', '', 0, NULL, NULL, NULL, NULL),
(132, 'M,O. DESINSTALACIÓN PUNTO DATOS', NULL, 'Nacional', 3, 10500, NULL, 'MED-NPD2U', '', 0, NULL, NULL, NULL, NULL),
(133, 'M,O. DESINSTALACIÓN PUNTO ELEÉCTRICO', NULL, 'Nacional', 3, 9500, NULL, 'MEE-NPE2U', '', 0, NULL, NULL, NULL, NULL),
(134, 'M,O. DESINSTALACIÓN TUBERIÍA EMT', NULL, 'Nacional', 1, 3100, NULL, 'MEE-NTB2M', '', 0, NULL, NULL, NULL, NULL),
(135, 'M,O. INSTALACI”N ARMARIO ELEÉCTRICO', NULL, 'Nacional', 3, 410000, NULL, 'MEE-NAE1U', '', 0, NULL, NULL, NULL, NULL),
(136, 'M,O. INSTALACI”N BARRA DE TIERRA PARA RACK 1 A 5', NULL, 'Nacional', 3, 90000, NULL, 'MEE-NBR1U5', '', 0, NULL, NULL, NULL, NULL),
(137, 'M,O. INSTALACI”N BARRA DE TIERRA PARA RACK 5 A 10', NULL, 'Nacional', 3, 120000, NULL, 'MEE-NBR1U10', '', 0, NULL, NULL, NULL, NULL),
(138, 'M,O. INSTALACI”N BARRA DE TIERRA TMGB', NULL, 'Nacional', 3, 25000, NULL, 'MEE-NBR1Ugb', '', 0, NULL, NULL, NULL, NULL),
(139, 'M,O. INSTALACI”N CANALETA PL¡STICA', NULL, 'Nacional', 1, 4500, NULL, 'MEG-NCP1M', '', 0, NULL, NULL, NULL, NULL),
(140, 'M,O. INSTALACI”N CORAZA', NULL, 'Nacional', 1, 3500, NULL, 'MEG-NCZ1M', '', 0, NULL, NULL, NULL, NULL),
(141, 'M,O. INSTALACI”N GABINETE DE DATOS PARED', NULL, 'Nacional', 3, 140000, NULL, 'MED-NGT1U', '', 0, NULL, NULL, NULL, NULL),
(142, 'M,O. INSTALACI”N GABINETE DE DATOS PISO', NULL, 'Nacional', 3, 250000, NULL, 'MED-NGP1U', '', 0, NULL, NULL, NULL, NULL),
(143, 'M,O. INSTALACI”N ORGANIZADOR DE CABLES', NULL, 'Nacional', 3, 7000, NULL, 'MEG-NOC1U', '', 0, NULL, NULL, NULL, NULL),
(144, 'M,O. INSTALACI”N RACK DE PISO', NULL, 'Nacional', 3, 200000, NULL, 'MEG-NRP1U', '', 0, NULL, NULL, NULL, NULL),
(145, 'M,O. INSTALACI”N TABLERO ELECTRICO', NULL, 'Nacional', 3, 230000, NULL, 'MEE-NTE1U', '', 0, NULL, NULL, NULL, NULL),
(146, 'M,O. INSTALACI”N UPS (HASTA 10 KVA)', NULL, 'Nacional', 3, 170000, NULL, 'MEE-NUP1U', '', 0, NULL, NULL, NULL, NULL),
(147, 'M,O. MONTAJE SWITCH DATOS', NULL, 'Nacional', 3, 12000, NULL, 'MED-NSW1U', '', 0, NULL, NULL, NULL, NULL),
(148, 'M,O. PEINADO RACK / GABINETE (MINIMO POR INTERVENCION)', NULL, 'Nacional', 3, 220000, NULL, 'MED-NGP4U', '', 0, NULL, NULL, NULL, NULL),
(149, 'M,O. PONCHADO PUNTOS DATOS CAT 5E - 6 - 6A hasta 10 puntos', NULL, 'Nacional', 3, 7000, NULL, 'MED-NPD5U6a', '', 0, NULL, NULL, NULL, NULL),
(150, 'M,O. PONCHADO PUNTOS DATOS CAT 7A', NULL, 'Nacional', 3, 7000, NULL, 'MED-NPD5U7a', '', 0, NULL, NULL, NULL, NULL),
(151, 'M,O. PUNTO DATOS 5E - 6 - 6A', NULL, 'Nacional', 3, 51000, NULL, 'MED-NPD1U6a', '', 0, NULL, NULL, NULL, NULL),
(152, 'M,O. PUNTO DATOS TERA 7A', NULL, 'Nacional', 3, 51000, NULL, 'MED-NPD1U7a', '', 0, NULL, NULL, NULL, NULL),
(153, 'M,O. PUNTO INTERRUPTOR ILUMINACI”N', NULL, 'Nacional', 3, 37000, NULL, 'MEE-NII1U', '', 0, NULL, NULL, NULL, NULL),
(154, 'M,O. REUBICACI”N PUNTO DATOS (CABLEADO)', NULL, 'Nacional', 3, 35000, NULL, 'MED-NPD3U', '', 0, NULL, NULL, NULL, NULL),
(155, 'M,O. REUBICACI”N PUNTO ELECTRICO (CABLEADO)', NULL, 'Nacional', 3, 35000, NULL, 'MEE-NPE3U', '', 0, NULL, NULL, NULL, NULL),
(156, 'M,O. SALIDA ILUMINACI”N', NULL, 'Nacional', 3, 52000, NULL, 'MEE-NSI1U', '', 0, NULL, NULL, NULL, NULL),
(157, 'M,O. TOMA EL…CTRICA NO REGULADA', NULL, 'Nacional', 3, 48000, NULL, 'MEE-NTM1U', '', 0, NULL, NULL, NULL, NULL),
(158, 'M,O. TOMA EL…CTRICA REGULADA', NULL, 'Nacional', 3, 48000, NULL, 'MEE-NTR1U', '', 0, NULL, NULL, NULL, NULL),
(159, 'M,O. TUBERIÍA EMT', NULL, 'Nacional', 1, 9000, NULL, 'MEE-NTB1U', '', 0, NULL, NULL, NULL, NULL),
(160, 'M,O. TUBERIA PVC', NULL, 'Nacional', 1, 6500, NULL, 'MEG-NTC1U', '', 0, NULL, NULL, NULL, NULL),
(161, 'M.O INSTALACI”N BOTON DE ACCESO, CANTONERA, NO TOUCH', NULL, 'Nacional', 3, 24000, NULL, 'MEE-NBC1U', '', 0, NULL, NULL, NULL, NULL),
(162, 'M.O INSTALACI”N CABLE 6 AWG PARA PUESTA A TIERRA', NULL, 'Nacional', 1, 1300, NULL, 'MED-NCB1C6', '', 0, NULL, NULL, NULL, NULL),
(163, 'M.O INSTALACI”N CABLE COAXIAL', NULL, 'Nacional', 1, 1250, NULL, 'MED-NCX1M', '', 0, NULL, NULL, NULL, NULL),
(164, 'M.O INSTALACI”N CABLE DE AUDIO', NULL, 'Nacional', 1, 1300, NULL, 'MED-NCU1M', '', 0, NULL, NULL, NULL, NULL),
(165, 'M.O INSTALACI”N CABLE F.O. TIPO ARMADA O EXTERIOR', NULL, 'Nacional', 1, 6500, NULL, 'MED-NFO1M', '', 0, NULL, NULL, NULL, NULL),
(166, 'M.O INSTALACI”N CABLE F.O. TIPO INTERIOR', NULL, 'Nacional', 1, 2800, NULL, 'MED-NCI1M', '', 0, NULL, NULL, NULL, NULL),
(167, 'M.O INSTALACI”N CABLE HDMI / DISPLAY PORT', NULL, 'Nacional', 3, 40000, NULL, 'MED-NHD1M', '', 0, NULL, NULL, NULL, NULL),
(168, 'M.O INSTALACI”N CABLE USB', NULL, 'Nacional', 3, 40000, NULL, 'MED-NUB1M', '', 0, NULL, NULL, NULL, NULL),
(169, 'M.O INSTALACI”N CABLE VGA', NULL, 'Nacional', 3, 40000, NULL, 'MED-NVG1M', '', 0, NULL, NULL, NULL, NULL),
(170, 'M.O INSTALACI”N CAJAS DE PASO (DESDE 20X20)', NULL, 'Nacional', 3, 10000, NULL, 'MEG-NJP1U', '', 0, NULL, NULL, NULL, NULL),
(171, 'M.O INSTALACI”N CONECTORES CABLE COAXIAL', NULL, 'Nacional', 3, 16000, NULL, 'MED-NCO1U', '', 0, NULL, NULL, NULL, NULL),
(172, 'M.O INSTALACI”N CONECTORES PARA AUDIO', NULL, 'Nacional', 3, 16000, NULL, 'MED-NOA1U', '', 0, NULL, NULL, NULL, NULL),
(173, 'M.O INSTALACI”N CONTACTORES', NULL, 'Nacional', 3, 55000, NULL, 'MEG-NAR1U', '', 0, NULL, NULL, NULL, NULL),
(174, 'M.O INSTALACI”N DE BANDEJA FIBRA ”PTICA (PARED)', NULL, 'Nacional', 3, 20000, NULL, 'MED-NBF1MPR', '', 0, NULL, NULL, NULL, NULL),
(175, 'M.O INSTALACI”N DE BANDEJA FIBRA ”PTICA (RACK)', NULL, 'Nacional', 3, 20000, NULL, 'MED-NBF1MRK', '', 0, NULL, NULL, NULL, NULL),
(176, 'M.O INSTALACI”N DE CAMARA DE SEGURIDAD', NULL, 'Nacional', 3, 27000, NULL, 'MED-NCA1U', '', 0, NULL, NULL, NULL, NULL),
(177, 'M.O INSTALACI”N ELECTROIMAN SIN CONEX Y CABLE A 0 MTRS', NULL, 'Nacional', 3, 85000, NULL, 'MEE-NEI1U', '', 0, NULL, NULL, NULL, NULL),
(178, 'M.O INSTALACI”N LECTORA', NULL, 'Nacional', 3, 50000, NULL, 'MED-NLC1U', '', 0, NULL, NULL, NULL, NULL),
(179, 'M.O INSTALACI”N TOTALIZADORES', NULL, 'Nacional', 3, 47000, NULL, 'MEE-NTZ1U', '', 0, NULL, NULL, NULL, NULL),
(180, 'M.O POR COMPLEJIDAD TIPO 1', NULL, 'Nacional', 3, 60000, NULL, 'MEG-NPJ1U', '', 0, NULL, NULL, NULL, NULL),
(181, 'M.O POR COMPLEJIDAD TIPO 2', NULL, 'Nacional', 3, 110000, NULL, 'MEG-NPJ1U1', '', 0, NULL, NULL, NULL, NULL),
(182, 'M.O POR COMPLEJIDAD TIPO 3', NULL, 'Nacional', 3, 160000, NULL, 'MEG-NPJ1U2', '', 0, NULL, NULL, NULL, NULL),
(183, 'MANDRIL SIERRA COPA SHEETE METAL 5/8\" X 1 3/8\"', NULL, 'Makita', 3, 75000, NULL, 'HEG-MM5XD3/8', '', 0, NULL, NULL, NULL, NULL),
(184, '2227', NULL, NULL, 3, 3337, NULL, '1117', '447', 0, '2023-01-13 17:16:19', '2023-01-13 17:16:43', NULL, '2023-01-13 17:16:43'),
(185, 'Camara ip 2 megapíxeles hik', NULL, NULL, 3, 125000, NULL, '1CAM1PRU', 'GSP', 0, '2023-02-02 14:23:05', '2023-02-02 14:24:33', NULL, NULL),
(186, 'BLANK INSERT (BOTON CIEGO) BLANCO   MINICOM\n', NULL, NULL, 3, 558, NULL, 'CMBWH-X ', 'INTERNACIONAL DE ELECTRICOS', 0, '2023-03-10 13:23:00', '2023-03-10 13:25:55', NULL, NULL),
(187, 'MARQUILLA DATOS', NULL, NULL, 3, 2500, NULL, 'IEDPBBMC1', 'INTERNACIONAL DE ELECTRICOS', 0, '2023-03-10 14:38:55', '2023-03-10 14:38:55', NULL, NULL),
(379, '22299', NULL, '33399', 3, 44499, NULL, '111999', NULL, 0, '2025-07-23 20:01:57', '2025-08-06 17:52:03', NULL, '2025-08-06 17:52:03'),
(380, '2229', NULL, '3339', 3, 4449, NULL, '11119', NULL, 0, '2025-08-06 17:51:38', '2025-08-06 17:51:59', NULL, '2025-08-06 17:51:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `label`
--

CREATE TABLE `label` (
  `cod_lab` int(11) NOT NULL,
  `nom_lab` text DEFAULT NULL COMMENT 'nombre campo',
  `tex_lab_ing` text DEFAULT NULL COMMENT 'dato ing',
  `tex_lab_esp` text DEFAULT NULL COMMENT 'dato español',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `label`
--

INSERT INTO `label` (`cod_lab`, `nom_lab`, `tex_lab_ing`, `tex_lab_esp`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'English', 'Español', 'English', '2023-09-25 16:06:35', '2023-11-20 14:18:01', NULL),
(6, 'Ingresar a BAM', 'Enter to BAM', 'Ingresar a BAM', '2023-09-25 16:09:23', '2023-09-25 16:09:23', NULL),
(7, 'acreditaciones', 'accreditations', 'acreditaciones', '2023-09-25 16:17:56', '2023-11-20 14:09:26', NULL),
(8, 'Contacto', 'Contact', 'Contacto', '2023-09-25 16:17:56', '2023-11-20 12:30:17', NULL),
(9, 'Espacio exclusivo de usuarios registrados para acreditarse y consultar el espacio de industria.', 'Exclusive space for registered users to register and consult the industry space.', 'Espacio exclusivo de usuarios registrados para acreditarse y consultar el espacio de industria.', '2023-09-25 16:24:38', '2023-11-20 14:18:14', NULL),
(10, 'Usuario / Correo electrónico', 'User / Email', 'Usuario / Correo electrónico', '2023-09-25 16:24:38', '2023-11-20 14:25:23', NULL),
(11, 'Contraseña', 'Password', 'Contraseña', '2023-09-25 16:24:38', '2023-11-20 14:14:18', NULL),
(12, 'Ingresar', 'Sign up', 'Ingresar', '2023-09-25 16:24:38', '2023-11-20 14:21:42', NULL),
(13, 'Registrarme en el BAM', 'Register at BAM', 'Registrarme en el BAM', '2023-09-25 16:24:38', '2023-11-20 14:23:56', NULL),
(14, 'Olvidé mi contraseña', 'I forgot my password', 'Olvidé mi contraseña', '2023-09-25 16:24:38', '2023-11-20 14:23:15', NULL),
(15, 'Noticias', 'News', 'Noticias', '2023-09-25 16:29:54', '2023-11-20 14:23:01', NULL),
(16, 'BAM recomienda', 'BAM recommends', 'BAM recomienda', '2023-09-25 16:29:54', '2023-11-20 14:12:31', NULL),
(17, 'ver más', 'See more', 'ver más', '2023-09-25 16:29:54', '2023-11-20 14:25:33', NULL),
(18, 'Organizadores', 'Organizers', 'Organizadores', '2023-09-25 16:33:53', '2023-11-20 14:23:25', NULL),
(19, 'BOGOTÁ AUDIOVISUAL MARKET - BAM, PROIMÁGENES COLOMBIA Y CÁMARA DE COMERCIO DE BOGOTÁ son marcas registradas.', 'BOGOTÁ AUDIOVISUAL MARKET - BAM, PROIMÁGENES COLOMBIA AND CHAMBER OF COMMERCE OF BOGOTÁ are registered trademarks.', 'BOGOTÁ AUDIOVISUAL MARKET - BAM, PROIMÁGENES COLOMBIA Y CÁMARA DE COMERCIO DE BOGOTÁ son marcas registradas.', '2023-09-25 16:33:53', '2023-11-20 14:12:45', NULL),
(20, 'Todos nuestros contenidos están protegidos por el derecho internacional. El uso de este sitio web constituye la aceptación de los', 'All our content is protected by international law. Use of this website constitutes acceptance of the', 'Todos nuestros contenidos están protegidos por el derecho internacional. El uso de este sitio web constituye la aceptación de los', '2023-09-25 16:33:53', '2023-11-20 14:25:14', NULL),
(21, 'Términos y condiciones de uso.', 'Terms and conditions of use', 'Términos y condiciones de uso.', '2023-09-25 16:33:53', '2023-11-20 14:24:57', NULL),
(22, 'Consulte nuestra Política de protección de datos personales. Si desea usar información que está publicada en este sitio, deberá citar siempre a www.bogotamarket.com como fuente.', 'Consult our Personal Data Protection Policy. If you wish to use information that is published on this site, you must always cite www.bogotamarket.com as the source.', 'Consulte nuestra Política de protección de datos personales. Si desea usar información que está publicada en este sitio, deberá citar siempre a www.bogotamarket.com como fuente.', '2023-09-25 16:33:53', '2023-11-20 14:14:10', NULL),
(23, 'Encuentre más informacin sobre el audivisual colombiano en', 'Find more information about Colombian audiovisual at', 'Encuentre más información sobre el audivisual colombiano en', '2023-09-25 16:55:33', '2023-11-20 14:17:56', NULL),
(24, '¿CÓMO PARTICIPO?', 'HOW DO I PARTICIPATE?', '¿CÓMO PARTICIPO?', '2023-09-25 20:18:29', '2023-11-20 14:25:49', NULL),
(25, 'ME QUIERO POSTULAR', 'I WANT TO APPLY', 'ME QUIERO POSTULAR', '2023-09-25 20:18:29', '2023-11-20 14:22:20', NULL),
(26, 'ACREDITARSE', 'ACCREDIT', 'ACREDITARSE', '2023-09-25 20:19:15', '2023-11-20 14:10:12', NULL),
(27, 'Agenda', 'Diary', 'Agenda', '2023-09-25 20:19:15', '2024-07-03 11:31:36', NULL),
(28, 'Galería de imágenes', 'Image gallery', 'Galería de imágenes', '2023-09-25 20:19:15', '2023-11-20 14:18:39', NULL),
(29, 'Términos y condiciones', 'Terms and conditions', 'Términos y condiciones', '2023-09-25 20:19:15', '2023-11-20 14:24:48', NULL),
(30, 'TÉRMINOS Y  CONDICIONES', 'TERMS AND CONDITIONS', 'TÉRMINOS Y  CONDICIONES', '2023-09-25 20:19:15', '2023-11-20 14:24:34', NULL),
(31, 'BAM en cifras', 'BAM stats', 'BAM en cifras', '2023-09-25 20:33:12', '2023-11-20 14:13:44', NULL),
(32, '¿Quiénes pueden participar?', 'Who can participate?', '¿Quiénes pueden participar?', '2023-09-26 00:06:49', '2023-11-20 14:26:01', NULL),
(33, 'Las acreditaciones para el BAM en las regiones no tienen costo', 'Accreditations for the BAM Regions have no cost', 'Las acreditaciones para el BAM Regiones no tienen costo', '2023-09-26 00:06:49', '2023-11-20 14:22:10', NULL),
(34, 'Mi cuenta', 'My account', 'Mi cuenta', '2023-09-26 10:34:48', '2023-11-20 14:22:41', NULL),
(35, 'e encuentra activo en su cuenta de BAM, desde aqui puede administrar sus datos, gestionar su acreditación y\n        consultar información adicional de acuerdo a su perfil.', 'e encuentra activo en su cuenta de BAM, desde aqui puede administrar sus datos, gestionar su acreditación y\n        consultar información adicional de acuerdo a su perfil.', 'e encuentra activo en su cuenta de BAM, desde aqui puede administrar sus datos, gestionar su acreditación y\n        consultar información adicional de acuerdo a su perfil.', '2023-09-26 10:34:48', '2023-09-26 10:34:48', NULL),
(36, 'Menú de usuario', 'User menu', 'Menú de usuario', '2023-09-26 10:34:48', '2023-11-20 14:22:29', NULL),
(37, 'Cerrar sesión', 'Sign off\n', 'Cerrar sesión', '2023-09-26 10:34:48', '2023-11-20 14:12:56', NULL),
(38, 'Datos de registro', 'Registration data', 'Datos de registro', '2023-09-26 10:34:48', '2023-11-20 14:14:29', NULL),
(39, 'MIS DATOS DE ACCESO A', 'MY ACCESS DATA', 'MIS DATOS DE ACCESO A', '2023-09-26 10:34:48', '2023-11-20 14:22:52', NULL),
(40, 'ACREDITACIÓN', 'ACCREDITATION', 'ACREDITACIÓN', '2023-09-26 10:34:48', '2023-11-20 14:08:44', NULL),
(41, 'Guía de industria', 'Industry Guide', 'Guía de industria', '2023-09-26 11:30:07', '2023-11-20 14:18:58', NULL),
(42, 'Participantes', 'Participants', 'Participantes', '2023-09-26 11:30:07', '2023-11-20 14:23:36', NULL),
(43, 'Información de contacto de las personas participantes en BAM.', 'Contact information for BAM participants.', 'Información de contacto de las personas participantes en BAM.', '2023-09-26 11:30:07', '2023-11-20 14:19:09', NULL),
(44, 'Empresas', 'Business', 'Empresas', '2023-09-26 11:30:07', '2023-11-20 14:15:18', NULL),
(45, 'Empresas registradas y sus representantes.', 'Signed up companies and their representatives.', 'Empresas registradas y sus representantes.', '2023-09-26 11:30:07', '2023-11-20 14:17:38', NULL),
(46, 'Favoritos', 'Favorites', 'Favoritos', '2023-09-26 11:30:07', '2023-11-20 14:18:29', NULL),
(47, 'Sus contactos y empresas guardados.', 'Your saved contacts and companies.', 'Sus contactos y empresas guardados.', '2023-09-26 11:30:07', '2023-11-20 14:24:24', NULL),
(48, 'Restaurar Filtros', 'Restore Filters', 'Restaurar Filtros', '2023-09-26 11:30:16', '2023-11-20 14:24:05', NULL),
(49, 'Resultados', 'Results', 'Resultados', '2023-09-26 11:30:16', '2023-11-20 14:24:16', NULL),
(50, 'Newsletters', 'Newsletters', 'Newsletters', '2023-09-27 08:46:00', '2023-09-27 08:46:00', NULL),
(51, 'Comunicados de prensa', 'Press releases', 'Comunicados de prensa', '2023-09-27 08:46:00', '2023-12-01 07:22:27', NULL),
(52, 'Cortografías', 'Cortografías..', 'Cortografías', '2023-11-30 13:50:47', '2023-11-30 13:51:23', NULL),
(53, 'COLOMBIA LOCARNO INDUSTRY ACADEMY', 'COLOMBIA LOCARNO INDUSTRY ACADEMY...', 'COLOMBIA LOCARNO INDUSTRY ACADEMY', '2023-11-30 13:52:09', '2024-02-19 08:29:59', NULL),
(54, 'Programación', 'Programación..', 'Programación', '2023-11-30 15:05:21', '2023-11-30 15:05:44', NULL),
(55, 'Seleccionados', 'Colombian Showcase', 'Seleccionados', '2023-11-30 15:08:15', '2024-06-24 11:42:28', NULL),
(56, 'Agregar a favoritos', 'Agregar a favoritos', 'Agregar a favoritos', '2023-11-30 17:52:46', '2023-11-30 17:52:46', NULL),
(57, 'Almacenar este contacto en mis favoritos.', 'Almacenar este contacto en mis favoritos.', 'Almacenar este contacto en mis favoritos.', '2023-11-30 17:52:46', '2023-11-30 17:52:46', NULL),
(58, 'Consulte nuestra <a href=\"/docs/GA-OD-9_V2_Politica-tratamiento-de-la-informacion.pdf\" target=\"_blank\">Política de protección de datos personales</a>. Si desea usar información que está publicada en este sitio, deberá citar siempre a www.bogotamarket.com como fuente.', 'Consulte nuestra <a href=\"/docs/GA-OD-9_V2_Politica-tratamiento-de-la-informacion.pdf\" target=\"_blank\">Política de protección de datos personales</a>. Si desea usar información que está publicada en este sitio, deberá citar siempre a www.bogotamarket.com como fuente.', 'Consulte nuestra <a href=\"/docs/GA-OD-9_V2_Politica-tratamiento-de-la-informacion.pdf\" target=\"_blank\">Política de protección de datos personales</a>. Si desea usar información que está publicada en este sitio, deberá citar siempre a www.bogotamarket.com como fuente.', '2024-02-29 18:12:52', '2024-02-29 18:12:52', NULL),
(59, 'PROGRAMA ÉTNICO', 'PROGRAMA ÉTNICO', 'PROGRAMA ÉTNICO', '2024-05-10 11:31:59', '2024-05-10 11:31:59', NULL),
(60, 'Código de descuento', 'Código de descuento', 'Código de descuento', '2024-05-14 15:55:55', '2024-05-14 15:55:55', NULL),
(61, 'Ingrese su código, para aplicar el descuento', 'Ingrese su código, para aplicar el descuento', 'Ingrese su código, para aplicar el descuento', '2024-05-14 15:55:55', '2024-05-14 15:55:55', NULL),
(62, 'Aplicar', 'Aplicar', 'Aplicar', '2024-05-14 15:55:55', '2024-05-14 15:55:55', NULL),
(63, 'se encuentra activo en su cuenta de BAM, desde aqui puede administrar sus datos, gestionar su acreditación y\n        consultar información adicional de acuerdo a su perfil.', 'se encuentra activo en su cuenta de BAM, desde aqui puede administrar sus datos, gestionar su acreditación y\n        consultar información adicional de acuerdo a su perfil.', 'se encuentra activo en su cuenta de BAM, desde aqui puede administrar sus datos, gestionar su acreditación y\n        consultar información adicional de acuerdo a su perfil.', '2024-05-15 18:39:45', '2024-05-15 18:39:45', NULL),
(64, 'Si usted hizo parte de la edición 14, solo debe ingresar con su usuario y contraseña. Si olvidó sus datos, haga clic en \"recordar contraseña\" para restablecerlos.', 'Si usted hizo parte de la edición 14, solo debe ingresar con su usuario y contraseña. Si olvidó sus datos, haga clic en \"recordar contraseña\" para restablecerlos.', 'Si usted hizo parte de la edición 14, solo debe ingresar con su usuario y contraseña. Si olvidó sus datos, haga clic en \"recordar contraseña\" para restablecerlos.', '2024-05-15 18:45:03', '2024-05-15 18:45:03', NULL),
(65, 'En alianza con', 'En alianza con', 'En alianza con', '2024-06-24 17:00:38', '2024-06-24 17:00:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listafavoritos`
--

CREATE TABLE `listafavoritos` (
  `cod_lif` int(11) NOT NULL,
  `usu_lif` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'usuario',
  `nom_lif` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'noombre',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menueventos`
--

CREATE TABLE `menueventos` (
  `cod_mne` int(11) NOT NULL,
  `cod_edi_mne` int(11) DEFAULT NULL COMMENT 'edicion',
  `cod_pad_mne` int(11) DEFAULT 0 COMMENT 'codigo del menu padre',
  `slu_mne` varchar(250) DEFAULT NULL COMMENT 'slug menu',
  `tit_mne` varchar(250) DEFAULT NULL COMMENT 'titulo menu',
  `tit_mne_ing` varchar(250) DEFAULT NULL COMMENT 'titulo menu ingles ',
  `des_mne` text DEFAULT NULL COMMENT 'descricpcion',
  `des_mne_ing` text DEFAULT NULL COMMENT 'descricpcion ingles',
  `dla_mne` text DEFAULT NULL COMMENT 'contenido lateral',
  `dla_mne_ing` text DEFAULT NULL COMMENT 'contenido lateral',
  `img_mne` varchar(250) DEFAULT NULL COMMENT 'imagen',
  `adj_mne` varchar(250) DEFAULT NULL COMMENT 'adjunto si lo tiene va directo a ese link',
  `ord_mne` int(11) DEFAULT NULL COMMENT 'orden',
  `pla_mne` int(11) DEFAULT NULL COMMENT '1 plantilla de una columna - 2 doble columna por fila',
  `ctp_mne` int(11) DEFAULT 1 COMMENT 'tipo de plantilla del contenido 1 o 0- una columna  2- doble columa',
  `fon_mne` varchar(250) DEFAULT 'https://test.bogotamarket.com/images/site/banner_forum.jpg' COMMENT 'imagen de fondo',
  `con_ext_mne` text DEFAULT NULL COMMENT 'contenido extra ',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menuprincipal`
--

CREATE TABLE `menuprincipal` (
  `cod_mep` int(11) NOT NULL,
  `nom_mep` varchar(50) DEFAULT NULL COMMENT 'nombre del menu',
  `nom_mep_ing` varchar(50) DEFAULT NULL COMMENT 'nombre del menu ingles',
  `ord_mep` int(11) DEFAULT NULL COMMENT 'orden del menu',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `menuprincipal`
--

INSERT INTO `menuprincipal` (`cod_mep`, `nom_mep`, `nom_mep_ing`, `ord_mep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '¿Qué es el BAM?', 'What is BAM?', 1, NULL, '2023-11-20 13:05:33', NULL),
(2, 'Convocatoria', 'Open calls', 2, NULL, '2023-11-20 13:06:04', NULL),
(3, 'Showcase Proyectos Seleccionados', 'Selected Projects Showcase ', 3, NULL, '2023-11-27 15:56:34', NULL),
(4, 'Programación', 'Programming', 4, NULL, '2023-11-27 15:53:19', NULL),
(5, 'Otros programas', 'Other programs', 5, NULL, '2023-11-20 13:06:48', NULL),
(6, 'Oficina de prensa', 'Press office', 6, NULL, '2023-11-30 14:09:16', NULL),
(7, 'Contacto', 'Contact', 7, NULL, '2023-11-20 13:06:53', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `cod_mun` int(6) UNSIGNED NOT NULL,
  `nom_mun` varchar(255) NOT NULL DEFAULT '',
  `estado` int(1) UNSIGNED NOT NULL,
  `cod_dep_mun` int(2) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`cod_mun`, `nom_mun`, `estado`, `cod_dep_mun`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Abriaquí', 1, 5, NULL, NULL, NULL),
(2, 'Acacías', 1, 50, NULL, NULL, NULL),
(3, 'Acandí', 1, 27, NULL, NULL, NULL),
(4, 'Acevedo', 1, 41, NULL, NULL, NULL),
(5, 'Achí', 1, 13, NULL, NULL, NULL),
(6, 'Agrado', 1, 41, NULL, NULL, NULL),
(7, 'Agua de Dios', 1, 25, NULL, NULL, NULL),
(8, 'Aguachica', 1, 20, NULL, NULL, NULL),
(9, 'Aguada', 1, 68, NULL, NULL, NULL),
(10, 'Aguadas', 1, 17, NULL, NULL, NULL),
(11, 'Aguazul', 1, 85, NULL, NULL, NULL),
(12, 'Agustín Codazzi', 1, 20, NULL, NULL, NULL),
(13, 'Aipe', 1, 41, NULL, NULL, NULL),
(14, 'Albania', 1, 18, NULL, NULL, NULL),
(15, 'Albania', 1, 44, NULL, NULL, NULL),
(16, 'Albania', 1, 68, NULL, NULL, NULL),
(17, 'Albán', 1, 25, NULL, NULL, NULL),
(18, 'Albán (San José)', 1, 52, NULL, NULL, NULL),
(19, 'Alcalá', 1, 76, NULL, NULL, NULL),
(20, 'Alejandria', 1, 5, NULL, NULL, NULL),
(21, 'Algarrobo', 1, 47, NULL, NULL, NULL),
(22, 'Algeciras', 1, 41, NULL, NULL, NULL),
(23, 'Almaguer', 1, 19, NULL, NULL, NULL),
(24, 'Almeida', 1, 15, NULL, NULL, NULL),
(25, 'Alpujarra', 1, 73, NULL, NULL, NULL),
(26, 'Altamira', 1, 41, NULL, NULL, NULL),
(27, 'Alto Baudó (Pie de Pato)', 1, 27, NULL, NULL, NULL),
(28, 'Altos del Rosario', 1, 13, NULL, NULL, NULL),
(29, 'Alvarado', 1, 73, NULL, NULL, NULL),
(30, 'Amagá', 1, 5, NULL, NULL, NULL),
(31, 'Amalfi', 1, 5, NULL, NULL, NULL),
(32, 'Ambalema', 1, 73, NULL, NULL, NULL),
(33, 'Anapoima', 1, 25, NULL, NULL, NULL),
(34, 'Ancuya', 1, 52, NULL, NULL, NULL),
(35, 'Andalucía', 1, 76, NULL, NULL, NULL),
(36, 'Andes', 1, 5, NULL, NULL, NULL),
(37, 'Angelópolis', 1, 5, NULL, NULL, NULL),
(38, 'Angostura', 1, 5, NULL, NULL, NULL),
(39, 'Anolaima', 1, 25, NULL, NULL, NULL),
(40, 'Anorí', 1, 5, NULL, NULL, NULL),
(41, 'Anserma', 1, 17, NULL, NULL, NULL),
(42, 'Ansermanuevo', 1, 76, NULL, NULL, NULL),
(43, 'Anzoátegui', 1, 73, NULL, NULL, NULL),
(44, 'Anzá', 1, 5, NULL, NULL, NULL),
(45, 'Apartadó', 1, 5, NULL, NULL, NULL),
(46, 'Apulo', 1, 25, NULL, NULL, NULL),
(47, 'Apía', 1, 66, NULL, NULL, NULL),
(48, 'Aquitania', 1, 15, NULL, NULL, NULL),
(49, 'Aracataca', 1, 47, NULL, NULL, NULL),
(50, 'Aranzazu', 1, 17, NULL, NULL, NULL),
(51, 'Aratoca', 1, 68, NULL, NULL, NULL),
(52, 'Arauca', 1, 81, NULL, NULL, NULL),
(53, 'Arauquita', 1, 81, NULL, NULL, NULL),
(54, 'Arbeláez', 1, 25, NULL, NULL, NULL),
(55, 'Arboleda (Berruecos)', 1, 52, NULL, NULL, NULL),
(56, 'Arboledas', 1, 54, NULL, NULL, NULL),
(57, 'Arboletes', 1, 5, NULL, NULL, NULL),
(58, 'Arcabuco', 1, 15, NULL, NULL, NULL),
(59, 'Arenal', 1, 13, NULL, NULL, NULL),
(60, 'Argelia', 1, 5, NULL, NULL, NULL),
(61, 'Argelia', 1, 19, NULL, NULL, NULL),
(62, 'Argelia', 1, 76, NULL, NULL, NULL),
(63, 'Ariguaní (El Difícil)', 1, 47, NULL, NULL, NULL),
(64, 'Arjona', 1, 13, NULL, NULL, NULL),
(65, 'Armenia', 1, 5, NULL, NULL, NULL),
(66, 'Armenia', 1, 63, NULL, NULL, NULL),
(67, 'Armero (Guayabal)', 1, 73, NULL, NULL, NULL),
(68, 'Arroyohondo', 1, 13, NULL, NULL, NULL),
(69, 'Astrea', 1, 20, NULL, NULL, NULL),
(70, 'Ataco', 1, 73, NULL, NULL, NULL),
(71, 'Atrato (Yuto)', 1, 27, NULL, NULL, NULL),
(72, 'Ayapel', 1, 23, NULL, NULL, NULL),
(73, 'Bagadó', 1, 27, NULL, NULL, NULL),
(74, 'Bahía Solano (Mútis)', 1, 27, NULL, NULL, NULL),
(75, 'Bajo Baudó (Pizarro)', 1, 27, NULL, NULL, NULL),
(76, 'Balboa', 1, 19, NULL, NULL, NULL),
(77, 'Balboa', 1, 66, NULL, NULL, NULL),
(78, 'Baranoa', 1, 8, NULL, NULL, NULL),
(79, 'Baraya', 1, 41, NULL, NULL, NULL),
(80, 'Barbacoas', 1, 52, NULL, NULL, NULL),
(81, 'Barbosa', 1, 5, NULL, NULL, NULL),
(82, 'Barbosa', 1, 68, NULL, NULL, NULL),
(83, 'Barichara', 1, 68, NULL, NULL, NULL),
(84, 'Barranca de Upía', 1, 50, NULL, NULL, NULL),
(85, 'Barrancabermeja', 1, 68, NULL, NULL, NULL),
(86, 'Barrancas', 1, 44, NULL, NULL, NULL),
(87, 'Barranco de Loba', 1, 13, NULL, NULL, NULL),
(88, 'Barranquilla', 1, 8, NULL, NULL, NULL),
(89, 'Becerríl', 1, 20, NULL, NULL, NULL),
(90, 'Belalcázar', 1, 17, NULL, NULL, NULL),
(91, 'Bello', 1, 5, NULL, NULL, NULL),
(92, 'Belmira', 1, 5, NULL, NULL, NULL),
(93, 'Beltrán', 1, 25, NULL, NULL, NULL),
(94, 'Belén', 1, 15, NULL, NULL, NULL),
(95, 'Belén', 1, 52, NULL, NULL, NULL),
(96, 'Belén de Bajirá', 1, 27, NULL, NULL, NULL),
(97, 'Belén de Umbría', 1, 66, NULL, NULL, NULL),
(98, 'Belén de los Andaquíes', 1, 18, NULL, NULL, NULL),
(99, 'Berbeo', 1, 15, NULL, NULL, NULL),
(100, 'Betania', 1, 5, NULL, NULL, NULL),
(101, 'Beteitiva', 1, 15, NULL, NULL, NULL),
(102, 'Betulia', 1, 5, NULL, NULL, NULL),
(103, 'Betulia', 1, 68, NULL, NULL, NULL),
(104, 'Bituima', 1, 25, NULL, NULL, NULL),
(105, 'Boavita', 1, 15, NULL, NULL, NULL),
(106, 'Bochalema', 1, 54, NULL, NULL, NULL),
(107, 'Bogotá D.C.', 1, 11, NULL, NULL, NULL),
(108, 'Bojacá', 1, 25, NULL, NULL, NULL),
(109, 'Bojayá (Bellavista)', 1, 27, NULL, NULL, NULL),
(110, 'Bolívar', 1, 5, NULL, NULL, NULL),
(111, 'Bolívar', 1, 19, NULL, NULL, NULL),
(112, 'Bolívar', 1, 68, NULL, NULL, NULL),
(113, 'Bolívar', 1, 76, NULL, NULL, NULL),
(114, 'Bosconia', 1, 20, NULL, NULL, NULL),
(115, 'Boyacá', 1, 15, NULL, NULL, NULL),
(116, 'Briceño', 1, 5, NULL, NULL, NULL),
(117, 'Briceño', 1, 15, NULL, NULL, NULL),
(118, 'Bucaramanga', 1, 68, NULL, NULL, NULL),
(119, 'Bucarasica', 1, 54, NULL, NULL, NULL),
(120, 'Buenaventura', 1, 76, NULL, NULL, NULL),
(121, 'Buenavista', 1, 15, NULL, NULL, NULL),
(122, 'Buenavista', 1, 23, NULL, NULL, NULL),
(123, 'Buenavista', 1, 63, NULL, NULL, NULL),
(124, 'Buenavista', 1, 70, NULL, NULL, NULL),
(125, 'Buenos Aires', 1, 19, NULL, NULL, NULL),
(126, 'Buesaco', 1, 52, NULL, NULL, NULL),
(127, 'Buga', 1, 76, NULL, NULL, NULL),
(128, 'Bugalagrande', 1, 76, NULL, NULL, NULL),
(129, 'Burítica', 1, 5, NULL, NULL, NULL),
(130, 'Busbanza', 1, 15, NULL, NULL, NULL),
(131, 'Cabrera', 1, 25, NULL, NULL, NULL),
(132, 'Cabrera', 1, 68, NULL, NULL, NULL),
(133, 'Cabuyaro', 1, 50, NULL, NULL, NULL),
(134, 'Cachipay', 1, 25, NULL, NULL, NULL),
(135, 'Caicedo', 1, 5, NULL, NULL, NULL),
(136, 'Caicedonia', 1, 76, NULL, NULL, NULL),
(137, 'Caimito', 1, 70, NULL, NULL, NULL),
(138, 'Cajamarca', 1, 73, NULL, NULL, NULL),
(139, 'Cajibío', 1, 19, NULL, NULL, NULL),
(140, 'Cajicá', 1, 25, NULL, NULL, NULL),
(141, 'Calamar', 1, 13, NULL, NULL, NULL),
(142, 'Calamar', 1, 95, NULL, NULL, NULL),
(143, 'Calarcá', 1, 63, NULL, NULL, NULL),
(144, 'Caldas', 1, 5, NULL, NULL, NULL),
(145, 'Caldas', 1, 15, NULL, NULL, NULL),
(146, 'Caldono', 1, 19, NULL, NULL, NULL),
(147, 'California', 1, 68, NULL, NULL, NULL),
(148, 'Calima (Darién)', 1, 76, NULL, NULL, NULL),
(149, 'Caloto', 1, 19, NULL, NULL, NULL),
(150, 'Calí', 1, 76, NULL, NULL, NULL),
(151, 'Campamento', 1, 5, NULL, NULL, NULL),
(152, 'Campo de la Cruz', 1, 8, NULL, NULL, NULL),
(153, 'Campoalegre', 1, 41, NULL, NULL, NULL),
(154, 'Campohermoso', 1, 15, NULL, NULL, NULL),
(155, 'Canalete', 1, 23, NULL, NULL, NULL),
(156, 'Candelaria', 1, 8, NULL, NULL, NULL),
(157, 'Candelaria', 1, 76, NULL, NULL, NULL),
(158, 'Cantagallo', 1, 13, NULL, NULL, NULL),
(159, 'Cantón de San Pablo', 1, 27, NULL, NULL, NULL),
(160, 'Caparrapí', 1, 25, NULL, NULL, NULL),
(161, 'Capitanejo', 1, 68, NULL, NULL, NULL),
(162, 'Caracolí', 1, 5, NULL, NULL, NULL),
(163, 'Caramanta', 1, 5, NULL, NULL, NULL),
(164, 'Carcasí', 1, 68, NULL, NULL, NULL),
(165, 'Carepa', 1, 5, NULL, NULL, NULL),
(166, 'Carmen de Apicalá', 1, 73, NULL, NULL, NULL),
(167, 'Carmen de Carupa', 1, 25, NULL, NULL, NULL),
(168, 'Carmen de Viboral', 1, 5, NULL, NULL, NULL),
(169, 'Carmen del Darién (CURBARADÓ)', 1, 27, NULL, NULL, NULL),
(170, 'Carolina', 1, 5, NULL, NULL, NULL),
(171, 'Cartagena', 1, 13, NULL, NULL, NULL),
(172, 'Cartagena del Chairá', 1, 18, NULL, NULL, NULL),
(173, 'Cartago', 1, 76, NULL, NULL, NULL),
(174, 'Carurú', 1, 97, NULL, NULL, NULL),
(175, 'Casabianca', 1, 73, NULL, NULL, NULL),
(176, 'Castilla la Nueva', 1, 50, NULL, NULL, NULL),
(177, 'Caucasia', 1, 5, NULL, NULL, NULL),
(178, 'Cañasgordas', 1, 5, NULL, NULL, NULL),
(179, 'Cepita', 1, 68, NULL, NULL, NULL),
(180, 'Cereté', 1, 23, NULL, NULL, NULL),
(181, 'Cerinza', 1, 15, NULL, NULL, NULL),
(182, 'Cerrito', 1, 68, NULL, NULL, NULL),
(183, 'Cerro San Antonio', 1, 47, NULL, NULL, NULL),
(184, 'Chachaguí', 1, 52, NULL, NULL, NULL),
(185, 'Chaguaní', 1, 25, NULL, NULL, NULL),
(186, 'Chalán', 1, 70, NULL, NULL, NULL),
(187, 'Chaparral', 1, 73, NULL, NULL, NULL),
(188, 'Charalá', 1, 68, NULL, NULL, NULL),
(189, 'Charta', 1, 68, NULL, NULL, NULL),
(190, 'Chigorodó', 1, 5, NULL, NULL, NULL),
(191, 'Chima', 1, 68, NULL, NULL, NULL),
(192, 'Chimichagua', 1, 20, NULL, NULL, NULL),
(193, 'Chimá', 1, 23, NULL, NULL, NULL),
(194, 'Chinavita', 1, 15, NULL, NULL, NULL),
(195, 'Chinchiná', 1, 17, NULL, NULL, NULL),
(196, 'Chinácota', 1, 54, NULL, NULL, NULL),
(197, 'Chinú', 1, 23, NULL, NULL, NULL),
(198, 'Chipaque', 1, 25, NULL, NULL, NULL),
(199, 'Chipatá', 1, 68, NULL, NULL, NULL),
(200, 'Chiquinquirá', 1, 15, NULL, NULL, NULL),
(201, 'Chiriguaná', 1, 20, NULL, NULL, NULL),
(202, 'Chiscas', 1, 15, NULL, NULL, NULL),
(203, 'Chita', 1, 15, NULL, NULL, NULL),
(204, 'Chitagá', 1, 54, NULL, NULL, NULL),
(205, 'Chitaraque', 1, 15, NULL, NULL, NULL),
(206, 'Chivatá', 1, 15, NULL, NULL, NULL),
(207, 'Chivolo', 1, 47, NULL, NULL, NULL),
(208, 'Choachí', 1, 25, NULL, NULL, NULL),
(209, 'Chocontá', 1, 25, NULL, NULL, NULL),
(210, 'Chámeza', 1, 85, NULL, NULL, NULL),
(211, 'Chía', 1, 25, NULL, NULL, NULL),
(212, 'Chíquiza', 1, 15, NULL, NULL, NULL),
(213, 'Chívor', 1, 15, NULL, NULL, NULL),
(214, 'Cicuco', 1, 13, NULL, NULL, NULL),
(215, 'Cimitarra', 1, 68, NULL, NULL, NULL),
(216, 'Circasia', 1, 63, NULL, NULL, NULL),
(217, 'Cisneros', 1, 5, NULL, NULL, NULL),
(218, 'Ciénaga', 1, 15, NULL, NULL, NULL),
(219, 'Ciénaga', 1, 47, NULL, NULL, NULL),
(220, 'Ciénaga de Oro', 1, 23, NULL, NULL, NULL),
(221, 'Clemencia', 1, 13, NULL, NULL, NULL),
(222, 'Cocorná', 1, 5, NULL, NULL, NULL),
(223, 'Coello', 1, 73, NULL, NULL, NULL),
(224, 'Cogua', 1, 25, NULL, NULL, NULL),
(225, 'Colombia', 1, 41, NULL, NULL, NULL),
(226, 'Colosó (Ricaurte)', 1, 70, NULL, NULL, NULL),
(227, 'Colón', 1, 86, NULL, NULL, NULL),
(228, 'Colón (Génova)', 1, 52, NULL, NULL, NULL),
(229, 'Concepción', 1, 5, NULL, NULL, NULL),
(230, 'Concepción', 1, 68, NULL, NULL, NULL),
(231, 'Concordia', 1, 5, NULL, NULL, NULL),
(232, 'Concordia', 1, 47, NULL, NULL, NULL),
(233, 'Condoto', 1, 27, NULL, NULL, NULL),
(234, 'Confines', 1, 68, NULL, NULL, NULL),
(235, 'Consaca', 1, 52, NULL, NULL, NULL),
(236, 'Contadero', 1, 52, NULL, NULL, NULL),
(237, 'Contratación', 1, 68, NULL, NULL, NULL),
(238, 'Convención', 1, 54, NULL, NULL, NULL),
(239, 'Copacabana', 1, 5, NULL, NULL, NULL),
(240, 'Coper', 1, 15, NULL, NULL, NULL),
(241, 'Cordobá', 1, 63, NULL, NULL, NULL),
(242, 'Corinto', 1, 19, NULL, NULL, NULL),
(243, 'Coromoro', 1, 68, NULL, NULL, NULL),
(244, 'Corozal', 1, 70, NULL, NULL, NULL),
(245, 'Corrales', 1, 15, NULL, NULL, NULL),
(246, 'Cota', 1, 25, NULL, NULL, NULL),
(247, 'Cotorra', 1, 23, NULL, NULL, NULL),
(248, 'Covarachía', 1, 15, NULL, NULL, NULL),
(249, 'Coveñas', 1, 70, NULL, NULL, NULL),
(250, 'Coyaima', 1, 73, NULL, NULL, NULL),
(251, 'Cravo Norte', 1, 81, NULL, NULL, NULL),
(252, 'Cuaspud (Carlosama)', 1, 52, NULL, NULL, NULL),
(253, 'Cubarral', 1, 50, NULL, NULL, NULL),
(254, 'Cubará', 1, 15, NULL, NULL, NULL),
(255, 'Cucaita', 1, 15, NULL, NULL, NULL),
(256, 'Cucunubá', 1, 25, NULL, NULL, NULL),
(257, 'Cucutilla', 1, 54, NULL, NULL, NULL),
(258, 'Cuitiva', 1, 15, NULL, NULL, NULL),
(259, 'Cumaral', 1, 50, NULL, NULL, NULL),
(260, 'Cumaribo', 1, 99, NULL, NULL, NULL),
(261, 'Cumbal', 1, 52, NULL, NULL, NULL),
(262, 'Cumbitara', 1, 52, NULL, NULL, NULL),
(263, 'Cunday', 1, 73, NULL, NULL, NULL),
(264, 'Curillo', 1, 18, NULL, NULL, NULL),
(265, 'Curití', 1, 68, NULL, NULL, NULL),
(266, 'Curumaní', 1, 20, NULL, NULL, NULL),
(267, 'Cáceres', 1, 5, NULL, NULL, NULL),
(268, 'Cáchira', 1, 54, NULL, NULL, NULL),
(269, 'Cácota', 1, 54, NULL, NULL, NULL),
(270, 'Cáqueza', 1, 25, NULL, NULL, NULL),
(271, 'Cértegui', 1, 27, NULL, NULL, NULL),
(272, 'Cómbita', 1, 15, NULL, NULL, NULL),
(273, 'Córdoba', 1, 13, NULL, NULL, NULL),
(274, 'Córdoba', 1, 52, NULL, NULL, NULL),
(275, 'Cúcuta', 1, 54, NULL, NULL, NULL),
(276, 'Dabeiba', 1, 5, NULL, NULL, NULL),
(277, 'Dagua', 1, 76, NULL, NULL, NULL),
(278, 'Dibulla', 1, 44, NULL, NULL, NULL),
(279, 'Distracción', 1, 44, NULL, NULL, NULL),
(280, 'Dolores', 1, 73, NULL, NULL, NULL),
(281, 'Don Matías', 1, 5, NULL, NULL, NULL),
(282, 'Dos Quebradas', 1, 66, NULL, NULL, NULL),
(283, 'Duitama', 1, 15, NULL, NULL, NULL),
(284, 'Durania', 1, 54, NULL, NULL, NULL),
(285, 'Ebéjico', 1, 5, NULL, NULL, NULL),
(286, 'El Bagre', 1, 5, NULL, NULL, NULL),
(287, 'El Banco', 1, 47, NULL, NULL, NULL),
(288, 'El Cairo', 1, 76, NULL, NULL, NULL),
(289, 'El Calvario', 1, 50, NULL, NULL, NULL),
(290, 'El Carmen', 1, 54, NULL, NULL, NULL),
(291, 'El Carmen', 1, 68, NULL, NULL, NULL),
(292, 'El Carmen de Atrato', 1, 27, NULL, NULL, NULL),
(293, 'El Carmen de Bolívar', 1, 13, NULL, NULL, NULL),
(294, 'El Castillo', 1, 50, NULL, NULL, NULL),
(295, 'El Cerrito', 1, 76, NULL, NULL, NULL),
(296, 'El Charco', 1, 52, NULL, NULL, NULL),
(297, 'El Cocuy', 1, 15, NULL, NULL, NULL),
(298, 'El Colegio', 1, 25, NULL, NULL, NULL),
(299, 'El Copey', 1, 20, NULL, NULL, NULL),
(300, 'El Doncello', 1, 18, NULL, NULL, NULL),
(301, 'El Dorado', 1, 50, NULL, NULL, NULL),
(302, 'El Dovio', 1, 76, NULL, NULL, NULL),
(303, 'El Espino', 1, 15, NULL, NULL, NULL),
(304, 'El Guacamayo', 1, 68, NULL, NULL, NULL),
(305, 'El Guamo', 1, 13, NULL, NULL, NULL),
(306, 'El Molino', 1, 44, NULL, NULL, NULL),
(307, 'El Paso', 1, 20, NULL, NULL, NULL),
(308, 'El Paujil', 1, 18, NULL, NULL, NULL),
(309, 'El Peñol', 1, 52, NULL, NULL, NULL),
(310, 'El Peñon', 1, 13, NULL, NULL, NULL),
(311, 'El Peñon', 1, 68, NULL, NULL, NULL),
(312, 'El Peñón', 1, 25, NULL, NULL, NULL),
(313, 'El Piñon', 1, 47, NULL, NULL, NULL),
(314, 'El Playón', 1, 68, NULL, NULL, NULL),
(315, 'El Retorno', 1, 95, NULL, NULL, NULL),
(316, 'El Retén', 1, 47, NULL, NULL, NULL),
(317, 'El Roble', 1, 70, NULL, NULL, NULL),
(318, 'El Rosal', 1, 25, NULL, NULL, NULL),
(319, 'El Rosario', 1, 52, NULL, NULL, NULL),
(320, 'El Tablón de Gómez', 1, 52, NULL, NULL, NULL),
(321, 'El Tambo', 1, 19, NULL, NULL, NULL),
(322, 'El Tambo', 1, 52, NULL, NULL, NULL),
(323, 'El Tarra', 1, 54, NULL, NULL, NULL),
(324, 'El Zulia', 1, 54, NULL, NULL, NULL),
(325, 'El Águila', 1, 76, NULL, NULL, NULL),
(326, 'Elías', 1, 41, NULL, NULL, NULL),
(327, 'Encino', 1, 68, NULL, NULL, NULL),
(328, 'Enciso', 1, 68, NULL, NULL, NULL),
(329, 'Entrerríos', 1, 5, NULL, NULL, NULL),
(330, 'Envigado', 1, 5, NULL, NULL, NULL),
(331, 'Espinal', 1, 73, NULL, NULL, NULL),
(332, 'Facatativá', 1, 25, NULL, NULL, NULL),
(333, 'Falan', 1, 73, NULL, NULL, NULL),
(334, 'Filadelfia', 1, 17, NULL, NULL, NULL),
(335, 'Filandia', 1, 63, NULL, NULL, NULL),
(336, 'Firavitoba', 1, 15, NULL, NULL, NULL),
(337, 'Flandes', 1, 73, NULL, NULL, NULL),
(338, 'Florencia', 1, 18, NULL, NULL, NULL),
(339, 'Florencia', 1, 19, NULL, NULL, NULL),
(340, 'Floresta', 1, 15, NULL, NULL, NULL),
(341, 'Florida', 1, 76, NULL, NULL, NULL),
(342, 'Floridablanca', 1, 68, NULL, NULL, NULL),
(343, 'Florián', 1, 68, NULL, NULL, NULL),
(344, 'Fonseca', 1, 44, NULL, NULL, NULL),
(345, 'Fortúl', 1, 81, NULL, NULL, NULL),
(346, 'Fosca', 1, 25, NULL, NULL, NULL),
(347, 'Francisco Pizarro', 1, 52, NULL, NULL, NULL),
(348, 'Fredonia', 1, 5, NULL, NULL, NULL),
(349, 'Fresno', 1, 73, NULL, NULL, NULL),
(350, 'Frontino', 1, 5, NULL, NULL, NULL),
(351, 'Fuente de Oro', 1, 50, NULL, NULL, NULL),
(352, 'Fundación', 1, 47, NULL, NULL, NULL),
(353, 'Funes', 1, 52, NULL, NULL, NULL),
(354, 'Funza', 1, 25, NULL, NULL, NULL),
(355, 'Fusagasugá', 1, 25, NULL, NULL, NULL),
(356, 'Fómeque', 1, 25, NULL, NULL, NULL),
(357, 'Fúquene', 1, 25, NULL, NULL, NULL),
(358, 'Gachalá', 1, 25, NULL, NULL, NULL),
(359, 'Gachancipá', 1, 25, NULL, NULL, NULL),
(360, 'Gachantivá', 1, 15, NULL, NULL, NULL),
(361, 'Gachetá', 1, 25, NULL, NULL, NULL),
(362, 'Galapa', 1, 8, NULL, NULL, NULL),
(363, 'Galeras (Nueva Granada)', 1, 70, NULL, NULL, NULL),
(364, 'Galán', 1, 68, NULL, NULL, NULL),
(365, 'Gama', 1, 25, NULL, NULL, NULL),
(366, 'Gamarra', 1, 20, NULL, NULL, NULL),
(367, 'Garagoa', 1, 15, NULL, NULL, NULL),
(368, 'Garzón', 1, 41, NULL, NULL, NULL),
(369, 'Gigante', 1, 41, NULL, NULL, NULL),
(370, 'Ginebra', 1, 76, NULL, NULL, NULL),
(371, 'Giraldo', 1, 5, NULL, NULL, NULL),
(372, 'Girardot', 1, 25, NULL, NULL, NULL),
(373, 'Girardota', 1, 5, NULL, NULL, NULL),
(374, 'Girón', 1, 68, NULL, NULL, NULL),
(375, 'Gonzalez', 1, 20, NULL, NULL, NULL),
(376, 'Gramalote', 1, 54, NULL, NULL, NULL),
(377, 'Granada', 1, 5, NULL, NULL, NULL),
(378, 'Granada', 1, 25, NULL, NULL, NULL),
(379, 'Granada', 1, 50, NULL, NULL, NULL),
(380, 'Guaca', 1, 68, NULL, NULL, NULL),
(381, 'Guacamayas', 1, 15, NULL, NULL, NULL),
(382, 'Guacarí', 1, 76, NULL, NULL, NULL),
(383, 'Guachavés', 1, 52, NULL, NULL, NULL),
(384, 'Guachené', 1, 19, NULL, NULL, NULL),
(385, 'Guachetá', 1, 25, NULL, NULL, NULL),
(386, 'Guachucal', 1, 52, NULL, NULL, NULL),
(387, 'Guadalupe', 1, 5, NULL, NULL, NULL),
(388, 'Guadalupe', 1, 41, NULL, NULL, NULL),
(389, 'Guadalupe', 1, 68, NULL, NULL, NULL),
(390, 'Guaduas', 1, 25, NULL, NULL, NULL),
(391, 'Guaitarilla', 1, 52, NULL, NULL, NULL),
(392, 'Gualmatán', 1, 52, NULL, NULL, NULL),
(393, 'Guamal', 1, 47, NULL, NULL, NULL),
(394, 'Guamal', 1, 50, NULL, NULL, NULL),
(395, 'Guamo', 1, 73, NULL, NULL, NULL),
(396, 'Guapota', 1, 68, NULL, NULL, NULL),
(397, 'Guapí', 1, 19, NULL, NULL, NULL),
(398, 'Guaranda', 1, 70, NULL, NULL, NULL),
(399, 'Guarne', 1, 5, NULL, NULL, NULL),
(400, 'Guasca', 1, 25, NULL, NULL, NULL),
(401, 'Guatapé', 1, 5, NULL, NULL, NULL),
(402, 'Guataquí', 1, 25, NULL, NULL, NULL),
(403, 'Guatavita', 1, 25, NULL, NULL, NULL),
(404, 'Guateque', 1, 15, NULL, NULL, NULL),
(405, 'Guavatá', 1, 68, NULL, NULL, NULL),
(406, 'Guayabal de Siquima', 1, 25, NULL, NULL, NULL),
(407, 'Guayabetal', 1, 25, NULL, NULL, NULL),
(408, 'Guayatá', 1, 15, NULL, NULL, NULL),
(409, 'Guepsa', 1, 68, NULL, NULL, NULL),
(410, 'Guicán', 1, 15, NULL, NULL, NULL),
(411, 'Gutiérrez', 1, 25, NULL, NULL, NULL),
(412, 'Guática', 1, 66, NULL, NULL, NULL),
(413, 'Gámbita', 1, 68, NULL, NULL, NULL),
(414, 'Gámeza', 1, 15, NULL, NULL, NULL),
(415, 'Génova', 1, 63, NULL, NULL, NULL),
(416, 'Gómez Plata', 1, 5, NULL, NULL, NULL),
(417, 'Hacarí', 1, 54, NULL, NULL, NULL),
(418, 'Hatillo de Loba', 1, 13, NULL, NULL, NULL),
(419, 'Hato', 1, 68, NULL, NULL, NULL),
(420, 'Hato Corozal', 1, 85, NULL, NULL, NULL),
(421, 'Hatonuevo', 1, 44, NULL, NULL, NULL),
(422, 'Heliconia', 1, 5, NULL, NULL, NULL),
(423, 'Herrán', 1, 54, NULL, NULL, NULL),
(424, 'Herveo', 1, 73, NULL, NULL, NULL),
(425, 'Hispania', 1, 5, NULL, NULL, NULL),
(426, 'Hobo', 1, 41, NULL, NULL, NULL),
(427, 'Honda', 1, 73, NULL, NULL, NULL),
(428, 'Ibagué', 1, 73, NULL, NULL, NULL),
(429, 'Icononzo', 1, 73, NULL, NULL, NULL),
(430, 'Iles', 1, 52, NULL, NULL, NULL),
(431, 'Imúes', 1, 52, NULL, NULL, NULL),
(432, 'Inzá', 1, 19, NULL, NULL, NULL),
(433, 'Inírida', 1, 94, NULL, NULL, NULL),
(434, 'Ipiales', 1, 52, NULL, NULL, NULL),
(435, 'Isnos', 1, 41, NULL, NULL, NULL),
(436, 'Istmina', 1, 27, NULL, NULL, NULL),
(437, 'Itagüí', 1, 5, NULL, NULL, NULL),
(438, 'Ituango', 1, 5, NULL, NULL, NULL),
(439, 'Izá', 1, 15, NULL, NULL, NULL),
(440, 'Jambaló', 1, 19, NULL, NULL, NULL),
(441, 'Jamundí', 1, 76, NULL, NULL, NULL),
(442, 'Jardín', 1, 5, NULL, NULL, NULL),
(443, 'Jenesano', 1, 15, NULL, NULL, NULL),
(444, 'Jericó', 1, 5, NULL, NULL, NULL),
(445, 'Jericó', 1, 15, NULL, NULL, NULL),
(446, 'Jerusalén', 1, 25, NULL, NULL, NULL),
(447, 'Jesús María', 1, 68, NULL, NULL, NULL),
(448, 'Jordán', 1, 68, NULL, NULL, NULL),
(449, 'Juan de Acosta', 1, 8, NULL, NULL, NULL),
(450, 'Junín', 1, 25, NULL, NULL, NULL),
(451, 'Juradó', 1, 27, NULL, NULL, NULL),
(452, 'La Apartada y La Frontera', 1, 23, NULL, NULL, NULL),
(453, 'La Argentina', 1, 41, NULL, NULL, NULL),
(454, 'La Belleza', 1, 68, NULL, NULL, NULL),
(455, 'La Calera', 1, 25, NULL, NULL, NULL),
(456, 'La Capilla', 1, 15, NULL, NULL, NULL),
(457, 'La Ceja', 1, 5, NULL, NULL, NULL),
(458, 'La Celia', 1, 66, NULL, NULL, NULL),
(459, 'La Cruz', 1, 52, NULL, NULL, NULL),
(460, 'La Cumbre', 1, 76, NULL, NULL, NULL),
(461, 'La Dorada', 1, 17, NULL, NULL, NULL),
(462, 'La Esperanza', 1, 54, NULL, NULL, NULL),
(463, 'La Estrella', 1, 5, NULL, NULL, NULL),
(464, 'La Florida', 1, 52, NULL, NULL, NULL),
(465, 'La Gloria', 1, 20, NULL, NULL, NULL),
(466, 'La Jagua de Ibirico', 1, 20, NULL, NULL, NULL),
(467, 'La Jagua del Pilar', 1, 44, NULL, NULL, NULL),
(468, 'La Llanada', 1, 52, NULL, NULL, NULL),
(469, 'La Macarena', 1, 50, NULL, NULL, NULL),
(470, 'La Merced', 1, 17, NULL, NULL, NULL),
(471, 'La Mesa', 1, 25, NULL, NULL, NULL),
(472, 'La Montañita', 1, 18, NULL, NULL, NULL),
(473, 'La Palma', 1, 25, NULL, NULL, NULL),
(474, 'La Paz', 1, 68, NULL, NULL, NULL),
(475, 'La Paz (Robles)', 1, 20, NULL, NULL, NULL),
(476, 'La Peña', 1, 25, NULL, NULL, NULL),
(477, 'La Pintada', 1, 5, NULL, NULL, NULL),
(478, 'La Plata', 1, 41, NULL, NULL, NULL),
(479, 'La Playa', 1, 54, NULL, NULL, NULL),
(480, 'La Primavera', 1, 99, NULL, NULL, NULL),
(481, 'La Salina', 1, 85, NULL, NULL, NULL),
(482, 'La Sierra', 1, 19, NULL, NULL, NULL),
(483, 'La Tebaida', 1, 63, NULL, NULL, NULL),
(484, 'La Tola', 1, 52, NULL, NULL, NULL),
(485, 'La Unión', 1, 5, NULL, NULL, NULL),
(486, 'La Unión', 1, 52, NULL, NULL, NULL),
(487, 'La Unión', 1, 70, NULL, NULL, NULL),
(488, 'La Unión', 1, 76, NULL, NULL, NULL),
(489, 'La Uvita', 1, 15, NULL, NULL, NULL),
(490, 'La Vega', 1, 19, NULL, NULL, NULL),
(491, 'La Vega', 1, 25, NULL, NULL, NULL),
(492, 'La Victoria', 1, 15, NULL, NULL, NULL),
(493, 'La Victoria', 1, 17, NULL, NULL, NULL),
(494, 'La Victoria', 1, 76, NULL, NULL, NULL),
(495, 'La Virginia', 1, 66, NULL, NULL, NULL),
(496, 'Labateca', 1, 54, NULL, NULL, NULL),
(497, 'Labranzagrande', 1, 15, NULL, NULL, NULL),
(498, 'Landázuri', 1, 68, NULL, NULL, NULL),
(499, 'Lebrija', 1, 68, NULL, NULL, NULL),
(500, 'Leiva', 1, 52, NULL, NULL, NULL),
(501, 'Lejanías', 1, 50, NULL, NULL, NULL),
(502, 'Lenguazaque', 1, 25, NULL, NULL, NULL),
(503, 'Leticia', 1, 91, NULL, NULL, NULL),
(504, 'Liborina', 1, 5, NULL, NULL, NULL),
(505, 'Linares', 1, 52, NULL, NULL, NULL),
(506, 'Lloró', 1, 27, NULL, NULL, NULL),
(507, 'Lorica', 1, 23, NULL, NULL, NULL),
(508, 'Los Córdobas', 1, 23, NULL, NULL, NULL),
(509, 'Los Palmitos', 1, 70, NULL, NULL, NULL),
(510, 'Los Patios', 1, 54, NULL, NULL, NULL),
(511, 'Los Santos', 1, 68, NULL, NULL, NULL),
(512, 'Lourdes', 1, 54, NULL, NULL, NULL),
(513, 'Luruaco', 1, 8, NULL, NULL, NULL),
(514, 'Lérida', 1, 73, NULL, NULL, NULL),
(515, 'Líbano', 1, 73, NULL, NULL, NULL),
(516, 'López (Micay)', 1, 19, NULL, NULL, NULL),
(517, 'Macanal', 1, 15, NULL, NULL, NULL),
(518, 'Macaravita', 1, 68, NULL, NULL, NULL),
(519, 'Maceo', 1, 5, NULL, NULL, NULL),
(520, 'Machetá', 1, 25, NULL, NULL, NULL),
(521, 'Madrid', 1, 25, NULL, NULL, NULL),
(522, 'Magangué', 1, 13, NULL, NULL, NULL),
(523, 'Magüi (Payán)', 1, 52, NULL, NULL, NULL),
(524, 'Mahates', 1, 13, NULL, NULL, NULL),
(525, 'Maicao', 1, 44, NULL, NULL, NULL),
(526, 'Majagual', 1, 70, NULL, NULL, NULL),
(527, 'Malambo', 1, 8, NULL, NULL, NULL),
(528, 'Mallama (Piedrancha)', 1, 52, NULL, NULL, NULL),
(529, 'Manatí', 1, 8, NULL, NULL, NULL),
(530, 'Manaure', 1, 44, NULL, NULL, NULL),
(531, 'Manaure Balcón del Cesar', 1, 20, NULL, NULL, NULL),
(532, 'Manizales', 1, 17, NULL, NULL, NULL),
(533, 'Manta', 1, 25, NULL, NULL, NULL),
(534, 'Manzanares', 1, 17, NULL, NULL, NULL),
(535, 'Maní', 1, 85, NULL, NULL, NULL),
(536, 'Mapiripan', 1, 50, NULL, NULL, NULL),
(537, 'Margarita', 1, 13, NULL, NULL, NULL),
(538, 'Marinilla', 1, 5, NULL, NULL, NULL),
(539, 'Maripí', 1, 15, NULL, NULL, NULL),
(540, 'Mariquita', 1, 73, NULL, NULL, NULL),
(541, 'Marmato', 1, 17, NULL, NULL, NULL),
(542, 'Marquetalia', 1, 17, NULL, NULL, NULL),
(543, 'Marsella', 1, 66, NULL, NULL, NULL),
(544, 'Marulanda', 1, 17, NULL, NULL, NULL),
(545, 'María la Baja', 1, 13, NULL, NULL, NULL),
(546, 'Matanza', 1, 68, NULL, NULL, NULL),
(547, 'Medellín', 1, 5, NULL, NULL, NULL),
(548, 'Medina', 1, 25, NULL, NULL, NULL),
(549, 'Medio Atrato', 1, 27, NULL, NULL, NULL),
(550, 'Medio Baudó', 1, 27, NULL, NULL, NULL),
(551, 'Medio San Juan (ANDAGOYA)', 1, 27, NULL, NULL, NULL),
(552, 'Melgar', 1, 73, NULL, NULL, NULL),
(553, 'Mercaderes', 1, 19, NULL, NULL, NULL),
(554, 'Mesetas', 1, 50, NULL, NULL, NULL),
(555, 'Milán', 1, 18, NULL, NULL, NULL),
(556, 'Miraflores', 1, 15, NULL, NULL, NULL),
(557, 'Miraflores', 1, 95, NULL, NULL, NULL),
(558, 'Miranda', 1, 19, NULL, NULL, NULL),
(559, 'Mistrató', 1, 66, NULL, NULL, NULL),
(560, 'Mitú', 1, 97, NULL, NULL, NULL),
(561, 'Mocoa', 1, 86, NULL, NULL, NULL),
(562, 'Mogotes', 1, 68, NULL, NULL, NULL),
(563, 'Molagavita', 1, 68, NULL, NULL, NULL),
(564, 'Momil', 1, 23, NULL, NULL, NULL),
(565, 'Mompós', 1, 13, NULL, NULL, NULL),
(566, 'Mongua', 1, 15, NULL, NULL, NULL),
(567, 'Monguí', 1, 15, NULL, NULL, NULL),
(568, 'Moniquirá', 1, 15, NULL, NULL, NULL),
(569, 'Montebello', 1, 5, NULL, NULL, NULL),
(570, 'Montecristo', 1, 13, NULL, NULL, NULL),
(571, 'Montelíbano', 1, 23, NULL, NULL, NULL),
(572, 'Montenegro', 1, 63, NULL, NULL, NULL),
(573, 'Monteria', 1, 23, NULL, NULL, NULL),
(574, 'Monterrey', 1, 85, NULL, NULL, NULL),
(575, 'Morales', 1, 13, NULL, NULL, NULL),
(576, 'Morales', 1, 19, NULL, NULL, NULL),
(577, 'Morelia', 1, 18, NULL, NULL, NULL),
(578, 'Morroa', 1, 70, NULL, NULL, NULL),
(579, 'Mosquera', 1, 25, NULL, NULL, NULL),
(580, 'Mosquera', 1, 52, NULL, NULL, NULL),
(581, 'Motavita', 1, 15, NULL, NULL, NULL),
(582, 'Moñitos', 1, 23, NULL, NULL, NULL),
(583, 'Murillo', 1, 73, NULL, NULL, NULL),
(584, 'Murindó', 1, 5, NULL, NULL, NULL),
(585, 'Mutatá', 1, 5, NULL, NULL, NULL),
(586, 'Mutiscua', 1, 54, NULL, NULL, NULL),
(587, 'Muzo', 1, 15, NULL, NULL, NULL),
(588, 'Málaga', 1, 68, NULL, NULL, NULL),
(589, 'Nariño', 1, 5, NULL, NULL, NULL),
(590, 'Nariño', 1, 25, NULL, NULL, NULL),
(591, 'Nariño', 1, 52, NULL, NULL, NULL),
(592, 'Natagaima', 1, 73, NULL, NULL, NULL),
(593, 'Nechí', 1, 5, NULL, NULL, NULL),
(594, 'Necoclí', 1, 5, NULL, NULL, NULL),
(595, 'Neira', 1, 17, NULL, NULL, NULL),
(596, 'Neiva', 1, 41, NULL, NULL, NULL),
(597, 'Nemocón', 1, 25, NULL, NULL, NULL),
(598, 'Nilo', 1, 25, NULL, NULL, NULL),
(599, 'Nimaima', 1, 25, NULL, NULL, NULL),
(600, 'Nobsa', 1, 15, NULL, NULL, NULL),
(601, 'Nocaima', 1, 25, NULL, NULL, NULL),
(602, 'Norcasia', 1, 17, NULL, NULL, NULL),
(603, 'Norosí', 1, 13, NULL, NULL, NULL),
(604, 'Novita', 1, 27, NULL, NULL, NULL),
(605, 'Nueva Granada', 1, 47, NULL, NULL, NULL),
(606, 'Nuevo Colón', 1, 15, NULL, NULL, NULL),
(607, 'Nunchía', 1, 85, NULL, NULL, NULL),
(608, 'Nuquí', 1, 27, NULL, NULL, NULL),
(609, 'Nátaga', 1, 41, NULL, NULL, NULL),
(610, 'Obando', 1, 76, NULL, NULL, NULL),
(611, 'Ocamonte', 1, 68, NULL, NULL, NULL),
(612, 'Ocaña', 1, 54, NULL, NULL, NULL),
(613, 'Oiba', 1, 68, NULL, NULL, NULL),
(614, 'Oicatá', 1, 15, NULL, NULL, NULL),
(615, 'Olaya', 1, 5, NULL, NULL, NULL),
(616, 'Olaya Herrera', 1, 52, NULL, NULL, NULL),
(617, 'Onzaga', 1, 68, NULL, NULL, NULL),
(618, 'Oporapa', 1, 41, NULL, NULL, NULL),
(619, 'Orito', 1, 86, NULL, NULL, NULL),
(620, 'Orocué', 1, 85, NULL, NULL, NULL),
(621, 'Ortega', 1, 73, NULL, NULL, NULL),
(622, 'Ospina', 1, 52, NULL, NULL, NULL),
(623, 'Otanche', 1, 15, NULL, NULL, NULL),
(624, 'Ovejas', 1, 70, NULL, NULL, NULL),
(625, 'Pachavita', 1, 15, NULL, NULL, NULL),
(626, 'Pacho', 1, 25, NULL, NULL, NULL),
(627, 'Padilla', 1, 19, NULL, NULL, NULL),
(628, 'Paicol', 1, 41, NULL, NULL, NULL),
(629, 'Pailitas', 1, 20, NULL, NULL, NULL),
(630, 'Paime', 1, 25, NULL, NULL, NULL),
(631, 'Paipa', 1, 15, NULL, NULL, NULL),
(632, 'Pajarito', 1, 15, NULL, NULL, NULL),
(633, 'Palermo', 1, 41, NULL, NULL, NULL),
(634, 'Palestina', 1, 17, NULL, NULL, NULL),
(635, 'Palestina', 1, 41, NULL, NULL, NULL),
(636, 'Palmar', 1, 68, NULL, NULL, NULL),
(637, 'Palmar de Varela', 1, 8, NULL, NULL, NULL),
(638, 'Palmas del Socorro', 1, 68, NULL, NULL, NULL),
(639, 'Palmira', 1, 76, NULL, NULL, NULL),
(640, 'Palmito', 1, 70, NULL, NULL, NULL),
(641, 'Palocabildo', 1, 73, NULL, NULL, NULL),
(642, 'Pamplona', 1, 54, NULL, NULL, NULL),
(643, 'Pamplonita', 1, 54, NULL, NULL, NULL),
(644, 'Pandi', 1, 25, NULL, NULL, NULL),
(645, 'Panqueba', 1, 15, NULL, NULL, NULL),
(646, 'Paratebueno', 1, 25, NULL, NULL, NULL),
(647, 'Pasca', 1, 25, NULL, NULL, NULL),
(648, 'Patía (El Bordo)', 1, 19, NULL, NULL, NULL),
(649, 'Pauna', 1, 15, NULL, NULL, NULL),
(650, 'Paya', 1, 15, NULL, NULL, NULL),
(651, 'Paz de Ariporo', 1, 85, NULL, NULL, NULL),
(652, 'Paz de Río', 1, 15, NULL, NULL, NULL),
(653, 'Pedraza', 1, 47, NULL, NULL, NULL),
(654, 'Pelaya', 1, 20, NULL, NULL, NULL),
(655, 'Pensilvania', 1, 17, NULL, NULL, NULL),
(656, 'Peque', 1, 5, NULL, NULL, NULL),
(657, 'Pereira', 1, 66, NULL, NULL, NULL),
(658, 'Pesca', 1, 15, NULL, NULL, NULL),
(659, 'Peñol', 1, 5, NULL, NULL, NULL),
(660, 'Piamonte', 1, 19, NULL, NULL, NULL),
(661, 'Pie de Cuesta', 1, 68, NULL, NULL, NULL),
(662, 'Piedras', 1, 73, NULL, NULL, NULL),
(663, 'Piendamó', 1, 19, NULL, NULL, NULL),
(664, 'Pijao', 1, 63, NULL, NULL, NULL),
(665, 'Pijiño', 1, 47, NULL, NULL, NULL),
(666, 'Pinchote', 1, 68, NULL, NULL, NULL),
(667, 'Pinillos', 1, 13, NULL, NULL, NULL),
(668, 'Piojo', 1, 8, NULL, NULL, NULL),
(669, 'Pisva', 1, 15, NULL, NULL, NULL),
(670, 'Pital', 1, 41, NULL, NULL, NULL),
(671, 'Pitalito', 1, 41, NULL, NULL, NULL),
(672, 'Pivijay', 1, 47, NULL, NULL, NULL),
(673, 'Planadas', 1, 73, NULL, NULL, NULL),
(674, 'Planeta Rica', 1, 23, NULL, NULL, NULL),
(675, 'Plato', 1, 47, NULL, NULL, NULL),
(676, 'Policarpa', 1, 52, NULL, NULL, NULL),
(677, 'Polonuevo', 1, 8, NULL, NULL, NULL),
(678, 'Ponedera', 1, 8, NULL, NULL, NULL),
(679, 'Popayán', 1, 19, NULL, NULL, NULL),
(680, 'Pore', 1, 85, NULL, NULL, NULL),
(681, 'Potosí', 1, 52, NULL, NULL, NULL),
(682, 'Pradera', 1, 76, NULL, NULL, NULL),
(683, 'Prado', 1, 73, NULL, NULL, NULL),
(684, 'Providencia', 1, 52, NULL, NULL, NULL),
(685, 'Providencia', 1, 88, NULL, NULL, NULL),
(686, 'Pueblo Bello', 1, 20, NULL, NULL, NULL),
(687, 'Pueblo Nuevo', 1, 23, NULL, NULL, NULL),
(688, 'Pueblo Rico', 1, 66, NULL, NULL, NULL),
(689, 'Pueblorrico', 1, 5, NULL, NULL, NULL),
(690, 'Puebloviejo', 1, 47, NULL, NULL, NULL),
(691, 'Puente Nacional', 1, 68, NULL, NULL, NULL),
(692, 'Puerres', 1, 52, NULL, NULL, NULL),
(693, 'Puerto Asís', 1, 86, NULL, NULL, NULL),
(694, 'Puerto Berrío', 1, 5, NULL, NULL, NULL),
(695, 'Puerto Boyacá', 1, 15, NULL, NULL, NULL),
(696, 'Puerto Caicedo', 1, 86, NULL, NULL, NULL),
(697, 'Puerto Carreño', 1, 99, NULL, NULL, NULL),
(698, 'Puerto Colombia', 1, 8, NULL, NULL, NULL),
(699, 'Puerto Concordia', 1, 50, NULL, NULL, NULL),
(700, 'Puerto Escondido', 1, 23, NULL, NULL, NULL),
(701, 'Puerto Gaitán', 1, 50, NULL, NULL, NULL),
(702, 'Puerto Guzmán', 1, 86, NULL, NULL, NULL),
(703, 'Puerto Leguízamo', 1, 86, NULL, NULL, NULL),
(704, 'Puerto Libertador', 1, 23, NULL, NULL, NULL),
(705, 'Puerto Lleras', 1, 50, NULL, NULL, NULL),
(706, 'Puerto López', 1, 50, NULL, NULL, NULL),
(707, 'Puerto Nare', 1, 5, NULL, NULL, NULL),
(708, 'Puerto Nariño', 1, 91, NULL, NULL, NULL),
(709, 'Puerto Parra', 1, 68, NULL, NULL, NULL),
(710, 'Puerto Rico', 1, 18, NULL, NULL, NULL),
(711, 'Puerto Rico', 1, 50, NULL, NULL, NULL),
(712, 'Puerto Rondón', 1, 81, NULL, NULL, NULL),
(713, 'Puerto Salgar', 1, 25, NULL, NULL, NULL),
(714, 'Puerto Santander', 1, 54, NULL, NULL, NULL),
(715, 'Puerto Tejada', 1, 19, NULL, NULL, NULL),
(716, 'Puerto Triunfo', 1, 5, NULL, NULL, NULL),
(717, 'Puerto Wilches', 1, 68, NULL, NULL, NULL),
(718, 'Pulí', 1, 25, NULL, NULL, NULL),
(719, 'Pupiales', 1, 52, NULL, NULL, NULL),
(720, 'Puracé (Coconuco)', 1, 19, NULL, NULL, NULL),
(721, 'Purificación', 1, 73, NULL, NULL, NULL),
(722, 'Purísima', 1, 23, NULL, NULL, NULL),
(723, 'Pácora', 1, 17, NULL, NULL, NULL),
(724, 'Páez', 1, 15, NULL, NULL, NULL),
(725, 'Páez (Belalcazar)', 1, 19, NULL, NULL, NULL),
(726, 'Páramo', 1, 68, NULL, NULL, NULL),
(727, 'Quebradanegra', 1, 25, NULL, NULL, NULL),
(728, 'Quetame', 1, 25, NULL, NULL, NULL),
(729, 'Quibdó', 1, 27, NULL, NULL, NULL),
(730, 'Quimbaya', 1, 63, NULL, NULL, NULL),
(731, 'Quinchía', 1, 66, NULL, NULL, NULL),
(732, 'Quipama', 1, 15, NULL, NULL, NULL),
(733, 'Quipile', 1, 25, NULL, NULL, NULL),
(734, 'Ragonvalia', 1, 54, NULL, NULL, NULL),
(735, 'Ramiriquí', 1, 15, NULL, NULL, NULL),
(736, 'Recetor', 1, 85, NULL, NULL, NULL),
(737, 'Regidor', 1, 13, NULL, NULL, NULL),
(738, 'Remedios', 1, 5, NULL, NULL, NULL),
(739, 'Remolino', 1, 47, NULL, NULL, NULL),
(740, 'Repelón', 1, 8, NULL, NULL, NULL),
(741, 'Restrepo', 1, 50, NULL, NULL, NULL),
(742, 'Restrepo', 1, 76, NULL, NULL, NULL),
(743, 'Retiro', 1, 5, NULL, NULL, NULL),
(744, 'Ricaurte', 1, 25, NULL, NULL, NULL),
(745, 'Ricaurte', 1, 52, NULL, NULL, NULL),
(746, 'Rio Negro', 1, 68, NULL, NULL, NULL),
(747, 'Rioblanco', 1, 73, NULL, NULL, NULL),
(748, 'Riofrío', 1, 76, NULL, NULL, NULL),
(749, 'Riohacha', 1, 44, NULL, NULL, NULL),
(750, 'Risaralda', 1, 17, NULL, NULL, NULL),
(751, 'Rivera', 1, 41, NULL, NULL, NULL),
(752, 'Roberto Payán (San José)', 1, 52, NULL, NULL, NULL),
(753, 'Roldanillo', 1, 76, NULL, NULL, NULL),
(754, 'Roncesvalles', 1, 73, NULL, NULL, NULL),
(755, 'Rondón', 1, 15, NULL, NULL, NULL),
(756, 'Rosas', 1, 19, NULL, NULL, NULL),
(757, 'Rovira', 1, 73, NULL, NULL, NULL),
(758, 'Ráquira', 1, 15, NULL, NULL, NULL),
(759, 'Río Iró', 1, 27, NULL, NULL, NULL),
(760, 'Río Quito', 1, 27, NULL, NULL, NULL),
(761, 'Río Sucio', 1, 17, NULL, NULL, NULL),
(762, 'Río Viejo', 1, 13, NULL, NULL, NULL),
(763, 'Río de oro', 1, 20, NULL, NULL, NULL),
(764, 'Ríonegro', 1, 5, NULL, NULL, NULL),
(765, 'Ríosucio', 1, 27, NULL, NULL, NULL),
(766, 'Sabana de Torres', 1, 68, NULL, NULL, NULL),
(767, 'Sabanagrande', 1, 8, NULL, NULL, NULL),
(768, 'Sabanalarga', 1, 5, NULL, NULL, NULL),
(769, 'Sabanalarga', 1, 8, NULL, NULL, NULL),
(770, 'Sabanalarga', 1, 85, NULL, NULL, NULL),
(771, 'Sabanas de San Angel (SAN ANGEL)', 1, 47, NULL, NULL, NULL),
(772, 'Sabaneta', 1, 5, NULL, NULL, NULL),
(773, 'Saboyá', 1, 15, NULL, NULL, NULL),
(774, 'Sahagún', 1, 23, NULL, NULL, NULL),
(775, 'Saladoblanco', 1, 41, NULL, NULL, NULL),
(776, 'Salamina', 1, 17, NULL, NULL, NULL),
(777, 'Salamina', 1, 47, NULL, NULL, NULL),
(778, 'Salazar', 1, 54, NULL, NULL, NULL),
(779, 'Saldaña', 1, 73, NULL, NULL, NULL),
(780, 'Salento', 1, 63, NULL, NULL, NULL),
(781, 'Salgar', 1, 5, NULL, NULL, NULL),
(782, 'Samacá', 1, 15, NULL, NULL, NULL),
(783, 'Samaniego', 1, 52, NULL, NULL, NULL),
(784, 'Samaná', 1, 17, NULL, NULL, NULL),
(785, 'Sampués', 1, 70, NULL, NULL, NULL),
(786, 'San Agustín', 1, 41, NULL, NULL, NULL),
(787, 'San Alberto', 1, 20, NULL, NULL, NULL),
(788, 'San Andrés', 1, 68, NULL, NULL, NULL),
(789, 'San Andrés Sotavento', 1, 23, NULL, NULL, NULL),
(790, 'San Andrés de Cuerquía', 1, 5, NULL, NULL, NULL),
(791, 'San Antero', 1, 23, NULL, NULL, NULL),
(792, 'San Antonio', 1, 73, NULL, NULL, NULL),
(793, 'San Antonio de Tequendama', 1, 25, NULL, NULL, NULL),
(794, 'San Benito', 1, 68, NULL, NULL, NULL),
(795, 'San Benito Abad', 1, 70, NULL, NULL, NULL),
(796, 'San Bernardo', 1, 25, NULL, NULL, NULL),
(797, 'San Bernardo', 1, 52, NULL, NULL, NULL),
(798, 'San Bernardo del Viento', 1, 23, NULL, NULL, NULL),
(799, 'San Calixto', 1, 54, NULL, NULL, NULL),
(800, 'San Carlos', 1, 5, NULL, NULL, NULL),
(801, 'San Carlos', 1, 23, NULL, NULL, NULL),
(802, 'San Carlos de Guaroa', 1, 50, NULL, NULL, NULL),
(803, 'San Cayetano', 1, 25, NULL, NULL, NULL),
(804, 'San Cayetano', 1, 54, NULL, NULL, NULL),
(805, 'San Cristobal', 1, 13, NULL, NULL, NULL),
(806, 'San Diego', 1, 20, NULL, NULL, NULL),
(807, 'San Eduardo', 1, 15, NULL, NULL, NULL),
(808, 'San Estanislao', 1, 13, NULL, NULL, NULL),
(809, 'San Fernando', 1, 13, NULL, NULL, NULL),
(810, 'San Francisco', 1, 5, NULL, NULL, NULL),
(811, 'San Francisco', 1, 25, NULL, NULL, NULL),
(812, 'San Francisco', 1, 86, NULL, NULL, NULL),
(813, 'San Gíl', 1, 68, NULL, NULL, NULL),
(814, 'San Jacinto', 1, 13, NULL, NULL, NULL),
(815, 'San Jacinto del Cauca', 1, 13, NULL, NULL, NULL),
(816, 'San Jerónimo', 1, 5, NULL, NULL, NULL),
(817, 'San Joaquín', 1, 68, NULL, NULL, NULL),
(818, 'San José', 1, 17, NULL, NULL, NULL),
(819, 'San José de Miranda', 1, 68, NULL, NULL, NULL),
(820, 'San José de Montaña', 1, 5, NULL, NULL, NULL),
(821, 'San José de Pare', 1, 15, NULL, NULL, NULL),
(822, 'San José de Uré', 1, 23, NULL, NULL, NULL),
(823, 'San José del Fragua', 1, 18, NULL, NULL, NULL),
(824, 'San José del Guaviare', 1, 95, NULL, NULL, NULL),
(825, 'San José del Palmar', 1, 27, NULL, NULL, NULL),
(826, 'San Juan de Arama', 1, 50, NULL, NULL, NULL),
(827, 'San Juan de Betulia', 1, 70, NULL, NULL, NULL),
(828, 'San Juan de Nepomuceno', 1, 13, NULL, NULL, NULL),
(829, 'San Juan de Pasto', 1, 52, NULL, NULL, NULL),
(830, 'San Juan de Río Seco', 1, 25, NULL, NULL, NULL),
(831, 'San Juan de Urabá', 1, 5, NULL, NULL, NULL),
(832, 'San Juan del Cesar', 1, 44, NULL, NULL, NULL),
(833, 'San Juanito', 1, 50, NULL, NULL, NULL),
(834, 'San Lorenzo', 1, 52, NULL, NULL, NULL),
(835, 'San Luis', 1, 73, NULL, NULL, NULL),
(836, 'San Luís', 1, 5, NULL, NULL, NULL),
(837, 'San Luís de Gaceno', 1, 15, NULL, NULL, NULL),
(838, 'San Luís de Palenque', 1, 85, NULL, NULL, NULL),
(839, 'San Marcos', 1, 70, NULL, NULL, NULL),
(840, 'San Martín', 1, 20, NULL, NULL, NULL),
(841, 'San Martín', 1, 50, NULL, NULL, NULL),
(842, 'San Martín de Loba', 1, 13, NULL, NULL, NULL),
(843, 'San Mateo', 1, 15, NULL, NULL, NULL),
(844, 'San Miguel', 1, 68, NULL, NULL, NULL),
(845, 'San Miguel', 1, 86, NULL, NULL, NULL),
(846, 'San Miguel de Sema', 1, 15, NULL, NULL, NULL),
(847, 'San Onofre', 1, 70, NULL, NULL, NULL),
(848, 'San Pablo', 1, 13, NULL, NULL, NULL),
(849, 'San Pablo', 1, 52, NULL, NULL, NULL),
(850, 'San Pablo de Borbur', 1, 15, NULL, NULL, NULL),
(851, 'San Pedro', 1, 5, NULL, NULL, NULL),
(852, 'San Pedro', 1, 70, NULL, NULL, NULL),
(853, 'San Pedro', 1, 76, NULL, NULL, NULL),
(854, 'San Pedro de Cartago', 1, 52, NULL, NULL, NULL),
(855, 'San Pedro de Urabá', 1, 5, NULL, NULL, NULL),
(856, 'San Pelayo', 1, 23, NULL, NULL, NULL),
(857, 'San Rafael', 1, 5, NULL, NULL, NULL),
(858, 'San Roque', 1, 5, NULL, NULL, NULL),
(859, 'San Sebastián', 1, 19, NULL, NULL, NULL),
(860, 'San Sebastián de Buenavista', 1, 47, NULL, NULL, NULL),
(861, 'San Vicente', 1, 5, NULL, NULL, NULL),
(862, 'San Vicente del Caguán', 1, 18, NULL, NULL, NULL),
(863, 'San Vicente del Chucurí', 1, 68, NULL, NULL, NULL),
(864, 'San Zenón', 1, 47, NULL, NULL, NULL),
(865, 'Sandoná', 1, 52, NULL, NULL, NULL),
(866, 'Santa Ana', 1, 47, NULL, NULL, NULL),
(867, 'Santa Bárbara', 1, 5, NULL, NULL, NULL),
(868, 'Santa Bárbara', 1, 68, NULL, NULL, NULL),
(869, 'Santa Bárbara (Iscuandé)', 1, 52, NULL, NULL, NULL),
(870, 'Santa Bárbara de Pinto', 1, 47, NULL, NULL, NULL),
(871, 'Santa Catalina', 1, 13, NULL, NULL, NULL),
(872, 'Santa Fé de Antioquia', 1, 5, NULL, NULL, NULL),
(873, 'Santa Genoveva de Docorodó', 1, 27, NULL, NULL, NULL),
(874, 'Santa Helena del Opón', 1, 68, NULL, NULL, NULL),
(875, 'Santa Isabel', 1, 73, NULL, NULL, NULL),
(876, 'Santa Lucía', 1, 8, NULL, NULL, NULL),
(877, 'Santa Marta', 1, 47, NULL, NULL, NULL),
(878, 'Santa María', 1, 15, NULL, NULL, NULL),
(879, 'Santa María', 1, 41, NULL, NULL, NULL),
(880, 'Santa Rosa', 1, 13, NULL, NULL, NULL),
(881, 'Santa Rosa', 1, 19, NULL, NULL, NULL),
(882, 'Santa Rosa de Cabal', 1, 66, NULL, NULL, NULL),
(883, 'Santa Rosa de Osos', 1, 5, NULL, NULL, NULL),
(884, 'Santa Rosa de Viterbo', 1, 15, NULL, NULL, NULL),
(885, 'Santa Rosa del Sur', 1, 13, NULL, NULL, NULL),
(886, 'Santa Rosalía', 1, 99, NULL, NULL, NULL),
(887, 'Santa Sofía', 1, 15, NULL, NULL, NULL),
(888, 'Santana', 1, 15, NULL, NULL, NULL),
(889, 'Santander de Quilichao', 1, 19, NULL, NULL, NULL),
(890, 'Santiago', 1, 54, NULL, NULL, NULL),
(891, 'Santiago', 1, 86, NULL, NULL, NULL),
(892, 'Santo Domingo', 1, 5, NULL, NULL, NULL),
(893, 'Santo Tomás', 1, 8, NULL, NULL, NULL),
(894, 'Santuario', 1, 5, NULL, NULL, NULL),
(895, 'Santuario', 1, 66, NULL, NULL, NULL),
(896, 'Sapuyes', 1, 52, NULL, NULL, NULL),
(897, 'Saravena', 1, 81, NULL, NULL, NULL),
(898, 'Sardinata', 1, 54, NULL, NULL, NULL),
(899, 'Sasaima', 1, 25, NULL, NULL, NULL),
(900, 'Sativanorte', 1, 15, NULL, NULL, NULL),
(901, 'Sativasur', 1, 15, NULL, NULL, NULL),
(902, 'Segovia', 1, 5, NULL, NULL, NULL),
(903, 'Sesquilé', 1, 25, NULL, NULL, NULL),
(904, 'Sevilla', 1, 76, NULL, NULL, NULL),
(905, 'Siachoque', 1, 15, NULL, NULL, NULL),
(906, 'Sibaté', 1, 25, NULL, NULL, NULL),
(907, 'Sibundoy', 1, 86, NULL, NULL, NULL),
(908, 'Silos', 1, 54, NULL, NULL, NULL),
(909, 'Silvania', 1, 25, NULL, NULL, NULL),
(910, 'Silvia', 1, 19, NULL, NULL, NULL),
(911, 'Simacota', 1, 68, NULL, NULL, NULL),
(912, 'Simijaca', 1, 25, NULL, NULL, NULL),
(913, 'Simití', 1, 13, NULL, NULL, NULL),
(914, 'Sincelejo', 1, 70, NULL, NULL, NULL),
(915, 'Sincé', 1, 70, NULL, NULL, NULL),
(916, 'Sipí', 1, 27, NULL, NULL, NULL),
(917, 'Sitionuevo', 1, 47, NULL, NULL, NULL),
(918, 'Soacha', 1, 25, NULL, NULL, NULL),
(919, 'Soatá', 1, 15, NULL, NULL, NULL),
(920, 'Socha', 1, 15, NULL, NULL, NULL),
(921, 'Socorro', 1, 68, NULL, NULL, NULL),
(922, 'Socotá', 1, 15, NULL, NULL, NULL),
(923, 'Sogamoso', 1, 15, NULL, NULL, NULL),
(924, 'Solano', 1, 18, NULL, NULL, NULL),
(925, 'Soledad', 1, 8, NULL, NULL, NULL),
(926, 'Solita', 1, 18, NULL, NULL, NULL),
(927, 'Somondoco', 1, 15, NULL, NULL, NULL),
(928, 'Sonsón', 1, 5, NULL, NULL, NULL),
(929, 'Sopetrán', 1, 5, NULL, NULL, NULL),
(930, 'Soplaviento', 1, 13, NULL, NULL, NULL),
(931, 'Sopó', 1, 25, NULL, NULL, NULL),
(932, 'Sora', 1, 15, NULL, NULL, NULL),
(933, 'Soracá', 1, 15, NULL, NULL, NULL),
(934, 'Sotaquirá', 1, 15, NULL, NULL, NULL),
(935, 'Sotara (Paispamba)', 1, 19, NULL, NULL, NULL),
(936, 'Sotomayor (Los Andes)', 1, 52, NULL, NULL, NULL),
(937, 'Suaita', 1, 68, NULL, NULL, NULL),
(938, 'Suan', 1, 8, NULL, NULL, NULL),
(939, 'Suaza', 1, 41, NULL, NULL, NULL),
(940, 'Subachoque', 1, 25, NULL, NULL, NULL),
(941, 'Sucre', 1, 19, NULL, NULL, NULL),
(942, 'Sucre', 1, 68, NULL, NULL, NULL),
(943, 'Sucre', 1, 70, NULL, NULL, NULL),
(944, 'Suesca', 1, 25, NULL, NULL, NULL),
(945, 'Supatá', 1, 25, NULL, NULL, NULL),
(946, 'Supía', 1, 17, NULL, NULL, NULL),
(947, 'Suratá', 1, 68, NULL, NULL, NULL),
(948, 'Susa', 1, 25, NULL, NULL, NULL),
(949, 'Susacón', 1, 15, NULL, NULL, NULL),
(950, 'Sutamarchán', 1, 15, NULL, NULL, NULL),
(951, 'Sutatausa', 1, 25, NULL, NULL, NULL),
(952, 'Sutatenza', 1, 15, NULL, NULL, NULL),
(953, 'Suárez', 1, 19, NULL, NULL, NULL),
(954, 'Suárez', 1, 73, NULL, NULL, NULL),
(955, 'Sácama', 1, 85, NULL, NULL, NULL),
(956, 'Sáchica', 1, 15, NULL, NULL, NULL),
(957, 'Tabio', 1, 25, NULL, NULL, NULL),
(958, 'Tadó', 1, 27, NULL, NULL, NULL),
(959, 'Talaigua Nuevo', 1, 13, NULL, NULL, NULL),
(960, 'Tamalameque', 1, 20, NULL, NULL, NULL),
(961, 'Tame', 1, 81, NULL, NULL, NULL),
(962, 'Taminango', 1, 52, NULL, NULL, NULL),
(963, 'Tangua', 1, 52, NULL, NULL, NULL),
(964, 'Taraira', 1, 97, NULL, NULL, NULL),
(965, 'Tarazá', 1, 5, NULL, NULL, NULL),
(966, 'Tarqui', 1, 41, NULL, NULL, NULL),
(967, 'Tarso', 1, 5, NULL, NULL, NULL),
(968, 'Tasco', 1, 15, NULL, NULL, NULL),
(969, 'Tauramena', 1, 85, NULL, NULL, NULL),
(970, 'Tausa', 1, 25, NULL, NULL, NULL),
(971, 'Tello', 1, 41, NULL, NULL, NULL),
(972, 'Tena', 1, 25, NULL, NULL, NULL),
(973, 'Tenerife', 1, 47, NULL, NULL, NULL),
(974, 'Tenjo', 1, 25, NULL, NULL, NULL),
(975, 'Tenza', 1, 15, NULL, NULL, NULL),
(976, 'Teorama', 1, 54, NULL, NULL, NULL),
(977, 'Teruel', 1, 41, NULL, NULL, NULL),
(978, 'Tesalia', 1, 41, NULL, NULL, NULL),
(979, 'Tibacuy', 1, 25, NULL, NULL, NULL),
(980, 'Tibaná', 1, 15, NULL, NULL, NULL),
(981, 'Tibasosa', 1, 15, NULL, NULL, NULL),
(982, 'Tibirita', 1, 25, NULL, NULL, NULL),
(983, 'Tibú', 1, 54, NULL, NULL, NULL),
(984, 'Tierralta', 1, 23, NULL, NULL, NULL),
(985, 'Timaná', 1, 41, NULL, NULL, NULL),
(986, 'Timbiquí', 1, 19, NULL, NULL, NULL),
(987, 'Timbío', 1, 19, NULL, NULL, NULL),
(988, 'Tinjacá', 1, 15, NULL, NULL, NULL),
(989, 'Tipacoque', 1, 15, NULL, NULL, NULL),
(990, 'Tiquisio (Puerto Rico)', 1, 13, NULL, NULL, NULL),
(991, 'Titiribí', 1, 5, NULL, NULL, NULL),
(992, 'Toca', 1, 15, NULL, NULL, NULL),
(993, 'Tocaima', 1, 25, NULL, NULL, NULL),
(994, 'Tocancipá', 1, 25, NULL, NULL, NULL),
(995, 'Toguí', 1, 15, NULL, NULL, NULL),
(996, 'Toledo', 1, 5, NULL, NULL, NULL),
(997, 'Toledo', 1, 54, NULL, NULL, NULL),
(998, 'Tolú', 1, 70, NULL, NULL, NULL),
(999, 'Tolú Viejo', 1, 70, NULL, NULL, NULL),
(1000, 'Tona', 1, 68, NULL, NULL, NULL),
(1001, 'Topagá', 1, 15, NULL, NULL, NULL),
(1002, 'Topaipí', 1, 25, NULL, NULL, NULL),
(1003, 'Toribío', 1, 19, NULL, NULL, NULL),
(1004, 'Toro', 1, 76, NULL, NULL, NULL),
(1005, 'Tota', 1, 15, NULL, NULL, NULL),
(1006, 'Totoró', 1, 19, NULL, NULL, NULL),
(1007, 'Trinidad', 1, 85, NULL, NULL, NULL),
(1008, 'Trujillo', 1, 76, NULL, NULL, NULL),
(1009, 'Tubará', 1, 8, NULL, NULL, NULL),
(1010, 'Tuchín', 1, 23, NULL, NULL, NULL),
(1011, 'Tulúa', 1, 76, NULL, NULL, NULL),
(1012, 'Tumaco', 1, 52, NULL, NULL, NULL),
(1013, 'Tunja', 1, 15, NULL, NULL, NULL),
(1014, 'Tunungua', 1, 15, NULL, NULL, NULL),
(1015, 'Turbaco', 1, 13, NULL, NULL, NULL),
(1016, 'Turbaná', 1, 13, NULL, NULL, NULL),
(1017, 'Turbo', 1, 5, NULL, NULL, NULL),
(1018, 'Turmequé', 1, 15, NULL, NULL, NULL),
(1019, 'Tuta', 1, 15, NULL, NULL, NULL),
(1020, 'Tutasá', 1, 15, NULL, NULL, NULL),
(1021, 'Támara', 1, 85, NULL, NULL, NULL),
(1022, 'Támesis', 1, 5, NULL, NULL, NULL),
(1023, 'Túquerres', 1, 52, NULL, NULL, NULL),
(1024, 'Ubalá', 1, 25, NULL, NULL, NULL),
(1025, 'Ubaque', 1, 25, NULL, NULL, NULL),
(1026, 'Ubaté', 1, 25, NULL, NULL, NULL),
(1027, 'Ulloa', 1, 76, NULL, NULL, NULL),
(1028, 'Une', 1, 25, NULL, NULL, NULL),
(1029, 'Unguía', 1, 27, NULL, NULL, NULL),
(1030, 'Unión Panamericana (ÁNIMAS)', 1, 27, NULL, NULL, NULL),
(1031, 'Uramita', 1, 5, NULL, NULL, NULL),
(1032, 'Uribe', 1, 50, NULL, NULL, NULL),
(1033, 'Uribia', 1, 44, NULL, NULL, NULL),
(1034, 'Urrao', 1, 5, NULL, NULL, NULL),
(1035, 'Urumita', 1, 44, NULL, NULL, NULL),
(1036, 'Usiacuri', 1, 8, NULL, NULL, NULL),
(1037, 'Valdivia', 1, 5, NULL, NULL, NULL),
(1038, 'Valencia', 1, 23, NULL, NULL, NULL),
(1039, 'Valle de San José', 1, 68, NULL, NULL, NULL),
(1040, 'Valle de San Juan', 1, 73, NULL, NULL, NULL),
(1041, 'Valle del Guamuez', 1, 86, NULL, NULL, NULL),
(1042, 'Valledupar', 1, 20, NULL, NULL, NULL),
(1043, 'Valparaiso', 1, 5, NULL, NULL, NULL),
(1044, 'Valparaiso', 1, 18, NULL, NULL, NULL),
(1045, 'Vegachí', 1, 5, NULL, NULL, NULL),
(1046, 'Venadillo', 1, 73, NULL, NULL, NULL),
(1047, 'Venecia', 1, 5, NULL, NULL, NULL),
(1048, 'Venecia (Ospina Pérez)', 1, 25, NULL, NULL, NULL),
(1049, 'Ventaquemada', 1, 15, NULL, NULL, NULL),
(1050, 'Vergara', 1, 25, NULL, NULL, NULL),
(1051, 'Versalles', 1, 76, NULL, NULL, NULL),
(1052, 'Vetas', 1, 68, NULL, NULL, NULL),
(1053, 'Viani', 1, 25, NULL, NULL, NULL),
(1054, 'Vigía del Fuerte', 1, 5, NULL, NULL, NULL),
(1055, 'Vijes', 1, 76, NULL, NULL, NULL),
(1056, 'Villa Caro', 1, 54, NULL, NULL, NULL),
(1057, 'Villa Rica', 1, 19, NULL, NULL, NULL),
(1058, 'Villa de Leiva', 1, 15, NULL, NULL, NULL),
(1059, 'Villa del Rosario', 1, 54, NULL, NULL, NULL),
(1060, 'Villagarzón', 1, 86, NULL, NULL, NULL),
(1061, 'Villagómez', 1, 25, NULL, NULL, NULL),
(1062, 'Villahermosa', 1, 73, NULL, NULL, NULL),
(1063, 'Villamaría', 1, 17, NULL, NULL, NULL),
(1064, 'Villanueva', 1, 13, NULL, NULL, NULL),
(1065, 'Villanueva', 1, 44, NULL, NULL, NULL),
(1066, 'Villanueva', 1, 68, NULL, NULL, NULL),
(1067, 'Villanueva', 1, 85, NULL, NULL, NULL),
(1068, 'Villapinzón', 1, 25, NULL, NULL, NULL),
(1069, 'Villarrica', 1, 73, NULL, NULL, NULL),
(1070, 'Villavicencio', 1, 50, NULL, NULL, NULL),
(1071, 'Villavieja', 1, 41, NULL, NULL, NULL),
(1072, 'Villeta', 1, 25, NULL, NULL, NULL),
(1073, 'Viotá', 1, 25, NULL, NULL, NULL),
(1074, 'Viracachá', 1, 15, NULL, NULL, NULL),
(1075, 'Vista Hermosa', 1, 50, NULL, NULL, NULL),
(1076, 'Viterbo', 1, 17, NULL, NULL, NULL),
(1077, 'Vélez', 1, 68, NULL, NULL, NULL),
(1078, 'Yacopí', 1, 25, NULL, NULL, NULL),
(1079, 'Yacuanquer', 1, 52, NULL, NULL, NULL),
(1080, 'Yaguará', 1, 41, NULL, NULL, NULL),
(1081, 'Yalí', 1, 5, NULL, NULL, NULL),
(1082, 'Yarumal', 1, 5, NULL, NULL, NULL),
(1083, 'Yolombó', 1, 5, NULL, NULL, NULL),
(1084, 'Yondó (Casabe)', 1, 5, NULL, NULL, NULL),
(1085, 'Yopal', 1, 85, NULL, NULL, NULL),
(1086, 'Yotoco', 1, 76, NULL, NULL, NULL),
(1087, 'Yumbo', 1, 76, NULL, NULL, NULL),
(1088, 'Zambrano', 1, 13, NULL, NULL, NULL),
(1089, 'Zapatoca', 1, 68, NULL, NULL, NULL),
(1090, 'Zapayán (PUNTA DE PIEDRAS)', 1, 47, NULL, NULL, NULL),
(1091, 'Zaragoza', 1, 5, NULL, NULL, NULL),
(1092, 'Zarzal', 1, 76, NULL, NULL, NULL),
(1093, 'Zetaquirá', 1, 15, NULL, NULL, NULL),
(1094, 'Zipacón', 1, 25, NULL, NULL, NULL),
(1095, 'Zipaquirá', 1, 25, NULL, NULL, NULL),
(1096, 'Zona Bananera (PRADO - SEVILLA)', 1, 47, NULL, NULL, NULL),
(1097, 'Ábrego', 1, 54, NULL, NULL, NULL),
(1098, 'Íquira', 1, 41, NULL, NULL, NULL),
(1099, 'Úmbita', 1, 15, NULL, NULL, NULL),
(1100, 'Útica', 1, 25, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios_1`
--

CREATE TABLE `municipios_1` (
  `cod_mun` int(6) UNSIGNED NOT NULL,
  `nom_mun` varchar(255) NOT NULL DEFAULT '',
  `estado` int(1) UNSIGNED NOT NULL,
  `id_dep_mun` int(2) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `cod_not` int(11) NOT NULL,
  `tip_not` int(11) DEFAULT NULL COMMENT '1 noticias  - 2 recomendaciones - 3 destacados',
  `img_not` varchar(250) DEFAULT NULL COMMENT 'ruta imagen o url',
  `lin_not` varchar(250) DEFAULT NULL COMMENT 'url referecia',
  `fue_not` varchar(250) DEFAULT NULL COMMENT 'fuente de informacion',
  `tit_not` varchar(250) DEFAULT NULL COMMENT 'titulo',
  `fec_not` varchar(250) DEFAULT NULL COMMENT 'fecha',
  `ent_not` text DEFAULT NULL COMMENT 'entradilla',
  `tit_not_ing` varchar(250) DEFAULT NULL COMMENT 'titulo en  ingles',
  `ent_not_ing` text DEFAULT NULL COMMENT 'descripcion en ingles',
  `ord_not` int(11) DEFAULT NULL COMMENT 'orden',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`cod_not`, `tip_not`, `img_not`, `lin_not`, `fue_not`, `tit_not`, `fec_not`, `ent_not`, `tit_not_ing`, `ent_not_ing`, `ord_not`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'https://bogotamarket.com/images/noticias/1690562582_32b37447947674722bec.jpg', 'https://mailchi.mp/bogotamarket/gracias-por-hacer-bam?e=7951f26f07', 'BAM', 'Ganadores #14BAM', 'Julio 14 de 2023', 'Nos complace anunciar que gracias a nuestros valiosos aliados, entregamos incentivos que contribuirán a la realización de proyectos y a la promoción de nuevas creaciones.', 'Winners #14BAM', 'We are pleased to announce that thanks to our valuable sponsors, we provide incentives that will contribute to the completion of projects and the promotion of new creations.', 1, NULL, '2024-06-20 11:16:49', '2024-06-20 11:16:49'),
(2, 1, 'https://test.bogotamarket.com/images/noticias/news-1.jpg', 'https://www.bogotamarket.com', 'www.fuente.com', 'titulo 2', '01-01-02', 'La segunda película beneficiaria del Estímulo Integral del FDC', '', '', 3, NULL, '2022-12-15 12:26:30', '2022-12-15 12:26:30'),
(3, 2, 'https://test.bogotamarket.com/images/noticias/news-2.jpg', 'https://www.bogotamarket.com', 'www.fuente.com', 'titulo 3', '01-01-02', 'La segunda película beneficiaria del Estímulo Integral del FDC', '', '', 2, NULL, '2022-12-15 12:26:52', '2022-12-15 12:26:52'),
(4, 2, 'https://bogotamarket.com/images/noticias/1700238939_d5dca32367d7077ccaba.png', 'https://www.annecyfestival.com/participer/inscrire-un-projet?utm_source=brevo&utm_campaign=Ouverture%20inscriptions%20projets%202024%20bilingue&utm_medium=email&utm_id=476', 'Festival Annecy', 'Convocatorias de proyectos Mifa 2024 Pitches', 'Hasta el 1 de febrero ', '¿Tiene un proyecto de película animada en fase conceptual o en desarrollo? Haga parte de los Mifa Pitches del Mercado Internacional de Cine de Animación de Annecy en las categorías de Cortometraje, Largometraje, Series de televisión y Experiencias digitales.\n', 'Calls for projects Mifa 2024 Pitches', 'Do you have an animated film project in concept or development? Be part of the Mifa Pitches of the Annecy International Animated Film Market in the categories of Short Film, Feature Film, Television Series and Digital Experiences.', 2, NULL, '2024-02-12 14:51:10', '2024-02-12 14:51:10'),
(5, 1, 'https://test.bogotamarket.com/images/noticias/news-1.jpg', 'https://www.bogotamarket.com', 'www.fuente.com', 'titulo 5', '01-01-02', 'La segunda película beneficiaria del Estímulo Integral del FDC', '', '', 2, NULL, '2022-12-15 12:26:33', '2022-12-15 12:26:33'),
(6, 3, 'https://bogotamarket.com/images/noticias/1698269100_50fc585e8f9ef68fe9ba.jpg', 'https://www.annecyfestival.com/participer/inscrire-un-film?utm_source=brevo&utm_campaign=Ouverture%20inscriptions%20films%202024%20FR&utm_medium=email&utm_id=458', 'ANNECY', 'Edición 2024: ¡registre sus películas!', 'Hasta 2024', 'Envíe su película animada para competir en la selección oficial de la próxima edición del Festival Internacional de Cine de Animación de Annecy.\n', '', '', 2, NULL, '2023-11-17 10:45:53', '2023-11-17 10:45:53'),
(7, 3, 'https://bogotamarket.com/images/noticias/1698330855_59ce8714d7184321a6ee.jpg', 'https://premiosquirino.org/', 'Premios Quirino ', 'Premios Quirino ', 'Hasta el 14 de diciembre de 2023', 'Los Premios Quirino de la animación iberoamericana abren la inscripción de obras para su séptima edición. Reconocerán las mejores obras de la animación iberoamericana en diez categorías, tras incluir una nueva dedicada a videoclips musicales.', 'Quirino Awards', 'The Quirino Awards for Ibero-American animation open the registration of works for their seventh edition. They will recognize the best works of Ibero-American animation in ten categories, after including a new one dedicated to music video clips.', 3, NULL, '2023-12-14 14:16:55', '2023-12-14 14:16:55'),
(8, 2, 'https://bogotamarket.com/images/noticias/1697145209_373afc341ace79e2bd52.jpg', 'https://bogotamarket.com/programacion/2023/Universos-y-Diversidades', 'PRUEBA', 'SHOW SHORTS', 'Hasta el 12 de octubre', 'Este conversatorio con Jason Ryle tiene como objetivo principal fomentar y promover la producción cinematogriifica indigena, brindando información y recursos sobre festivales de cine y fuentes de financiamiento especificos para los cineastas indigenas.\n\n', NULL, NULL, 2, '2023-10-12 16:13:30', '2023-10-12 16:13:49', '2023-10-12 16:13:49'),
(9, 3, 'https://bogotamarket.com/images/noticias/1697145239_092bb57c9cda3a9f290b.jpg', 'www.bogotamarket.com ', 'www.bogotamarket.com ', 'Prueba', '22 de octubre ', 'Prueba prueba prueba ', NULL, NULL, 2, '2023-10-12 16:14:01', '2023-10-12 16:14:32', '2023-10-12 16:14:32'),
(10, 2, 'https://bogotamarket.com/images/noticias/1699475559_6a4da15f914ef975b3b1.jpg', 'https://linktr.ee/intimact.spain', 'Coordinación de Intimidad | Intimacy Coordinators', 'IntimAct', NULL, 'Los coordinadores de intimidad son profesionales cada vez más demandados en las industrias audiovisuales a nivel global. La organización IntimAct busca promover esta creciente demanda en toda Iberoamérica. Aquellos interesados en explorar esta nueva perspectiva profesional podrán ponerse en contacto con IntimAct a través de formacionesintimact@gmail.com para obtener información detallada sobre el programa.', ' Intimacy Coordinators', 'Privacy coordinators are professionals who are increasingly in demand in the audiovisual industries globally. The IntimAct organization seeks to promote this growing demand throughout Latin America. Those interested in exploring this new professional perspective can contact IntimAct through formacionesintimact@gmail.com to obtain detailed information about the program.', 3, '2023-11-08 14:23:14', '2023-11-30 10:04:57', '2023-11-30 10:04:57'),
(11, 3, 'https://bogotamarket.com/images/noticias/1701360287_d2391cc89dba0d3e32ed.jpg', 'https://linktr.ee/intimact.spain', 'Coordinación de Intimidad | Intimacy Coordinators', 'IntimAct', '', 'Los coordinadores de intimidad son profesionales cada vez más demandados en las industrias audiovisuales a nivel global. La organización IntimAct busca promover esta creciente demanda en toda Iberoamérica. Aquellos interesados en explorar esta nueva perspectiva profesional podrán ponerse en contacto con IntimAct a través de formacionesintimact@gmail.com para obtener información detallada sobre el programa.', 'IntimAct', 'This message is directed to Colombian companies in the audiovisual sector that intend to attend the Ventana Sur Audiovisual Market. We invite you to join the Colombian delegation and receive the support provided by the International Promotion Department of Proimágenes Colombia.', 3, '2023-11-09 16:59:47', '2024-01-30 14:51:23', '2024-01-30 14:51:23'),
(12, 2, 'https://bogotamarket.com/images/noticias/1699571372_5b9ac1825545f9ecb0c5.jpg', 'www.democracystoryfund.org/lab/', 'Doc Society', 'Democracy Story Lab Río!', 'Hasta el 17 de noviembre', 'Largometrajes documentales, cortometrajes documentales y proyectos de podcast de no ficción podrán inscribirse en las categorías de: Narrativas contra la erosión, narrativas de representación, poder ciudadano fuera del sistema y nuevos modelos democráticos. ', NULL, NULL, 3, '2023-11-09 17:09:33', '2023-11-17 10:52:29', '2023-11-17 10:52:29'),
(13, 3, 'https://bogotamarket.com/images/noticias/1701360068_efcc3e504a1b53690213.png', 'https://www.ficg.mx/es/convocatorias?fbclid=IwAR2nVDtrOP6BUrMsec4Cq97ADQdXGZI-xy8curRGrsVfxFoKxqdecWoUFJY', ' FICG Festival Internacional de Cine en Guadalajara', ' ¡Abierta convocatoria para la edición 39 del FICG!', 'enero y febrero 2024', 'El FICG, convoca a productores y realizadores de Iberoamérica y otras regiones del mundo a inscribir sus películas a la edición número 39, que se realizará del 7 al 15 de junio de 2024.', 'Call for submissions is open for the 39th edition of FICG', 'The FICG invites producers and filmmakers from Ibero-America and other regions of the world to submit their films for the 39th edition, which will take place from June 7 to June 15, 2024.', 4, '2023-11-17 10:59:22', '2024-02-15 12:23:54', '2024-02-15 12:23:54'),
(14, 2, 'https://bogotamarket.com/images/noticias/1701099973_8beb9c470d3d7c728447.png', NULL, NULL, 'CANNES', NULL, NULL, NULL, NULL, NULL, '2023-11-27 09:46:33', '2023-11-27 09:46:50', '2023-11-27 09:46:50'),
(15, 2, 'https://bogotamarket.com/images/noticias/1709850469_c4a15145149d3e228748.png', 'https://www.sicvenezia.it/en/submit-film/', 'Festival Internacional de Cine de Venecia', 'Semana Internacional de la Crítica ', 'Hasta el 21 de junio de 2024', 'La Settimana Internazionale della Critica (SIC) es una sección independiente del Festival Internacional de Cine de Venecia, dedicada a las óperas primas. SIC busca películas que tengan la capacidad de hablar de nuestro presente mientras visualizan el futuro.', 'Semaine de la Critique - Cannes', 'Until March 8, 2024, you can submit your films to the selection committees of the 63rd Semaine de la Critique, which will be held between May 15 and 23, 2024.\n', 2, '2023-11-27 10:27:16', '2024-06-24 14:03:25', '2024-06-24 14:03:25'),
(16, 2, 'https://bogotamarket.com/images/noticias/1701103403_e6995dfaf29089133080.png', 'https://vlaff.org/wip-voces-afro-indigenas-2024-2?fbclid=IwAR1Q7o4aBwZIEu6HVdp144mnA2qIh26imFGC3S9sTb_XCqsYR81LrMNaYQo', 'Vancouver Latin American Film', 'Cine en Construcción (Work in Progress): Voces Afro Indígenas', 'Hasta enero 15 de 2024', 'Esta sección está dedicada a largometrajes en etapa de post-producción dirigidos, producidos y/o escritos por creadorxs que se identifiquen como afro-descendientes y/o pertenecientes a comunidades indígenas de la región latinoamericana y el Caribe. Así como a proyectos realizados por creadores latinoamericanxs en colaboración con dichas comunidades.', 'Film in Progress: Afro-Indigenous Voices', 'This section is dedicated to feature films in post-production directed, produced, and/or written by creators who identify as Afro-descendants and/or belong to indigenous communities in the Latin American and Caribbean region. It also includes projects carried out by Latin American creators in collaboration with these communities.', 1, '2023-11-27 10:29:21', '2024-01-30 14:50:56', '2024-01-30 14:50:56'),
(17, 3, 'https://bogotamarket.com/images/noticias/1702588205_7bc4e523cb82e4240808.png', 'https://docs.google.com/forms/d/e/1FAIpQLSfr-1UbK08NfzFN-HcdQCocHj3h8UP274Zg4qT2Hw0XDD2Gig/viewform', 'PROMOCIÓN INTERNACIONAL', 'Delegación Colombiana en Berlín', 'Hasta el 8 de enero', 'Este es un llamado para empresas productoras o del sector audiovisual colombiano que tienen planeado asistir al 74 Festival de Cine de Berlín y al EFM - European Film Market en Berlín - Alemania. Tendrán la oportunidad de hacer parte de la delegación colombiana y recibir el acompañamiento de la Dirección de Promoción Internacional de Proimágenes Colombia.', NULL, NULL, 1, '2023-12-14 14:21:24', '2024-01-30 15:08:26', '2024-01-30 15:08:26'),
(18, 3, 'https://bogotamarket.com/images/noticias/1702655072_6f209ba69696f740e44f.png', 'https://www.refreshcolombia.com/', 'Promoción internacional', 'Seleccionados Refresh Vol 5', '6 de diciembre ', 'El área de Promoción Internacional de Proimágenes Colombia con el apoyo del FDC, busca seleccionar algunos de los mejores cortos colombianos producidos en el año, con el fin de construir en conjunto una ruta estratégica de estreno y recorrido en el circuito de festivales. Conozca los seleccionados de esta edición.', NULL, NULL, 2, '2023-12-15 09:44:34', '2023-12-15 09:44:34', NULL),
(19, 3, 'https://bogotamarket.com/images/noticias/1710777370_04182fef94fb036de7fa.png', 'https://fantasolab.com/laboratorioiberoamericano/', 'Laboratorio de Proyectos: LAB e Incubadora', 'FantasoLab ', 'Hasta el 25 de marzo', 'El Laboratorio Iberoamericano de Proyectos de Cine Fantástico es una propuesta formativa que, junto con el taller para guionistas, conforman «FantasoLab». Estos eventos anuales buscan fortalecer las historias y producción del género fantástico en Iberoamérica.\n\n', NULL, NULL, 1, '2024-01-30 15:08:22', '2024-04-01 11:48:28', '2024-04-01 11:48:28'),
(20, 2, 'https://bogotamarket.com/images/noticias/1706711403_3d6d84f898da2e72121b.png', 'https://filmfreeway.com/nodramafilmmakersproject?mc_cid=ec8b114630&mc_eid=0529180635', 'TIFF - Toronto International Film Festival', 'NO DRAMA', 'Hasta el 29 de febrero', 'Monkeypaw Productions, en asociación con TIFF y Universal Filmmakers Project, invita a realizadores a producir un cortometraje que explore el terror a través de culturas, tiempos, entornos y sociedades. Los seleccionados recibirán cada uno una subvención de $50,000 (USD) para producir su cortometraje.', NULL, NULL, 3, '2024-01-31 08:30:04', '2024-03-01 14:58:15', '2024-03-01 14:58:15'),
(21, 2, 'https://bogotamarket.com/images/noticias/1707771494_11f4143c7b6241108be6.png', 'https://www.torinofilmlab.it/labs/serieslab/serieslab-2024', 'Torino Film Lab', 'SeriesLab y SeriesLab Story Editing ', 'hasta el 1 de marzo ', 'SeriesLab y SeriesLab Story Editing, programas del TFL (Torino Film Lab), le ofrecen la oportunidad para desarrollar sus habilidades como editor de historia y trabajar en proyectos de series de TV de ficción internacional.', NULL, NULL, 2, '2024-02-12 14:34:38', '2024-03-01 14:58:13', '2024-03-01 14:58:13'),
(22, 2, 'https://bogotamarket.com/images/noticias/1708529075_5acb83ed954230a859b3.jpg', 'https://bogotamarket.com/docs/CALL_2024_INDUSTRY_ACADEMY_AMERICA_LATINA_ES%20CR_CO_MX.pdf', 'Locarno Industry Academy', 'Colombia Locarno Industry Academy', ' Hasta el lunes 18 de marzo ', 'Creado por el Festival de Locarno, Industry Academy es un programa de formación intensiva cuyo objetivo es capacitar y apoyar a jóvenes profesionales de la industria del cine que trabajan específicamente en el área de la circulación de cine independiente.', NULL, NULL, 1, '2024-02-21 09:24:37', '2024-03-07 16:16:28', '2024-03-07 16:16:28'),
(23, 2, 'https://bogotamarket.com/images/noticias/1711552201_019dab2b28381a8699b4.webp', 'https://emprendoteca.es/', 'Plataforma para el emprendimiento ', 'Emprendoteca', 'Hasta el 1 de abril ', 'Convocatoria para proyectos empresariales, microempresas o startups del sector, ofrece formación, mentorías y networking. El Programa online cuenta con un 50% de descuento (500 euros) al aplicar a través de Proimágenes. Para más información comuníquese al correo emprendoteca@culturia.es\n', NULL, NULL, 1, '2024-03-27 10:10:03', '2024-04-01 09:13:34', '2024-04-01 09:13:34'),
(24, 1, 'https://bogotamarket.com/images/noticias/1713450975_c765e3c3d8a77d4d8a52.png', 'https://mailchi.mp/bogotamarket/bam-y-proimgenes-en-ficci-63?e=[UNIQID]', 'BAM', 'Proyectos BAM y actividades Proimágenes FICCI 63', '16 de abril', 'Entre las producciones que hacen parte de la Selección Oficial en FICCI 63, seis han sido participantes en el Bogotá Audiovisual Market - BAM. Además, Proimágenes Colombia se une con actividades vinculadas a sus diferentes programas.', NULL, NULL, 1, '2024-04-18 09:33:29', '2024-05-21 14:28:56', '2024-05-21 14:28:56'),
(25, 3, 'https://bogotamarket.com/images/noticias/1713451497_1aa00238ec2adb7aedc9.png', 'https://www.sansebastianfestival.com/2024/noticias/1/21604/es', 'Festival de San Sebastián', 'Foro de Coproducción Europa-América Latina', 'Hasta el 17 de junio', 'El Foro de Coproducción del Festival de San Sebastián, abre la convocatoria para recibir proyectos audiovisuales de Europa y Latinoamérica con una duración mínima de 60 minutos y al menos el 20% de financiación asegurada.', NULL, NULL, 1, '2024-04-18 09:44:59', '2024-04-18 09:45:22', '2024-04-18 09:45:22'),
(26, 2, 'https://bogotamarket.com/images/noticias/1713458809_0df8b72a4d0420c8a4e3.png', 'https://www.sansebastianfestival.com/2024/noticias/1/21604/es', 'Festival de San Sebastián', 'Foro de Coproducción Europa-América Latina', 'Hasta el 17 de junio', 'El Foro de Coproducción del Festival de San Sebastián, que alcanza su decimotercera edición, abre la convocatoria para recibir proyectos audiovisuales de Europa y Latinoamérica con una duración mínima de 60 minutos y al menos el 20% de financiación asegurada.\n\n', NULL, NULL, 2, '2024-04-18 09:45:57', '2024-06-20 11:30:43', '2024-06-20 11:30:43'),
(27, 3, 'https://bogotamarket.com/images/noticias/1716915920_a93134b63dae035583a4.png', 'https://www.proimagenescolombia.com/secciones/pantalla_colombia/plantilla_libre.php?preview&lang_pantalla=es&id=122&table_parent=proimagenes_vdos.boletines_especiales&id_parent=122&ftt=', 'Proimágenes Colombia', 'ASÍ FUE CANNES 2024 PARA COLOMBIA', '24 de mayo', 'El Festival de Cannes, uno de los eventos cinematográficos más importantes del mundo, realizado este año entre el 14 y el 25 de mayo, deja un muy buen balance para talentos y contenidos colombianos.', NULL, NULL, 3, '2024-04-18 11:42:42', '2024-06-20 08:59:23', NULL),
(28, 2, 'https://bogotamarket.com/images/noticias/1713908442_91b61fea609188ef5b2d.png', 'https://www.dok-leipzig.de/en/submission', 'International Leipzig Festival for Documentary and Animated Film', 'DOK Leipzig', 'Hasta el 1 de julio', 'La convocatoria está abierta para producciones documentales y animadas, incluyendo documentales animados y diversas formas híbridas de narración documental. Se aceptan películas de cualquier duración, con año de producción en 2023 o 2024, que no hayan sido proyectadas públicamente antes del 15 de octubre de 2023.\n', NULL, NULL, 3, '2024-04-23 16:56:37', '2024-07-04 09:44:58', '2024-07-04 09:44:58'),
(29, 1, 'https://bogotamarket.com/images/noticias/1716915287_0666f53a72ec61447e37.jpg', 'https://www.instagram.com/p/C7glaYZtRfW/?img_index=1', 'Locarno Film Festival', 'Seleccionados Locarno Industry Academy Colombia', '28 de mayo', 'Conozca a los once profesionales que participarán en Industry Academy, un programa de formación intensiva creado por el Locarno Film Festival, cuyo objetivo es capacitar y apoyar a jóvenes profesionales de la industria del cine. Las actividades se llevarán a cabo del 8 al 12 de julio en el marco del BAM.', NULL, NULL, 1, '2024-05-28 11:54:49', '2024-06-04 17:33:48', '2024-06-04 17:33:48'),
(30, 2, 'https://bogotamarket.com/images/noticias/1717539051_4479a9069e2696db68e5.jpg', 'https://contentamericas.net/es/', 'Content Americas', 'CONTENT AMERICAS', 'Enero 20 - 23 - 2025', 'C21Media anunció que la tercera edición de Content Americas se realizará del 20 al 23 de enero de 2025. El evento será la sede de la segunda edición de los Rose d\'Or Latinos, una agenda de conferencias de tres días, competencias de Pitch y un marketplace extendido.\n', NULL, NULL, 1, '2024-06-04 17:10:52', '2024-06-04 17:10:52', NULL),
(31, 3, 'https://bogotamarket.com/images/noticias/1717540905_86c1421142b980e37453.jpg', 'https://www.locarnofestival.ch/about/factory/academy/industry-academy/Colombia-Industry-Academy.html', 'Locarno Film Festival', 'Colombia Locarno Industry Academy ', '28 de mayo', 'Conozca a los once profesionales que participarán en Industry Academy, un programa de formación intensiva creado por el Locarno Film Festival, cuyo objetivo es capacitar y apoyar a jóvenes profesionales de la industria del cine. Las actividades se llevarán a cabo del 8 al 12 de julio en el marco del BAM.', NULL, NULL, 4, '2024-06-04 17:45:56', '2024-06-20 08:59:27', NULL),
(32, 3, 'https://bogotamarket.com/images/noticias/1718899769_35743657476cd96c9ccb.png', 'https://www.proimagenescolombia.com/secciones/pantalla_colombia/plantilla_libre.php?preview&lang_pantalla=es&id=123&table_parent=proimagenes_vdos.boletines_especiales&id_parent=123&ftt=', 'Proimágenes Colombia', 'LA ANIMACIÓN COLOMBIANA DEJÓ HUELLA EN ANNECY 2024', '19 de junio', 'Con una delegación de aproximadamente 40 personas, la industria de la animación en Colombia demostró su calidad y diversidad en el Festival Internacional de Cine de Animación de Annecy, que se llevó a cabo del 9 al 15 de junio en esta ciudad francesa. ', NULL, NULL, 1, '2024-06-20 11:09:32', '2024-06-20 11:09:32', NULL),
(33, 2, 'https://bogotamarket.com/images/noticias/1718900837_215fbecc63f8801be26f.jpg', 'https://mailchi.mp/bogotamarket/invitados-bamquince', 'BAM', 'INVITADOS DESTACADOS', '07 de junio ', 'Presentamos un adelanto de los expertos de la industria que estarán presentes y en #ModoBAM en nuestro decimoquinto aniversario.', NULL, NULL, 1, '2024-06-20 11:27:19', '2024-06-20 11:30:32', '2024-06-20 11:30:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `cod_pra` int(11) NOT NULL,
  `nom_para` varchar(250) DEFAULT NULL,
  `val_op_para` varchar(250) DEFAULT NULL,
  `nom_op_para` varchar(250) DEFAULT NULL,
  `ord_para` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`cod_pra`, `nom_para`, `val_op_para`, `nom_op_para`, `ord_para`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'tipo_perfil', '1', 'Junta Directiva', 1, NULL, NULL, NULL),
(2, 'tipo_slider', '1', 'Imagen', 1, NULL, NULL, NULL),
(3, 'tipo_slider', '2', 'Texto', 2, NULL, NULL, NULL),
(4, 'tipo_perfil', '2', 'Equipo directivo', 2, NULL, NULL, NULL),
(5, 'si_no', '1', 'Si', 1, NULL, NULL, NULL),
(6, 'si_no', '2', 'No', 2, NULL, NULL, NULL),
(7, 'cifraplantilla', '2', 'Doble Columna', 1, NULL, NULL, NULL),
(8, 'cifraplantilla', '4', 'Una Columna', 1, NULL, NULL, NULL),
(9, 'plantillaseleccion', '1', 'Proyecto Audiovisual', 1, NULL, NULL, NULL),
(10, 'plantillaseleccion', '2', 'Perfil Persona', 1, NULL, NULL, NULL),
(11, 'asistencia', '1', 'Virutal', 1, NULL, NULL, NULL),
(12, 'asistencia', '2', 'Presencial', 2, NULL, NULL, NULL),
(13, 'tipoprensa', '1', 'Newsletters', 1, NULL, NULL, NULL),
(14, 'tipoprensa', '2', 'Comunicados de prensa', 2, NULL, NULL, NULL),
(15, 'tipoeveregion', '1', 'Plantilla Columna', 1, NULL, NULL, NULL),
(16, 'tipoeveregion', '2', 'Plantilla Fila', 2, NULL, NULL, NULL),
(17, 'ciudades', 'Cali', 'Cali', 1, NULL, NULL, NULL),
(18, 'paises', 'Afganistan', 'Afganistnn / Afghanistan', 1, NULL, NULL, NULL),
(19, 'paises', 'Albania', 'Albania / Albania', 2, NULL, NULL, NULL),
(20, 'paises', 'Alemania', 'Alemania / Germany', 3, NULL, NULL, NULL),
(21, 'paises', 'Andorra', 'Andorra / Andorra', 4, NULL, NULL, NULL),
(22, 'paises', 'Angola', 'Angola / Angola', 5, NULL, NULL, NULL),
(23, 'paises', 'Anguila', 'Anguila / Anguilla', 6, NULL, NULL, NULL),
(24, 'paises', 'Antartida', 'Antartida / Antarctica', 7, NULL, NULL, NULL),
(25, 'paises', 'Antigua y Barbuda', 'Antigua y Barbuda / Antigua and Barbuda', 8, NULL, NULL, NULL),
(26, 'paises', 'Arabia Saudita', 'Arabia Saudita / Saudi Arabia', 9, NULL, NULL, NULL),
(27, 'paises', 'Argelia', 'Argelia / Algeria', 10, NULL, NULL, NULL),
(28, 'paises', 'Argentina', 'Argentina / Argentina', 11, NULL, NULL, NULL),
(29, 'paises', 'Armenia', 'Armenia / Armenia', 12, NULL, NULL, NULL),
(30, 'paises', 'Aruba', 'Aruba / Aruba', 13, NULL, NULL, NULL),
(31, 'paises', 'Australia', 'Australia / Australia', 14, NULL, NULL, NULL),
(32, 'paises', 'Austria', 'Austria / Austria', 15, NULL, NULL, NULL),
(33, 'paises', 'Azerbaiyan', 'Azerbaiyan / Azerbaijan', 16, NULL, NULL, NULL),
(34, 'paises', 'Belgica', 'Belgica / Belgium', 17, NULL, NULL, NULL),
(35, 'paises', 'Bahamas', 'Bahamas / Bahamas', 18, NULL, NULL, NULL),
(36, 'paises', 'Bahrein', 'Bahrein / Bahrain', 19, NULL, NULL, NULL),
(37, 'paises', 'Bangladesh', 'Bangladesh / Bangladesh', 20, NULL, NULL, NULL),
(38, 'paises', 'Barbados', 'Barbados / Barbados', 21, NULL, NULL, NULL),
(39, 'paises', 'Belice', 'Belice / Belize', 22, NULL, NULL, NULL),
(40, 'paises', 'Benin', 'Benin / Benin', 23, NULL, NULL, NULL),
(41, 'paises', 'Bhutan', 'Bhutan / Bhutan', 24, NULL, NULL, NULL),
(42, 'paises', 'Bielorrusia', 'Bielorrusia / Belarus', 25, NULL, NULL, NULL),
(43, 'paises', 'Birmania', 'Birmania / Myanmar', 26, NULL, NULL, NULL),
(44, 'paises', 'Bolivia', 'Bolivia / Bolivia', 27, NULL, NULL, NULL),
(45, 'paises', 'Bosnia y Herzegovina', 'Bosnia y Herzegovina / Bosnia and Herzegovina', 28, NULL, NULL, NULL),
(46, 'paises', 'Botsuana', 'Botsuana / Botswana', 29, NULL, NULL, NULL),
(47, 'paises', 'Brasil', 'Brasil / Brazil', 30, NULL, NULL, NULL),
(48, 'paises', 'Brunei', 'Brunei / Brunei', 31, NULL, NULL, NULL),
(49, 'paises', 'Bulgaria', 'Bulgaria / Bulgaria', 32, NULL, NULL, NULL),
(50, 'paises', 'Burkina Faso', 'Burkina Faso / Burkina Faso', 33, NULL, NULL, NULL),
(51, 'paises', 'Burundi', 'Burundi / Burundi', 34, NULL, NULL, NULL),
(52, 'paises', 'Cabo Verde', 'Cabo Verde / Cape Verde', 35, NULL, NULL, NULL),
(53, 'paises', 'Camboya', 'Camboya / Cambodia', 36, NULL, NULL, NULL),
(54, 'paises', 'Camerun', 'Camerun / Cameroon', 37, NULL, NULL, NULL),
(55, 'paises', 'Canad·', 'Canad· / Canada', 38, NULL, NULL, NULL),
(56, 'paises', 'Chad', 'Chad / Chad', 39, NULL, NULL, NULL),
(57, 'paises', 'Chile', 'Chile / Chile', 40, NULL, NULL, NULL),
(58, 'paises', 'China', 'China / China', 41, NULL, NULL, NULL),
(59, 'paises', 'Chipre', 'Chipre / Cyprus', 42, NULL, NULL, NULL),
(60, 'paises', 'Ciudad del Vaticano', 'Ciudad del Vaticano / Vatican City State', 43, NULL, NULL, NULL),
(61, 'paises', 'Colombia', 'Colombia / Colombia', 44, NULL, NULL, NULL),
(62, 'paises', 'Comoras', 'Comoras / Comoros', 45, NULL, NULL, NULL),
(63, 'paises', 'Republica del Congo', 'Republica del Congo / Republic of the Congo', 46, NULL, NULL, NULL),
(64, 'paises', 'Republica Democratica del Congo', 'Republica Democr·tica del Congo / Democratic Republic of the Congo', 47, NULL, NULL, NULL),
(65, 'paises', 'Corea del Norte', 'Corea del Norte / North Korea', 48, NULL, NULL, NULL),
(66, 'paises', 'Corea del Sur', 'Corea del Sur / South Korea', 49, NULL, NULL, NULL),
(67, 'paises', 'Costa de Marfil', 'Costa de Marfil / Ivory Coast', 50, NULL, NULL, NULL),
(68, 'paises', 'Costa Rica', 'Costa Rica / Costa Rica', 51, NULL, NULL, NULL),
(69, 'paises', 'Croacia', 'Croacia / Croatia', 52, NULL, NULL, NULL),
(70, 'paises', 'Cuba', 'Cuba / Cuba', 53, NULL, NULL, NULL),
(71, 'paises', 'Curazao', 'Curazao / CuraÁao', 54, NULL, NULL, NULL),
(72, 'paises', 'Dinamarca', 'Dinamarca / Denmark', 55, NULL, NULL, NULL),
(73, 'paises', 'Dominica', 'Dominica / Dominica', 56, NULL, NULL, NULL),
(74, 'paises', 'Ecuador', 'Ecuador / Ecuador', 57, NULL, NULL, NULL),
(75, 'paises', 'Egipto', 'Egipto / Egypt', 58, NULL, NULL, NULL),
(76, 'paises', 'El Salvador', 'El Salvador / El Salvador', 59, NULL, NULL, NULL),
(77, 'paises', 'Emiratos ¡rabes Unidos', 'Emiratos ¡rabes Unidos / United Arab Emirates', 60, NULL, NULL, NULL),
(78, 'paises', 'Eritrea', 'Eritrea / Eritrea', 61, NULL, NULL, NULL),
(79, 'paises', 'Eslovaquia', 'Eslovaquia / Slovakia', 62, NULL, NULL, NULL),
(80, 'paises', 'Eslovenia', 'Eslovenia / Slovenia', 63, NULL, NULL, NULL),
(81, 'paises', 'España', 'España / Spain', 64, NULL, NULL, NULL),
(82, 'paises', 'Estados Unidos de AmÈrica', 'Estados Unidos de AmÈrica / United States of America', 65, NULL, NULL, NULL),
(83, 'paises', 'Estonia', 'Estonia / Estonia', 66, NULL, NULL, NULL),
(84, 'paises', 'EtiopÌa', 'EtiopÌa / Ethiopia', 67, NULL, NULL, NULL),
(85, 'paises', 'Filipinas', 'Filipinas / Philippines', 68, NULL, NULL, NULL),
(86, 'paises', 'Finlandia', 'Finlandia / Finland', 69, NULL, NULL, NULL),
(87, 'paises', 'Fiyi', 'Fiyi / Fiji', 70, NULL, NULL, NULL),
(88, 'paises', 'Francia', 'Francia / France', 71, NULL, NULL, NULL),
(89, 'paises', 'Gabon', 'Gabon / Gabon', 72, NULL, NULL, NULL),
(90, 'paises', 'Gambia', 'Gambia / Gambia', 73, NULL, NULL, NULL),
(91, 'paises', 'Georgia', 'Georgia / Georgia', 74, NULL, NULL, NULL),
(92, 'paises', 'Ghana', 'Ghana / Ghana', 75, NULL, NULL, NULL),
(93, 'paises', 'Gibraltar', 'Gibraltar / Gibraltar', 76, NULL, NULL, NULL),
(94, 'paises', 'Granada', 'Granada / Grenada', 77, NULL, NULL, NULL),
(95, 'paises', 'Grecia', 'Grecia / Greece', 78, NULL, NULL, NULL),
(96, 'paises', 'Groenlandia', 'Groenlandia / Greenland', 79, NULL, NULL, NULL),
(97, 'paises', 'Guadalupe', 'Guadalupe / Guadeloupe', 80, NULL, NULL, NULL),
(98, 'paises', 'Guam', 'Guam / Guam', 81, NULL, NULL, NULL),
(99, 'paises', 'Guatemala', 'Guatemala / Guatemala', 82, NULL, NULL, NULL),
(100, 'paises', 'Guayana Francesa', 'Guayana Francesa / French Guiana', 83, NULL, NULL, NULL),
(101, 'paises', 'Guernsey', 'Guernsey / Guernsey', 84, NULL, NULL, NULL),
(102, 'paises', 'Guinea', 'Guinea / Guinea', 85, NULL, NULL, NULL),
(103, 'paises', 'Guinea Ecuatorial', 'Guinea Ecuatorial / Equatorial Guinea', 86, NULL, NULL, NULL),
(104, 'paises', 'Guinea-Bissau', 'Guinea-Bissau / Guinea-Bissau', 87, NULL, NULL, NULL),
(105, 'paises', 'Guyana', 'Guyana / Guyana', 88, NULL, NULL, NULL),
(106, 'paises', 'Haiti', 'Haiti / Haiti', 89, NULL, NULL, NULL),
(107, 'paises', 'Honduras', 'Honduras / Honduras', 90, NULL, NULL, NULL),
(108, 'paises', 'Hong kong', 'Hong kong / Hong Kong', 91, NULL, NULL, NULL),
(109, 'paises', 'Hungria', 'HungrÌa / Hungary', 92, NULL, NULL, NULL),
(110, 'paises', 'India', 'India / India', 93, NULL, NULL, NULL),
(111, 'paises', 'Indonesia', 'Indonesia / Indonesia', 94, NULL, NULL, NULL),
(112, 'paises', 'Iran', 'Iran / Iran', 95, NULL, NULL, NULL),
(113, 'paises', 'Irak', 'Irak / Iraq', 96, NULL, NULL, NULL),
(114, 'paises', 'Irlanda', 'Irlanda / Ireland', 97, NULL, NULL, NULL),
(115, 'paises', 'Isla Bouvet', 'Isla Bouvet / Bouvet Island', 98, NULL, NULL, NULL),
(116, 'paises', 'Isla de Man', 'Isla de Man / Isle of Man', 99, NULL, NULL, NULL),
(117, 'paises', 'Isla de Navidad', 'Isla de Navidad / Christmas Island', 100, NULL, NULL, NULL),
(118, 'paises', 'Isla Norfolk', 'Isla Norfolk / Norfolk Island', 101, NULL, NULL, NULL),
(119, 'paises', 'Islandia', 'Islandia / Iceland', 102, NULL, NULL, NULL),
(120, 'paises', 'Islas Bermudas', 'Islas Bermudas / Bermuda Islands', 103, NULL, NULL, NULL),
(121, 'paises', 'Islas Caiman', 'Islas Caiman / Cayman Islands', 104, NULL, NULL, NULL),
(122, 'paises', 'Islas Cocos (Keeling)', 'Islas Cocos (Keeling) / Cocos (Keeling) Islands', 105, NULL, NULL, NULL),
(123, 'paises', 'Islas Cook', 'Islas Cook / Cook Islands', 106, NULL, NULL, NULL),
(125, 'paises', 'Islas Feroe', 'Islas Feroe / Faroe Islands', 108, NULL, NULL, NULL),
(126, 'paises', 'Islas Georgias del Sur y Sandwich del Sur', 'Islas Georgias del Sur y Sandwich del Sur / South Georgia and the South Sandwich Islands', 109, NULL, NULL, NULL),
(127, 'paises', 'Islas Heard y McDonald', 'Islas Heard y McDonald / Heard Island and McDonald Islands', 110, NULL, NULL, NULL),
(128, 'paises', 'Islas Maldivas', 'Islas Maldivas / Maldives', 111, NULL, NULL, NULL),
(129, 'paises', 'Islas Malvinas', 'Islas Malvinas / Falkland Islands (Malvinas)', 112, NULL, NULL, NULL),
(130, 'paises', 'Islas Marianas del Norte', 'Islas Marianas del Norte / Northern Mariana Islands', 113, NULL, NULL, NULL),
(131, 'paises', 'Islas Marshall', 'Islas Marshall / Marshall Islands', 114, NULL, NULL, NULL),
(132, 'paises', 'Islas Pitcairn', 'Islas Pitcairn / Pitcairn Islands', 115, NULL, NULL, NULL),
(133, 'paises', 'Islas Salomon', 'Islas SalomÛn / Solomon Islands', 116, NULL, NULL, NULL),
(134, 'paises', 'Islas Turcas y Caicos', 'Islas Turcas y Caicos / Turks and Caicos Islands', 117, NULL, NULL, NULL),
(135, 'paises', 'Islas Ultramarinas Menores de Estados Unidos', 'Islas Ultramarinas Menores de Estados Unidos / United States Minor Outlying Islands', 118, NULL, NULL, NULL),
(136, 'paises', 'Islas VÌrgenes Brit·nicas', 'Islas VÌrgenes Brit·nicas / Virgin Islands', 119, NULL, NULL, NULL),
(137, 'paises', 'Islas VÌrgenes de los Estados Unidos', 'Islas VÌrgenes de los Estados Unidos / United States Virgin Islands', 120, NULL, NULL, NULL),
(138, 'paises', 'Israel', 'Israel / Israel', 121, NULL, NULL, NULL),
(139, 'paises', 'Italia', 'Italia / Italy', 122, NULL, NULL, NULL),
(140, 'paises', 'Jamaica', 'Jamaica / Jamaica', 123, NULL, NULL, NULL),
(141, 'paises', 'Japon', 'Japon / Japan', 124, NULL, NULL, NULL),
(142, 'paises', 'Jersey', 'Jersey / Jersey', 125, NULL, NULL, NULL),
(143, 'paises', 'Jordania', 'Jordania / Jordan', 126, NULL, NULL, NULL),
(144, 'paises', 'Kazajist·n', 'Kazajist·n / Kazakhstan', 127, NULL, NULL, NULL),
(145, 'paises', 'Kenia', 'Kenia / Kenya', 128, NULL, NULL, NULL),
(146, 'paises', 'Kirguist·n', 'Kirguist·n / Kyrgyzstan', 129, NULL, NULL, NULL),
(147, 'paises', 'Kiribati', 'Kiribati / Kiribati', 130, NULL, NULL, NULL),
(148, 'paises', 'Kuwait', 'Kuwait / Kuwait', 131, NULL, NULL, NULL),
(149, 'paises', 'LÌbano', 'LÌbano / Lebanon', 132, NULL, NULL, NULL),
(150, 'paises', 'Laos', 'Laos / Laos', 133, NULL, NULL, NULL),
(151, 'paises', 'Lesoto', 'Lesoto / Lesotho', 134, NULL, NULL, NULL),
(152, 'paises', 'Letonia', 'Letonia / Latvia', 135, NULL, NULL, NULL),
(153, 'paises', 'Liberia', 'Liberia / Liberia', 136, NULL, NULL, NULL),
(154, 'paises', 'Libia', 'Libia / Libya', 137, NULL, NULL, NULL),
(155, 'paises', 'Liechtenstein', 'Liechtenstein / Liechtenstein', 138, NULL, NULL, NULL),
(156, 'paises', 'Lituania', 'Lituania / Lithuania', 139, NULL, NULL, NULL),
(157, 'paises', 'Luxemburgo', 'Luxemburgo / Luxembourg', 140, NULL, NULL, NULL),
(158, 'paises', 'Mexico', 'Mexico / Mexico', 141, NULL, NULL, NULL),
(159, 'paises', 'Monaco', 'Monaco / Monaco', 142, NULL, NULL, NULL),
(160, 'paises', 'Macao', 'Macao / Macao', 143, NULL, NULL, NULL),
(161, 'paises', 'Macedonia', 'Macedonia / Macedonia', 144, NULL, NULL, NULL),
(162, 'paises', 'Madagascar', 'Madagascar / Madagascar', 145, NULL, NULL, NULL),
(163, 'paises', 'Malasia', 'Malasia / Malaysia', 146, NULL, NULL, NULL),
(164, 'paises', 'Malawi', 'Malawi / Malawi', 147, NULL, NULL, NULL),
(165, 'paises', 'Mali', 'Mali / Mali', 148, NULL, NULL, NULL),
(166, 'paises', 'Malta', 'Malta / Malta', 149, NULL, NULL, NULL),
(167, 'paises', 'Marruecos', 'Marruecos / Morocco', 150, NULL, NULL, NULL),
(168, 'paises', 'Martinica', 'Martinica / Martinique', 151, NULL, NULL, NULL),
(169, 'paises', 'Mauricio', 'Mauricio / Mauritius', 152, NULL, NULL, NULL),
(170, 'paises', 'Mauritania', 'Mauritania / Mauritania', 153, NULL, NULL, NULL),
(171, 'paises', 'Mayotte', 'Mayotte / Mayotte', 154, NULL, NULL, NULL),
(172, 'paises', 'Micronesia', 'Micronesia / Estados Federados de', 155, NULL, NULL, NULL),
(173, 'paises', 'Moldavia', 'Moldavia / Moldova', 156, NULL, NULL, NULL),
(174, 'paises', 'Mongolia', 'Mongolia / Mongolia', 157, NULL, NULL, NULL),
(175, 'paises', 'Montenegro', 'Montenegro / Montenegro', 158, NULL, NULL, NULL),
(176, 'paises', 'Montserrat', 'Montserrat / Montserrat', 159, NULL, NULL, NULL),
(177, 'paises', 'Mozambique', 'Mozambique / Mozambique', 160, NULL, NULL, NULL),
(178, 'paises', 'Namibia', 'Namibia / Namibia', 161, NULL, NULL, NULL),
(179, 'paises', 'Nauru', 'Nauru / Nauru', 162, NULL, NULL, NULL),
(180, 'paises', 'Nepal', 'Nepal / Nepal', 163, NULL, NULL, NULL),
(181, 'paises', 'Nicaragua', 'Nicaragua / Nicaragua', 164, NULL, NULL, NULL),
(182, 'paises', 'Niger', 'Niger / Niger', 165, NULL, NULL, NULL),
(183, 'paises', 'Nigeria', 'Nigeria / Nigeria', 166, NULL, NULL, NULL),
(184, 'paises', 'Niue', 'Niue / Niue', 167, NULL, NULL, NULL),
(185, 'paises', 'Noruega', 'Noruega / Norway', 168, NULL, NULL, NULL),
(186, 'paises', 'Nueva Caledonia', 'Nueva Caledonia / New Caledonia', 169, NULL, NULL, NULL),
(187, 'paises', 'Nueva Zelanda', 'Nueva Zelanda / New Zealand', 170, NULL, NULL, NULL),
(188, 'paises', 'Oman', 'Oman / Oman', 171, NULL, NULL, NULL),
(189, 'paises', 'Paises Bajos', 'Paises Bajos / Netherlands', 172, NULL, NULL, NULL),
(190, 'paises', 'Pakistan', 'Pakistan / Pakistan', 173, NULL, NULL, NULL),
(191, 'paises', 'Palau', 'Palau / Palau', 174, NULL, NULL, NULL),
(192, 'paises', 'Palestina', 'Palestina / Palestine', 175, NULL, NULL, NULL),
(193, 'paises', 'Panam·', 'Panam· / Panama', 176, NULL, NULL, NULL),
(194, 'paises', 'Papua Nueva Guinea', 'Papua Nueva Guinea / Papua New Guinea', 177, NULL, NULL, NULL),
(195, 'paises', 'Paraguay', 'Paraguay / Paraguay', 178, NULL, NULL, NULL),
(196, 'paises', 'Peru', 'Peru / Peru', 179, NULL, NULL, NULL),
(197, 'paises', 'Polinesia Francesa', 'Polinesia Francesa / French Polynesia', 180, NULL, NULL, NULL),
(198, 'paises', 'Polonia', 'Polonia / Poland', 181, NULL, NULL, NULL),
(199, 'paises', 'Portugal', 'Portugal / Portugal', 182, NULL, NULL, NULL),
(200, 'paises', 'Puerto Rico', 'Puerto Rico / Puerto Rico', 183, NULL, NULL, NULL),
(201, 'paises', 'Qatar', 'Qatar / Qatar', 184, NULL, NULL, NULL),
(202, 'paises', 'Reino Unido', 'Reino Unido / United Kingdom', 185, NULL, NULL, NULL),
(203, 'paises', 'Republica Centroafricana', 'Republica Centroafricana / Central African Republic', 186, NULL, NULL, NULL),
(204, 'paises', 'Republica Checa', 'Republica Checa / Czech Republic', 187, NULL, NULL, NULL),
(205, 'paises', 'Republica Dominicana', 'Republica Dominicana / Dominican Republic', 188, NULL, NULL, NULL),
(206, 'paises', 'Republica de Sudan del Sur', 'Rep˙blica de Sud·n del Sur / South Sudan', 189, NULL, NULL, NULL),
(207, 'paises', 'Reunion', 'Reunion / RÈunion', 190, NULL, NULL, NULL),
(208, 'paises', 'Ruanda', 'Ruanda / Rwanda', 191, NULL, NULL, NULL),
(209, 'paises', 'Rumania', 'Rumania / Romania', 192, NULL, NULL, NULL),
(210, 'paises', 'Rusia', 'Rusia / Russia', 193, NULL, NULL, NULL),
(211, 'paises', 'Sahara Occidental', 'Sahara Occidental / Western Sahara', 194, NULL, NULL, NULL),
(212, 'paises', 'Samoa', 'Samoa / Samoa', 195, NULL, NULL, NULL),
(213, 'paises', 'Samoa Americana', 'Samoa Americana / American Samoa', 196, NULL, NULL, NULL),
(214, 'paises', 'San Bartolome', 'San Bartolome / Saint BarthÈlemy', 197, NULL, NULL, NULL),
(215, 'paises', 'San Cristobal y Nieves', 'San Cristobal y Nieves / Saint Kitts and Nevis', 198, NULL, NULL, NULL),
(216, 'paises', 'San Marino', 'San Marino / San Marino', 199, NULL, NULL, NULL),
(217, 'paises', 'San Martin (Francia)', 'San Martin (Francia) / Saint Martin (French part)', 200, NULL, NULL, NULL),
(218, 'paises', 'San Pedro y Miquelon', 'San Pedro y Miquelon / Saint Pierre and Miquelon', 201, NULL, NULL, NULL),
(219, 'paises', 'San Vicente y las Granadinas', 'San Vicente y las Granadinas / Saint Vincent and the Grenadines', 202, NULL, NULL, NULL),
(220, 'paises', 'Santa Elena', 'Santa Elena / AscensiÛn y Trist·n de AcuÒa', 203, NULL, NULL, NULL),
(221, 'paises', 'Santa Lucia', 'Santa Lucia / Saint Lucia', 204, NULL, NULL, NULL),
(222, 'paises', 'Santo Tome y PrÌncipe', 'Santo Tome y PrÌncipe / Sao Tome and Principe', 205, NULL, NULL, NULL),
(223, 'paises', 'Senegal', 'Senegal / Senegal', 206, NULL, NULL, NULL),
(224, 'paises', 'Serbia', 'Serbia / Serbia', 207, NULL, NULL, NULL),
(225, 'paises', 'Seychelles', 'Seychelles / Seychelles', 208, NULL, NULL, NULL),
(226, 'paises', 'Sierra Leona', 'Sierra Leona / Sierra Leone', 209, NULL, NULL, NULL),
(227, 'paises', 'Singapur', 'Singapur / Singapore', 210, NULL, NULL, NULL),
(228, 'paises', 'Sint Maarten', 'Sint Maarten / Sint Maarten', 211, NULL, NULL, NULL),
(229, 'paises', 'Siria', 'Siria / Syria', 212, NULL, NULL, NULL),
(230, 'paises', 'Somalia', 'Somalia / Somalia', 213, NULL, NULL, NULL),
(231, 'paises', 'Srilanka', 'Srilanka / Sri Lanka', 214, NULL, NULL, NULL),
(232, 'paises', 'Sudafrica', 'Sudafrica / South Africa', 215, NULL, NULL, NULL),
(233, 'paises', 'Sudan', 'Sudan / Sudan', 216, NULL, NULL, NULL),
(234, 'paises', 'Suecia', 'Suecia / Sweden', 217, NULL, NULL, NULL),
(235, 'paises', 'Suiza', 'Suiza / Switzerland', 218, NULL, NULL, NULL),
(236, 'paises', 'Surinam', 'Surinam / Suriname', 219, NULL, NULL, NULL),
(237, 'paises', 'Svalbard y Jan Mayen', 'Svalbard y Jan Mayen / Svalbard and Jan Mayen', 220, NULL, NULL, NULL),
(238, 'paises', 'Swazilandia', 'Swazilandia / Swaziland', 221, NULL, NULL, NULL),
(239, 'paises', 'Tayikistan', 'Tayikistan / Tajikistan', 222, NULL, NULL, NULL),
(240, 'paises', 'Tailandia', 'Tailandia / Thailand', 223, NULL, NULL, NULL),
(241, 'paises', 'Taiwan', 'Taiwan / Taiwan', 224, NULL, NULL, NULL),
(242, 'paises', 'Tanzania', 'Tanzania / Tanzania', 225, NULL, NULL, NULL),
(243, 'paises', 'Territorio Britanico del OcÈano Õndico', 'Territorio Britanico del OcÈano Õndico / British Indian Ocean Territory', 226, NULL, NULL, NULL),
(244, 'paises', 'Territorios Australes y Antarticas Franceses', 'Territorios Australes y Antarticas Franceses / French Southern Territories', 227, NULL, NULL, NULL),
(245, 'paises', 'Timor Oriental', 'Timor Oriental / East Timor', 228, NULL, NULL, NULL),
(246, 'paises', 'Togo', 'Togo / Togo', 229, NULL, NULL, NULL),
(247, 'paises', 'Tokelau', 'Tokelau / Tokelau', 230, NULL, NULL, NULL),
(248, 'paises', 'Tonga', 'Tonga / Tonga', 231, NULL, NULL, NULL),
(249, 'paises', 'Trinidad y Tobago', 'Trinidad y Tobago / Trinidad and Tobago', 232, NULL, NULL, NULL),
(250, 'paises', 'Tunez', 'Tunez / Tunisia', 233, NULL, NULL, NULL),
(251, 'paises', 'Turkmenist·n', 'Turkmenist·n / Turkmenistan', 234, NULL, NULL, NULL),
(252, 'paises', 'TurquÌa', 'TurquÌa / Turkey', 235, NULL, NULL, NULL),
(253, 'paises', 'Tuvalu', 'Tuvalu / Tuvalu', 236, NULL, NULL, NULL),
(254, 'paises', 'Ucrania', 'Ucrania / Ukraine', 237, NULL, NULL, NULL),
(255, 'paises', 'Uganda', 'Uganda / Uganda', 238, NULL, NULL, NULL),
(256, 'paises', 'Uruguay', 'Uruguay / Uruguay', 239, NULL, NULL, NULL),
(257, 'paises', 'Uzbekistan', 'Uzbekistan / Uzbekistan', 240, NULL, NULL, NULL),
(258, 'paises', 'Vanuatu', 'Vanuatu / Vanuatu', 241, NULL, NULL, NULL),
(259, 'paises', 'Venezuela', 'Venezuela / Venezuela', 242, NULL, NULL, NULL),
(260, 'paises', 'Vietnam', 'Vietnam / Vietnam', 243, NULL, NULL, NULL),
(261, 'paises', 'Wallis y Futuna', 'Wallis y Futuna / Wallis and Futuna', 244, NULL, NULL, NULL),
(262, 'paises', 'Yemen', 'Yemen / Yemen', 245, NULL, NULL, NULL),
(263, 'paises', 'Yibuti', 'Yibuti / Djibouti', 246, NULL, NULL, NULL),
(264, 'paises', 'Zambia', 'Zambia / Zambia', 247, NULL, NULL, NULL),
(265, 'paises', 'Zimbabue', 'Zimbabue / Zimbabwe', 248, NULL, NULL, NULL),
(266, 'indicativo', 'Afghanistan', 'Afganistn / Afghanistan - 93', 249, NULL, NULL, NULL),
(267, 'indicativo', 'Albania', 'Albania / Albania - 355', 250, NULL, NULL, NULL),
(268, 'indicativo', 'Alemania', 'Alemania / Germany - 49', 251, NULL, NULL, NULL),
(269, 'indicativo', 'Andorra', 'Andorra / Andorra - 376', 252, NULL, NULL, NULL),
(270, 'indicativo', 'Angola', 'Angola / Angola - 244', 253, NULL, NULL, NULL),
(271, 'indicativo', 'Anguila', 'Anguila / Anguilla', 254, NULL, NULL, NULL),
(272, 'indicativo', 'Antartida', 'Antartida / Antarctica - 672', 255, NULL, NULL, NULL),
(273, 'indicativo', 'Antigua y Barbuda', 'Antigua y Barbuda / Antigua and Barbuda', 256, NULL, NULL, NULL),
(274, 'indicativo', 'Arabia Saudita', 'Arabia Saudita / Saudi Arabia - 966', 257, NULL, NULL, NULL),
(275, 'indicativo', 'Argelia', 'Argelia / Algeria - 213', 258, NULL, NULL, NULL),
(276, 'indicativo', 'Argentina', 'Argentina / Argentina - 54', 259, NULL, NULL, NULL),
(277, 'indicativo', 'Armenia', 'Armenia / Armenia - 374', 260, NULL, NULL, NULL),
(278, 'indicativo', 'Aruba', 'Aruba / Aruba - 297', 261, NULL, NULL, NULL),
(279, 'indicativo', 'Australia', 'Australia / Australia - 61', 262, NULL, NULL, NULL),
(280, 'indicativo', 'Austria', 'Austria / Austria - 43', 263, NULL, NULL, NULL),
(281, 'indicativo', 'Azerbaiyan', 'Azerbaiyan / Azerbaijan - 994', 264, NULL, NULL, NULL),
(282, 'indicativo', 'Belgica', 'Belgica / Belgium - 32', 265, NULL, NULL, NULL),
(283, 'indicativo', 'Bahamas', 'Bahamas / Bahamas', 266, NULL, NULL, NULL),
(284, 'indicativo', 'Bahrein', 'Bahrein / Bahrain - 973', 267, NULL, NULL, NULL),
(285, 'indicativo', 'Bangladesh', 'Bangladesh / Bangladesh - 880', 268, NULL, NULL, NULL),
(286, 'indicativo', 'Barbados', 'Barbados / Barbados', 269, NULL, NULL, NULL),
(287, 'indicativo', 'Belice', 'Belice / Belize - 501', 270, NULL, NULL, NULL),
(288, 'indicativo', 'Benin', 'Benin / Benin - 229', 271, NULL, NULL, NULL),
(289, 'indicativo', 'Bhutan', 'Bhutan / Bhutan - 975', 272, NULL, NULL, NULL),
(290, 'indicativo', 'Bielorrusia', 'Bielorrusia / Belarus - 375', 273, NULL, NULL, NULL),
(291, 'indicativo', 'Birmania', 'Birmania / Myanmar - 95', 274, NULL, NULL, NULL),
(292, 'indicativo', 'Bolivia', 'Bolivia / Bolivia - 591', 275, NULL, NULL, NULL),
(293, 'indicativo', 'Bosnia y Herzegovina', 'Bosnia y Herzegovina / Bosnia and Herzegovina - 387', 276, NULL, NULL, NULL),
(294, 'indicativo', 'Botsuana', 'Botsuana / Botswana - 267', 277, NULL, NULL, NULL),
(295, 'indicativo', 'Brasil', 'Brasil / Brazil - 55', 278, NULL, NULL, NULL),
(296, 'indicativo', 'Brunei', 'Brunei / Brunei - 673', 279, NULL, NULL, NULL),
(297, 'indicativo', 'Bulgaria', 'Bulgaria / Bulgaria - 359', 280, NULL, NULL, NULL),
(298, 'indicativo', 'Burkina Faso', 'Burkina Faso / Burkina Faso - 226', 281, NULL, NULL, NULL),
(299, 'indicativo', 'Burundi', 'Burundi / Burundi - 257', 282, NULL, NULL, NULL),
(300, 'indicativo', 'Cabo Verde', 'Cabo Verde / Cape Verde - 238', 283, NULL, NULL, NULL),
(301, 'indicativo', 'Camboya', 'Camboya / Cambodia - 855', 284, NULL, NULL, NULL),
(302, 'indicativo', 'Camer˙n', 'Camer˙n / Cameroon - 237', 285, NULL, NULL, NULL),
(303, 'indicativo', 'Canada', 'Canada / Canada - 1', 286, NULL, NULL, NULL),
(304, 'indicativo', 'Chad', 'Chad / Chad - 235', 287, NULL, NULL, NULL),
(305, 'indicativo', 'Chile', 'Chile / Chile - 56', 288, NULL, NULL, NULL),
(306, 'indicativo', 'China', 'China / China - 86', 289, NULL, NULL, NULL),
(307, 'indicativo', 'Chipre', 'Chipre / Cyprus - 357', 290, NULL, NULL, NULL),
(308, 'indicativo', 'Ciudad del Vaticano', 'Ciudad del Vaticano / Vatican City State - 39', 291, NULL, NULL, NULL),
(309, 'indicativo', 'Colombia', 'Colombia / Colombia - 57', 292, NULL, NULL, NULL),
(310, 'indicativo', 'Comoras', 'Comoras / Comoros - 269', 293, NULL, NULL, NULL),
(311, 'indicativo', 'Republica del Congo', 'Republica del Congo / Republic of the Congo - 242', 294, NULL, NULL, NULL),
(312, 'indicativo', 'Republica Democratica del Congo', 'Republica Democratica del Congo / Democratic Republic of the Congo - 243', 295, NULL, NULL, NULL),
(313, 'indicativo', 'Corea del Norte', 'Corea del Norte / North Korea - 850', 296, NULL, NULL, NULL),
(314, 'indicativo', 'Corea del Sur', 'Corea del Sur / South Korea - 82', 297, NULL, NULL, NULL),
(315, 'indicativo', 'Costa de Marfil', 'Costa de Marfil / Ivory Coast - 225', 298, NULL, NULL, NULL),
(316, 'indicativo', 'Costa Rica', 'Costa Rica / Costa Rica - 506', 299, NULL, NULL, NULL),
(317, 'indicativo', 'Croacia', 'Croacia / Croatia - 385', 300, NULL, NULL, NULL),
(318, 'indicativo', 'Cuba', 'Cuba / Cuba - 53', 301, NULL, NULL, NULL),
(319, 'indicativo', 'Curazao', 'Curazao / CuraÁao - 5999', 302, NULL, NULL, NULL),
(320, 'indicativo', 'Dinamarca', 'Dinamarca / Denmark - 45', 303, NULL, NULL, NULL),
(321, 'indicativo', 'Dominica', 'Dominica / Dominica', 304, NULL, NULL, NULL),
(322, 'indicativo', 'Ecuador', 'Ecuador / Ecuador - 593', 305, NULL, NULL, NULL),
(323, 'indicativo', 'Egipto', 'Egipto / Egypt - 20', 306, NULL, NULL, NULL),
(324, 'indicativo', 'El Salvador', 'El Salvador / El Salvador - 503', 307, NULL, NULL, NULL),
(325, 'indicativo', 'Emiratos ¡rabes Unidos', 'Emiratos ¡rabes Unidos / United Arab Emirates - 971', 308, NULL, NULL, NULL),
(326, 'indicativo', 'Eritrea', 'Eritrea / Eritrea - 291', 309, NULL, NULL, NULL),
(327, 'indicativo', 'Eslovaquia', 'Eslovaquia / Slovakia - 421', 310, NULL, NULL, NULL),
(328, 'indicativo', 'Eslovenia', 'Eslovenia / Slovenia - 386', 311, NULL, NULL, NULL),
(329, 'indicativo', 'EspaÒa', 'EspaÒa / Spain - 34', 312, NULL, NULL, NULL),
(330, 'indicativo', 'Estados Unidos de America', 'Estados Unidos de America / United States of America - 1', 313, NULL, NULL, NULL),
(331, 'indicativo', 'Estonia', 'Estonia / Estonia - 372', 314, NULL, NULL, NULL),
(332, 'indicativo', 'Etiopia', 'Etiopia / Ethiopia - 251', 315, NULL, NULL, NULL),
(333, 'indicativo', 'Filipinas', 'Filipinas / Philippines - 63', 316, NULL, NULL, NULL),
(334, 'indicativo', 'Finlandia', 'Finlandia / Finland - 358', 317, NULL, NULL, NULL),
(335, 'indicativo', 'Fiyi', 'Fiyi / Fiji - 679', 318, NULL, NULL, NULL),
(336, 'indicativo', 'Francia', 'Francia / France - 33', 319, NULL, NULL, NULL),
(337, 'indicativo', 'Gabon', 'Gabon / Gabon - 241', 320, NULL, NULL, NULL),
(338, 'indicativo', 'Gambia', 'Gambia / Gambia - 220', 321, NULL, NULL, NULL),
(339, 'indicativo', 'Georgia', 'Georgia / Georgia - 995', 322, NULL, NULL, NULL),
(340, 'indicativo', 'Ghana', 'Ghana / Ghana - 233', 323, NULL, NULL, NULL),
(341, 'indicativo', 'Gibraltar', 'Gibraltar / Gibraltar - 350', 324, NULL, NULL, NULL),
(342, 'indicativo', 'Granada', 'Granada / Grenada', 325, NULL, NULL, NULL),
(343, 'indicativo', 'Grecia', 'Grecia / Greece - 30', 326, NULL, NULL, NULL),
(344, 'indicativo', 'Groenlandia', 'Groenlandia / Greenland - 299', 327, NULL, NULL, NULL),
(345, 'indicativo', 'Guadalupe', 'Guadalupe / Guadeloupe - 590', 328, NULL, NULL, NULL),
(346, 'indicativo', 'Guam', 'Guam / Guam', 329, NULL, NULL, NULL),
(347, 'indicativo', 'Guatemala', 'Guatemala / Guatemala - 502', 330, NULL, NULL, NULL),
(348, 'indicativo', 'Guayana Francesa', 'Guayana Francesa / French Guiana - 594', 331, NULL, NULL, NULL),
(349, 'indicativo', 'Guernsey', 'Guernsey / Guernsey - 44', 332, NULL, NULL, NULL),
(350, 'indicativo', 'Guinea', 'Guinea / Guinea - 224', 333, NULL, NULL, NULL),
(351, 'indicativo', 'Guinea Ecuatorial', 'Guinea Ecuatorial / Equatorial Guinea - 240', 334, NULL, NULL, NULL),
(352, 'indicativo', 'Guinea-Bissau', 'Guinea-Bissau / Guinea-Bissau - 245', 335, NULL, NULL, NULL),
(353, 'indicativo', 'Guyana', 'Guyana / Guyana - 592', 336, NULL, NULL, NULL),
(354, 'indicativo', 'Haiti', 'Haiti / Haiti - 509', 337, NULL, NULL, NULL),
(355, 'indicativo', 'Honduras', 'Honduras / Honduras - 504', 338, NULL, NULL, NULL),
(356, 'indicativo', 'Hong kong', 'Hong kong / Hong Kong - 852', 339, NULL, NULL, NULL),
(357, 'indicativo', 'Hungria', 'Hungria / Hungary - 36', 340, NULL, NULL, NULL),
(358, 'indicativo', 'India', 'India / India - 91', 341, NULL, NULL, NULL),
(359, 'indicativo', 'Indonesia', 'Indonesia / Indonesia - 62', 342, NULL, NULL, NULL),
(360, 'indicativo', 'Iran', 'Iran / Iran - 98', 343, NULL, NULL, NULL),
(361, 'indicativo', 'Irak', 'Irak / Iraq - 964', 344, NULL, NULL, NULL),
(362, 'indicativo', 'Irlanda', 'Irlanda / Ireland - 353', 345, NULL, NULL, NULL),
(363, 'indicativo', 'Isla Bouvet', 'Isla Bouvet / Bouvet Island', 346, NULL, NULL, NULL),
(364, 'indicativo', 'Isla de Man', 'Isla de Man / Isle of Man - 44', 347, NULL, NULL, NULL),
(365, 'indicativo', 'Isla de Navidad', 'Isla de Navidad / Christmas Island - 61', 348, NULL, NULL, NULL),
(366, 'indicativo', 'Isla Norfolk', 'Isla Norfolk / Norfolk Island - 672', 349, NULL, NULL, NULL),
(367, 'indicativo', 'Islandia', 'Islandia / Iceland - 354', 350, NULL, NULL, NULL),
(368, 'indicativo', 'Islas Bermudas', 'Islas Bermudas / Bermuda Islands', 351, NULL, NULL, NULL),
(369, 'indicativo', 'Islas Caiman', 'Islas Caiman / Cayman Islands', 352, NULL, NULL, NULL),
(370, 'indicativo', 'Islas Cocos (Keeling)', 'Islas Cocos (Keeling) / Cocos (Keeling) Islands - 61', 353, NULL, NULL, NULL),
(371, 'indicativo', 'Islas Cook', 'Islas Cook / Cook Islands - 682', 354, NULL, NULL, NULL),
(372, 'indicativo', 'Islas de ≈land', 'Islas de ≈land / ≈land Islands - 358', 355, NULL, NULL, NULL),
(373, 'indicativo', 'Islas Feroe', 'Islas Feroe / Faroe Islands - 298', 356, NULL, NULL, NULL),
(374, 'indicativo', 'Islas Georgias del Sur y Sandwich del Sur', 'Islas Georgias del Sur y Sandwich del Sur / South Georgia and the South Sandwich Islands - 500', 357, NULL, NULL, NULL),
(375, 'indicativo', 'Islas Heard y McDonald', 'Islas Heard y McDonald / Heard Island and McDonald Islands', 358, NULL, NULL, NULL),
(376, 'indicativo', 'Islas Maldivas', 'Islas Maldivas / Maldives - 960', 359, NULL, NULL, NULL),
(377, 'indicativo', 'Islas Malvinas', 'Islas Malvinas / Falkland Islands (Malvinas) - 500', 360, NULL, NULL, NULL),
(378, 'indicativo', 'Islas Marianas del Norte', 'Islas Marianas del Norte / Northern Mariana Islands', 361, NULL, NULL, NULL),
(379, 'indicativo', 'Islas Marshall', 'Islas Marshall / Marshall Islands - 692', 362, NULL, NULL, NULL),
(380, 'indicativo', 'Islas Pitcairn', 'Islas Pitcairn / Pitcairn Islands - 870', 363, NULL, NULL, NULL),
(381, 'indicativo', 'Islas Salomon', 'Islas Salomon / Solomon Islands - 677', 364, NULL, NULL, NULL),
(382, 'indicativo', 'Islas Turcas y Caicos', 'Islas Turcas y Caicos / Turks and Caicos Islands', 365, NULL, NULL, NULL),
(383, 'indicativo', 'Islas Ultramarinas Menores de Estados Unidos', 'Islas Ultramarinas Menores de Estados Unidos / United States Minor Outlying Islands - 246', 366, NULL, NULL, NULL),
(384, 'indicativo', 'Islas Virgenes Britanicas', 'Islas Virgenes Britanicas / Virgin Islands', 367, NULL, NULL, NULL),
(385, 'indicativo', 'Islas Virgenes de los Estados Unidos', 'Islas Virgenes de los Estados Unidos / United States Virgin Islands', 368, NULL, NULL, NULL),
(386, 'indicativo', 'Israel', 'Israel / Israel - 972', 369, NULL, NULL, NULL),
(387, 'indicativo', 'Italia', 'Italia / Italy - 39', 370, NULL, NULL, NULL),
(388, 'indicativo', 'Jamaica', 'Jamaica / Jamaica', 371, NULL, NULL, NULL),
(389, 'indicativo', 'Japon', 'Japon / Japan - 81', 372, NULL, NULL, NULL),
(390, 'indicativo', 'Jersey', 'Jersey / Jersey - 44', 373, NULL, NULL, NULL),
(391, 'indicativo', 'Jordania', 'Jordania / Jordan - 962', 374, NULL, NULL, NULL),
(392, 'indicativo', 'Kazajistan', 'Kazajistan / Kazakhstan - 7', 375, NULL, NULL, NULL),
(393, 'indicativo', 'Kenia', 'Kenia / Kenya - 254', 376, NULL, NULL, NULL),
(394, 'indicativo', 'Kirguistan', 'Kirguistan / Kyrgyzstan - 996', 377, NULL, NULL, NULL),
(395, 'indicativo', 'Kiribati', 'Kiribati / Kiribati - 686', 378, NULL, NULL, NULL),
(396, 'indicativo', 'Kuwait', 'Kuwait / Kuwait - 965', 379, NULL, NULL, NULL),
(397, 'indicativo', 'Libano', 'Libano / Lebanon - 961', 380, NULL, NULL, NULL),
(398, 'indicativo', 'Laos', 'Laos / Laos - 856', 381, NULL, NULL, NULL),
(399, 'indicativo', 'Lesoto', 'Lesoto / Lesotho - 266', 382, NULL, NULL, NULL),
(400, 'indicativo', 'Letonia', 'Letonia / Latvia - 371', 383, NULL, NULL, NULL),
(401, 'indicativo', 'Liberia', 'Liberia / Liberia - 231', 384, NULL, NULL, NULL),
(402, 'indicativo', 'Libia', 'Libia / Libya - 218', 385, NULL, NULL, NULL),
(403, 'indicativo', 'Liechtenstein', 'Liechtenstein / Liechtenstein - 423', 386, NULL, NULL, NULL),
(404, 'indicativo', 'Lituania', 'Lituania / Lithuania - 370', 387, NULL, NULL, NULL),
(405, 'indicativo', 'Luxemburgo', 'Luxemburgo / Luxembourg - 352', 388, NULL, NULL, NULL),
(406, 'indicativo', 'Mexico', 'Mexico / Mexico - 52', 389, NULL, NULL, NULL),
(407, 'indicativo', 'Monaco', 'Monaco / Monaco - 377', 390, NULL, NULL, NULL),
(408, 'indicativo', 'Macao', 'Macao / Macao - 853', 391, NULL, NULL, NULL),
(409, 'indicativo', 'MacedÙnia', 'MacedÙnia / Macedonia - 389', 392, NULL, NULL, NULL),
(410, 'indicativo', 'Madagascar', 'Madagascar / Madagascar - 261', 393, NULL, NULL, NULL),
(411, 'indicativo', 'Malasia', 'Malasia / Malaysia - 60', 394, NULL, NULL, NULL),
(412, 'indicativo', 'Malawi', 'Malawi / Malawi - 265', 395, NULL, NULL, NULL),
(413, 'indicativo', 'Mali', 'Mali / Mali - 223', 396, NULL, NULL, NULL),
(414, 'indicativo', 'Malta', 'Malta / Malta - 356', 397, NULL, NULL, NULL),
(415, 'indicativo', 'Marruecos', 'Marruecos / Morocco - 212', 398, NULL, NULL, NULL),
(416, 'indicativo', 'Martinica', 'Martinica / Martinique - 596', 399, NULL, NULL, NULL),
(417, 'indicativo', 'Mauricio', 'Mauricio / Mauritius - 230', 400, NULL, NULL, NULL),
(418, 'indicativo', 'Mauritania', 'Mauritania / Mauritania - 222', 401, NULL, NULL, NULL),
(419, 'indicativo', 'Mayotte', 'Mayotte / Mayotte - 262', 402, NULL, NULL, NULL),
(420, 'indicativo', 'Micronesia', 'Micronesia / Estados Federados de - 691', 403, NULL, NULL, NULL),
(421, 'indicativo', 'Moldavia', 'Moldavia / Moldova - 373', 404, NULL, NULL, NULL),
(422, 'indicativo', 'Mongolia', 'Mongolia / Mongolia - 976', 405, NULL, NULL, NULL),
(423, 'indicativo', 'Montenegro', 'Montenegro / Montenegro - 382', 406, NULL, NULL, NULL),
(424, 'indicativo', 'Montserrat', 'Montserrat / Montserrat', 407, NULL, NULL, NULL),
(425, 'indicativo', 'Mozambique', 'Mozambique / Mozambique - 258', 408, NULL, NULL, NULL),
(426, 'indicativo', 'Namibia', 'Namibia / Namibia - 264', 409, NULL, NULL, NULL),
(427, 'indicativo', 'Nauru', 'Nauru / Nauru - 674', 410, NULL, NULL, NULL),
(428, 'indicativo', 'Nepal', 'Nepal / Nepal - 977', 411, NULL, NULL, NULL),
(429, 'indicativo', 'Nicaragua', 'Nicaragua / Nicaragua - 505', 412, NULL, NULL, NULL),
(430, 'indicativo', 'Niger', 'Niger / Niger - 227', 413, NULL, NULL, NULL),
(431, 'indicativo', 'Nigeria', 'Nigeria / Nigeria - 234', 414, NULL, NULL, NULL),
(432, 'indicativo', 'Niue', 'Niue / Niue - 683', 415, NULL, NULL, NULL),
(433, 'indicativo', 'Noruega', 'Noruega / Norway - 47', 416, NULL, NULL, NULL),
(434, 'indicativo', 'Nueva Caledonia', 'Nueva Caledonia / New Caledonia - 687', 417, NULL, NULL, NULL),
(435, 'indicativo', 'Nueva Zelanda', 'Nueva Zelanda / New Zealand - 64', 418, NULL, NULL, NULL),
(436, 'indicativo', 'Oman', 'Oman / Oman - 968', 419, NULL, NULL, NULL),
(437, 'indicativo', 'Paises Bajos', 'Paises Bajos / Netherlands - 31', 420, NULL, NULL, NULL),
(438, 'indicativo', 'Pakistan', 'Pakistan / Pakistan - 92', 421, NULL, NULL, NULL),
(439, 'indicativo', 'Palau', 'Palau / Palau - 680', 422, NULL, NULL, NULL),
(440, 'indicativo', 'Palestina', 'Palestina / Palestine - 970', 423, NULL, NULL, NULL),
(441, 'indicativo', 'Panama', 'Panama / Panama - 507', 424, NULL, NULL, NULL),
(442, 'indicativo', 'Pap˙a Nueva Guinea', 'Pap˙a Nueva Guinea / Papua New Guinea - 675', 425, NULL, NULL, NULL),
(443, 'indicativo', 'Paraguay', 'Paraguay / Paraguay - 595', 426, NULL, NULL, NULL),
(444, 'indicativo', 'Per˙', 'Per˙ / Peru - 51', 427, NULL, NULL, NULL),
(445, 'indicativo', 'Polinesia Francesa', 'Polinesia Francesa / French Polynesia - 689', 428, NULL, NULL, NULL),
(446, 'indicativo', 'Polonia', 'Polonia / Poland - 48', 429, NULL, NULL, NULL),
(447, 'indicativo', 'Portugal', 'Portugal / Portugal - 351', 430, NULL, NULL, NULL),
(448, 'indicativo', 'Puerto Rico', 'Puerto Rico / Puerto Rico - 1', 431, NULL, NULL, NULL),
(449, 'indicativo', 'Qatar', 'Qatar / Qatar - 974', 432, NULL, NULL, NULL),
(450, 'indicativo', 'Reino Unido', 'Reino Unido / United Kingdom - 44', 433, NULL, NULL, NULL),
(451, 'indicativo', 'Republica Centroafricana', 'Republica Centroafricana / Central African Republic - 236', 434, NULL, NULL, NULL),
(452, 'indicativo', 'Republica Checa', 'Republica Checa / Czech Republic - 420', 435, NULL, NULL, NULL),
(453, 'indicativo', 'Republica Dominicana', 'Republica Dominicana / Dominican Republic', 436, NULL, NULL, NULL),
(454, 'indicativo', 'Republica de Sudan del Sur', 'Republica de Sudan del Sur / South Sudan - 211', 437, NULL, NULL, NULL),
(455, 'indicativo', 'Reunion', 'Reunion / Reunion - 262', 438, NULL, NULL, NULL),
(456, 'indicativo', 'Ruanda', 'Ruanda / Rwanda - 250', 439, NULL, NULL, NULL),
(457, 'indicativo', 'Rumania', 'Rumania / Romania - 40', 440, NULL, NULL, NULL),
(458, 'indicativo', 'Rusia', 'Rusia / Russia - 7', 441, NULL, NULL, NULL),
(459, 'indicativo', 'Sahara Occidental', 'Sahara Occidental / Western Sahara - 212', 442, NULL, NULL, NULL),
(460, 'indicativo', 'Samoa', 'Samoa / Samoa - 685', 443, NULL, NULL, NULL),
(461, 'indicativo', 'Samoa Americana', 'Samoa Americana / American Samoa', 444, NULL, NULL, NULL),
(462, 'indicativo', 'San Bartolome', 'San Bartolome / Saint Barthelemy - 590', 445, NULL, NULL, NULL),
(463, 'indicativo', 'San Cristobal y Nieves', 'San Cristobal y Nieves / Saint Kitts and Nevis', 446, NULL, NULL, NULL),
(464, 'indicativo', 'San Marino', 'San Marino / San Marino - 378', 447, NULL, NULL, NULL),
(465, 'indicativo', 'San Martin (Francia)', 'San Martin (Francia) / Saint Martin (French part)', 448, NULL, NULL, NULL),
(466, 'indicativo', 'San Pedro y Miquelon', 'San Pedro y Miquelon / Saint Pierre and Miquelon - 508', 449, NULL, NULL, NULL),
(467, 'indicativo', 'San Vicente y las Granadinas', 'San Vicente y las Granadinas / Saint Vincent and the Grenadines', 450, NULL, NULL, NULL),
(468, 'indicativo', 'Santa Elena', 'Santa Elena / Ascension y Tristan de AcuÒa - 290', 451, NULL, NULL, NULL),
(469, 'indicativo', 'Santa Lucia', 'Santa Lucia / Saint Lucia', 452, NULL, NULL, NULL),
(470, 'indicativo', 'Santo Tome y Principe', 'Santo Tome y Principe / Sao Tome and Principe - 239', 453, NULL, NULL, NULL),
(471, 'indicativo', 'Senegal', 'Senegal / Senegal - 221', 454, NULL, NULL, NULL),
(472, 'indicativo', 'Serbia', 'Serbia / Serbia - 381', 455, NULL, NULL, NULL),
(473, 'indicativo', 'Seychelles', 'Seychelles / Seychelles - 248', 456, NULL, NULL, NULL),
(474, 'indicativo', 'Sierra Leona', 'Sierra Leona / Sierra Leone - 232', 457, NULL, NULL, NULL),
(475, 'indicativo', 'Singapur', 'Singapur / Singapore - 65', 458, NULL, NULL, NULL),
(476, 'indicativo', 'Sint Maarten', 'Sint Maarten / Sint Maarten', 459, NULL, NULL, NULL),
(477, 'indicativo', 'Siria', 'Siria / Syria - 963', 460, NULL, NULL, NULL),
(478, 'indicativo', 'Somalia', 'Somalia / Somalia - 252', 461, NULL, NULL, NULL),
(479, 'indicativo', 'Sri lanka', 'Sri lanka / Sri Lanka - 94', 462, NULL, NULL, NULL),
(480, 'indicativo', 'Sudafrica', 'Sudafrica / South Africa - 27', 463, NULL, NULL, NULL),
(481, 'indicativo', 'Sudan', 'Sudan / Sudan - 249', 464, NULL, NULL, NULL),
(482, 'indicativo', 'Suecia', 'Suecia / Sweden - 46', 465, NULL, NULL, NULL),
(483, 'indicativo', 'Suiza', 'Suiza / Switzerland - 41', 466, NULL, NULL, NULL),
(484, 'indicativo', 'Surinam', 'Surinam / Suriname - 597', 467, NULL, NULL, NULL),
(485, 'indicativo', 'Svalbard y Jan Mayen', 'Svalbard y Jan Mayen / Svalbard and Jan Mayen - 47', 468, NULL, NULL, NULL),
(486, 'indicativo', 'Swazilandia', 'Swazilandia / Swaziland - 268', 469, NULL, NULL, NULL),
(487, 'indicativo', 'Tayikistan', 'Tayikistan / Tajikistan - 992', 470, NULL, NULL, NULL),
(488, 'indicativo', 'Tailandia', 'Tailandia / Thailand - 66', 471, NULL, NULL, NULL),
(489, 'indicativo', 'Taiwan', 'Taiwan / Taiwan - 886', 472, NULL, NULL, NULL),
(490, 'indicativo', 'Tanzania', 'Tanzania / Tanzania - 255', 473, NULL, NULL, NULL),
(491, 'indicativo', 'Territorio Britanico del Oceano Õndico', 'Territorio Britanico del Oceano Õndico / British Indian Ocean Territory - 246', 474, NULL, NULL, NULL),
(492, 'indicativo', 'Territorios Australes y Antarticas Franceses', 'Territorios Australes y Antarticas Franceses / French Southern Territories', 475, NULL, NULL, NULL),
(493, 'indicativo', 'Timor Oriental', 'Timor Oriental / East Timor - 670', 476, NULL, NULL, NULL),
(494, 'indicativo', 'Togo', 'Togo / Togo - 228', 477, NULL, NULL, NULL),
(495, 'indicativo', 'Tokelau', 'Tokelau / Tokelau - 690', 478, NULL, NULL, NULL),
(496, 'indicativo', 'Tonga', 'Tonga / Tonga - 676', 479, NULL, NULL, NULL),
(497, 'indicativo', 'Trinidad y Tobago', 'Trinidad y Tobago / Trinidad and Tobago', 480, NULL, NULL, NULL),
(498, 'indicativo', 'Tunez', 'Tunez / Tunisia - 216', 481, NULL, NULL, NULL),
(499, 'indicativo', 'Turkmenistan', 'Turkmenistan / Turkmenistan - 993', 482, NULL, NULL, NULL),
(500, 'indicativo', 'Turquia', 'Turquia / Turkey - 90', 483, NULL, NULL, NULL),
(501, 'indicativo', 'Tuvalu', 'Tuvalu / Tuvalu - 688', 484, NULL, NULL, NULL),
(502, 'indicativo', 'Ucrania', 'Ucrania / Ukraine - 380', 485, NULL, NULL, NULL),
(503, 'indicativo', 'Uganda', 'Uganda / Uganda - 256', 486, NULL, NULL, NULL),
(504, 'indicativo', 'Uruguay', 'Uruguay / Uruguay - 598', 487, NULL, NULL, NULL),
(505, 'indicativo', 'Uzbekistan', 'Uzbekistan / Uzbekistan - 998', 488, NULL, NULL, NULL),
(506, 'indicativo', 'Vanuatu', 'Vanuatu / Vanuatu - 678', 489, NULL, NULL, NULL),
(507, 'indicativo', 'Venezuela', 'Venezuela / Venezuela - 58', 490, NULL, NULL, NULL),
(508, 'indicativo', 'Vietnam', 'Vietnam / Vietnam - 84', 491, NULL, NULL, NULL),
(509, 'indicativo', 'Wallis y Futuna', 'Wallis y Futuna / Wallis and Futuna - 681', 492, NULL, NULL, NULL),
(510, 'indicativo', 'Yemen', 'Yemen / Yemen - 967', 493, NULL, NULL, NULL),
(511, 'indicativo', 'Yibuti', 'Yibuti / Djibouti - 253', 494, NULL, NULL, NULL),
(512, 'indicativo', 'Zambia', 'Zambia / Zambia - 260', 495, NULL, NULL, NULL),
(513, 'indicativo', 'Zimbabue', 'Zimbabue / Zimbabwe - 263', 496, NULL, NULL, NULL),
(514, 'ciudades', 'Pereira', 'Pereira', 2, NULL, NULL, NULL),
(515, 'ciudades', 'Pasto', 'Pasto', 3, NULL, NULL, NULL),
(516, 'ciudades', 'Santa Marta', 'Santa Marta', 4, NULL, NULL, NULL),
(521, 'estadoacreditacion', '1', 'Enviado', 1, NULL, NULL, NULL),
(522, 'estadoacreditacion', '5', 'En Ajuste', 2, NULL, NULL, NULL),
(523, 'estadoacreditacion', '2', 'Aprobado con pago', 3, NULL, NULL, NULL),
(524, 'estadoacreditacion', '3', 'Pagado', 4, NULL, NULL, NULL),
(525, 'estadoacreditacion', '4', 'Rechazado', 4, NULL, NULL, NULL),
(526, 'tipodoc', '1', 'Cédula de ciudadanía / ID card of citizenship', 1, NULL, NULL, NULL),
(527, 'tipodoc', '2', 'Cédula de extranjería / Foreigners identification card', 2, NULL, NULL, NULL),
(528, 'tipodoc', '3', 'Pasaporte / Passport', 3, NULL, NULL, NULL),
(529, 'localidad', '1', 'Usaquén', 1, NULL, NULL, NULL),
(530, 'localidad', '2', 'Chapinero', 2, NULL, NULL, NULL),
(531, 'localidad', '3', 'San Cristobal', 3, NULL, NULL, NULL),
(532, 'localidad', '4', 'Usme', 4, NULL, NULL, NULL),
(533, 'localidad', '5', 'Tunjuelito', 5, NULL, NULL, NULL),
(534, 'localidad', '6', 'Bosa', 6, NULL, NULL, NULL),
(535, 'localidad', '7', 'Kennedy', 7, NULL, NULL, NULL),
(536, 'localidad', '8', 'Fontibón', 8, NULL, NULL, NULL),
(537, 'localidad', '9', 'Engativá', 9, NULL, NULL, NULL),
(538, 'localidad', '10', 'Suba', 10, NULL, NULL, NULL),
(539, 'localidad', '11', 'Barrios Unidos', 11, NULL, NULL, NULL),
(540, 'localidad', '12', 'Teusaquillo', 12, NULL, NULL, NULL),
(541, 'localidad', '13', 'Los Mártires', 13, NULL, NULL, NULL),
(542, 'localidad', '14', 'Antonio Nariño', 14, NULL, NULL, NULL),
(543, 'localidad', '15', 'Puente Aranda', 15, NULL, NULL, NULL),
(544, 'localidad', '16', 'La Candelaria', 16, NULL, NULL, NULL),
(545, 'localidad', '17', 'Rafael Uribe Uribe', 17, NULL, NULL, NULL),
(546, 'localidad', '18', 'Ciudad Bolívar', 18, NULL, NULL, NULL),
(547, 'localidad', '19', 'Sumapáz', 19, NULL, NULL, NULL),
(548, 'estratos', '1', 'Estrato 1', 1, NULL, NULL, NULL),
(549, 'estratos', '2', 'Estrato 2', 2, NULL, NULL, NULL),
(550, 'estratos', '3', 'Estrato 3', 3, NULL, NULL, NULL),
(551, 'estratos', '4', 'Estrato 4', 4, NULL, NULL, NULL),
(552, 'estratos', '5', 'Estrato 5', 5, NULL, NULL, NULL),
(553, 'estratos', '6', 'Estrato 6', 6, NULL, NULL, NULL),
(554, 'estratos', '7', 'refiero no responder', 7, NULL, NULL, NULL),
(555, 'sexo', '1', 'Hombre', 1, NULL, NULL, NULL),
(556, 'sexo', '2', 'Mujer', 2, NULL, NULL, NULL),
(557, 'sexo', '3', 'Indeterminado', 3, NULL, NULL, NULL),
(558, 'sexo', '4', 'Prefiero no responder', 4, NULL, NULL, NULL),
(559, 'identidadgen', '1', 'Hombre', 1, NULL, NULL, NULL),
(560, 'identidadgen', '2', 'Mujer', 2, NULL, NULL, NULL),
(561, 'identidadgen', '3', 'No binario', 3, NULL, NULL, NULL),
(562, 'identidadgen', '4', 'Mujer-trans', 4, NULL, NULL, NULL),
(563, 'identidadgen', '5', 'Hombre-trans', 5, NULL, NULL, NULL),
(564, 'identidadgen', '6', 'Otro', 6, NULL, NULL, NULL),
(565, 'identidadgen', '7', 'Prefiero no responder', 7, NULL, NULL, NULL),
(566, 'etnia', '1', 'Indígena', 1, NULL, NULL, NULL),
(567, 'etnia', '2', 'NARP', 2, NULL, NULL, NULL),
(568, 'etnia', '3', 'Rrom', 3, NULL, NULL, NULL),
(569, 'etnia', '4', 'Ninguno', 4, NULL, NULL, NULL),
(570, 'tipoacreditado', '1', 'Representante de una empresa ', 1, NULL, NULL, NULL),
(571, 'tipoacreditado', '2', 'Profesional Independiente', 2, NULL, NULL, NULL),
(572, 'tipoacreditado', '3', 'Prensa', 3, NULL, NULL, NULL),
(573, 'idioma', '1', 'Español', 1, NULL, NULL, NULL),
(574, 'idioma', '2', 'Inglés', 2, NULL, NULL, NULL),
(575, 'sino', '0', 'No', 0, NULL, NULL, NULL),
(576, 'sino', '1', 'Si', 1, NULL, NULL, NULL),
(577, 'ciudadparticipo', 'Armenia', 'Armenia', 1, NULL, NULL, NULL),
(578, 'ciudadparticipo', 'Barranquilla', 'Barranquilla', 2, NULL, NULL, NULL),
(579, 'ciudadparticipo', 'Bucaramanga', 'Bucaramanga', 3, NULL, NULL, NULL),
(580, 'ciudadparticipo', 'Leticia', 'Leticia', 4, NULL, NULL, NULL),
(581, 'ciudadparticipo', 'MedellÌn', 'MedellÌn', 5, NULL, NULL, NULL),
(582, 'ciudadparticipo', 'Riohacha', 'Riohacha', 6, NULL, NULL, NULL),
(583, 'ciudadparticipo', 'Tunja', 'Tunja', 7, NULL, NULL, NULL),
(584, 'ciudadparticipo', 'Villavicencio', 'Villavicencio', 8, NULL, NULL, NULL),
(585, 'profesional', '1', 'Abogado / Lawyer', 1, NULL, NULL, NULL),
(586, 'profesional', '2', 'Académico - Investigador-Profesor / Researcher-Professor', 2, NULL, NULL, NULL),
(587, 'profesional', '3', 'Actor/ Actor / Actress', 3, NULL, NULL, NULL),
(588, 'profesional', '4', 'Artista / Artist', 4, NULL, NULL, NULL),
(589, 'profesional', '5', 'Animador / Animator', 5, NULL, NULL, NULL),
(590, 'profesional', '6', 'Camarógrafo / Cameramen', 6, NULL, NULL, NULL),
(591, 'profesional', '7', 'Compositor / Composer', 7, NULL, NULL, NULL),
(592, 'profesional', '8', 'Director / Director', 8, NULL, NULL, NULL),
(593, 'profesional', '9', 'Director de fotografía / Cinematographer', 9, NULL, NULL, NULL),
(594, 'profesional', '10', 'Director de arte / Art director', 10, NULL, NULL, NULL),
(595, 'profesional', '11', 'Diseñador de sonido-Sonidista / Sound designer', 11, NULL, NULL, NULL),
(596, 'profesional', '12', 'Diseñador gráfico/Graphic designer', 12, NULL, NULL, NULL),
(597, 'profesional', '13', 'Editor / Editor', 13, NULL, NULL, NULL),
(598, 'profesional', '14', 'Gestor cultural / Cultural Manager', 14, NULL, NULL, NULL),
(599, 'profesional', '15', 'Guionista / Scriptwriter', 15, NULL, NULL, NULL),
(600, 'profesional', '16', 'Manager de talentos / Talent manager', 16, NULL, NULL, NULL),
(601, 'profesional', '17', 'Maquillista-Vestuarista / Make-up artist-Custom designer', 17, NULL, NULL, NULL),
(602, 'profesional', '18', 'Equipo técnico / Technician', 18, NULL, NULL, NULL),
(603, 'profesional', '19', 'Postproductor / Postproducer', 19, NULL, NULL, NULL),
(604, 'profesional', '20', 'Productor /    Producer', 20, NULL, NULL, NULL),
(605, 'profesional', '21', 'Relacionista   público / PR', 21, NULL, NULL, NULL),
(606, 'profesional', '22', 'Representante de festival / Festival delegate', 22, NULL, NULL, NULL),
(607, 'profesional', '23', 'Comunicación / Communication and Marketing', 23, NULL, NULL, NULL),
(608, 'profesional', '24', 'Comunicación / Communication and Marketing', 24, NULL, NULL, '2024-07-03 17:02:38'),
(609, 'formaparticipacion', '1', 'Representante de una empresa', 1, NULL, NULL, NULL),
(610, 'formaparticipacion', '2', 'Profesional independiente', 2, NULL, NULL, NULL),
(611, 'formaparticipacion', '3', 'Prensa', 3, NULL, NULL, NULL),
(612, 'profesional', '25', 'Periodista / Journalist', 25, NULL, NULL, NULL),
(613, 'actividadempresa', '16', 'Agente de ventas', 1, NULL, NULL, NULL),
(614, 'actividadempresa', '1', 'Canal de TV', 2, NULL, NULL, NULL),
(615, 'actividadempresa', '2', 'Casa de renta de equipos', 3, NULL, NULL, NULL),
(616, 'actividadempresa', '3', 'Distribución, exhibición, circulación', 4, NULL, NULL, NULL),
(617, 'actividadempresa', '4', 'Educación', 5, NULL, NULL, NULL),
(618, 'actividadempresa', '5', 'Estudio de animación', 6, NULL, NULL, NULL),
(619, 'actividadempresa', '6', 'Festival - evento cultural', 7, NULL, NULL, NULL),
(620, 'actividadempresa', '7', 'Institución - organización cultural', 8, NULL, NULL, NULL),
(621, 'actividadempresa', '8', 'Marketing y comunicaciones', 9, NULL, NULL, NULL),
(622, 'actividadempresa', '9', 'Nuevos medios', 10, NULL, NULL, NULL),
(623, 'actividadempresa', '10', 'Postproducción de video', 11, NULL, NULL, NULL),
(624, 'actividadempresa', '100', 'Postproducción de audio', 12, NULL, NULL, NULL),
(625, 'actividadempresa', '11', 'Producción audiovisual', 13, NULL, NULL, NULL);
INSERT INTO `parametros` (`cod_pra`, `nom_para`, `val_op_para`, `nom_op_para`, `ord_para`, `created_at`, `updated_at`, `deleted_at`) VALUES
(626, 'actividadempresa', '12', 'Servicios de producción', 14, NULL, NULL, NULL),
(627, 'actividadempresa', '13', 'Servicios jurídicos', 15, NULL, NULL, NULL),
(628, 'actividadempresa', '14', 'Plataforma VOD', 17, NULL, NULL, NULL),
(629, 'actividadempresa', '15', 'Otro', 18, NULL, NULL, NULL),
(630, 'interebam', '1', 'Conseguir empresas productoras para coproducción de proy.', 1, NULL, NULL, NULL),
(631, 'interebam', '2', 'Conseguir un Agente de ventas para un proyecto.', 2, NULL, NULL, NULL),
(632, 'interebam', '3', 'Conseguir un Canal de televisión o Plataforma VOD para un proyecto', 3, NULL, NULL, NULL),
(633, 'interebam', '4', 'Conseguir un Festival para la muestra de un proyecto.', 4, NULL, NULL, NULL),
(634, 'interebam', '5', 'Conseguir una compañía de servicios audiovisuales para un proyecto.', 5, NULL, NULL, NULL),
(635, 'interebam', '6', 'Garantizar un Fondo para la financiación de un proyecto.', 6, NULL, NULL, NULL),
(636, 'interebam', '7', 'Conocer otros agentes del sector audiovisual para ampliar su rede de contactos.', 7, NULL, NULL, NULL),
(637, 'interebam', '8', 'Actualizarse sobre las tendencias de producción, distribución y circulación de contenidos audiovisuales.', 8, NULL, NULL, NULL),
(638, 'interebam', '9', 'Otro', 9, NULL, NULL, NULL),
(639, 'territorios', '1', 'África', 1, NULL, NULL, NULL),
(640, 'territorios', '2', 'Asia', 2, NULL, NULL, NULL),
(641, 'territorios', '3', 'Europa occidental', 3, NULL, NULL, NULL),
(642, 'territorios', '4', 'Europa oriental', 4, NULL, NULL, NULL),
(643, 'territorios', '5', 'Latinoamérica', 5, NULL, NULL, NULL),
(644, 'territorios', '8', 'Medio oriente', 8, NULL, NULL, NULL),
(645, 'territorios', '7', 'Norteamérica', 10, NULL, NULL, NULL),
(646, 'territorios', '6', 'Oceanía', 11, NULL, NULL, NULL),
(647, 'estadoacreditacion', '10', 'Aprobado Sin pago', 10, NULL, NULL, NULL),
(648, 'plantillaevento', '1', 'Una Columna', 1, NULL, NULL, NULL),
(649, 'plantillaevento', '2', 'Dos Columnas', 2, NULL, NULL, NULL),
(650, 'ciudadparticipo', 'Cali', 'Cali', 10, NULL, NULL, NULL),
(651, 'ciudadparticipo', 'Pereira', 'Pereira', 11, NULL, NULL, NULL),
(652, 'ciudadparticipo', 'Pasto', 'Pasto', 12, NULL, NULL, NULL),
(653, 'ciudadparticipo', 'Santa Marta', 'Santa Marta', 13, NULL, NULL, NULL),
(681, 'horasdia', '1', '1 A.M.', 1, NULL, NULL, NULL),
(682, 'horasdia', '2', '2 A.M.', 2, NULL, NULL, NULL),
(683, 'horasdia', '3', '3 A.M.', 3, NULL, NULL, NULL),
(684, 'horasdia', '4', '4 A.M.', 4, NULL, NULL, NULL),
(685, 'horasdia', '5', '5 A.M.', 5, NULL, NULL, NULL),
(686, 'horasdia', '6', '6 A.M.', 6, NULL, NULL, NULL),
(687, 'horasdia', '7', '7 A.M.', 7, NULL, NULL, NULL),
(688, 'horasdia', '8', '8 A.M.', 8, NULL, NULL, NULL),
(689, 'horasdia', '9', '9 A.M.', 9, NULL, NULL, NULL),
(690, 'horasdia', '10', '10 A.M.', 10, NULL, NULL, NULL),
(691, 'horasdia', '11', '11 A.M.', 11, NULL, NULL, NULL),
(692, 'horasdia', '12', '12 P.M.', 12, NULL, NULL, NULL),
(693, 'horasdia', '13', '1 P.M.', 13, NULL, NULL, NULL),
(694, 'horasdia', '14', '2 P.M.', 14, NULL, NULL, NULL),
(695, 'horasdia', '15', '3 P.M.', 15, NULL, NULL, NULL),
(696, 'horasdia', '16', '4 P.M.', 16, NULL, NULL, NULL),
(697, 'horasdia', '17', '5 P.M.', 17, NULL, NULL, NULL),
(698, 'horasdia', '18', '6 P.M.', 18, NULL, NULL, NULL),
(699, 'horasdia', '19', '7 P.M.', 19, NULL, NULL, NULL),
(700, 'horasdia', '20', '8 P.M.', 20, NULL, NULL, NULL),
(701, 'horasdia', '21', '9 P.M.', 21, NULL, NULL, NULL),
(702, 'horasdia', '22', '10 P.M.', 22, NULL, NULL, NULL),
(703, 'horasdia', '23', '11 P.M.', 23, NULL, NULL, NULL),
(704, 'horasdia', '24', '12 A.M.', 24, NULL, NULL, NULL),
(705, 'minutosdia', '0', '00', 0, NULL, NULL, NULL),
(706, 'minutosdia', '2', '02', 2, NULL, NULL, NULL),
(707, 'minutosdia', '3', '03', 3, NULL, NULL, NULL),
(708, 'minutosdia', '4', '04', 4, NULL, NULL, NULL),
(709, 'minutosdia', '5', '05', 5, NULL, NULL, NULL),
(710, 'minutosdia', '6', '06', 6, NULL, NULL, NULL),
(711, 'minutosdia', '7', '07', 7, NULL, NULL, NULL),
(712, 'minutosdia', '8', '08', 8, NULL, NULL, NULL),
(713, 'minutosdia', '9', '09', 9, NULL, NULL, NULL),
(714, 'minutosdia', '10', '10', 10, NULL, NULL, NULL),
(715, 'minutosdia', '11', '11', 11, NULL, NULL, NULL),
(716, 'minutosdia', '12', '12', 12, NULL, NULL, NULL),
(717, 'minutosdia', '13', '13', 13, NULL, NULL, NULL),
(718, 'minutosdia', '14', '14', 14, NULL, NULL, NULL),
(719, 'minutosdia', '15', '15', 15, NULL, NULL, NULL),
(720, 'minutosdia', '16', '16', 16, NULL, NULL, NULL),
(721, 'minutosdia', '17', '17', 17, NULL, NULL, NULL),
(722, 'minutosdia', '18', '18', 18, NULL, NULL, NULL),
(723, 'minutosdia', '19', '19', 19, NULL, NULL, NULL),
(724, 'minutosdia', '20', '20', 20, NULL, NULL, NULL),
(725, 'minutosdia', '21', '21', 21, NULL, NULL, NULL),
(726, 'minutosdia', '22', '22', 22, NULL, NULL, NULL),
(727, 'minutosdia', '23', '23', 23, NULL, NULL, NULL),
(728, 'minutosdia', '24', '24', 24, NULL, NULL, NULL),
(729, 'minutosdia', '25', '25', 25, NULL, NULL, NULL),
(730, 'minutosdia', '26', '26', 26, NULL, NULL, NULL),
(731, 'minutosdia', '27', '27', 27, NULL, NULL, NULL),
(732, 'minutosdia', '28', '28', 28, NULL, NULL, NULL),
(733, 'minutosdia', '29', '29', 29, NULL, NULL, NULL),
(734, 'minutosdia', '30', '30', 30, NULL, NULL, NULL),
(735, 'minutosdia', '31', '31', 31, NULL, NULL, NULL),
(736, 'minutosdia', '32', '32', 32, NULL, NULL, NULL),
(737, 'minutosdia', '33', '33', 33, NULL, NULL, NULL),
(738, 'minutosdia', '34', '34', 34, NULL, NULL, NULL),
(739, 'minutosdia', '35', '35', 35, NULL, NULL, NULL),
(740, 'minutosdia', '36', '36', 36, NULL, NULL, NULL),
(741, 'minutosdia', '37', '37', 37, NULL, NULL, NULL),
(742, 'minutosdia', '38', '38', 38, NULL, NULL, NULL),
(743, 'minutosdia', '39', '39', 39, NULL, NULL, NULL),
(744, 'minutosdia', '40', '40', 40, NULL, NULL, NULL),
(745, 'minutosdia', '41', '41', 41, NULL, NULL, NULL),
(746, 'minutosdia', '42', '42', 42, NULL, NULL, NULL),
(747, 'minutosdia', '43', '43', 43, NULL, NULL, NULL),
(748, 'minutosdia', '44', '44', 44, NULL, NULL, NULL),
(749, 'minutosdia', '45', '45', 45, NULL, NULL, NULL),
(750, 'minutosdia', '46', '46', 46, NULL, NULL, NULL),
(751, 'minutosdia', '47', '47', 47, NULL, NULL, NULL),
(752, 'minutosdia', '48', '48', 48, NULL, NULL, NULL),
(753, 'minutosdia', '49', '49', 49, NULL, NULL, NULL),
(754, 'minutosdia', '50', '50', 50, NULL, NULL, NULL),
(755, 'minutosdia', '51', '51', 51, NULL, NULL, NULL),
(756, 'minutosdia', '52', '52', 52, NULL, NULL, NULL),
(757, 'minutosdia', '53', '53', 53, NULL, NULL, NULL),
(758, 'minutosdia', '54', '54', 54, NULL, NULL, NULL),
(759, 'minutosdia', '55', '55', 55, NULL, NULL, NULL),
(760, 'minutosdia', '56', '56', 56, NULL, NULL, NULL),
(761, 'minutosdia', '57', '57', 57, NULL, NULL, NULL),
(762, 'minutosdia', '58', '58', 58, NULL, NULL, NULL),
(763, 'minutosdia', '59', '59', 59, NULL, NULL, NULL),
(765, 'minutosdia', '1', '01', 0, NULL, NULL, NULL),
(766, 'profesional', '33', 'Vestuarista / Artist-Custom designer', 33, NULL, NULL, NULL),
(767, 'profesional', '31', 'Maquillista / Make-up', 31, NULL, NULL, NULL),
(768, 'profesional', '30', 'Distribuidor / Distributor', 30, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participanbam`
--

CREATE TABLE `participanbam` (
  `cod_par` int(11) NOT NULL,
  `tit_par` varchar(250) DEFAULT NULL COMMENT 'titulo',
  `des_par` varchar(250) DEFAULT NULL COMMENT 'descripcion',
  `tit_par_ing` varchar(250) DEFAULT NULL COMMENT 'titulo',
  `des_par_ing` varchar(250) DEFAULT NULL COMMENT 'descripcion',
  `img_par` varchar(250) DEFAULT NULL COMMENT 'imagen',
  `ord_par` int(11) DEFAULT NULL COMMENT 'orden',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `participanbam`
--

INSERT INTO `participanbam` (`cod_par`, `tit_par`, `des_par`, `tit_par_ing`, `des_par_ing`, `img_par`, `ord_par`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Realizadores y productores audiovisuales', 'Independientes y empresas con al menos un contenido en desarrollo o finalizado, residentes en la ciudad anfitriona o en municipios y/o ciudades cercanas a la misma.', NULL, NULL, 'https://bogotamarket.com/images/site/1676766151_3890ca07917be959f363.png', 1, NULL, '2023-02-18 18:22:33', NULL),
(2, 'Estudiantes de áreas relacionadas con el audiovisual y la comunicación', 'Vinculados a instituciones de educación superior de la ciudad anfitriona o municipios y/o ciudades cercanas a la misma.\r\n', NULL, NULL, 'https://bogotamarket.com/images/site/1676766215_231ae07b02bd3e8040a6.png', 2, NULL, '2023-02-18 18:23:37', NULL),
(3, 'Otros actores vinculados al gremio audiovisual\r\n\r\n', 'Creadores, productores, diferentes oficios técnicos y artísticos del audiovisual, agentes de la circulación y exhibición, académicos, entre otros.\r\n\r\n', NULL, NULL, 'https://bogotamarket.com/images/site/1676766225_08954fb737014dd36d35.png', 3, NULL, '2023-02-18 18:23:47', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida`
--

CREATE TABLE `partida` (
  `cod_par` int(11) NOT NULL,
  `nom_par` varchar(50) NOT NULL,
  `fac_par` varchar(5) NOT NULL COMMENT 'factor de la partida',
  `cod_cap_par` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `usu_acce` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `partida`
--

INSERT INTO `partida` (`cod_par`, `nom_par`, `fac_par`, `cod_cap_par`, `created_at`, `updated_at`, `usu_acce`, `deleted_at`) VALUES
(1, 'partida test ', '1.2', 6, '2022-05-17 18:59:34', '2022-07-06 14:34:58', NULL, NULL),
(2, 'SUMINISTRO E INSTALACIÓN DE SALIDAS ELÉCTRICAS NOR', '1.5', 1, '2022-05-18 19:27:55', '2022-06-14 16:21:33', NULL, NULL),
(3, 'qqqq', '1', 2, '2022-07-11 16:29:24', '2022-09-07 12:13:56', NULL, NULL),
(4, 'SUMINISTRO E INSTALACIÓN DE SALIDAS ELÉCTRICAS NOR', '1', 2, '2022-07-12 15:53:08', '2022-07-12 15:53:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `cod_per` int(11) NOT NULL,
  `nom_per` varchar(50) NOT NULL,
  `fec_crea` datetime NOT NULL COMMENT 'fechade creacion',
  `fec_modif` datetime NOT NULL COMMENT 'fecha ultima modificacion',
  `usu_acce` int(11) NOT NULL COMMENT 'ultimo usuario en usar',
  `reg_eli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`cod_per`, `nom_per`, `fec_crea`, `fec_modif`, `usu_acce`, `reg_eli`) VALUES
(1, 'Administrador sitio', '2012-09-26 07:10:25', '2019-10-31 08:51:14', 38, 0),
(2, 'Editor', '2013-01-28 02:46:07', '2013-01-28 02:46:07', 181, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `cod_pla` int(11) NOT NULL,
  `nom_pla` varchar(50) NOT NULL,
  `fac_pla` varchar(5) NOT NULL COMMENT 'factor de la subpartida',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `usu_acce` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`cod_pla`, `nom_pla`, `fac_pla`, `created_at`, `updated_at`, `usu_acce`, `deleted_at`) VALUES
(29, 'SUMINISTRO E INSTALACIÓN DE CANALIZACIÓN CON TUBER', '0', '2022-11-08 11:50:58', '2025-09-23 18:07:49', NULL, NULL),
(30, 'SUMINISTRO E INSTALACIÓN DE PUNTOS DE VOZ Y DATOS ', '0', '2022-12-28 16:09:36', '2023-03-10 14:41:00', NULL, NULL),
(31, 'T EMT  3/4', '0', '2023-07-26 14:59:46', '2023-07-26 15:05:35', NULL, '2023-07-26 15:05:35'),
(32, 'T EMT 3/4', '0', '2023-07-26 15:05:50', '2023-07-26 15:06:44', NULL, NULL),
(33, 'EMT - 2', '0', '2023-07-26 15:10:01', '2023-07-26 15:10:28', NULL, NULL),
(34, '1111114444-3333', '1.5', '2025-07-23 20:06:02', '2025-09-23 18:08:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prensa`
--

CREATE TABLE `prensa` (
  `cod_pre` int(11) NOT NULL,
  `tip_pre` int(11) DEFAULT NULL COMMENT '1 nowslatter  - 2 comunjicado',
  `lin_pre` varchar(250) DEFAULT NULL COMMENT 'url referecia',
  `tit_pre` varchar(250) DEFAULT NULL COMMENT 'titulo',
  `sti_pre` varchar(250) DEFAULT NULL COMMENT 'subtitulo',
  `des_pre` varchar(250) DEFAULT NULL COMMENT 'descripcion',
  `tit_pre_ing` varchar(250) DEFAULT NULL COMMENT 'titulo',
  `sti_pre_ing` varchar(250) DEFAULT NULL COMMENT 'subtitulo',
  `des_pre_ing` varchar(250) DEFAULT NULL COMMENT 'descripcion',
  `fec_pre` varchar(250) DEFAULT NULL COMMENT 'fecha',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `prensa`
--

INSERT INTO `prensa` (`cod_pre`, `tip_pre`, `lin_pre`, `tit_pre`, `sti_pre`, `des_pre`, `tit_pre_ing`, `sti_pre_ing`, `des_pre_ing`, `fec_pre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'https://mailchi.mp/bogotamarket/convocatorias-abiertas-bam-2022', 'Bogotá Audiovisual Market 2022', '¡EL MUNDO ES DE LOS QUE INSISTEN!', 'El Bogotá Audiovisual Market - BAM, el mercado audiovisual más importante de Colombia, regresa en este 2022 apostándole al crecimiento del sector y a la consolidación de una industria sólida y sostenible. Queremos seguir siendo ese punto donde la cre', NULL, NULL, NULL, 'martes 8 de marzo 2022', NULL, '2024-06-17 11:16:41', '2024-06-17 11:16:41'),
(2, 1, 'https://mailchi.mp/bogotamarket/convocatorias-primera-etapa-hasta-el-7-de-abril', 'BAM 2022 PRIMERA ETAPA', 'Atención sector audiovisual', 'Para este 2022, el BAM busca impulsar a creadores, empresarios y talentos, técnicos y artísticos, a seguir adelante con sus historias y proyectos para que puedan ser contados a través de imágenes en movimiento. Del 11 al 16 de julio, Bogotá se transf', NULL, NULL, NULL, 'lunes 28 de marzo 2022', NULL, '2024-06-17 11:16:44', '2024-06-17 11:16:44'),
(3, 1, 'https://mailchi.mp/bogotamarket/segunda-etapa-de-convocatorias-bam-2022', 'BAM 2022 SEGUNDA ETAPA DE CONVOCATORIAS', 'Programación Tunja - Miércoles 14', 'Para jovenes talentos, que cuentan con un proyecto en desarrollo para largometraje, cortometraje o contenido seriado sin importar su género.', NULL, NULL, NULL, 'sábado 23 de abril 2022', NULL, '2024-06-17 11:16:46', '2024-06-17 11:16:46'),
(4, 1, 'https://mailchi.mp/bogotamarket/ampliamos-el-plazo-de-la-convocatoria-bammers', 'BAM 2022 AMPLIAMOS FECHA DE CONVOCATORIA BAMMERS', 'Programación Tunja - Martes 13', 'Ampliamos el plazo de postulación a la convocatoria Bammers hasta el 5 de mayo.', NULL, NULL, NULL, 'jueves 28 de abril 2022', NULL, '2024-06-17 11:16:49', '2024-06-17 11:16:49'),
(5, 1, 'https://mailchi.mp/bogotamarket/bam-en-las-regiones-regresa', 'BAM 2022 ¡BAM EN LAS REGIONES REGRESA!', 'lunes 16 de mayo 2022', 'El mercado audiovisual más importante del país llega al eje cafetero', NULL, NULL, NULL, 'lunes 16 de mayo 2022', NULL, '2024-06-17 11:16:52', '2024-06-17 11:16:52'),
(6, 1, 'https://mailchi.mp/bogotamarket/abiertas-las-acreditaciones-bam-2022', 'BAM 2022 ACREDITACIONES ABIERTAS', '\nAgenda', 'El mundo es de los que insisten', NULL, NULL, NULL, 'miércoles 1 de junio 2022', NULL, '2024-06-17 11:16:54', '2024-06-17 11:16:54'),
(7, 1, 'https://mailchi.mp/bogotamarket/bam-2022-invitados', 'BAM 2022 INVITADOS', 'Generalidades BAM', 'El Bogotá Audiovisual Market invita a los profesionales del sector audiovisual a acreditarse para participar en su edición número 13, del 11 al 16 de julio.', NULL, NULL, NULL, 'miércoles 15 de junio 2022', NULL, '2024-06-17 11:16:57', '2024-06-17 11:16:57'),
(8, 1, 'https://mailchi.mp/bogotamarket/preprense-para-el-bam-2022', 'BAM 2022 AGENDAMIENTO ABIERTO', '¡Abrimos nuestra etapa de agendamiento!', 'El Bogotá Audiovisual Market le da la bienvenida a todos los profesionales del sector que se acreditaron para participar en su edición número 13, que se llevará a cabo del 11 al 13 de julio 100% VIRTUAL y del 14 al 16 de julio 100% PRESENCIAL.', NULL, NULL, NULL, 'viernes 1 de julio 2022', NULL, '2024-06-17 11:16:59', '2024-06-17 11:16:59'),
(9, 2, '44', '111', '222', '333', '66', '77', '88', '55', '2022-12-12 14:09:40', '2022-12-12 14:10:07', '2022-12-12 14:10:07'),
(10, 1, 'https://mailchi.mp/bogotamarket/bam-2022-agndese', 'BAM 2022 ¡AGÉNDESE!', '¿Cómo agendar mis reuniones?', 'El Bogotá Audiovisual Market le da la bienvenida a todos los profesionales del sector que se acreditaron para participar en su edición número 13, que se llevará a cabo del 11 al 13 de julio 100% VIRTUAL y del 14 al 16 de julio 100% PRESENCIAL.', NULL, NULL, NULL, 'martes 5 de julio 2022', '2022-12-14 17:18:37', '2024-06-17 11:17:02', '2024-06-17 11:17:02'),
(11, 1, 'https://mailchi.mp/bogotamarket/regstrese-a-nuestros-talleres-y-bam-brunchs', 'BAM 2022 REGÍSTRESE A NUESTROS TALLERES Y BAM BRUNCHS', '¡Regístrese a los Talleres y Brunchs del BAM!', 'Durante la semana del Bogotá Audiovisual Market la programación académica no solo tendrá páneles y conferencias con las tendencias más disruptivas de la industria audiovisual y las conversaciones más necesarias, sino que también tendremos dos de tall', NULL, NULL, NULL, 'miércoles 6 de julio 2022', '2022-12-14 17:19:34', '2024-06-17 11:17:04', '2024-06-17 11:17:04'),
(12, 1, 'https://mailchi.mp/bogotamarket/conozca-nuestros-market-sessions', 'BAM 2022 MARKET SESSIONS ', 'Conozca nuestra programación de Market Sessions', 'En nuestra sede de industria de la Cámara de Comercio de Bogotá, se llevarán a cabo actividades de formación especializada para seleccionados por convocatoria, espacios de relacionamiento con invitados, y encuentros de industria: los Market Sessions.', NULL, NULL, NULL, 'viernes 8 de julio 2022', '2022-12-14 17:20:20', '2024-06-17 11:17:07', '2024-06-17 11:17:07'),
(13, 1, 'https://mailchi.mp/bogotamarket/asista-a-las-actividades-virtuales-del-bam', 'BAM 2022 ¡ASISTA A LAS ACTIVIDADES VIRTUALES DEL BAM!', '¡ASISTA A LAS ACTIVIDADES VIRTUALES DEL BAM!', 'El BAM arranca el próximo lunes 11 de julio en un formato mixto: virtual (lunes 11 al miércoles 13 de julio) y presencial (jueves 14 al sábado 16 de julio), con una completa oferta de actividades académicas, de networking y encuentros de industria, e', NULL, NULL, NULL, 'sábado 9 de julio 2022', '2022-12-14 17:21:16', '2024-06-17 11:17:09', '2024-06-17 11:17:09'),
(14, 1, 'https://mailchi.mp/bogotamarket/maana-empieza-el-bam-virtual', 'BAM 2022 MAÑANA EMPIEZA EL BAM VIRTUAL', 'MAÑANA EMPIEZA EL BAM VIRTUAL', '¡Mañana empieza la decimotercera edición del Bogotá Audiovisual Market! Esperamos que disfrute de todas las actividades que el BAM ha preparado para este año y pueda aprovechar al máximo de esta semana. Por favor recuerde: ', NULL, NULL, NULL, 'domingo 10 de julio 2022', '2022-12-14 17:22:02', '2024-06-17 11:17:12', '2024-06-17 11:17:12'),
(15, 1, 'https://mailchi.mp/bogotamarket/hoy-empieza-el-bam-virtual-programacin-lunes-11-de-julio', 'BAM 2022 HOY EMPIEZA EL BAM VIRTUAL', 'LUNES 11 DE JULIO ', '¡Hoy empieza la decimotercera edición del Bogotá Audiovisual Market! Arrancamos con nuestra programación virtual del lunes 11 de julio.', NULL, NULL, NULL, 'lunes 11 de julio 2022', '2022-12-14 17:22:50', '2024-06-17 11:17:14', '2024-06-17 11:17:14'),
(16, 1, 'https://mailchi.mp/bogotamarket/hoy-en-bam-programacin-martes-12-de-julio', 'BAM 2022 PROGRAMACIÓN MARTES 12 DE JULIO-1', 'MARTES 12 DE JULIO', 'PROGRAMACIÓN VIRTUAL \\nMARTES 12 DE JULIO', NULL, NULL, NULL, 'martes 12 de julio 2022', '2022-12-14 17:23:27', '2024-06-17 11:17:17', '2024-06-17 11:17:17'),
(17, 1, 'https://mailchi.mp/bogotamarket/invitation-to-the-dine-shine-at-bam-2022-24asb02he8', 'BAM 2022 DINE AND SHINE', 'Dine & Shine', 'An exclusive dinner with the most outstanding professionals of the local and international audiovisual industry', NULL, NULL, NULL, 'martes 12 de julio 2022', '2022-12-14 17:25:54', '2024-06-17 11:17:20', '2024-06-17 11:17:20'),
(18, 1, 'https://drive.google.com/file/d/133KH3hAkNUEyyH4-VRxvRYd_1nQGwH0h/view', 'BAM 2022 INDUSTRY GUIDE', 'Descargue el industry guide', 'Descargue el Industry Guide', NULL, NULL, NULL, 'martes 12 de julio 2022', '2022-12-14 17:29:05', '2024-06-17 11:17:23', '2024-06-17 11:17:23'),
(19, 1, 'https://drive.google.com/file/d/1hwb3tMMs1HgcdEzQqnDiDchrykS7yuAp/view?usp=sharing', 'BAM 2022 PROGRAMACIÓN MIÉRCOLES 13 DE JULIO', 'Miércoles 13 de julio', 'Programación virtual', NULL, NULL, NULL, 'miércoles 13 de julio 2022', '2022-12-14 17:30:10', '2024-06-17 11:17:26', '2024-06-17 11:17:26'),
(20, 1, 'https://mailchi.mp/bogotamarket/agndate-para-el-consejo-ampliado-del-sector-audiovisual', 'BAM 2022 CLUSTER', 'Cluster de industrias creativas y de contenidos', 'Consejo ampliado del clúster ICC de la Cámara de Comercio de Bogotá', NULL, NULL, NULL, 'miércoles 13 de julio 2022', '2022-12-14 17:31:33', '2024-06-17 11:17:28', '2024-06-17 11:17:28'),
(21, 1, 'https://drive.google.com/file/d/12lyycQsI3HUs3JAm4_I9S-lxcWg-KKxH/view?usp=sharing', 'BAM 2022 PROGRAMACIÓN JUEVES 14 DE JULIO', 'Jueves 14 de julio', 'Programación presencial', NULL, NULL, NULL, 'jueves 14 de julio 2022', '2022-12-14 17:32:38', '2024-06-17 11:17:31', '2024-06-17 11:17:31'),
(22, 1, 'https://drive.google.com/file/d/1OuABY3ldqr4WNRUNS0Qze52mGNr5yYth/view?usp=sharing', 'BAM 2022 HAPPY HOUR Y BAM NIGHT PROGRAMACIÓN NOCTURNA ', 'Happy hour jueves', 'El Bogotá Audiovisual Market - BAM y El Cluster de Industrias Creativas de la Cámara de Comercio de Bogotá Invitan', NULL, NULL, NULL, 'jueves 14 de julio 2022', '2022-12-14 17:34:20', '2024-06-17 11:17:35', '2024-06-17 11:17:35'),
(23, 1, 'https://mailchi.mp/bogotamarket/hoy-en-el-bam-programacin-viernes-15-de-julio', 'BAM 2022 PROGRAMACIÓN VIERNES 15 DE JULIO', 'Programación viernes 15 de julio', 'Prográmese y encontrémonos para hacer BAM', NULL, NULL, NULL, 'viernes 15 de julio 2022', '2022-12-14 17:35:53', '2024-06-17 11:17:38', '2024-06-17 11:17:38'),
(24, 1, 'https://drive.google.com/file/d/1xA8b_RSY_IO_lPdW7V5K_mKPk0mkfU0l/view?usp=sharing', 'BAM 2022 ÚLTIMO DÍA PROGRAMACIÓN SÁBADO 16 DE JULIO', 'Sábado 16 de julio', 'Visite los stands Big TOP', NULL, NULL, NULL, 'sábado 16 de julio 2022', '2022-12-14 17:36:45', '2024-06-17 11:17:41', '2024-06-17 11:17:41'),
(25, 1, 'https://drive.google.com/file/d/1RrYR4SCrOEzIDBfeoQIGNZ9ocesr82Ne/view?usp=sharing', 'BAM 2022 FIESTA DE CLAUSURA BAM - PROGRAMACIÓN NOCTURNA', 'Programación nocturna', 'Lanzamiento aula móvil de cine', NULL, NULL, NULL, 'sábado 16 de julio 2022', '2022-12-14 17:37:42', '2024-06-17 11:17:44', '2024-06-17 11:17:44'),
(26, 1, 'https://drive.google.com/file/d/1xS9zdyCiu2wbONX0SxCI7LsX0jp1ILy1/view?usp=sharing', 'BAM 2022 GRACIAS A TODOS POR HACER ¡BAM!', 'Gracias por hacer BAM', NULL, NULL, NULL, NULL, 'martes 19 de julio 2022', '2022-12-14 17:38:42', '2024-06-17 11:17:47', '2024-06-17 11:17:47'),
(27, 1, 'https://drive.google.com/file/d/15xsWdr3-fbdn0VKdzX7L96VaCOoZQgl3/view?usp=sharing', 'BAM 2022 ¡SEGUIMOS HACIENDO BAM!', 'Gracias por hacer BAM', 'Desde el Bogotá Audiovisual Market le agradecemos a todos los que participaron en su decimotercera edición, y le apostaron a hacer BAM!', NULL, NULL, NULL, 'jueves 28 de julio 2022', '2022-12-14 17:40:26', '2024-06-17 11:17:50', '2024-06-17 11:17:50'),
(28, 1, 'https://mailchi.mp/bogotamarket/gracias-a-nuestros-aliados-por-hacer-bam-con-nosotros', 'BAM 2022 GRACIAS A NUESTROS ALIADOS', 'Gracias', 'El mundo es de los que insisten', NULL, NULL, NULL, 'jueves 11 de agosto 2022', '2022-12-14 17:41:06', '2024-06-17 11:17:53', '2024-06-17 11:17:53'),
(29, 1, 'https://mailchi.mp/bogotamarket/el-bam-llega-a-tunja-acredtese-desde-ya', 'BAM 2022 BAM TUNJA ', 'BAm Tunja', 'En la segunda edición del BAM en las Regiones, Proimágenes Colombia, con el apoyo del Ministerio de Tecnologías de la Información y las Comunicaciones MinTIC y Teveandina y junto a nuestros anfitriones: Gobernación de Boyacá - Secretaría de Cultura y', NULL, NULL, NULL, 'martes 30 de agosto 2022', '2022-12-14 17:41:55', '2024-06-17 11:17:56', '2024-06-17 11:17:56'),
(30, 1, 'https://mailchi.mp/bogotamarket/hoy-en-bam-tunja-programacin-lunes-12-de-septiembre', 'BAM 2022 BAM TUNJA PROGRAMACIÓN LUNES 12 DE SEPTIEMBRE 2022', 'Programación', 'DESTACADOS LUNES 12 DE SEPTIEMBRE', NULL, NULL, NULL, 'lunes 12 de septiembre 2022', '2022-12-14 17:42:52', '2024-06-17 11:17:59', '2024-06-17 11:17:59'),
(31, 1, 'https://mailchi.mp/bogotamarket/hoy-en-bam-tunja-programacin-martes-13-de-septiembre', 'BAM 2022 BAM TUNJA PROGRAMACIÓN MARTES 13 DE SEPTIEMBRE 2022 ', 'Martes 13 de septiembre', 'DESTACADOS', NULL, NULL, NULL, 'martes 13 de septiembre 2022', '2022-12-14 17:43:38', '2024-06-17 11:18:02', '2024-06-17 11:18:02'),
(32, 1, 'https://mailchi.mp/bogotamarket/hoy-en-bam-tunja-programacin-mircoles-14-de-septiembre', 'BAM 2022 BAM TUNJA PROGRAMACIÓN MIERCOLES 14 DE SEPTIEMBRE 2022 ', 'Miércoles 14 de septiembre', 'DESTACADOS', NULL, NULL, NULL, 'miércoles 14 de septiembre 2022', '2022-12-14 17:44:19', '2024-06-17 11:18:05', '2024-06-17 11:18:05'),
(33, 1, 'https://mailchi.mp/bogotamarket/hoy-en-bam-tunja-programacin-jueves-15-de-septiembre', 'BAM 2022 BAM TUNJA PROGRAMACIÓN JUEVES 15 DE SEPTIEMBRE 2022 ', 'Jueves 15 de septiembre', 'DESTACADOS', NULL, NULL, NULL, 'jueves 15 de septiembre 2022', '2022-12-14 17:45:00', '2024-06-17 11:18:08', '2024-06-17 11:18:08'),
(34, 1, 'https://mailchi.mp/bogotamarket/ltimo-da-bam-tunja-programacin-viernes-16-de-septiembre', 'BAM 2022 BAM TUNJA PROGRAMACIÓN VIERNES 16 DE SEPTIEMBRE 2022 ', 'Viernes 16 de septiembre', 'DESTACADOS', NULL, NULL, NULL, 'viernes 16 de septiembre 2022', '2022-12-14 17:45:44', '2024-06-17 11:18:20', '2024-06-17 11:18:20'),
(35, 2, 'https://drive.google.com/file/d/1ZqWzNrt4J5s0-pgLP8MgGxdmEsOu4ld0/view?usp=sharing', 'BAM 2022 PRIMERA ETAPA CONVOCATORIAS ', 'Abierta la primera etapa de convocatorias para el BAM 2022', 'La primera etapa de convocatorias para ser parte de la edición número 13 del BAM estará\nabierta hasta el 7 de abril de 2022.', NULL, NULL, NULL, 'marzo 2022', '2022-12-14 17:46:28', '2024-06-17 11:19:01', '2024-06-17 11:19:01'),
(36, 2, 'https://drive.google.com/file/d/10PgfspWWa31o4mInoMDg2PWX4IlNLyPa/view?usp=sharing', 'BAM 2022 SEGUNDA ETAPA CONVOCATORIAS ', 'Abierta la segunda etapa de convocatorias para el BAM 2022', 'La segunda etapa de convocatorias para ser parte de la edición número 13 del BAM estará\nabierta hasta el 28 de abril de 2022.', NULL, NULL, NULL, 'abril 2022', '2022-12-14 17:47:21', '2024-06-17 11:19:04', '2024-06-17 11:19:04'),
(37, 2, 'https://drive.google.com/file/d/12JqqfEvtIfy6VVb-9K6RtdMivwKZx-3f/view?usp=sharing', 'BAM 2022 BAM ARMENIA ', 'BAM EN LAS REGIONES', 'El Bogotá Audiovisual Market viaja a nuevas ciudades de Colombia en 2022.', NULL, NULL, NULL, 'junio 2022', '2022-12-14 17:48:03', '2024-06-17 11:19:07', '2024-06-17 11:19:07'),
(38, 2, 'https://drive.google.com/file/d/1gpyDCtDdaHdTvEs3t_81zV4bK3pvky76/view?usp=sharing', 'BAM 2022 GENERALIDADES BAM ', 'Bogotá Audiovisual Market 2022: El mundo es de los que insisten', 'La edición número 13 del BAM se llevará a cabo del 11 al 16 de julio de 2022.', NULL, NULL, NULL, 'junio 2022', '2022-12-14 17:48:44', '2024-06-17 11:19:10', '2024-06-17 11:19:10'),
(39, 2, 'https://drive.google.com/file/d/1E3jC5Sr9AlMHGvnbolqkkKn7OKTQU7xb/view?usp=sharing', 'BAM 2022 AGENDA ', 'Conozca la agenda del BAM y prográmese', 'La edición número 13 del BAM ofrecerá a partir de hoy y hasta el 13 de julio una\nprogramación virtual, y, del 14 al 16 de julio, una programación presencial.', NULL, NULL, NULL, 'julio 2022', '2022-12-14 17:49:23', '2024-06-17 11:19:12', '2024-06-17 11:19:12'),
(40, 2, 'https://drive.google.com/file/d/1P_u4bvLUzA0-eTR-uijFfHltab0S2Iq8/view?usp=sharing', 'BAM 2022 BAM TUNJA ', 'BAM EN LAS REGIONES', 'El Bogotá Audiovisual Market invita a los profesionales del sector a acreditarse para participar en BAM en las regiones, de septiembre a octubre de 2022 en Tunja, Riohacha y Villavicencio.', NULL, 'BAM EN LAS REGIONES...', NULL, 'septiembre 2022', '2022-12-14 17:50:07', '2024-06-17 11:19:15', '2024-06-17 11:19:15'),
(41, 1, 'https://mailchi.mp/bogotamarket/el-bogot-audiovisual-market-bam-llega-a-riohacha-acredtese-desde-ya', 'BAM REGIONES RIOHACHA 2022', 'BAM REGIONES RIOHACHA 2022', NULL, NULL, NULL, NULL, 'MIÉRCOLES 28 DE SEPTIEMBRE 2022', '2024-02-22 10:00:30', '2024-06-18 20:28:01', '2024-06-18 20:28:01'),
(42, 1, 'https://docs.google.com/spreadsheets/d/11CxFnr22CBUDj2Js4yzm8VLcRBGhNwEt/edit?gid=389245366#gid=389245366', 'prueba', 'prueba', 'dacadfad', NULL, NULL, NULL, 'LUNES 17 DE JUNIO 2024', '2024-06-17 10:37:17', '2024-06-18 20:39:16', '2024-06-18 20:39:16'),
(43, 1, 'https://mailchi.mp/bogotamarket/convocatorias-abiertas-bam-2024-primera-etapa', 'Convocatorias abiertas BAM 2024', '', NULL, 'Open calls for BAM 2024', NULL, NULL, '05 DICIEMBRE 2023', '2024-06-17 11:19:25', '2024-06-18 20:39:43', NULL),
(44, 1, 'https://mailchi.mp/bogotamarket/convocatorias-y-ruta-de-fortalecimiento-bam-2024', 'Convocatorias y ruta de fortalecimiento', NULL, NULL, 'Calls for proposals and reinforcement route', NULL, NULL, '22 DICIEMBRE 2023', '2024-06-17 11:20:42', '2024-06-18 21:32:44', NULL),
(45, 1, '4', '1', '22', '3', NULL, NULL, NULL, '5', '2024-06-17 15:32:30', '2024-06-17 16:26:56', '2024-06-17 16:26:56'),
(86, 1, 'https://mailchi.mp/bogotamarket/abierta-segunda-etapa-de-convocatorias-bam-2024', 'Abierta Segunda Etapa De Convocatorias | BAM 2024 ‍', '', NULL, 'Second Stage Of Calls For BAM 2024 Open ‍ ‍', NULL, NULL, '05 FEBRERO 2024', '2024-06-18 20:38:43', '2024-06-18 20:38:43', NULL),
(87, 1, 'https://mailchi.mp/bogotamarket/queda-una-semana-convocatorias-bam-2024', '¡Queda una semana! | Convocatorias BAM 2024', NULL, NULL, 'One week to go! | BAM 2024 call for applications', NULL, NULL, '23 FEBRERO 2024', '2024-06-18 20:40:57', '2024-06-18 21:44:30', NULL),
(88, 1, 'https://mailchi.mp/bogotamarket/convocatoria-abierta-colombia-locarno-industry-academy-3e6aagppyn', 'Convocatoria abierta - Colombia Locarno Industry Academy', NULL, NULL, 'Open call - Colombia Locarno Industry Academy', NULL, NULL, '05 MARZO 2024', '2024-06-18 20:41:56', '2024-06-18 20:41:56', NULL),
(89, 1, 'https://mailchi.mp/bogotamarket/oportunidades-de-alianzas-bam-2024', 'Oportunidades de alianzas BAM 2024', NULL, NULL, 'Partnership opportunities for BAM 2024', NULL, NULL, '11 MARZO 2024', '2024-06-18 20:42:54', '2024-06-18 20:42:54', NULL),
(90, 1, 'https://mailchi.mp/bogotamarket/seleccionados-primera-etapa-bam-quince', 'Seleccionados primera etapa BAM QUINCE', NULL, NULL, 'First stage selected for BAM Fifteen', NULL, NULL, '09 ABRIL 2024', '2024-06-18 20:50:00', '2024-06-18 20:50:00', NULL),
(91, 1, 'https://mailchi.mp/bogotamarket/bam-y-proimgenes-en-ficci-63', 'BAM y Proimágenes en FICCI 63', NULL, NULL, 'BAM and Proimágenes at FICCI 63', NULL, NULL, '16 ABRIL 2024', '2024-06-18 20:53:29', '2024-06-18 20:53:29', NULL),
(92, 1, 'https://mailchi.mp/bogotamarket/seleccionados-segunda-etapa-bam-quince', 'Seleccionados segunda etapa BAM Quince', NULL, NULL, 'Second stage selected for BAM Fifteen', NULL, NULL, '06 MAYO 2024', '2024-06-18 21:25:09', '2024-06-18 21:25:09', NULL),
(93, 1, 'https://mailchi.mp/bogotamarket/acreditaciones-abiertas-bam-2024', 'Acreditaciones abiertas BAM 2024', NULL, NULL, 'BAM 2024 accreditations open', NULL, NULL, '20 MAYO 2024', '2024-06-18 21:26:56', '2024-06-18 21:26:56', NULL),
(94, 1, 'https://mailchi.mp/bogotamarket/latinoamrica-presente-bam-15', 'Latinoamérica presente | BAM 15', NULL, NULL, 'Latin America present | BAM 15', NULL, NULL, '13 JUNIO 2024', '2024-06-18 21:39:07', '2024-06-18 21:42:18', '2024-06-18 21:42:18'),
(95, 1, 'https://mailchi.mp/bogotamarket/invitados-bamquince', 'Invitados #BAMQuince ‍', NULL, NULL, 'Guests #BAMQuince ‍', NULL, NULL, '07 JUNIO 2024', '2024-06-18 21:41:17', '2024-06-18 21:41:17', NULL),
(96, 1, 'https://mailchi.mp/bogotamarket/latinoamrica-presente-bam-15', 'Latinoamérica presente | BAM 15', NULL, NULL, 'Latin America present | BAM 15', NULL, NULL, '13 JUNIO 2024', '2024-06-18 21:43:27', '2024-06-18 21:43:27', NULL),
(97, 2, 'https://drive.google.com/file/d/1Dh5BsZohcQ6YM4ccppTNpai8e_39Z0ia/view?usp=sharing', 'El Bogotá Audiovisual Market - BAM abre la primera etapa de convocatorias para su  edición número 15', NULL, NULL, 'The Bogota Audiovisual Market - BAM opens the first stage of calls for its 15th edition', NULL, NULL, '24 NOVIEMBRE 2023', '2024-06-19 10:07:52', '2024-06-19 10:07:52', NULL),
(98, 2, 'https://drive.google.com/file/d/1oWCsV9_SVVwoGThazuwYYS7radi79j-F/view?usp=sharing', 'Abierta la segunda etapa de convocatoria para el Bogotá Audiovisual Market - BAM 2024', NULL, NULL, 'The second stage of the call for entries for the Bogota Audiovisual Market (BAM) 2024 is now open', NULL, NULL, '29 ENERO 2024', '2024-06-19 10:10:19', '2024-06-19 10:10:19', NULL),
(99, 2, 'https://drive.google.com/file/d/1LikWGr4J5bMHNuKcf2e0IsbW4CQjTmVv/view?usp=sharing', 'El Bogotá Audiovisual Market – BAM – celebra su decimoquinta edición con una nutrida agenda y diversos invitados nacionales e internacionales', NULL, NULL, 'The Bogotá Audiovisual Market - BAM - celebrates its fifteenth edition with a packed agenda and several national and international guests.', NULL, NULL, '24 MAYO 2024', '2024-06-19 10:11:37', '2024-06-19 10:11:37', NULL),
(100, 1, 'https://mailchi.mp/bogotamarket/bam-talks-guia-de-industria', 'BAM Talks y Guía de industria', NULL, NULL, 'BAM Talks and Industry Guide', NULL, NULL, '21 JUNIO 2024', '2024-06-26 08:18:32', '2024-06-26 08:18:32', NULL),
(101, 2, 'https://drive.google.com/file/d/1sn9uH7VC4UIwfqX_VS6KuWmpNo8rN_4X/view?usp=drive_link', 'El Bogotá Audiovisual Market - BAM llega con novedades en su edición número 15', NULL, NULL, 'The Bogota Audiovisual Market - BAM arrives with new features in its 15th edition', NULL, NULL, '25 JUNIO 2024', '2024-06-26 08:25:29', '2024-06-26 08:25:29', NULL),
(102, 1, 'https://mailchi.mp/bogotamarket/programacin-bam-2024', 'Programación BAM 2024', NULL, NULL, 'PROGRAMMING BAM 2024', NULL, NULL, '26 JUNIO 2024', '2024-07-02 21:13:10', '2024-07-02 21:13:10', NULL),
(103, 1, 'https://mailchi.mp/bogotamarket/delegaciones-internacionales-animacin', 'Delegaciones Internacionales | Animación ', NULL, NULL, 'International Delegations Animation ‍', NULL, NULL, '02 JULIO 2024', '2024-07-02 21:20:19', '2024-07-02 21:20:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `cod_pro` int(11) NOT NULL,
  `cod_cat_pro` int(11) DEFAULT NULL COMMENT 'codigo de la categoria',
  `nom_pro` varchar(250) DEFAULT NULL COMMENT 'nombre del proyecto ',
  `nom_pro_ing` varchar(250) DEFAULT NULL COMMENT 'nombre del proyecto  ingles',
  `per_pro` varchar(100) DEFAULT NULL COMMENT 'nombre de la persona',
  `gen_pro` varchar(50) DEFAULT NULL COMMENT 'genero /drama, ficcion  terror',
  `gen_pro_ing` varchar(50) DEFAULT NULL COMMENT 'genero  ingles',
  `dur_pro` varchar(50) DEFAULT NULL COMMENT 'duracion en minutos',
  `pdc_pro` varchar(50) DEFAULT NULL COMMENT 'productora',
  `pdc_lin_pro` varchar(250) DEFAULT NULL COMMENT 'link de la productora',
  `sin_pro` text DEFAULT NULL COMMENT 'descripcion corta',
  `sin_pro_ing` text DEFAULT NULL COMMENT 'sinopsis ingles',
  `con_pro` text DEFAULT NULL COMMENT 'descricpion larga ',
  `con_pro_ing` text DEFAULT NULL COMMENT 'descricpion larga ',
  `img_pro` text DEFAULT NULL COMMENT 'imagen',
  `ord_pro` int(11) DEFAULT NULL COMMENT 'orden de presentacion',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regionesbam`
--

CREATE TABLE `regionesbam` (
  `cod_reg` int(11) NOT NULL,
  `slu_reg` varchar(50) DEFAULT NULL COMMENT 'slug',
  `nom_reg` varchar(250) DEFAULT NULL COMMENT 'nombre',
  `fec_reg` varchar(250) NOT NULL COMMENT 'fecha para el boton',
  `dat_reg` date DEFAULT NULL COMMENT 'fecha final de la region para activar el boton',
  `ord_reg` int(11) DEFAULT NULL COMMENT 'orden',
  `tit_reg` varchar(250) DEFAULT NULL COMMENT 'titulo',
  `sit_reg` varchar(250) DEFAULT NULL COMMENT 'subtitulo',
  `des_reg` text DEFAULT NULL COMMENT 'descripcion',
  `acr_reg` varchar(250) DEFAULT NULL COMMENT 'link acredditaciones',
  `ade_reg` text DEFAULT NULL COMMENT 'agenda descripcion',
  `apd_reg` varchar(250) DEFAULT NULL COMMENT 'agenda pdf',
  `ter_reg` text DEFAULT NULL COMMENT 'descricion tyc',
  `tpd_reg` varchar(250) DEFAULT NULL COMMENT 'pdf tyc',
  `log_reg` varchar(250) DEFAULT NULL COMMENT 'img logos',
  `tit_reg_ing` varchar(250) DEFAULT NULL COMMENT 'titulo',
  `sit_reg_ing` varchar(250) DEFAULT NULL COMMENT 'subtitulo',
  `des_reg_ing` varchar(250) DEFAULT NULL COMMENT 'descripcion',
  `gal_reg` int(11) DEFAULT 0 COMMENT 'codigo de la galeria',
  `ter_reg_ing` varchar(250) DEFAULT NULL COMMENT 'descricion tyc',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `regionesbam`
--

INSERT INTO `regionesbam` (`cod_reg`, `slu_reg`, `nom_reg`, `fec_reg`, `dat_reg`, `ord_reg`, `tit_reg`, `sit_reg`, `des_reg`, `acr_reg`, `ade_reg`, `apd_reg`, `ter_reg`, `tpd_reg`, `log_reg`, `tit_reg_ing`, `sit_reg_ing`, `des_reg_ing`, `gal_reg`, `ter_reg_ing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PASTO', 'PASTO', 'AGO 22 - AGO 25', '2023-08-22', 1, 'BAM PASTO', 'Agosto 22 al 25 del 2023', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;El BAM llega a Pasto la capital del departamento de Nari&ntilde;o en el sur occidente de Colombia. Del 22 al 25 de agosto, realizadores y productores audiovisuales y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas y actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 27 de julio, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales. &quot;}\" data-sheets-userformat=\"{&quot;2&quot;:13295,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15987699},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10}\">El BAM llega a Pasto, la capital del departamento de Nari&ntilde;o en el sur occidente de Colombia. Del <strong>22 al 25 de agosto</strong>, realizadores, productores y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas, actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 28 de julio, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales.&nbsp;</span></p>', 'https://docs.google.com/forms/d/e/1FAIpQLSfI-6BWJc2gXi9fXN64UGA7hkdYYVOXqlLu3ECJB5kBAEO42Q/viewform', '<p>Nuestra agenda ser&aacute; 100% presencial en Pasto tendr&aacute; luagr del martes 22 al viernes 25 de agosto, reserve las fechas y pr&oacute;ximamente en este apartado podr&aacute; consultar la agenda definitiva.</p>', 'https://bogotamarket.com/docs/1676767872_7cbf978e1bbd987b60de.pdf', '<p>El Bogot&aacute; Audiovisual Market - BAM es el mercado audiovisual m&aacute;s importante de&nbsp;Colombia y es organizado por la C&aacute;mara de Comercio de Bogot&aacute; y Proim&aacute;genes&nbsp;Colombia, con el apoyo del Fondo para el Desarrollo Cinematogr&aacute;fico de Colombia.</p>\n<p>Este a&ntilde;o en la tercera edici&oacute;n del BAM en las Regiones, con el apoyo del Ministerio de&nbsp;Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones MinTIC y Teveandina, llevaremos&nbsp;toda la experiencia de nuestro mercado a nuevas regiones de Colombia, desde agosto&nbsp;hasta noviembre, haremos BAM en <strong>Pasto</strong>, <strong>Pereira</strong>, <strong>Cali </strong>y <strong>Santa Marta.</strong></p>\n<p>Esta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, as&iacute;&nbsp;como promover espacios de formaci&oacute;n, encuentro e intercambio que contribuyan al&nbsp;fortalecimiento de la industria local y a la construcci&oacute;n de redes entre los principales&nbsp;actores del gremio audiovisual en cada una de estas ciudades.</p>', 'https://bogotamarket.com/docs/1690300703_a144dc7be19acdbcdeb1.pdf', 'https://bogotamarket.com/images/site/1676858799_d4e3052f399bc5228788.png', NULL, NULL, NULL, 3, NULL, NULL, '2023-07-25 16:12:40', '2023-07-25 16:12:40'),
(2, 'tunja', 'TUNJA', 'SEP 12 - SEP 16', '2022-09-12', 2, 'BAM Tunja', 'Septiembre 12 al 16 2022', 'Bienvenidos todos los que quieran hacer BAM en Tunja del 12 al 16 de septiembre de 2022.\r\n\r\nCon el apoyo de nuestros anfitriones, Canal Trece, la Gobernación de Boyacá - Secretaría de Cultura y Patrimonio, Alcaldía de Tunja - Secretaria de Cultura y Turismo, la Cámara de Comercio de Tunja, la Universidad Santo Tomás, la Universidad de Boyacá y el Consejo Departamental de Cinematografía y Medios Audiovisuales de Boyacá, el mercado audiovisual más importante de Colombia, llega a su segundo destino de 2022: la ciudad de Tunja en el departamento de Boyacá, buscando conocer de primera mano a la industria local y llevando lo mejor de la experiencia BAM.', 'https://bogotamarket.com/convocatorias/stories', '\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://bogotamarket.com/convocatorias/stories', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://bogotamarket.com/convocatorias/stories', 'http://lyssoluciones.com/desarrollos/bam/markup/images/site/logos_regiones_tunja_bl_1.png', NULL, NULL, NULL, 0, NULL, NULL, '2023-02-19 20:07:58', '2023-02-19 20:07:58'),
(3, 'PEREIRA', 'PEREIRA ', 'SEPT 25 - SEPT 28', '2023-09-25', 2, 'BAM PEREIRA ', 'Septiembre 25 al 28 del 2023', '<p>El BAM llega a Pereira la capital del departamento de Risaralda en la regi&oacute;n monta&ntilde;osa cafetera al oeste Colombia. Del <strong>25 al 28 de septiembre</strong>, realizadores, productores y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades, dentro de las que se encuentran talleres, masterclasses, mesas redondas, actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 18 de agosto, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales.&nbsp;</p>', 'https://forms.gle/ypyr43NUNKYDfRY28', '', 'https://bogotamarket.com/docs/1679933015_5bedacd2a4185ca7bac5.pdf', '<p>El Bogot&aacute; Audiovisual Market - BAM es el mercado audiovisual m&aacute;s importante de&nbsp;Colombia y es organizado por la C&aacute;mara de Comercio de Bogot&aacute; y Proim&aacute;genes&nbsp;Colombia, con el apoyo del Fondo para el Desarrollo Cinematogr&aacute;fico de Colombia.</p>\n<p>Este a&ntilde;o en la tercera edici&oacute;n del BAM en las Regiones, con el apoyo del Ministerio de&nbsp;Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones MinTIC y Teveandina, llevaremos&nbsp;toda la experiencia de nuestro mercado a nuevas regiones de Colombia, desde agosto&nbsp;hasta noviembre, haremos BAM en <strong>Pasto</strong>, <strong>Pereira</strong>, <strong>Cali </strong>y <strong>Santa Marta.</strong></p>\n<p>Esta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, as&iacute; como promover espacios de formaci&oacute;n, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y a la construcci&oacute;n de redes entre los principales actores del gremio audiovisual en cada una de estas ciudades.</p>', 'https://bogotamarket.com/docs/1690301629_63ce32416d915222452d.pdf', 'https://bogotamarket.com/images/site/1679932833_6399c474676cee897b1d.png', NULL, NULL, NULL, 3, NULL, NULL, '2023-07-25 16:17:11', '2023-07-25 16:17:11'),
(4, 'CALI', 'CALI', 'OCT 17 - OCT 20', '2023-10-17', 3, 'BAM CALI', 'Octubre 17 al 20 del 2023', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;El BAM llega a Cali la capital del departamento del Valle del Cauca al suroeste de Colombia. Del 17 al 20 de octubre, realizadores y productores audiovisuales y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas y actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 15 de septiembre, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales. &quot;}\" data-sheets-userformat=\"{&quot;2&quot;:13295,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15987699},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10}\">El BAM llega a Cali la capital del departamento del Valle del Cauca al suroeste de Colombia. Del <strong>17 al 20 de octubre</strong>, realizadores, productores y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas, actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 15 de septiembre, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales.&nbsp;</span></p>', 'https://forms.gle/fHh9NucBPs2j7K1Z6', '', 'https://bogotamarket.com/convocatorias/stories', '<p>El Bogot&aacute; Audiovisual Market - BAM es el mercado audiovisual m&aacute;s importante de&nbsp;Colombia y es organizado por la C&aacute;mara de Comercio de Bogot&aacute; y Proim&aacute;genes&nbsp;Colombia, con el apoyo del Fondo para el Desarrollo Cinematogr&aacute;fico de Colombia.</p>\n<p>Este a&ntilde;o en la tercera edici&oacute;n del BAM en las Regiones, con el apoyo del Ministerio de&nbsp;Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones MinTIC y Teveandina, llevaremos&nbsp;toda la experiencia de nuestro mercado a nuevas regiones de Colombia, desde agosto&nbsp;hasta noviembre, haremos BAM en <strong>Pasto</strong>, <strong>Pereira</strong>, <strong>Cali </strong>y <strong>Santa Marta.</strong></p>\n<p>Esta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, as&iacute; como promover espacios de formaci&oacute;n, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y a la construcci&oacute;n de redes entre los principales actores del gremio audiovisual en cada una de estas ciudades.</p>', 'https://bogotamarket.com/docs/1690302344_3fe6243e7ac0684b6db0.pdf', 'http://lyssoluciones.com/desarrollos/bam/markup/images/site/logos_regiones_tunja_bl_1.png', NULL, NULL, NULL, 0, NULL, NULL, '2023-07-25 16:20:24', '2023-07-25 16:20:24'),
(5, 'SANTA-MARTA', 'SANTA MARTA ', 'NOV 7 - NOV 10', '2023-11-07', 4, 'BAM SANTA MARTA ', 'Noviembre 07 al 10 del 2023', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;El BAM llega a Santa Marta la capital del departamento del Magdalena en la costa norte de Colombia. Del 7 al 10 de noviembre, realizadores y productores audiovisuales y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas y actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 6 de octubre, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales. &quot;}\" data-sheets-userformat=\"{&quot;2&quot;:13295,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15987699},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10}\">El BAM llega a Santa Marta la capital del departamento del Magdalena en la costa norte de Colombia. Del <strong>7 al 10 de noviembre</strong>, realizadores, productores y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades, dentro de las que se encuentran talleres, masterclasses, mesas redondas, actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 6 de octubre, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales.&nbsp;</span></p>', 'https://forms.gle/oC7U8FgHcMwDJdHA8', '', 'https://bogotamarket.com/convocatorias/stories', '<p>El Bogot&aacute; Audiovisual Market - BAM es el mercado audiovisual m&aacute;s importante de&nbsp;Colombia y es organizado por la C&aacute;mara de Comercio de Bogot&aacute; y Proim&aacute;genes&nbsp;Colombia, con el apoyo del Fondo para el Desarrollo Cinematogr&aacute;fico de Colombia.</p>\n<p>Este a&ntilde;o en la tercera edici&oacute;n del BAM en las Regiones, con el apoyo del Ministerio de&nbsp;Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones MinTIC y Teveandina, llevaremos&nbsp;toda la experiencia de nuestro mercado a nuevas regiones de Colombia, desde agosto&nbsp;hasta noviembre, haremos BAM en <strong>Pasto</strong>, <strong>Pereira</strong>, <strong>Cali </strong>y <strong>Santa Marta.</strong></p>\n<p>Esta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, as&iacute; como promover espacios de formaci&oacute;n, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y a la construcci&oacute;n de redes entre los principales actores del gremio audiovisual en cada una de estas ciudades.</p>', 'https://bogotamarket.com/docs/1690302546_e2a264151dfe4b16c638.pdf', 'http://lyssoluciones.com/desarrollos/bam/markup/images/site/logos_regiones_tunja_bl_1.png', NULL, NULL, NULL, 0, NULL, NULL, '2023-07-25 16:23:58', '2023-07-25 16:23:58'),
(6, 'riohacha', 'RIOHACHA', 'AGO.30 - DIC. 31', '2022-12-31', 1, 'BAM Tunja', 'Septiembre 12 al 16 2022', 'Bienvenidos todos los que quieran hacer BAM en Tunja del 12 al 16 de septiembre de 2022.\r\n\r\nCon el apoyo de nuestros anfitriones, Canal Trece, la Gobernación de Boyacá - Secretaría de Cultura y Patrimonio, Alcaldía de Tunja - Secretaria de Cultura y Turismo, la Cámara de Comercio de Tunja, la Universidad Santo Tomás, la Universidad de Boyacá y el Consejo Departamental de Cinematografía y Medios Audiovisuales de Boyacá, el mercado audiovisual más importante de Colombia, llega a su segundo destino de 2022: la ciudad de Tunja en el departamento de Boyacá, buscando conocer de primera mano a la industria local y llevando lo mejor de la experiencia BAM.', 'https://bogotamarket.com/convocatorias/stories', '\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://bogotamarket.com/convocatorias/stories', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://bogotamarket.com/convocatorias/stories', 'http://lyssoluciones.com/desarrollos/bam/markup/images/site/logos_regiones_tunja_bl_1.png', NULL, NULL, NULL, 0, NULL, NULL, '2023-02-16 15:44:29', '2023-02-16 15:44:29'),
(7, 'riohacha', 'RIOHACHA', 'AGO.30 - DIC. 31', '2022-12-31', 1, 'BAM Tunja', 'Septiembre 12 al 16 2022', 'Bienvenidos todos los que quieran hacer BAM en Tunja del 12 al 16 de septiembre de 2022.\r\n\r\nCon el apoyo de nuestros anfitriones, Canal Trece, la Gobernación de Boyacá - Secretaría de Cultura y Patrimonio, Alcaldía de Tunja - Secretaria de Cultura y Turismo, la Cámara de Comercio de Tunja, la Universidad Santo Tomás, la Universidad de Boyacá y el Consejo Departamental de Cinematografía y Medios Audiovisuales de Boyacá, el mercado audiovisual más importante de Colombia, llega a su segundo destino de 2022: la ciudad de Tunja en el departamento de Boyacá, buscando conocer de primera mano a la industria local y llevando lo mejor de la experiencia BAM.', 'https://bogotamarket.com/convocatorias/stories', '\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://bogotamarket.com/convocatorias/stories', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://bogotamarket.com/convocatorias/stories', 'http://lyssoluciones.com/desarrollos/bam/markup/images/site/logos_regiones_tunja_bl_1.png', NULL, NULL, NULL, 0, NULL, NULL, '2023-02-16 15:44:25', '2023-02-16 15:44:25'),
(8, NULL, 'Santa Marta', '2023', '0000-00-00', 1, 'adssada', 'asdasd', '<p>asdadsasdasd</p>', 'asdasd', '<p>sdsadasd</p>', NULL, '<p>asdasdsa</p>', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-02-16 15:43:00', '2023-02-19 20:36:54', '2023-02-19 20:36:54'),
(9, NULL, 'ARMENIA', 'MAY 30 - JUN 3', '2022-05-30', 1, 'BAM Armenia', '30 de mayo a 3 de junio', '<section id=\"h.3d6db8630d2d82fb_7\" class=\"yaqOZd qeLZfd\">\n<div class=\"mYVXT\">\n<div class=\"LS81yb VICjCf j5pSsc db35Fc\" tabindex=\"-1\">\n<div class=\"hJDwNd-AhqUyc-uQSCkd Ft7HRd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb ZcASvf-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c Ktthjf-AhqUyc-qWD73c JNdkSc SQVYQc\">\n<div class=\"JNdkSc-SmKAyb LkDMRd\">\n<div class=\"\">\n<div class=\"oKdM2c ZZyype Kzv0Me\">\n<div id=\"h.3d6db8630d2d82fb_4\" class=\"hJDwNd-AhqUyc-uQSCkd Ft7HRd-AhqUyc-uQSCkd jXK9ad D2fZ2 zu5uec OjCsFc dmUFtb wHaque g5GTcb JYTMs\">\n<div class=\"jXK9ad-SmKAyb\">\n<div class=\"tyJCtd mGzaTb Depvyb baZpAe\">\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\">Bienvenidos todos los que quieran hacer BAM en Armenia. Si ya se encuentra acreditado podr&aacute; inscribirse en nuestras mesas redondas a continuaci&oacute;n (cupos limitados por mesa, sin repetir participaci&oacute;n entre las mismas):</p>\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\">&nbsp;</p>\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\">Con el apoyo de nuestros anfitriones, el canal regional Telecaf&eacute;, el programa Promoci&oacute;n Audiovisual Colombia y la Gobernaci&oacute;n del Quind&iacute;o, estuvimos en la ciudad de Armenia, departamento del Qu&iacute;ndio del lunes 30 de mayo al viernes 3 de junio de 2022, llevando la mejor experiencia de nuestro mercado.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section id=\"h.190762cef384ecc9_4\" class=\"yaqOZd lQAHbd\">\n<div class=\"mYVXT\">\n<div class=\"LS81yb VICjCf j5pSsc db35Fc\" tabindex=\"-1\">\n<div class=\"hJDwNd-AhqUyc-uQSCkd Ft7HRd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb ZcASvf-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c Ktthjf-AhqUyc-qWD73c JNdkSc SQVYQc\">\n<div class=\"JNdkSc-SmKAyb LkDMRd\">\n<div class=\"\">\n<div class=\"oKdM2c ZZyype Kzv0Me\">\n<div id=\"h.190762cef384ecc9_7\" class=\"hJDwNd-AhqUyc-uQSCkd Ft7HRd-AhqUyc-uQSCkd jXK9ad D2fZ2 zu5uec OjCsFc dmUFtb wHaque g5GTcb JYTMs\">\n<div class=\"jXK9ad-SmKAyb\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section id=\"h.190762cef384ecc9_24\" class=\"yaqOZd WxWicb lQAHbd\">\n<div class=\"mYVXT\">\n<div class=\"LS81yb VICjCf j5pSsc db35Fc\" tabindex=\"-1\">\n<div class=\"hJDwNd-AhqUyc-uQSCkd Ft7HRd-AhqUyc-uQSCkd purZT-AhqUyc-II5mzb ZcASvf-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c Ktthjf-AhqUyc-qWD73c JNdkSc SQVYQc\">\n<div class=\"JNdkSc-SmKAyb LkDMRd\">\n<div class=\"\">\n<div class=\"oKdM2c ZZyype Kzv0Me\">\n<div id=\"h.190762cef384ecc9_27\" class=\"hJDwNd-AhqUyc-uQSCkd Ft7HRd-AhqUyc-uQSCkd jXK9ad D2fZ2 zu5uec OjCsFc dmUFtb wHaque g5GTcb\">\n<div class=\"jXK9ad-SmKAyb\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>', NULL, '<section id=\"h.3d6db8630d2d82fb_38\" class=\"yaqOZd\">\n<div class=\"mYVXT\">\n<div class=\"LS81yb VICjCf j5pSsc db35Fc\" tabindex=\"-1\">\n<div class=\"hJDwNd-AhqUyc-OiUrBf Ft7HRd-AhqUyc-OiUrBf purZT-AhqUyc-II5mzb ZcASvf-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c Ktthjf-AhqUyc-qWD73c JNdkSc SQVYQc\">\n<div class=\"JNdkSc-SmKAyb LkDMRd\">\n<div class=\"\">\n<div class=\"oKdM2c ZZyype Kzv0Me\">\n<div id=\"h.2894b105fb580aa_7\" class=\"hJDwNd-AhqUyc-OiUrBf Ft7HRd-AhqUyc-OiUrBf jXK9ad D2fZ2 zu5uec OjCsFc dmUFtb wHaque g5GTcb JYTMs\">\n<div class=\"jXK9ad-SmKAyb\">\n<div class=\"tyJCtd mGzaTb Depvyb baZpAe\">\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><strong>Nuestros anfitriones en Armenia</strong></p>\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><strong>Telecaf&eacute;:<br></strong>Telecaf&eacute; Ltda., como Canal Regional de Televisi&oacute;n es una sociedad entre entidades p&uacute;blicas, organizada como Empresa Industrial y Comercial del Estado, del orden nacional, que presta el servicio de televisi&oacute;n p&uacute;blica en la regi&oacute;n colombiana del Eje Cafetero y de la cual son socios los departamentos de Caldas, Quind&iacute;o y Risaralda, Infi Manizales, Infider, la Universidad del Quind&iacute;o y el Ministerio de las Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones.</p>\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><em><strong>&ldquo;Somos televisi&oacute;n para la integraci&oacute;n, para el desarrollo de Nuestra Regi&oacute;n, el pa&iacute;s y el mundo&rdquo;</strong></em></p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section id=\"h.2894b105fb580aa_0\" class=\"yaqOZd\">\n<div class=\"IFuOkc\">&nbsp;</div>\n<div class=\"mYVXT\">\n<div class=\"LS81yb VICjCf j5pSsc db35Fc\" tabindex=\"-1\">\n<div class=\"hJDwNd-AhqUyc-II5mzb Ft7HRd-AhqUyc-II5mzb purZT-AhqUyc-II5mzb ZcASvf-AhqUyc-II5mzb pSzOP-AhqUyc-II5mzb Ktthjf-AhqUyc-II5mzb JNdkSc SQVYQc\">\n<div class=\"JNdkSc-SmKAyb LkDMRd\">\n<div class=\"\">\n<div class=\"oKdM2c ZZyype Kzv0Me\">\n<div id=\"h.3d6db8630d2d82fb_43\" class=\"hJDwNd-AhqUyc-II5mzb Ft7HRd-AhqUyc-II5mzb pSzOP-AhqUyc-II5mzb Ktthjf-AhqUyc-II5mzb jXK9ad D2fZ2 zu5uec OjCsFc dmUFtb wHaque g5GTcb\">\n<div class=\"jXK9ad-SmKAyb\">\n<div class=\"tyJCtd baZpAe\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"hJDwNd-AhqUyc-OiUrBf Ft7HRd-AhqUyc-OiUrBf purZT-AhqUyc-II5mzb ZcASvf-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c Ktthjf-AhqUyc-qWD73c JNdkSc SQVYQc\">\n<div class=\"JNdkSc-SmKAyb LkDMRd\">\n<div class=\"\">\n<div class=\"oKdM2c ZZyype Kzv0Me\">\n<div id=\"h.2894b105fb580aa_21\" class=\"hJDwNd-AhqUyc-OiUrBf Ft7HRd-AhqUyc-OiUrBf jXK9ad D2fZ2 zu5uec OjCsFc dmUFtb wHaque g5GTcb JYTMs\">\n<div class=\"jXK9ad-SmKAyb\">\n<div class=\"tyJCtd mGzaTb Depvyb baZpAe\">\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><strong>Promoci&oacute;n Audiovisual Colombia</strong><br>En el a&ntilde;o 2021, el Canal Teleantioquia en alianza con el Canal Telecaf&eacute; y el apoyo de Canal 13, desarrollaron de forma conjunta un proyecto de inversi&oacute;n financiado por el Fondo &Uacute;nico TIC, denominado: &ldquo;Promoci&oacute;n Audiovisual Colombia &ndash; PAC&rdquo;, el cual fue de gran ayuda para el fortalecimiento de las competencias audiovisuales de muchos de los agentes que componen la cadena de valor de la industria audiovisual en Colombia.</p>\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><em><strong>\"El &eacute;xito de PAC se vio reflejado en la evaluaci&oacute;n positiva de sus asistentes, la alta participaci&oacute;n de m&uacute;ltiples agentes de la cadena de valor del audiovisual en Colombia, de las reuniones desarrolladas en el marco de Colombia 4.0 y del cumplimiento de todas las metas propuestas\".</strong></em></p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section id=\"h.2894b105fb580aa_12\" class=\"yaqOZd\">\n<div class=\"IFuOkc\">&nbsp;</div>\n<div class=\"mYVXT\">\n<div class=\"LS81yb VICjCf j5pSsc db35Fc\" tabindex=\"-1\">\n<div class=\"hJDwNd-AhqUyc-II5mzb Ft7HRd-AhqUyc-II5mzb purZT-AhqUyc-II5mzb ZcASvf-AhqUyc-II5mzb pSzOP-AhqUyc-II5mzb Ktthjf-AhqUyc-II5mzb JNdkSc SQVYQc yYI8W HQwdzb\">\n<div class=\"JNdkSc-SmKAyb LkDMRd\">\n<div class=\"\">\n<div class=\"oKdM2c ZZyype Kzv0Me\">\n<div id=\"h.2894b105fb580aa_17\" class=\"hJDwNd-AhqUyc-II5mzb Ft7HRd-AhqUyc-II5mzb pSzOP-AhqUyc-II5mzb Ktthjf-AhqUyc-II5mzb jXK9ad D2fZ2 zu5uec OjCsFc dmUFtb\">\n<div class=\"jXK9ad-SmKAyb\">\n<div class=\"tyJCtd baZpAe\"><a class=\"fqo2vd\" href=\"https://www.google.com/url?q=https%3A%2F%2Fquindio.gov.co&amp;sa=D&amp;sntz=1&amp;usg=AOvVaw0NCVxSD0-d7u4zvYsnk7-R\" target=\"_blank\" rel=\"noopener\">\n<div class=\"t3iYD\">&nbsp;</div>\n</a></div>\n</div>\n</div>\n</div>\n<div class=\"oKdM2c ZZyype\">\n<div id=\"h.2894b105fb580aa_20\" class=\"hJDwNd-AhqUyc-II5mzb Ft7HRd-AhqUyc-II5mzb pSzOP-AhqUyc-II5mzb Ktthjf-AhqUyc-II5mzb jXK9ad D2fZ2 zu5uec wHaque g5GTcb QaN0Zc QjXeod\">\n<div class=\"jXK9ad-SmKAyb\">\n<div class=\"tyJCtd baZpAe\">\n<div class=\"t3iYD\"><strong>Gobernaci&oacute;n del Quind&iacute;o<br></strong>Planificar y promover el desarrollo integral del Departamento, mediante la implementaci&oacute;n de pol&iacute;ticas, para mejorar las condiciones de vida de la poblaci&oacute;n; apoyadas en el liderazgo p&uacute;blico, la gesti&oacute;n estrat&eacute;gica institucional, el talento humano comprometido y capacitado, la mejora continua de los procesos y procedimientos; para el desempe&ntilde;o de sus funciones administrativas dentro del marco de la Constituci&oacute;n y las leyes.</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"hJDwNd-AhqUyc-OiUrBf Ft7HRd-AhqUyc-OiUrBf purZT-AhqUyc-II5mzb ZcASvf-AhqUyc-II5mzb pSzOP-AhqUyc-qWD73c Ktthjf-AhqUyc-qWD73c JNdkSc SQVYQc\">\n<div class=\"JNdkSc-SmKAyb LkDMRd\">\n<div class=\"\">\n<div class=\"oKdM2c ZZyype Kzv0Me\">\n<div id=\"h.2894b105fb580aa_26\" class=\"hJDwNd-AhqUyc-OiUrBf Ft7HRd-AhqUyc-OiUrBf jXK9ad D2fZ2 zu5uec OjCsFc dmUFtb wHaque g5GTcb JYTMs\">\n<div class=\"jXK9ad-SmKAyb\">\n<div class=\"tyJCtd mGzaTb Depvyb baZpAe\">\n<p class=\"CDt4Ke zfr3Q\" dir=\"ltr\"><em><strong>\"Quind&iacute;o, coraz&oacute;n de Colombia\"</strong></em></p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>', NULL, '<p>&nbsp;&nbsp;</p>', NULL, 'https://bogotamarket.com/images/site/1676860063_6a58f8c6431acfa91d0b.png', NULL, NULL, NULL, 2, NULL, '2023-02-19 20:12:18', '2023-02-19 20:37:04', '2023-02-19 20:37:04'),
(10, '111', '111', '222', '2022-12-01', 44, '5555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://bogotamarket.com/images/site/1679688839_1e91547b2a194ef703d3.png', NULL, NULL, NULL, NULL, NULL, '2023-03-24 14:52:24', '2023-03-24 15:16:58', '2023-03-24 15:16:58'),
(11, 'PASTO', 'PASTO', 'AGO 22 - AGO 25', '2023-08-22', 1, 'BAM PASTO', 'Agosto 22 al 25 del 2023', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;El BAM llega a Pasto la capital del departamento de Nari&ntilde;o en el sur occidente de Colombia. Del 22 al 25 de agosto, realizadores y productores audiovisuales y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas y actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 27 de julio, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales. &quot;}\" data-sheets-userformat=\"{&quot;2&quot;:13295,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15987699},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10}\">El BAM llega a Pasto, la capital del departamento de Nari&ntilde;o en el sur occidente de Colombia. Del <strong>22 al 25 de agosto</strong>, realizadores, productores y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas, actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. Hasta el 22 de agosto, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web.&nbsp;</span></p>', 'https://docs.google.com/forms/d/e/1FAIpQLSfI-6BWJc2gXi9fXN64UGA7hkdYYVOXqlLu3ECJB5kBAEO42Q/viewform', '<p>Nuestra agenda ser&aacute; 100% presencial y tendr&aacute; lugar del martes 22 al viernes 25 de agosto. Reserve las fechas y consulte pr&oacute;ximamente la agenda definitiva.</p>', 'https://bogotamarket.com/docs/1692485421_b21cd707ef52bd910dc4.pdf', '<p>El Bogot&aacute; Audiovisual Market - BAM es el mercado audiovisual m&aacute;s importante de&nbsp;Colombia y es organizado por la C&aacute;mara de Comercio de Bogot&aacute; y Proim&aacute;genes&nbsp;Colombia, con el apoyo del Fondo para el Desarrollo Cinematogr&aacute;fico de Colombia.</p>\n<p>Este a&ntilde;o en la tercera edici&oacute;n del BAM en las Regiones, con el apoyo del Ministerio de&nbsp;Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones MinTIC y Teveandina, llevaremos&nbsp;toda la experiencia de nuestro mercado a nuevas regiones de Colombia, desde agosto&nbsp;hasta noviembre, haremos BAM en <strong>Pasto</strong>, <strong>Pereira</strong>, <strong>Cali </strong>y <strong>Santa Marta.</strong></p>\n<p>Esta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, as&iacute; como promover espacios de formaci&oacute;n, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y a la construcci&oacute;n de redes entre los principales actores del gremio audiovisual en cada una de estas ciudades.</p>', 'https://bogotamarket.com/docs/1690816075_74653612a2312babeb29.pdf', 'https://bogotamarket.com/images/site/1690917980_11c3ea12113b44e31a1c.png', NULL, NULL, NULL, 2, NULL, '2023-07-25 16:12:27', '2023-08-19 17:50:22', NULL),
(12, 'PEREIRA', 'PEREIRA ', 'SEPT 25 - SEPT 28', '2023-09-25', 2, 'BAM PEREIRA ', 'Septiembre 25 al 28 del 2023', '<p>El BAM llega a Pereira, la capital del departamento de Risaralda. Del <strong>25 al 28 de septiembre</strong>, realizadores, productores y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades, dentro de las que se encuentran talleres, masterclasses, mesas redondas, actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 18 de agosto y hasta el martes 26, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final e invitados especiales.&nbsp;</p>', 'https://forms.gle/ypyr43NUNKYDfRY28', '\r\n<p>Nuestra agenda ser&aacute; 100% presencial y tendr&aacute; lugar del lunes 25 al jueves 28 de septiembre. Reserve las fechas y consulte pr&oacute;ximamente la agenda definitiva.</p>\r\n', 'https://bogotamarket.com/docs/1695683298_b25a1e86c7a08b81267c.pdf', '<p>El Bogot&aacute; Audiovisual Market - BAM es el mercado audiovisual m&aacute;s importante de&nbsp;Colombia y es organizado por la C&aacute;mara de Comercio de Bogot&aacute; y Proim&aacute;genes&nbsp;Colombia, con el apoyo del Fondo para el Desarrollo Cinematogr&aacute;fico de Colombia.</p>\n<p>Este a&ntilde;o en la tercera edici&oacute;n del BAM en las Regiones, con el apoyo del Ministerio de&nbsp;Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones MinTIC y Teveandina, llevaremos&nbsp;toda la experiencia de nuestro mercado a nuevas regiones de Colombia, desde agosto&nbsp;hasta noviembre, haremos BAM en <strong>Pasto</strong>, <strong>Pereira</strong>, <strong>Cali </strong>y <strong>Santa Marta.</strong></p>\n<p>Esta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, as&iacute; como promover espacios de formaci&oacute;n, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y a la construcci&oacute;n de redes entre los principales actores del gremio audiovisual en cada una de estas ciudades.</p>', 'https://bogotamarket.com/docs/1690319732_2a5044f454241dd951a5.pdf', NULL, NULL, NULL, NULL, 2, NULL, '2023-07-25 16:17:07', '2023-09-25 18:08:20', NULL),
(13, 'CALI', 'CALI', 'OCT 17 - OCT 20', '2023-10-17', 3, 'BAM CALI', 'Octubre 17 al 20 del 2023', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;El BAM llega a Cali la capital del departamento del Valle del Cauca al suroeste de Colombia. Del 17 al 20 de octubre, realizadores y productores audiovisuales y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas y actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 15 de septiembre, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales. &quot;}\" data-sheets-userformat=\"{&quot;2&quot;:13295,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15987699},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10}\">El BAM llega a Cali la capital del departamento del Valle del Cauca al suroeste de Colombia. Del <strong>17 al 20 de octubre</strong>, realizadores, productores y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas, actividades de networking y relacionamiento al mejor estilo de la experiencia BAM.&nbsp;</span></p>\n<p>&nbsp;</p>', 'https://forms.gle/phtpyo9A7YnApNkQ6', '<div class=\"listR\">\n<article class=\"iRegionesRight\">\n<div class=\"listR\">\n<article class=\"iRegionesRight\">\n<p>Nuestra agenda ser&aacute; 100% presencial y tendr&aacute; lugar del martes 17 al viernes 20 de octubre. Reserve las fechas y consulte pr&oacute;ximamente la agenda definitiva.</p>\n</article>\n</div>\n</article>\n</div>', 'https://bogotamarket.com/docs/1697508633_c4aa1fe25003e2ee212d.pdf', '<p>El Bogot&aacute; Audiovisual Market - BAM es el mercado audiovisual m&aacute;s importante de&nbsp;Colombia y es organizado por la C&aacute;mara de Comercio de Bogot&aacute; y Proim&aacute;genes&nbsp;Colombia, con el apoyo del Fondo para el Desarrollo Cinematogr&aacute;fico de Colombia.</p>\n<p>Este a&ntilde;o en la tercera edici&oacute;n del BAM en las Regiones, con el apoyo del Ministerio de&nbsp;Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones MinTIC y Teveandina, llevaremos&nbsp;toda la experiencia de nuestro mercado a nuevas regiones de Colombia, desde agosto&nbsp;hasta noviembre, haremos BAM en <strong>Pasto</strong>, <strong>Pereira</strong>, <strong>Cali </strong>y <strong>Santa Marta.</strong></p>\n<p>Esta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, as&iacute; como promover espacios de formaci&oacute;n, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y a la construcci&oacute;n de redes entre los principales actores del gremio audiovisual en cada una de estas ciudades.</p>', 'https://bogotamarket.com/docs/1690320016_e0c25428aad8273c7c88.pdf', NULL, NULL, NULL, NULL, 2, NULL, '2023-07-25 16:20:21', '2023-10-16 21:10:35', NULL),
(14, 'SANTA-MARTA', 'SANTA MARTA ', 'NOV 7 - NOV 10', '2023-11-07', 4, 'BAM SANTA MARTA ', 'Noviembre 07 al 10 del 2023', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;El BAM llega a Santa Marta la capital del departamento del Magdalena en la costa norte de Colombia. Del 7 al 10 de noviembre, realizadores y productores audiovisuales y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades dentro de las que se encuentran talleres, masterclasses, mesas redondas y actividades de networking y relacionamiento al mejor estilo de la experiencia BAM. A partir del viernes 6 de octubre, los interesados podr&aacute;n acreditarse a trav&eacute;s de nuestra p&aacute;gina web. Pronto estaremos confirmando nuestra agenda final y nuestros invitados especiales. &quot;}\" data-sheets-userformat=\"{&quot;2&quot;:13295,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15987699},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10}\">El BAM llega a Santa Marta la capital del departamento del Magdalena en la costa norte de Colombia. Del <strong>7 al 10 de noviembre</strong>, realizadores, productores y otros actores v&iacute;nculados con la creaci&oacute;n audiovisual del departamento podr&aacute;n disfrutar de una agenda de cuatro d&iacute;as de actividades, dentro de las que se encuentran talleres, masterclasses, mesas redondas, actividades de networking y relacionamiento al mejor estilo de la experiencia BAM.&nbsp;</span></p>', 'https://forms.gle/19EduKpwJz5zC6Wu7', '<div class=\"listR\">\n<article class=\"iRegionesRight\">\n<div class=\"listR\">\n<article class=\"iRegionesRight\">\n<p>Nuestra agenda ser&aacute; 100% presencial y tendr&aacute; lugar del martes 7 al viernes 10 de octubre. Reserve las fechas y consulte pr&oacute;ximamente la agenda definitiva.</p>\n</article>\n</div>\n</article>\n</div>', NULL, '<p>El Bogot&aacute; Audiovisual Market - BAM es el mercado audiovisual m&aacute;s importante de&nbsp;Colombia y es organizado por la C&aacute;mara de Comercio de Bogot&aacute; y Proim&aacute;genes&nbsp;Colombia, con el apoyo del Fondo para el Desarrollo Cinematogr&aacute;fico de Colombia.</p>\n<p>Este a&ntilde;o en la tercera edici&oacute;n del BAM en las Regiones, con el apoyo del Ministerio de&nbsp;Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones MinTIC y Teveandina, llevaremos&nbsp;toda la experiencia de nuestro mercado a nuevas regiones de Colombia, desde agosto&nbsp;hasta noviembre, haremos BAM en <strong>Pasto</strong>, <strong>Pereira</strong>, <strong>Cali </strong>y <strong>Santa Marta.</strong></p>\n<p>Esta iniciativa busca conocer los agentes de la industria audiovisual de las regiones, as&iacute; como promover espacios de formaci&oacute;n, encuentro e intercambio que contribuyan al fortalecimiento de la industria local y a la construcci&oacute;n de redes entre los principales actores del gremio audiovisual en cada una de estas ciudades.</p>', 'https://bogotamarket.com/docs/1690320230_797c7f59ee1188743017.pdf', NULL, NULL, NULL, NULL, 2, NULL, '2023-07-25 16:23:54', '2023-10-02 18:35:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `cod_sed` int(11) NOT NULL,
  `nom_sed` varchar(250) DEFAULT NULL COMMENT 'nombre',
  `cod_cli_sed` int(11) DEFAULT NULL COMMENT 'codigo del cliente',
  `dir_sed` text DEFAULT NULL COMMENT 'direccion  ',
  `cod_ciu_sed` int(5) DEFAULT NULL COMMENT 'ciudad',
  `cod_mun_sed` int(5) DEFAULT NULL COMMENT 'codigo de la sede ',
  `tel_sed` varchar(50) DEFAULT NULL COMMENT 'telefono',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`cod_sed`, `nom_sed`, `cod_cli_sed`, `dir_sed`, `cod_ciu_sed`, `cod_mun_sed`, `tel_sed`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sede INDUSTRIA', 1, '<h3>C&aacute;mara Comercio de Bogot&aacute;, Sede Chapinero</h3>\n<h4>CL. 67 # 8-32</h4>', NULL, 44, '1', NULL, '2024-07-08 11:27:42', NULL),
(2, 'Sede EXPERIENCIA', 1, '<h3>Gimnasio Moderno</h3>\n<h4>Cra. 9 # 74-99</h4>', NULL, 15, '2', NULL, '2024-07-08 11:24:13', NULL),
(3, 'Sede SCREENINGS', 1, '<h3>Cine Colombia, C.C. Avenida Chile</h3><h4>Cl. 72 # 10 - 34</h4><h3>Casa Ark</h3><h4>Cl. 70 # 9 - 75</h4>', NULL, 49, '3', NULL, '2022-12-14 14:26:48', '2022-12-14 14:26:48'),
(4, 'Sede SCREENINGS', 2, '<h3><strong>Centro Comercial Avenida Chile</strong></h3>\n<h4><strong>CL. 72 #10-34</strong></h4>', NULL, 50, '4', '2024-07-05 15:30:50', '2024-07-08 11:27:12', NULL),
(5, 'Sede SCREENINGS', 2, '<h3>Cinema Para&iacute;so&nbsp;</h3>\n<h4>CL. 69 # 6-20</h4>', NULL, 100, '5', '2024-07-05 15:35:22', '2024-07-08 11:26:55', NULL),
(6, 'Sede NETWORKING', 3, '<h3>Casa Ark</h3>\n<h4>CL. 70 # 9 - 95</h4>', NULL, 150, '6', '2024-07-05 15:40:53', '2024-07-08 11:30:47', NULL),
(23, '19', 5, '39', 8, 362, '29', '2024-12-19 15:51:08', '2024-12-19 15:52:46', NULL),
(24, '11144', 4, '443333', 13, 64, '442222', '2025-07-02 20:24:07', '2025-07-02 20:24:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitio`
--

CREATE TABLE `sitio` (
  `cod_sit` int(11) NOT NULL,
  `fac_sit` varchar(250) DEFAULT NULL COMMENT 'facebook',
  `nom_sit` varchar(50) NOT NULL COMMENT 'nombre del sitio',
  `twt_sit` varchar(250) DEFAULT NULL COMMENT 'twitter',
  `ins_sit` varchar(200) NOT NULL COMMENT 'instagram',
  `you_sit` varchar(200) NOT NULL COMMENT 'youtube',
  `lla_sit` varchar(250) DEFAULT NULL COMMENT 'link acreditaciones',
  `mai_sit` varchar(100) DEFAULT NULL COMMENT 'correo de contacto',
  `dir_sit` varchar(250) DEFAULT NULL COMMENT 'direccion',
  `tel_sit` varchar(100) DEFAULT NULL COMMENT 'telefono',
  `con_sit` int(11) NOT NULL COMMENT 'visible convocatorias',
  `sel_sit` int(11) NOT NULL COMMENT 'visible seleccionados',
  `pro_sit` int(11) NOT NULL COMMENT 'visible programacion',
  `ley_sit` varchar(50) NOT NULL COMMENT 'leyebda edicion actual',
  `edi_sit` int(11) NOT NULL COMMENT 'edicion activa, cual se muetra',
  `key_sit` text NOT NULL COMMENT 'palabras clabes para indexacion en buscador',
  `ana_sit` text NOT NULL COMMENT 'js para el analitycs',
  `vid_sit` varchar(250) NOT NULL COMMENT 'video promocional',
  `acr_sit` int(11) DEFAULT NULL COMMENT '1 activo -2 no',
  `reg_sit` int(11) NOT NULL COMMENT 'activa regiones',
  `his_reg` int(11) NOT NULL COMMENT 'activa hostorico',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `sitio`
--

INSERT INTO `sitio` (`cod_sit`, `fac_sit`, `nom_sit`, `twt_sit`, `ins_sit`, `you_sit`, `lla_sit`, `mai_sit`, `dir_sit`, `tel_sit`, `con_sit`, `sel_sit`, `pro_sit`, `ley_sit`, `edi_sit`, `key_sit`, `ana_sit`, `vid_sit`, `acr_sit`, `reg_sit`, `his_reg`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'https://www.facebook.com/BAMBogotaAudiovisualMarket', 'Bogotá Audiovisual Market', 'https://twitter.com/BAM_Bogota', 'https://www.instagram.com/bam_bogota/', 'https://www.youtube.com/@BAMBogota', '', 'info@bogotamarket.com', 'Calle 35 # 5 - 89<br>Barrio La Merced<br>Bogotá D.C.<br>LA CASA DEL CINE<br>', '+57 310 805 9040', 1, 1, 1, '8 - 12 / JULIO / 2024', 5, '1,2,5,9,8,', '', '', 1, 1, 1, '2021-09-01 18:30:33', '2024-06-21 11:24:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `speakerseventos`
--

CREATE TABLE `speakerseventos` (
  `cod_spe` int(11) NOT NULL,
  `cod_ave_spe` int(11) DEFAULT NULL COMMENT 'codigo del evento',
  `nom_spe` varchar(250) DEFAULT NULL COMMENT 'nombre',
  `per_spe` text DEFAULT NULL COMMENT 'perfil',
  `per_spe_ing` text DEFAULT NULL COMMENT 'perfil',
  `img_spe` varchar(250) DEFAULT NULL COMMENT 'url de la imagen',
  `ord_spe` int(11) DEFAULT NULL COMMENT 'orden',
  `tip_spe` int(11) DEFAULT 0 COMMENT '0 para eventos normales  - 1 para eventos regiones ',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `speakerseventos`
--

INSERT INTO `speakerseventos` (`cod_spe`, `cod_ave_spe`, `nom_spe`, `per_spe`, `per_spe_ing`, `img_spe`, `ord_spe`, `tip_spe`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Juan DÍAZ\r\n', 'Director, escritor y diseñador narrativo que trabaja en la convergencia del diseño, la ciencia y la narración. Fundador y director creativo de Kosmology Studio (Berlín, Bogotá), compañía multiplataforma, de desarrollo y producción de proyectos cinematográficos, episódicos y XR en Europa y América sobre temas sociales. Desde 2008, es director europeo del WorldBuilding Institute. Junto con el aclamado diseñador Alex McDowell, director del WBI, ha investigado y desarrollado una práctica colaborativa de world building y una disruptiva metodología de ciencia-arte para combinar el conocimiento con la imaginación, que se ha aplicado para desarrollar y producir proyectos de entretenimiento y de impacto social.\r\n\r\n', 'Director, escritor y diseñador narrativo que trabaja en la convergencia del diseño, la ciencia y la narración. Fundador y director creativo de Kosmology Studio (Berlín, Bogotá), compañía multiplataforma, de desarrollo y producción de proyectos cinematográficos, episódicos y XR en Europa y América sobre temas sociales. Desde 2008, es director europeo del WorldBuilding Institute. Junto con el aclamado diseñador Alex McDowell, director del WBI, ha investigado y desarrollado una práctica colaborativa de world building y una disruptiva metodología de ciencia-arte para combinar el conocimiento con la imaginación, que se ha aplicado para desarrollar y producir proyectos de entretenimiento y de impacto social.\r\n\r\n', 'https://bogotamarket.com/images/site/Juan_DIAZ.jpg', 1, 0, NULL, NULL, NULL),
(3, 2, 'Ruth CAUDELI\r\n\r\n', 'Directora, escritora de largometrajes y series, y docente. Máster en dirección cinematográfica por la ESCAC y en ficción para televisión de la Universidad Pompeu Fabra. Ha escrito y dirigido los largometrajes ¿Cómo te llamas? (2018), Segunda estrella a la derecha (2019), Leading Ladies (2021) y Petit mal (2022). Dirigió la serie Natalia: Crimen y Castigo, ganadora del Premio India Catalina 2021 a la mejor miniserie, y la segunda unidad de la serie Pálpito para Netflix. Su serie web Actrices fue nominada a los Premios India Catalina 2021.\r\n\r\n\r\n\r\n', 'Directora, escritora de largometrajes y series, y docente. Máster en dirección cinematográfica por la ESCAC y en ficción para televisión de la Universidad Pompeu Fabra. Ha escrito y dirigido los largometrajes ¿Cómo te llamas? (2018), Segunda estrella a la derecha (2019), Leading Ladies (2021) y Petit mal (2022). Dirigió la serie Natalia: Crimen y Castigo, ganadora del Premio India Catalina 2021 a la mejor miniserie, y la segunda unidad de la serie Pálpito para Netflix. Su serie web Actrices fue nominada a los Premios India Catalina 2021.\r\n\r\n', 'https://bogotamarket.com/images/site/Ruth_CAUDELI.jpg', 1, 0, NULL, NULL, NULL),
(4, 3, 'Nazaret GARCÍA CRESPO\r\n\r\n\r\n', 'Con 20 años de experiencia en ventas internacionales y producción ejecutiva. Colabora con las Residencias de la Academia de Cine de España, CIMA Impulsa y TorinoFilmLab, entre otros. Especializada en evaluar proyectos audiovisuales, ha formado parte de diferentes comités como ICAA o Europa Creativa.\r\n\r\n\r\n\r\n\r\n\r\n', 'Con 20 años de experiencia en ventas internacionales y producción ejecutiva. Colabora con las Residencias de la Academia de Cine de España, CIMA Impulsa y TorinoFilmLab, entre otros. Especializada en evaluar proyectos audiovisuales, ha formado parte de diferentes comités como ICAA o Europa Creativa.\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Nazaret_GARCIA_CRESPO.jpg', 1, 0, NULL, NULL, NULL),
(5, 3, 'Ana BUSTINDUY AMADOR\r\n\r\n\r\n\r\n', 'Cofundadora de La Libre de Barranco y Escena Libre, librerías de literatura independiente y feminista enfocadas en cine y artes escénicas.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Cofundadora de La Libre de Barranco y Escena Libre, librerías de literatura independiente y feminista enfocadas en cine y artes escénicas.\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Ana_BUSTINDUY_AMADOR.jpg', 2, 0, NULL, NULL, NULL),
(6, 4, 'Amalia CORDOVA\r\n\r\n\r\n\r\n\r\n', 'Curadora, académica y profesora. Curadora digital del Center for Folklife and Cultural Heritage, especialista del Film + Video Center del Smithsonian’s National Museum of the American Indian (NMAI) en Nueva York. Ha trabajado en espacios museísticos y educativos que involucran saberes y medios indígenas, integrando teoría y práctica. Directora y productora de varios documentales (la mayoría de dirección colectiva), y coproductora de la serie web Urban Indians. Ha sido jurado de festivales como Tribeca, Morelia, y el International Film and Video Festival of Indigenous Peoples.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Curadora, académica y profesora. Curadora digital del Center for Folklife and Cultural Heritage, especialista del Film + Video Center del Smithsonian’s National Museum of the American Indian (NMAI) en Nueva York. Ha trabajado en espacios museísticos y educativos que involucran saberes y medios indígenas, integrando teoría y práctica. Directora y productora de varios documentales (la mayoría de dirección colectiva), y coproductora de la serie web Urban Indians. Ha sido jurado de festivales como Tribeca, Morelia, y el International Film and Video Festival of Indigenous Peoples.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Amalia_CORDOVA.jpg', 2, 0, NULL, NULL, NULL),
(7, 5, 'Herminio GUTIÉRREZ\r\n\r\n\r\n\r\n\r\n\r\n', 'Supervisor musical mexicano. Entre los más de 80 largometrajes en los que ha trabajado figuran títulos como No se aceptan devoluciones (2013) de Eugenio Derbez; Ixcanul (2015) y La Llorona (2019) de Jayro Bustamante; La Jaula de Oro (2013) de Diego Quemada-Diez; Güeros (2014) de Alonso Ruizpalacios o La 4a. Compañía (2016) de Amir Galván y Mitzi Arreola. Su experiencia también incluye series de TV como Falco, ganadora del Premio EMMY Internacional 2019, a Mejor Serie en Lengua Extranjera, El robo del siglo o Juanpis González. Su proyecto Vivos, al lado del artista chino Ai Wei Wei, se estrenó en Sundance.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Supervisor musical mexicano. Entre los más de 80 largometrajes en los que ha trabajado figuran títulos como No se aceptan devoluciones (2013) de Eugenio Derbez; Ixcanul (2015) y La Llorona (2019) de Jayro Bustamante; La Jaula de Oro (2013) de Diego Quemada-Diez; Güeros (2014) de Alonso Ruizpalacios o La 4a. Compañía (2016) de Amir Galván y Mitzi Arreola. Su experiencia también incluye series de TV como Falco, ganadora del Premio EMMY Internacional 2019, a Mejor Serie en Lengua Extranjera, El robo del siglo o Juanpis González. Su proyecto Vivos, al lado del artista chino Ai Wei Wei, se estrenó en Sundance.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Herminio_GUTIERREZ.jpg', 1, 0, NULL, NULL, NULL),
(8, 5, 'Natalia ECHEVERRI\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Productora de cine y TV con más de 12 años de experiencia. Es la creadora y productora ejecutiva de la serie Malayerba (2021) producida por de Dynamo y primera serie original de la plataforma Starz Play en Latinoamérica. Ha participado en más de veinte proyectos incluyendo largometrajes como Perdida (2020) de Jorge Michel Grau y la primera serie original de Netflix en Colombia, Distrito Salvaje. Ha sido directora de desarrollo para la nueva plataforma de streaming VIX+, de los gigantes Televisa Univision.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Productora de cine y TV con más de 12 años de experiencia. Es la creadora y productora ejecutiva de la serie Malayerba (2021) producida por de Dynamo y primera serie original de la plataforma Starz Play en Latinoamérica. Ha participado en más de veinte proyectos incluyendo largometrajes como Perdida (2020) de Jorge Michel Grau y la primera serie original de Netflix en Colombia, Distrito Salvaje. Ha sido directora de desarrollo para la nueva plataforma de streaming VIX+, de los gigantes Televisa Univision.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Natalia_ECHEVERRI.jpg', 2, 0, NULL, NULL, NULL),
(9, 11, 'Agustina LUMI\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Desde hace más de dos décadas trabaja produciendo cine y programas de televisión. Especializada en desarrollo de audiencias y políticas públicas para la promoción global de cine y contenidos audiovisuales. Durante diez años fue parte del INCAA (Instituto de Cine de Argentina). Actualmente radicada en Madrid, trabaja como consultora y asesora de distribuidores, exhibidores, organismos públicos y productores audiovisuales, ayudándolos a integrar nuevas eficiencias digitales para la generación de audiencias B2B y B2C. Al mismo tiempo, es Head of Content & Marketing en Usheru (Irlanda) y mentora del Series LAB en SANFIC Industria (Chile).\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Desde hace más de dos décadas trabaja produciendo cine y programas de televisión. Especializada en desarrollo de audiencias y políticas públicas para la promoción global de cine y contenidos audiovisuales. Durante diez años fue parte del INCAA (Instituto de Cine de Argentina). Actualmente radicada en Madrid, trabaja como consultora y asesora de distribuidores, exhibidores, organismos públicos y productores audiovisuales, ayudándolos a integrar nuevas eficiencias digitales para la generación de audiencias B2B y B2C. Al mismo tiempo, es Head of Content & Marketing en Usheru (Irlanda) y mentora del Series LAB en SANFIC Industria (Chile).\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Agustina_LUMI.jpg', 1, 0, NULL, NULL, NULL),
(10, 12, 'Yaara KEDEM\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Directora del ReelAbilities Film Festival y coordinadora de ReelAbilities North American (Nueva York). Se licenció en cine y televisión y en Estudios de educación especial en la Universidad de Tel Aviv (Israel). Pasó varios años en la postproducción, la localización de programas y el desarrollo de marcas cinematográficas para festivales de cine, juegos interactivos, eventos en directo, cadenas de televisión y programas infantiles. El Festival de Cine ReelAbilities, fundado en Nueva York en 2007, es el mayor de su categoría en Estados Unidos, dedicado a promover el aprecio por las vidas, las historias y las expresiones artísticas de las personas con diferentes discapacidades.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Directora del ReelAbilities Film Festival y coordinadora de ReelAbilities North American (Nueva York). Se licenció en cine y televisión y en Estudios de educación especial en la Universidad de Tel Aviv (Israel). Pasó varios años en la postproducción, la localización de programas y el desarrollo de marcas cinematográficas para festivales de cine, juegos interactivos, eventos en directo, cadenas de televisión y programas infantiles. El Festival de Cine ReelAbilities, fundado en Nueva York en 2007, es el mayor de su categoría en Estados Unidos, dedicado a promover el aprecio por las vidas, las historias y las expresiones artísticas de las personas con diferentes discapacidades.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Yaara_KEDEM.jpg', 1, 0, NULL, NULL, NULL),
(11, 13, 'Emellie O’BRIEN\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Fundadora y directora de Earth Angel, pionera del movimiento de producciones sostenibles. Desde el 2011 ha trabajado en la reducción del impacto ambiental en más de 50 producciones de cine y televisión, como la ganadora de Emmy y Globo de Oro The Marvelous Mrs. Maisel, o los largometrajes The Post o The Amazing Spider-Man 2.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Fundadora y directora de Earth Angel, pionera del movimiento de producciones sostenibles. Desde el 2011 ha trabajado en la reducción del impacto ambiental en más de 50 producciones de cine y televisión, como la ganadora de Emmy y Globo de Oro The Marvelous Mrs. Maisel, o los largometrajes The Post o The Amazing Spider-Man 2.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Emellie_O%E2%80%99BRIEN.jpg', 1, 0, NULL, NULL, NULL),
(12, 13, 'Norma CUADROS\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Fundadora del Festival de Cine Ambiental Planet On. Lideró para Mincultura la investigación sobre parámetros para la adopción de prácticas sostenibles en la industria audiovisual colombiana.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Fundadora del Festival de Cine Ambiental Planet On. Lideró para Mincultura la investigación sobre parámetros para la adopción de prácticas sostenibles en la industria audiovisual colombiana.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Norma_CUADROS.jpg', 2, 0, NULL, NULL, NULL),
(13, 14, 'Mario SAVINO\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Productor audiovisual con más de doce años de experiencia. Tras trabajar desde 2007 como productor de eventos culturales y artísticos en Barcelona y Milán, en 2011 se radica en Ciudad de México, donde se asocia con la casa productora MrWoo, como director de producción del área de publicidad. Ha producido más de doscientos anuncios junto a mini series de ficción y documentales En 2021 produce la segunda y tercera temporadas de la serie Ana (Paramount/Amazon) que se encuentran en postproducción. Actualmente trabaja en desarrollos para Pantaya, Paramount y Amazon.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Productor audiovisual con más de doce años de experiencia. Tras trabajar desde 2007 como productor de eventos culturales y artísticos en Barcelona y Milán, en 2011 se radica en Ciudad de México, donde se asocia con la casa productora MrWoo, como director de producción del área de publicidad. Ha producido más de doscientos anuncios junto a mini series de ficción y documentales En 2021 produce la segunda y tercera temporadas de la serie Ana (Paramount/Amazon) que se encuentran en postproducción. Actualmente trabaja en desarrollos para Pantaya, Paramount y Amazon.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Mario_SAVINO.jpg', 1, 0, NULL, NULL, NULL),
(14, 15, 'Alejandro SÁNCHEZ PABÓN\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Diseñador, especialista en arte con nuevos medios. Más de 10 años de carrera en el ámbito digital, diseñando experiencias y estrategias para marcas de diferentes industrias y proyectos de arte. Enfocado en el UX/UI de proyectos de interactividad e inmersión, ha presentado instalaciones y ha sido gestor cultural de exposiciones de arte y memoria en Colombia. Host de un programa radial que sobre el rave y el punk en Latinoamérica. Es jefe de Diseño y Creatividad en Kids Corp, compañía pionera de la industria kidtech en América Latina.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Diseñador, especialista en arte con nuevos medios. Más de 10 años de carrera en el ámbito digital, diseñando experiencias y estrategias para marcas de diferentes industrias y proyectos de arte. Enfocado en el UX/UI de proyectos de interactividad e inmersión, ha presentado instalaciones y ha sido gestor cultural de exposiciones de arte y memoria en Colombia. Host de un programa radial que sobre el rave y el punk en Latinoamérica. Es jefe de Diseño y Creatividad en Kids Corp, compañía pionera de la industria kidtech en América Latina.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Alejandro_SANCHEZ_PABON.jpg', 1, 0, NULL, NULL, NULL),
(15, 16, 'Ana Piñeres\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 1, 0, NULL, NULL, NULL),
(16, 16, 'Clara María Ochoa\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 2, 0, NULL, NULL, NULL),
(17, 16, 'Juan Fernando Sánchez\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 3, 0, NULL, NULL, NULL),
(18, 17, 'Don EDKINS\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Productor ejecutivo de AfriDocs, plataforma de documentales del África subsahariana, y del proyecto Dare to Dream, dedicado a realizadores asiáticos.\r\n\r\n', '\r\nProductor ejecutivo de AfriDocs, plataforma de documentales del África subsahariana, y del proyecto Dare to Dream, dedicado a realizadores asiáticos.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Don_EDKINS.jpg', 1, 0, NULL, NULL, NULL),
(19, 18, 'Josephine LANDERTINGER\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Directora, Productora y Feminista. Creadora de la plataforma accionmujeres.com y del movimiento web3/NFT femalefilmmakers.xyz.\r\n\r\n\r\n\r\n', '\r\nDirectora, Productora y Feminista. Creadora de la plataforma accionmujeres.com y del movimiento web3/NFT femalefilmmakers.xyz.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Josephine_LANDERTINGER.jpg', 1, 0, NULL, NULL, NULL),
(20, 18, 'Leo MATCHETT\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Director y cofundador de The Decentralized Pictures Foundation, Inc. Ganador de un Premio Emmy por su proyecto Artemis Director’s Viewfinder.\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nDirector y cofundador de The Decentralized Pictures Foundation, Inc. Ganador de un Premio Emmy por su proyecto Artemis Director’s Viewfinder.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Leo_MATCHETT.jpg', 2, 0, NULL, NULL, NULL),
(21, 18, 'Michael MUSANTE\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Decentralized Pictures. Director de producción cinematográfica y adquisiciones en American Zoetrop.\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nDecentralized Pictures. Director de producción cinematográfica y adquisiciones en American Zoetrop.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Michael_MUSANTE.jpg', 3, 0, NULL, NULL, NULL),
(22, 19, 'María Cristina PÉREZ\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Directora de Todo es culpa de la sal, Refresh Vol. 2\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nDirectora de Todo es culpa de la sal, Refresh Vol. 2\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Maria_Cristina_PEREZ.jpg', 1, 0, NULL, NULL, NULL),
(23, 19, 'Beto ROSERO\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Productor de Two-Spirit, Refresh Vol. 3\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nProductor de Two-Spirit, Refresh Vol. 3\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Beto_ROSERO.jpg', 2, 0, NULL, NULL, NULL),
(24, 19, 'Juan Sebastián QUEBRADA\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Editor de Masmelos, Refresh Vol. 1\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEditor de Masmelos, Refresh Vol. 1\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Juan_Sebastian_QUEBRADA.jpg', 3, 0, NULL, NULL, NULL),
(25, 20, 'Catherine RODRÍGUEZ PRIETO\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Especialidad de Vestuario, ACACC y VESCO. Diseñadora de vestuario y miembro fundador de la Asociación Colombiana de Vestuario, realizadora de cine y televisión de la Universidad Nacional de Colombia, con énfasis en documental. Cuenta con amplia experiencia como diseñadora de vestuario en películas como Salvador (2022), El abrazo de la serpiente (2015), Pájaros de verano (2018), Vers La Bataille (2019), Memoria (2022), entre otras.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nEspecialidad de Vestuario, ACACC y VESCO. Diseñadora de vestuario y miembro fundador de la Asociación Colombiana de Vestuario, realizadora de cine y televisión de la Universidad Nacional de Colombia, con énfasis en documental. Cuenta con amplia experiencia como diseñadora de vestuario en películas como Salvador (2022), El abrazo de la serpiente (2015), Pájaros de verano (2018), Vers La Bataille (2019), Memoria (2022), entre otras.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Catherine_RODRIGUEZ_PRIETO.jpg', 1, 0, NULL, NULL, NULL),
(26, 20, 'Liliana LADINO\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Instructora del SENA. Diseñadora de modas de profesión, educadora de vocación, especialista en pedagogía y docencia universitaria con maestría en marketing digital. Es una apasionada por la moda y el vestuario como medio de comunicación.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nInstructora del SENA. Diseñadora de modas de profesión, educadora de vocación, especialista en pedagogía y docencia universitaria con maestría en marketing digital. Es una apasionada por la moda y el vestuario como medio de comunicación.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Liliana_LADINO.jpg', 2, 0, NULL, NULL, NULL),
(27, 20, 'Carolina ACONCHA\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Directora académica de la Escuela Arturo Tejada Cano. Diseñadora de modas y textiles con maestría en diseño estratégico, posee amplia experiencia direccionando proyectos académicos relacionados con la industria creativa latinoamericana.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nDirectora académica de la Escuela Arturo Tejada Cano. Diseñadora de modas y textiles con maestría en diseño estratégico, posee amplia experiencia direccionando proyectos académicos relacionados con la industria creativa latinoamericana.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Carolina_ACONCHA.jpg', 3, 0, NULL, NULL, NULL),
(28, 21, 'Ruth CAUDELI\r\n\r\n', 'Directora, escritora de largometrajes y series, y docente. Máster en dirección cinematográfica por la ESCAC y en ficción para televisión de la Universidad Pompeu Fabra. Ha escrito y dirigido los largometrajes ¿Cómo te llamas? (2018), Segunda estrella a la derecha (2019), Leading Ladies (2021) y Petit mal (2022). Dirigió la serie Natalia: Crimen y Castigo, ganadora del Premio India Catalina 2021 a la mejor miniserie, y la segunda unidad de la serie Pálpito para Netflix. Su serie web Actrices fue nominada a los Premios India Catalina 2021.\r\n\r\n\r\n\r\n', 'Directora, escritora de largometrajes y series, y docente. Máster en dirección cinematográfica por la ESCAC y en ficción para televisión de la Universidad Pompeu Fabra. Ha escrito y dirigido los largometrajes ¿Cómo te llamas? (2018), Segunda estrella a la derecha (2019), Leading Ladies (2021) y Petit mal (2022). Dirigió la serie Natalia: Crimen y Castigo, ganadora del Premio India Catalina 2021 a la mejor miniserie, y la segunda unidad de la serie Pálpito para Netflix. Su serie web Actrices fue nominada a los Premios India Catalina 2021.\r\n\r\n', 'https://bogotamarket.com/images/site/Ruth_CAUDELI.jpg', 1, 0, NULL, NULL, NULL),
(29, 22, 'Agustina LUMI\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Desde hace más de dos décadas trabaja produciendo cine y programas de televisión. Especializada en desarrollo de audiencias y políticas públicas para la promoción global de cine y contenidos audiovisuales. Durante diez años fue parte del INCAA (Instituto de Cine de Argentina). Actualmente radicada en Madrid, trabaja como consultora y asesora de distribuidores, exhibidores, organismos públicos y productores audiovisuales, ayudándolos a integrar nuevas eficiencias digitales para la generación de audiencias B2B y B2C. Al mismo tiempo, es Head of Content & Marketing en Usheru (Irlanda) y mentora del Series LAB en SANFIC Industria (Chile).\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Desde hace más de dos décadas trabaja produciendo cine y programas de televisión. Especializada en desarrollo de audiencias y políticas públicas para la promoción global de cine y contenidos audiovisuales. Durante diez años fue parte del INCAA (Instituto de Cine de Argentina). Actualmente radicada en Madrid, trabaja como consultora y asesora de distribuidores, exhibidores, organismos públicos y productores audiovisuales, ayudándolos a integrar nuevas eficiencias digitales para la generación de audiencias B2B y B2C. Al mismo tiempo, es Head of Content & Marketing en Usheru (Irlanda) y mentora del Series LAB en SANFIC Industria (Chile).\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Agustina_LUMI.jpg', 1, 0, NULL, NULL, NULL),
(30, 47, 'Diego SARMIENTO PAGÁN\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Quechua, Perú. Experto en el campo de dirección, producción, distribución, enfocados a la coproducción internacional con su productora HD Perú.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Quechua, Perú. Experto en el campo de dirección, producción, distribución, enfocados a la coproducción internacional con su productora HD Perú.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Diego_SARMIENTO_PAGAN.jpg', 1, 0, NULL, NULL, NULL),
(31, 48, 'Víctor PALACIOS\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Colombia. Director y distribuidor. Experto en distribución cinematográfica independiente con Distrito Pacífico Cine.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Colombia. Director y distribuidor. Experto en distribución cinematográfica independiente con Distrito Pacífico Cine.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Victor_PALACIOS.jpg', 1, 0, NULL, NULL, NULL),
(32, 63, 'Jesús PIMENTEL\r\nCine Qua Non Lab\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 1, 0, NULL, NULL, NULL),
(33, 63, 'Rafael SAMPAIO\r\nBrLab\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 2, 0, NULL, NULL, NULL),
(34, 63, 'Andrés Felipe MUÑOZ\r\nResidencia Iberoamericana de Guión\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 3, 0, NULL, NULL, NULL),
(35, 63, 'Alejandra WILLS\r\nModeradora\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 3, 0, NULL, NULL, NULL),
(36, 6, 'Isabel TORRES\r\n\r\n\r\n\r\n\r\n\r\n', 'Su trabajo como sonidista abarca desde el sonido directo hasta el diseño y edición de sonido para largometrajes de ficción y documentales de larga y corta duración. Durante su carrera ha trabajado en más de 30 producciones cinematográficas de cineastas de gran trayectoria como Luis Ospina, Rubén Mendoza, Oscar Ruíz Navia, José Luis Rugeles, Juan Andrés Arango, entre otros.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'http://lyssoluciones.com/desarrollos/bam/markup/images/site/Isabel_TORRES.jpg', 3, 0, NULL, NULL, NULL),
(37, 6, 'Isabel TORRES\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Su trabajo como sonidista abarca desde el sonido directo hasta el diseño y edición de sonido\r\n                            para largometrajes de ficción y documentales de larga y corta duración. Durante su carrera\r\n                            ha trabajado en más de 30 producciones cinematográficas de cineastas de gran trayectoria\r\n                            como Luis Ospina, Rubén Mendoza, Oscar Ruíz Navia, José Luis Rugeles, Juan Andrés Arango,\r\n                            entre otros.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://bogotamarket.com/images/site/Isabel_TORRES.jpg', 1, 1, NULL, '2023-07-25 11:42:02', '2023-07-25 11:42:02'),
(38, 88, 'Lido Pimienta', '', NULL, 'https://bogotamarket.com/images/site/1687966502_bb9257d756b29eee7ec9.jpg', NULL, 0, '2023-06-28 10:35:12', '2023-06-30 16:00:26', '2023-06-30 16:00:26'),
(39, 187, 'Jason RYLE', '<p>Jason Ryle es un productor, programador, curador, editor de historias y consultor de arte con sede en Toronto, Canad&aacute;. Es de origen Anishinaabe de Lake St. Martin, Manitoba. Durante su tiempo como Director Ejecutivo de imagineNATIVE desde 2010 hasta 2020, supervis&oacute; todas las actividades operativas y art&iacute;sticas del Festival Anual de Cine y Artes Medi&aacute;ticas imagineNATIVE, convirti&eacute;ndolo en la exhibici&oacute;n m&aacute;s grande del mundo de contenido de pantalla ind&iacute;gena y en un centro global de cine ind&iacute;gena altamente respetado en la industria canadiense.</p>', NULL, 'https://bogotamarket.com/images/site/1688146935_3df34cb3f6ab8864b857.jpg', NULL, 0, '2023-06-30 12:29:03', '2023-07-11 14:10:25', NULL),
(40, 188, 'Jason RYLE', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;\\&quot;Jason Ryle es un productor, programador, curador, editor de historias y consultor de arte con sede en Toronto, Canad&aacute;. Es de origen Anishinaabe de Lake St. Martin, Manitoba. Durante su tiempo como Director Ejecutivo de imagineNATIVE desde 2010 hasta 2020, supervis&oacute; todas las actividades operativas y art&iacute;sticas del Festival Anual de Cine y Artes Medi&aacute;ticas imagineNATIVE, convirti&eacute;ndolo en la exhibici&oacute;n m&aacute;s grande del mundo de contenido de pantalla ind&iacute;gena y en un centro global de cine ind&iacute;gena altamente respetado en la industria canadiense. \\n\\nEn su trayectoria, ha sido Asesor de pel&iacute;culas ind&iacute;genas en la Berlinale y supervis&oacute; el stand de Cine Ind&iacute;gena en el Mercado Europeo de Cine, promoviendo pel&iacute;culas de cineastas ind&iacute;genas a nivel internacional. Como productor, ha trabajado en cortometrajes animados premiados y actualmente est&aacute; involucrado en el desarrollo de largometrajes documentales, un largometraje narrativo, cortometrajes y una serie de realidad virtual.\\n\\&quot;                &quot;}\" data-sheets-userformat=\"{&quot;2&quot;:13291,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:16777215},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Calibri&quot;,&quot;16&quot;:11}\">Productor, programador, curador, editor de historias y consultor de arte con sede en Toronto, Canad&aacute;. Es de origen Anishinaabe de Lake St. Martin, Manitoba. Durante su tiempo como Director Ejecutivo de imagineNATIVE desde 2010 hasta 2020, supervis&oacute; todas las actividades operativas y art&iacute;sticas del Festival Anual de Cine y Artes Medi&aacute;ticas imagineNATIVE, convirti&eacute;ndolo en la exhibici&oacute;n m&aacute;s grande del mundo de contenido de pantalla ind&iacute;gena y en un centro global de cine ind&iacute;gena altamente respetado en la industria canadiense.&nbsp;<br><br>En su trayectoria, ha sido Asesor de pel&iacute;culas ind&iacute;genas en la Berlinale y supervis&oacute; el stand de Cine Ind&iacute;gena en el Mercado Europeo de Cine. Como productor, ha trabajado en cortometrajes animados premiados y actualmente est&aacute; involucrado en el desarrollo de varios proyectos audiovisuales.&nbsp;</span></p>', NULL, NULL, NULL, 0, '2023-06-30 12:29:23', '2023-06-30 12:43:48', '2023-06-30 12:43:48'),
(41, 188, 'Jason RYLE ', '<div class=\"listEvento bg2\">\n<div class=\"listE\">\n<article class=\"iEventoRight\">\n<div class=\"infoEvento\">\n<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;\\&quot;Jason Ryle es un productor, programador, curador, editor de historias y consultor de arte con sede en Toronto, Canad&aacute;. Es de origen Anishinaabe de Lake St. Martin, Manitoba. Durante su tiempo como Director Ejecutivo de imagineNATIVE desde 2010 hasta 2020, supervis&oacute; todas las actividades operativas y art&iacute;sticas del Festival Anual de Cine y Artes Medi&aacute;ticas imagineNATIVE, convirti&eacute;ndolo en la exhibici&oacute;n m&aacute;s grande del mundo de contenido de pantalla ind&iacute;gena y en un centro global de cine ind&iacute;gena altamente respetado en la industria canadiense. \\n\\nEn su trayectoria, ha sido Asesor de pel&iacute;culas ind&iacute;genas en la Berlinale y supervis&oacute; el stand de Cine Ind&iacute;gena en el Mercado Europeo de Cine, promoviendo pel&iacute;culas de cineastas ind&iacute;genas a nivel internacional. Como productor, ha trabajado en cortometrajes animados premiados y actualmente est&aacute; involucrado en el desarrollo de largometrajes documentales, un largometraje narrativo, cortometrajes y una serie de realidad virtual.\\n\\&quot;                &quot;}\" data-sheets-userformat=\"{&quot;2&quot;:13291,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:16777215},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Calibri&quot;,&quot;16&quot;:11}\">Productor, programador, curador, editor de historias y consultor de arte con sede en Toronto, Canad&aacute;. Es de origen Anishinaabe de Lake St. Martin, Manitoba. Durante su tiempo como Director Ejecutivo de imagineNATIVE desde 2010 hasta 2020, supervis&oacute; todas las actividades operativas y art&iacute;sticas del Festival Anual de Cine y Artes Medi&aacute;ticas imagineNATIVE, convirti&eacute;ndolo en la exhibici&oacute;n m&aacute;s grande del mundo de contenido de pantalla ind&iacute;gena y en un centro global de cine ind&iacute;gena altamente respetado en la industria canadiense.&nbsp;<br></span></p>\n<p>&nbsp;</p>\n</div>\n</article>\n</div>\n</div>\n<div class=\"listEvento \">\n<div class=\"listE\">&nbsp;</div>\n</div>', NULL, 'https://bogotamarket.com/images/site/1688146984_bc7596b0b031765cdb62.jpg', NULL, 0, '2023-06-30 12:43:30', '2023-06-30 12:43:59', '2023-06-30 12:43:59'),
(42, 188, 'Jason RYLE', '<p>Jason Ryle es un productor, programador, curador, editor de historias y consultor de arte con sede en Toronto, Canad&aacute;. Es de origen Anishinaabe de Lake St. Martin, Manitoba. Durante su tiempo como Director Ejecutivo de imagineNATIVE desde 2010 hasta 2020, supervis&oacute; todas las actividades operativas y art&iacute;sticas del Festival Anual de Cine y Artes Medi&aacute;ticas imagineNATIVE, convirti&eacute;ndolo en la exhibici&oacute;n m&aacute;s grande del mundo de contenido de pantalla ind&iacute;gena y en un centro global de cine ind&iacute;gena altamente respetado en la industria canadiense.</p>', NULL, 'https://bogotamarket.com/images/site/1688147063_52af9a5bd3db60911de0.jpg', NULL, 0, '2023-06-30 12:44:29', '2023-07-11 14:10:36', NULL),
(43, 189, 'Tatiana CANRO', '<p class=\"p1\">Documentalista, Productora, Fot&oacute;grafa y Gestora Cultural Colombo/Venezolana. Es miembro de la Corp. de Documentalistas de Colombia ALADOS. Sus documentales &ldquo;Como un rayo de luz&rdquo;, &ldquo;Una parte de mi vida&rdquo;, &ldquo;Annoto Enejutojo - El tiempo&rdquo;, han participado en el Festival del Nuevo Cine Latinoamericano de la Habana, Festival de Cine Invisible de Bilbao, entre otros festivales. Con su empresa productora \"Cine en las Aldeas S.A.S\" desarrolla &ldquo;Proyecto Filma&rdquo; desde d&oacute;nde produce, dirige los Laboratorios: &ldquo;Filma LGBT&rdquo;, &ldquo;Filma Mujer&rdquo;, &ldquo;Filma Afro&rdquo;, la Muestra de Cine Afrovisual, el &ldquo;Programa Iberoamericano de asesor&iacute;as de guion&rdquo; y el &ldquo;Script Doctor Lab&rdquo; que se desarrolla en el marco de FICCI.</p>', NULL, 'https://bogotamarket.com/images/site/1688154879_d85e0b2e08ec4e6f6722.jpg', NULL, 0, '2023-06-30 14:52:07', '2023-06-30 14:54:42', NULL),
(44, 191, 'Doug ROLAND', '<p class=\"p1\" style=\"text-align: left;\">Cineasta de impacto social nominado al Oscar&reg;, que cuenta historias sobre individuos y comunidades subrepresentados y pasados por alto. Su galardonada pel&iacute;cula \"Feeling Through\", producida ejecutivamente por Marlee Matlin y realizada en colaboraci&oacute;n con Helen Keller Services, es la primera pel&iacute;cula protagonizada por un actor sordo-ciego.&nbsp;La pel&iacute;cula hacer parte de un evento de proyecci&oacute;n completamente accesible llamado \"The Feeling Through Experience\", colaborando con docenas de organizaciones en el camino, promoviendo la conciencia sobre las personas sordas-ciegas y nuestro mensaje sobre el poder de la conexi&oacute;n humana a pesar de nuestras diferencias.</p>', NULL, 'https://bogotamarket.com/images/site/1688155401_690e938ad1d1a34dbb9f.jpg', NULL, 0, '2023-06-30 15:03:34', '2023-07-10 10:55:34', NULL),
(45, 192, 'María Fernanda CÉSPEDES', '<p>Direcci&oacute;n de Audiovisuales, Cine y Medios Interactivos (DACMI) del Ministerio de Cultura.</p>', NULL, 'https://bogotamarket.com/images/site/1689005302_7803d9d80f255a165f25.jpg', NULL, 0, '2023-06-30 15:22:39', '2023-07-10 11:11:25', NULL),
(46, 192, 'Mónica MOLANO', '<p>Accesibilidad DACMI, Asormedios, INSOR, We Cam Fest.</p>', NULL, 'https://bogotamarket.com/images/site/1689005330_d589542ca65bbe02edd0.jpg', NULL, 0, '2023-06-30 15:24:29', '2023-07-10 11:08:58', NULL),
(47, 193, 'María Fernanda CÉSPEDES', '<p>Direcci&oacute;n de Audiovisuales, Cine y Medios Interactivos (DACMI) del Ministerio de Cultura.</p>', NULL, 'https://bogotamarket.com/images/site/1689005311_55ae922bc056d6012199.jpg', NULL, 0, '2023-06-30 15:25:37', '2023-07-10 11:08:33', NULL),
(48, 193, 'Mónica MOLANO', '<p>Accesibilidad DACMI, Asormedios, INSOR, We Cam Fest.</p>', NULL, 'https://bogotamarket.com/images/site/1689005359_7466ee47236b753b82b9.jpg', NULL, 0, '2023-06-30 15:27:07', '2023-07-10 11:09:20', NULL),
(49, 193, 'Samuel RUBIN', '<p>Productor de impacto social, estratega narrativo y activista clim&aacute;tico.&nbsp;Con sede en Los &Aacute;ngeles, &eacute;l es co-fundador y Responsable de Impacto Social de la&nbsp;Hollywood Climate Summit, un evento anual internacional que muestra la acci&oacute;n&nbsp;medioambiental en la industria del entretenimiento. Rubin colabora con UNFCCC para&nbsp;impulsar una iniciativa en el Entretenimiento y Cultura para la Acci&oacute;n Clim&aacute;tica (ECCA),&nbsp;uniendo esfuerzos para alcanzar metas clim&aacute;ticas. Reconocido por Grist Fixers 50, Forbes,&nbsp;Politico, recibi&oacute; la Beca de Innovaci&oacute;n Cogenerate y el Premio del Jurado de Jackson Wild.&nbsp;Co-fund&oacute; YEA! Impact en 2020.</p>', NULL, 'https://bogotamarket.com/images/site/1688156912_2fde60596934adde1c52.jpg', NULL, 0, '2023-06-30 15:28:48', '2023-06-30 15:28:48', NULL),
(50, 193, 'Andrés VARGAS', '<p>COO de Dynamo Producciones. Tiene 23 a&ntilde;os de experiencia internacional en liderazgo, dise&ntilde;o, implementaci&oacute;n y ejecuci&oacute;n de estrategias comerciales, mercadotecnia, productos, servicio y de negocio, enfocados al crecimiento sostenible y rentable del negocio. Durante 3 a&ntilde;os y medio se desempe&ntilde;&oacute; como Vicepresidente y Country Manager de FOX/Estudios Telemexico en M&eacute;xico ejecutando estrategias de operaci&oacute;n, ventas, servicio y producto, y generando crecimiento dentro de la industria audiovisual y de servicios de producci&oacute;n.</p>', NULL, 'https://bogotamarket.com/images/site/1689005379_06b1e5ae68afa5ea7853.jpg', NULL, 0, '2023-06-30 15:29:52', '2023-07-10 11:09:40', NULL),
(51, 88, 'Lido PIMIENTA', '<p>Compositora, cantante, artista visual y curadora. Su trabajo ha sido incluido en varias exhibiciones, como la Feministry is Here de la galer&iacute;a Mercer Union.<br><br>En 2022 estrena su programa LIDO TV lleno de sketches desquiciados, entrevistas, m&uacute;sica y documentales que cubren temas actuales con humor y coraz&oacute;n.</p>', NULL, 'https://bogotamarket.com/images/site/1688590251_15346498b88b8a76266a.png', NULL, 0, '2023-07-05 15:52:04', '2023-07-06 17:12:21', NULL),
(52, 88, 'Consuelo CASTILLO', '<p>Directora de la Agencia de Promoci&oacute;n y Distribuci&oacute;n de cine latinoamericano DOC:CO que&nbsp;tiene su sede en Colombia y tiene como objetivo dise&ntilde;ar rutas estrat&eacute;gicas para la&nbsp;distribuci&oacute;n del cine de la regi&oacute;n en el pa&iacute;s. Asesora de estrategias de circulaci&oacute;n para&nbsp;diferentes instituciones latinoamericanas. Directora de coproducciones de 2.35 digital y&nbsp;asesora de proyectos documentales en diferentes eventos internacionales.</p>', NULL, 'https://bogotamarket.com/images/site/1688590387_319c3d7eb370b9ab98e4.png', NULL, 0, '2023-07-05 15:53:18', '2023-07-05 15:53:18', NULL),
(53, 89, 'Natalia AGUDELO', '<p>Comunicadora Social con &eacute;nfasis en Producci&oacute;n Audiovisual de la Universidad Javeriana de&nbsp;Bogot&aacute;. Empresaria colombiana, productora, directora creativa y fundadora de MadLove,&nbsp;estudio creativo desde el que desarrolla, gestiona y produce contenidos y experiencias de alto impacto como largometrajes, series, videoclips, eventos y servicios de producci&oacute;n de gran&nbsp;envergadura. Desde el MadLab ha desarrollado experiencias de formaci&oacute;n en alianza con la Universidad Javeriana como The Series Lab, el Diplomado de Gesti&oacute;n Internacional y&nbsp;Financiaci&oacute;n de Proyectos Audiovisuales o el Workshop de Producci&oacute;n Creativa.</p>', NULL, 'https://bogotamarket.com/images/site/1688591286_30cdb7e9a4be4ad09593.png', NULL, 0, '2023-07-05 16:09:27', '2023-07-10 09:23:37', NULL),
(54, 90, 'Mario MENDOZA', '<p>Escritor, de los m&aacute;s reconocidos autores latinoamericanos de la actualidad, catedr&aacute;tico y periodista colombiano.Entre sus obras m&aacute;s reconocidas se encuentran<em> </em>Satan&aacute;s (2002),&nbsp;Apocalipsis (2011), Akelarre (2019) y la m&aacute;s reciente Leer es resistir (2022)</p>', NULL, 'https://bogotamarket.com/images/site/1688591494_10336066cb01a756b50c.png', NULL, 0, '2023-07-05 16:12:37', '2023-07-10 10:25:28', NULL),
(55, 90, 'Rodrigo GUERRERO', '<p>Socio fundador y gerente de AG Studios Colombia. Ha participado en cargos creativos y de producci&oacute;n en 27 largometrajes y 5 series de televisi&oacute;n. Sus pel&iacute;culas han participado y recibido premios en festivales internacionales como Sundance, Berlinale, Toronto, y San Sebastian. Cuenta con una nominaci&oacute;n al Oscar de la Academia Americana, un premio del p&uacute;blico del festival de Sundance, y un Oso de Plata del festival de Berlin por Maria Llena Eres de Gracia. Con la pel&iacute;cula Contracorriente repiti&oacute; el Premio de la Audiencia en el Festival de Sundance.</p>', NULL, 'https://bogotamarket.com/images/site/1688591614_56ea80c119f52fc1d07d.png', NULL, 0, '2023-07-05 16:14:46', '2023-07-10 13:19:02', NULL),
(56, 91, 'Alejandra BORRERO', '<p>Actriz de cine, teatro y televisi&oacute;n, con una extensa trayectoria de m&aacute;s de 30 a&ntilde;os. Directora&nbsp;de la Casa E. Borrero, un centro cultural que innov&oacute; en cuanto a paradigmas sobre gesti&oacute;n&nbsp;cultural en el pa&iacute;s y donde presenta sus obras de teatro. En 2023, recibe el Premio V&iacute;ctor&nbsp;Nieto a toda una vida, en la edici&oacute;n 39 de los Premios India Catalina de la Industria&nbsp;Audiovisual Colombiana.</p>', NULL, 'https://bogotamarket.com/images/site/1688591930_fb245938c77c5ea61b2c.png', NULL, 0, '2023-07-05 16:19:46', '2023-07-05 16:19:46', NULL),
(57, 91, 'Natalia REYES', '<p>Presidenta de la Academia Colombiana de Artes y Ciencias Cinematogr&aacute;ficas. Actriz&nbsp;colombiana con amplia trayectoria en cine, televisi&oacute;n y teatro, que se perfila como una de las&nbsp;actrices latinas con mayor proyecci&oacute;n internacional del momento. En 2023 estrena Tomorrow&nbsp;Before After y Shadow Force. Es protagonista de <em>Terminator </em>(Dark Fate) dirigida por Tim&nbsp;Miller. Ha trabajado en televisi&oacute;n desde 2002 alcanzando gran reconocimiento en 2015 por su&nbsp;papel protag&oacute;nico en la serie Lady La Vendedora de Rosas (2015), adem&aacute;s tiene basta&nbsp;experiencia en pel&iacute;culas colombianas.</p>', NULL, 'https://bogotamarket.com/images/site/1688592168_c8e8185adc7df8f9b0cc.png', NULL, 0, '2023-07-05 16:23:09', '2023-07-10 10:26:01', NULL),
(58, 91, 'Heny CUESTA', '<p>Cineasta afrocolombiana y gestora social &ndash; creativa de contenidos culturales y art&iacute;sticos.&nbsp;Directora y fundadora de Cimarr&oacute;n Producciones, con experiencia en realizaci&oacute;n y direcci&oacute;n&nbsp;para contenido de televisi&oacute;n, documental y ficci&oacute;n. Creadora del primer Skylight&nbsp;SolidariLabs afroColombia.</p>', NULL, 'https://bogotamarket.com/images/site/1688592229_e5b7ea501b5378126927.png', NULL, 0, '2023-07-05 16:24:15', '2023-07-05 16:24:15', NULL),
(59, 93, 'Daniel GARCÉS', '<p>Director general de Sonata Films, maestro en M&uacute;sica con &eacute;nfasis en Ingenier&iacute;a de sonido de&nbsp;la Pontificia Universidad Javeriana, con una larga y reconocida trayectoria en direcci&oacute;n y&nbsp;dise&ntilde;o sonoro para m&aacute;s de 50 producciones audiovisuales en cine y televisi&oacute;n.&nbsp;Adicionalmente a su actividad profesional, cuenta con m&aacute;s de diez a&ntilde;os de experiencia como&nbsp;docente en instituciones p&uacute;blicas y privadas que lo han posicionado como iniciador en la&nbsp;ense&ntilde;anza y formaci&oacute;n en Arte del dise&ntilde;o sonoro. Esto le ha dado la oportunidad de&nbsp;compartir su conocimiento en un sin n&uacute;mero de talleres, especializaciones, simposios,&nbsp;festivales, congresos y charlas magistrales a nivel nacional, relacionados con el arte sonoro.</p>', NULL, 'https://bogotamarket.com/images/site/1688592354_07a988de93de1fb46136.png', NULL, 0, '2023-07-05 16:26:13', '2023-07-10 10:56:25', NULL),
(60, 93, 'Carlos GARCÍA', '<p>Cineasta y artista sonoro colombiano. Director general y creativo en Blond Indian Films. Ha&nbsp;sido dise&ntilde;ador sonoro y mezclador de la nominada al Oscar<em> </em>El abrazo de la serpiente. Como creador sonoro ha participado en varios proyectos audiovisuales y ha sido galardonado y nominado en los premios Platino, Premios Fenix, Premios Ariel, Premios Macondo, entre otros. Actualmente adelanta investigaciones en el campo de la psicolog&iacute;a del sonido y el uso&nbsp;terap&eacute;utico del audiovisual.</p>', NULL, 'https://bogotamarket.com/images/site/1688592419_14762a8416dc7377e08e.png', NULL, 0, '2023-07-05 16:27:15', '2023-07-10 10:54:41', NULL);
INSERT INTO `speakerseventos` (`cod_spe`, `cod_ave_spe`, `nom_spe`, `per_spe`, `per_spe_ing`, `img_spe`, `ord_spe`, `tip_spe`, `created_at`, `updated_at`, `deleted_at`) VALUES
(61, 93, 'Daniel VASQUÉZ', '<p>Dise&ntilde;ador sonoro y mezclador de sonido para cine y medios audiovisuales. Cofundador de&nbsp;Clap Studios en Colombia y SoundNode en Inglaterra. Graduado en Londres como mag&iacute;ster&nbsp;en Postproducci&oacute;n de audio y profesional en Artes de Grabaci&oacute;n. Con experiencia acad&eacute;mica,&nbsp;profesional y docente en el Reino Unido y en Colombia por m&aacute;s de 12 a&ntilde;os. Es miembro&nbsp;activo de la Cinema Audio Society de Estados Unidos (CAS), Asociaci&oacute;n Colombiana de&nbsp;Sonido Cinematogr&aacute;fico (ADSC), de la Academia Colombiana de Artes y Ciencias&nbsp;Cinematogr&aacute;ficas (ACACC) y de la Audio Engineering Society (AES).</p>', NULL, 'https://bogotamarket.com/images/site/1688592490_19f83b7fc99c6191f1d3.png', NULL, 0, '2023-07-05 16:28:37', '2023-07-05 16:28:37', NULL),
(62, 94, 'Paula ARENAS', '<p>Fil&oacute;sofa de la Universidad de los Andes de Bogot&aacute;, con estudios en Cine y Televisi&oacute;n en la&nbsp;Escuela de Artes de la Universidad de New York. Cuenta con 30 a&ntilde;os de experiencia en el&nbsp;dise&ntilde;o, direcci&oacute;n, desarrollo y producci&oacute;n de diferentes formatos para televisi&oacute;n, desde&nbsp;dramatizados, concursos, telenovelas, comedias, cr&oacute;nicas, series infantiles y documentales,&nbsp;hasta programas culturales y humor&iacute;sticos de opini&oacute;n, como Zoociedad y Quac.&nbsp;Ha sido la editora del Bolet&iacute;n Monogr&aacute;fico del&nbsp;Banco de la Rep&uacute;blica sobre los 60 a&ntilde;os de la televisi&oacute;n en Colombia. Actualmente es&nbsp;Defensora del Televidente en Citytv y asesora de contenidos para el canal Se&ntilde;al Colombia,&nbsp;del Sistema de medios p&uacute;blicos de Colombia.</p>', NULL, 'https://bogotamarket.com/images/site/1688592609_e61a78df20c3724aee3f.png', NULL, 0, '2023-07-05 16:30:28', '2023-07-10 10:54:55', NULL),
(63, 94, 'Diana BUSTAMANTE', '<p>Productora de cine y gestora cultural, que goza de gran reconocimiento en Latinoam&eacute;rica, y&nbsp;que ha contribuido durante los &uacute;ltimos a&ntilde;os a la internacionalizaci&oacute;n del cine colombiano. Es&nbsp;co-fundadora de Burning Blue y Ciudad Lunar, empresas productoras con las que particip&oacute;&nbsp;en proyectos de largometraje, cortometraje y documental de gran visibilidad alrededor del&nbsp;mundo. Su m&aacute;s reciente obra &ldquo;Nuestra Pel&iacute;cula&rdquo; se encuentra a&uacute;n en salas alrededor del pa&iacute;s.</p>', NULL, 'https://bogotamarket.com/images/site/1688592673_8936fe44ec5747d94dde.png', NULL, 0, '2023-07-05 16:31:31', '2023-07-10 10:55:12', NULL),
(64, 95, 'Juancho VALENCIA', '<p>Director, compositor y arreglista con basta experiencia en las m&uacute;sicas colombianas. Fundador&nbsp;de Merl&iacute;n Producciones, empresa de producci&oacute;n musical que ha trabajado con bandas sonoras&nbsp;y producciones audiovisuales. Maestro de composici&oacute;n de la Universidad EAFIT, en su&nbsp;experiencia ha llevado sus conocimientos a numerosos trabajos sinf&oacute;nicos y clases&nbsp;magistrales a lo largo del mundo.</p>', NULL, 'https://bogotamarket.com/images/site/1688592736_600ea65e252b82a26acd.png', NULL, 0, '2023-07-05 16:32:42', '2023-07-05 16:32:42', NULL),
(65, 96, 'Doug ROLAND', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Doug Roland es un cineasta de impacto social nominado al Oscar&reg;, que cuenta historias sobre individuos y comunidades subrepresentados y pasados por alto. Su galardonada pel&iacute;cula \\&quot;Feeling Through\\&quot;, producida ejecutivamente por Marlee Matlin y realizada en colaboraci&oacute;n con Helen Keller Services, es la primera pel&iacute;cula protagonizada por un actor sordo-ciego.\\nDoug ha llevado la pel&iacute;cula por todo el mundo como parte de un evento de proyecci&oacute;n completamente accesible llamado \\&quot;The Feeling Through Experience\\&quot;, colaborando con docenas de organizaciones en el camino, promoviendo la conciencia sobre las personas sordas-ciegas y nuestro mensaje sobre el poder de la conexi&oacute;n humana a pesar de nuestras diferencias.\\n\\n&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:33567727,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15987699},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Calibri&quot;,&quot;16&quot;:11,&quot;28&quot;:1}\">Cineasta de impacto social nominado al Oscar&reg;, que cuenta historias sobre individuos y comunidades subrepresentados y pasados por alto.&nbsp;</span><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Doug Roland es un cineasta de impacto social nominado al Oscar&reg;, que cuenta historias sobre individuos y comunidades subrepresentados y pasados por alto. Su galardonada pel&iacute;cula \\&quot;Feeling Through\\&quot;, producida ejecutivamente por Marlee Matlin y realizada en colaboraci&oacute;n con Helen Keller Services, es la primera pel&iacute;cula protagonizada por un actor sordo-ciego.\\nDoug ha llevado la pel&iacute;cula por todo el mundo como parte de un evento de proyecci&oacute;n completamente accesible llamado \\&quot;The Feeling Through Experience\\&quot;, colaborando con docenas de organizaciones en el camino, promoviendo la conciencia sobre las personas sordas-ciegas y nuestro mensaje sobre el poder de la conexi&oacute;n humana a pesar de nuestras diferencias.\\n\\n&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:33567727,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15987699},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:10066329}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;9&quot;:1,&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Calibri&quot;,&quot;16&quot;:11,&quot;28&quot;:1}\">Su galardonada pel&iacute;cula Feeling Through, producida ejecutivamente por Marlee Matlin y realizada en colaboraci&oacute;n con Helen Keller Services, es la primera pel&iacute;cula protagonizada por un actor sordo-ciego. Ha llevado la pel&iacute;cula por todo el mundo como parte de un evento de proyecci&oacute;n completamente accesible llamado The Feeling Through Experience, colaborando con docenas de organizaciones en el camino, promoviendo la conciencia sobre las personas sordas-ciegas y nuestro mensaje sobre el poder de la conexi&oacute;n humana a pesar de nuestras diferencias.<br></span></p>', NULL, 'https://bogotamarket.com/images/site/1688592848_eefaa4cd1df1ff9534b1.jpg', NULL, 0, '2023-07-05 16:36:10', '2023-07-10 10:55:28', NULL),
(66, 96, 'Christian BRICEÑO', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Profesional bailar&iacute;n sordo de danza contempor&aacute;nea \\n\\nPresentador de televisi&oacute;n p&uacute;blica colombiana como defensor de audiencias Toma El Control, el programa del Canal Trece - TEVEANDINA LTDA SAS&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:33569597,&quot;3&quot;:{&quot;1&quot;:0},&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:12040119}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:12040119}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:12040119}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:{&quot;1&quot;:2,&quot;2&quot;:12040119}},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;15&quot;:&quot;Calibri&quot;,&quot;16&quot;:11,&quot;28&quot;:1}\">Profesional bailar&iacute;n sordo de danza contempor&aacute;nea.&nbsp;Presentador de televisi&oacute;n p&uacute;blica colombiana como defensor de audiencias Toma El Control, el programa del Canal Trece - TEVEANDINA LTDA SAS.</span></p>', NULL, 'https://bogotamarket.com/images/site/1688593091_351098de09f6003ddff3.png', NULL, 0, '2023-07-05 16:38:19', '2023-07-05 16:38:19', NULL),
(67, 190, 'María Fernanda CÉSPEDES', '<p>Direcci&oacute;n de Audiovisuales, Cine y Medios Interactivos (DACMI) del Ministerio de Cultura.</p>', NULL, 'https://bogotamarket.com/images/site/1689005501_5bcc87599a25677bbadc.jpg', NULL, 0, '2023-07-10 11:12:01', '2023-07-10 11:30:20', NULL),
(68, 190, 'Mónica MOLANO', '<p>Accesibilidad DACMI, Asormedios, INSOR, We Cam Fest.</p>', NULL, 'https://bogotamarket.com/images/site/1689005544_0b8e5727c9d5275f2539.jpg', NULL, 0, '2023-07-10 11:12:29', '2023-07-10 11:29:39', NULL),
(69, 11, 'Joan Gómez', '<p>Director, guionista, y productor colombiano, socio fundador de Big &ndash; Sur Pel&iacute;culas, ha dirigido y co-escrito el largometraje El &aacute;rbol rojo, los cortometrajes Asunto de gallos (Premio Idartes para Corto en Cine 2008, Selecci&oacute;n Oficial del Festival Internacional Clermont &ndash; Ferrand 2012), y La Cartera, rodado en Barcelona en el 2013. Tambi&eacute;n se ha desempe&ntilde;ado como director asistente en series del Canal Caracol, y anteriormente lo hizo como asistente de direcci&oacute;n para reconocidas pel&iacute;culas y productoras de cine colombianas. Graduado del Master de Direcci&oacute;n Cinematogr&aacute;fica de la Escuela Superior de Cinema y Audiovisuales de Catalu&ntilde;a -ESCAC- de Barcelona.</p>', NULL, 'https://bogotamarket.com/images/site/1692199142_b98f48abcad7cd26f2b8.jpg', NULL, 1, '2023-08-16 10:19:07', '2023-08-16 16:25:50', NULL),
(70, 12, 'Sonia Barrera ', '<p>Sonia Barrera Guti&eacute;rrez, productora de cine y televisi&oacute;n. Ha sido la productora del largometraje EL &Aacute;RBOL ROJO, (Estreno mundial en el Tallin Black Night Film Festival y en GOA The International Film Festival of India en 2021); del largometraje documental ENTRE FUEGO Y AGUA (Estreno mundial en IDFA 2020 en la secci&oacute;n Luminous, seleccionada en m&aacute;s de 25 festivales entre los que se encuentran Hot Docs, M&uuml;nchen Dok.fest, Doker entre otros. Ganadora de 5 premios internacionales y uno nacional a mejor pel&iacute;cula en FICCALI 2021); del largometraje A TRAV&Eacute;S DE LA PANTALLA, pel&iacute;cula conmemorativa 100 a&ntilde;os del Cine Colombiano.</p>', NULL, 'https://bogotamarket.com/images/site/1692199585_2332ae474cde2ad81afd.jpg', NULL, 1, '2023-08-16 10:26:29', '2023-08-16 15:16:51', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tableName`
--

CREATE TABLE `tableName` (
  `NOMBRE` varchar(512) DEFAULT NULL,
  `CIUDAD` varchar(512) DEFAULT NULL,
  `CENTRODEMONITOREO` varchar(512) DEFAULT NULL,
  `DVR` varchar(512) DEFAULT NULL,
  `CAMARA` int(11) DEFAULT NULL,
  `NOMBREENMONITOR` varchar(512) DEFAULT NULL,
  `SERIAL` varchar(512) DEFAULT NULL,
  `MARCA` varchar(512) DEFAULT NULL,
  `TIPO` varchar(512) DEFAULT NULL,
  `ESTADO` varchar(512) DEFAULT NULL,
  `MAC` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tableName`
--

INSERT INTO `tableName` (`NOMBRE`, `CIUDAD`, `CENTRODEMONITOREO`, `DVR`, `CAMARA`, `NOMBREENMONITOR`, `SERIAL`, `MARCA`, `TIPO`, `ESTADO`, `MAC`) VALUES
('Principal1', 'Bogota D.C.', 'Principal', 'DVR 1', 1, '1.Cafeteria', 'F77497040', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal2', 'Bogota D.C.', 'Principal', 'DVR 1', 2, '2.Ent Planta', 'C3L101710012', 'VixZion', 'Bala', 'Propia', ''),
('Principal3', 'Bogota D.C.', 'Principal', 'DVR 1', 3, '3.Almacenamien2', '', '', '', 'Propia', ''),
('Principal4', 'Bogota D.C.', 'Principal', 'DVR 1', 4, '4.Trocitos 1', '', '', '', 'Propia', ''),
('Principal5', 'Bogota D.C.', 'Principal', 'DVR 1', 5, '5.Libre', '', '', '', '', ''),
('Principal6', 'Bogota D.C.', 'Principal', 'DVR 1', 6, '6.Trocitos 2', '', '', '', 'Propia', ''),
('Principal7', 'Bogota D.C.', 'Principal', 'DVR 1', 7, '7.Frei Salvo', '', '', '', 'Propia', ''),
('Principal8', 'Bogota D.C.', 'Principal', 'DVR 1', 8, '8.Empaq L3-L4', '', '', '', 'Arriendo', ''),
('Principal9', 'Bogota D.C.', 'Principal', 'DVR 1', 9, '9.sabori l3 - l4', '', '', '', 'Arriendo', ''),
('Principal10', 'Bogota D.C.', 'Principal', 'DVR 1', 10, '10.pas l3 - l4', '', '', '', 'Arriendo', ''),
('Principal11', 'Bogota D.C.', 'Principal', 'DVR 1', 11, '11.frei hyc 2', '', '', '', 'Arriendo', ''),
('Principal12', 'Bogota D.C.', 'Principal', 'DVR 1', 12, '12.frei hyc2 se', '', '', '', 'Propia', ''),
('Principal13', 'Bogota D.C.', 'Principal', 'DVR 1', 13, '13.Pas HYC 2', '', '', '', 'Propia', ''),
('Principal14', 'Bogota D.C.', 'Principal', 'DVR 1', 14, '14.A Pasill HC2', '', '', '', 'Arriendo', ''),
('Principal15', 'Bogota D.C.', 'Principal', 'DVR 1', 15, '15.Pasill Libra', '', '', '', 'Propia', ''),
('Principal16', 'Bogota D.C.', 'Principal', 'DVR 1', 16, '16.linea mani 1', '', '', '', 'Arriendo', ''),
('Principal17', 'Bogota D.C.', 'Principal', 'DVR 2', 17, '17.Saborizad L4', '', '', '', 'Arriendo', ''),
('Principal18', 'Bogota D.C.', 'Principal', 'DVR 2', 18, '18.saborizad L5', '', '', '', 'Arriendo', ''),
('Principal19', 'Bogota D.C.', 'Principal', 'DVR 2', 19, '19.Libre', '', '', '', 'Propia', ''),
('Principal20', 'Bogota D.C.', 'Principal', 'DVR 2', 20, '20.EmpaqueL1', '', '', '', 'Arriendo', ''),
('Principal21', 'Bogota D.C.', 'Principal', 'DVR 2', 21, '21.Plat Almidon', '', '', '', 'Propia', ''),
('Principal22', 'Bogota D.C.', 'Principal', 'DVR 2', 22, '22.Pellets HYC1', '', '', '', 'Propia', ''),
('Principal23', 'Bogota D.C.', 'Principal', 'DVR 2', 23, '23.Libre', '', '', '', 'Arriendo', ''),
('Principal24', 'Bogota D.C.', 'Principal', 'DVR 2', 24, '24.Emp Chirri 1', '', '', '', 'Propia', ''),
('Principal25', 'Bogota D.C.', 'Principal', 'DVR 2', 25, '25.Sabor L1 - L2', '', '', '', 'Arriendo', ''),
('Principal26', 'Bogota D.C.', 'Principal', 'DVR 2', 26, '26.Roflos 2', '', '', '', 'Arriendo', ''),
('Principal27', 'Bogota D.C.', 'Principal', 'DVR 2', 27, '27.Roflos', '', '', '', 'Propia', ''),
('Principal28', 'Bogota D.C.', 'Principal', 'DVR 2', 28, '28.Pasllo L1-L2', '', '', '', 'Propia', ''),
('Principal29', 'Bogota D.C.', 'Principal', 'DVR 2', 29, '29.Panaderia', '', '', '', 'Propia', ''),
('Principal30', 'Bogota D.C.', 'Principal', 'DVR 2', 30, '30.Pelado Salvo', '', '', '', 'Propia', ''),
('Principal31', 'Bogota D.C.', 'Principal', 'DVR 2', 31, '31.Area Mani', '', '', '', 'Propia', ''),
('Principal32', 'Bogota D.C.', 'Principal', 'DVR 2', 32, '32.Area Rollos', '', '', '', 'Propia', ''),
('Principal33', 'Bogota D.C.', 'Principal', 'DVR 3', 33, '33.Patio Op1', '', '', '', 'Propia', ''),
('Principal34', 'Bogota D.C.', 'Principal', 'DVR 3', 34, '34.Patio Op2', '', '', '', 'Propia', ''),
('Principal35', 'Bogota D.C.', 'Principal', 'DVR 3', 35, '35.alm taller', 'C31241130186', 'VixZion', 'Bala', 'Propia', ''),
('Principal36', 'Bogota D.C.', 'Principal', 'DVR 3', 36, '36.Sabor Casera', 'K72449141', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal37', 'Bogota D.C.', 'Principal', 'DVR 3', 37, '37.caseras 1', '', '', '', 'Propia', ''),
('Principal38', 'Bogota D.C.', 'Principal', 'DVR 3', 38, '38.trade market', 'Sin Serial', 'Hikvision', 'Domo', 'Propia', ''),
('Principal39', 'Bogota D.C.', 'Principal', 'DVR 3', 39, '39.Selección Pa', 'G15198645', 'Hikvision', 'Bala', 'Propia', ''),
('Principal40', 'Bogota D.C.', 'Principal', 'DVR 3', 40, '40.Caseras 2', '', '', '', 'Propia', ''),
('Principal41', 'Bogota D.C.', 'Principal', 'DVR 3', 41, '41.Rack 2do pis', 'C6G034230403', 'VixZion', 'Bala', 'Propia', ''),
('Principal42', 'Bogota D.C.', 'Principal', 'DVR 3', 42, '42.Casilleros 1', '830440719', 'Hikvision', 'Bala', 'Propia', ''),
('Principal43', 'Bogota D.C.', 'Principal', 'DVR 3', 43, '43.Casilleros 2', 'F79572858', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal44', 'Bogota D.C.', 'Principal', 'DVR 3', 44, '44.extruidos 1', '', '', '', 'Propia', ''),
('Principal45', 'Bogota D.C.', 'Principal', 'DVR 3', 45, '45.Extruidos 2', 'L19113284', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal46', 'Bogota D.C.', 'Principal', 'DVR 3', 46, '46.alm taller 2', 'C6H223890411', 'D-Tech', 'Bala', 'Propia', ''),
('Principal47', 'Bogota D.C.', 'Principal', 'DVR 3', 47, '47.Baño Mujeres', 'D90430886', 'D-Tech', 'Bala', 'Arriendo', ''),
('Principal48', 'Bogota D.C.', 'Principal', 'DVR 3', 48, '48.Baño Hombres', 'D90431132', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal49', 'Bogota D.C.', 'Principal', 'DVR 4', 49, '49.Muelle Mat Pr', 'F79872459', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal50', 'Bogota D.C.', 'Principal', 'DVR 4', 50, '50.Libre', '', '', '', '', ''),
('Principal51', 'Bogota D.C.', 'Principal', 'DVR 4', 51, '51.pas 2 mat pr', '', '', '', 'Propia', ''),
('Principal52', 'Bogota D.C.', 'Principal', 'DVR 4', 52, '52.Pas 4 Mat Pr', 'Sin Serial', 'ProVision', 'Bala', 'Propia', ''),
('Principal53', 'Bogota D.C.', 'Principal', 'DVR 4', 53, '53.rayos x varios', '', '', '', 'Propia', ''),
('Principal54', 'Bogota D.C.', 'Principal', 'DVR 4', 54, '54.Pas 1 Mat Pr', 'Sin Serial', 'ProVision', 'Bala', 'Propia', ''),
('Principal55', 'Bogota D.C.', 'Principal', 'DVR 4', 55, '55.Libre', '', '', '', '', ''),
('Principal56', 'Bogota D.C.', 'Principal', 'DVR 4', 56, '56.Dotacion', 'G12811630', 'D-Tech', 'Domo', 'Propia', ''),
('Principal57', 'Bogota D.C.', 'Principal', 'DVR 4', 57, '57.Calderas 1', 'C6H223890462', 'Samsung', 'Bala', 'Propia', ''),
('Principal58', 'Bogota D.C.', 'Principal', 'DVR 4', 58, '58.Calderas 2', 'ZFCQ70GJ90000JGL', 'D-Tech', 'Bala', 'Propia', ''),
('Principal59', 'Bogota D.C.', 'Principal', 'DVR 4', 59, '59.Calderas 3', 'C6H223890455', 'D-Tech', 'Bala', 'Propia', ''),
('Principal60', 'Bogota D.C.', 'Principal', 'DVR 4', 60, '60.monitoreo', 'Sin Serial', 'D-Tech', 'Infraroja', 'Propia', ''),
('Principal61', 'Bogota D.C.', 'Principal', 'DVR 4', 61, '61.Of Trade ', 'Sin Serial', 'D-Tech', 'Infraroja', 'Propia', ''),
('Principal62', 'Bogota D.C.', 'Principal', 'DVR 4', 62, '62.Taller 1', 'C6H223840407', 'D-Tech', 'Bala', 'Propia', ''),
('Principal63', 'Bogota D.C.', 'Principal', 'DVR 4', 63, '63.Taller 2', 'C6H223890414', 'D-Tech', 'Bala', 'Propia', ''),
('Principal64', 'Bogota D.C.', 'Principal', 'DVR 4', 64, '64.rayos x papa', '', '', '', 'Propia', ''),
('Principal65', 'Bogota D.C.', 'Principal', 'DVR 5', 65, '65.c. acceso 2', 'K72449132', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal66', 'Bogota D.C.', 'Principal', 'DVR 5', 66, '66.c.acceso 3-1', '', '', '', 'Arriendo', ''),
('Principal67', 'Bogota D.C.', 'Principal', 'DVR 5', 67, '67.Bicicletero', 'K722449149', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal68', 'Bogota D.C.', 'Principal', 'DVR 5', 68, '68.contratista', '472449090', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal69', 'Bogota D.C.', 'Principal', 'DVR 5', 69, '69.ent almacen', '', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal70', 'Bogota D.C.', 'Principal', 'DVR 5', 70, '70.ptz z. verde', '', '', '', 'Propia', ''),
('Principal71', 'Bogota D.C.', 'Principal', 'DVR 5', 71, '71.c. acceso 4 ', '', '', '', 'Arriendo', ''),
('Principal72', 'Bogota D.C.', 'Principal', 'DVR 5', 72, '72.P. Acceso 4', '', '', 'Bala', 'Arriendo', ''),
('Principal73', 'Bogota D.C.', 'Principal', 'DVR 5', 73, '73.L Mujeres 1', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal74', 'Bogota D.C.', 'Principal', 'DVR 5', 74, '74.L Mujeres 2', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal75', 'Bogota D.C.', 'Principal', 'DVR 5', 75, '75.L Mujeres 3', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal76', 'Bogota D.C.', 'Principal', 'DVR 5', 76, '76.L Mujeres 4', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal77', 'Bogota D.C.', 'Principal', 'DVR 5', 77, '77.Piso 4 Escalera', 'Sin Serial', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal78', 'Bogota D.C.', 'Principal', 'DVR 5', 78, '78.Dotacion 1', '', '', 'Domo', 'Propia', ''),
('Principal79', 'Bogota D.C.', 'Principal', 'DVR 5', 79, '79.Piso 4-1', 'Sin Serial', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal80', 'Bogota D.C.', 'Principal', 'DVR 5', 80, '80.Piso 4-2', 'F77497210', 'Hikvision', 'Domo', 'Propia', ''),
('Principal81', 'Bogota D.C.', 'Principal', 'DVR 6', 81, '81.Porteria 1', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal82', 'Bogota D.C.', 'Principal', 'DVR 6', 82, '82.Entrada Principal', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal83', 'Bogota D.C.', 'Principal', 'DVR 6', 83, '83.Recepcion', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal84', 'Bogota D.C.', 'Principal', 'DVR 6', 84, '84.Pasillo SST', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal85', 'Bogota D.C.', 'Principal', 'DVR 6', 85, '85.Pasillo Cafeteria', 'F79872415', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal86', 'Bogota D.C.', 'Principal', 'DVR 6', 86, '86.Compensacion', 'F05962414', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal87', 'Bogota D.C.', 'Principal', 'DVR 6', 87, '87.Auditorio', 'Sin Serial', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal88', 'Bogota D.C.', 'Principal', 'DVR 6', 88, '88.Pasillo Caja', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal89', 'Bogota D.C.', 'Principal', 'DVR 6', 89, '89.Escalera 2 Piso', 'G12811688', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal90', 'Bogota D.C.', 'Principal', 'DVR 6', 90, '90.Recepcion Desarrollo', 'C4K20210', 'D-Tech', 'Bala', 'Propia', ''),
('Principal91', 'Bogota D.C.', 'Principal', 'DVR 6', 91, '91.Pasillo 3 Piso', 'F05962401', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal92', 'Bogota D.C.', 'Principal', 'DVR 6', 92, '92.Financiera', 'F79872868', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal93', 'Bogota D.C.', 'Principal', 'DVR 6', 93, '93.3 Piso', 'C8B090840370', 'D-Tech', 'Domo', 'Propia', ''),
('Principal94', 'Bogota D.C.', 'Principal', 'DVR 6', 94, '94.Entrada Monitoreo', 'F05972444', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal95', 'Bogota D.C.', 'Principal', 'DVR 6', 95, '95.Mercadeo', 'Sin Serial', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal96', 'Bogota D.C.', 'Principal', 'DVR 6', 96, '96.recepcion direccion', 'D67788505', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal97', 'Bogota D.C.', 'Principal', 'DVR 7', 97, '97.PTZ 116', 'G74114062', 'Hikvision', 'PTZ', 'Arriendo', ''),
('Principal98', 'Bogota D.C.', 'Principal', 'DVR 7', 98, '98.PTZ 17D', 'Sin Serial', 'Hikvision', 'PTZ', 'Arriendo', ''),
('Principal99', 'Bogota D.C.', 'Principal', 'DVR 7', 99, '99.Caja Princip', 'Sin Serial', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal100', 'Bogota D.C.', 'Principal', 'DVR 7', 100, '100.ascensor', 'E07961898', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal101', 'Bogota D.C.', 'Principal', 'DVR 7', 101, '101.sotano 1', 'D93113420', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal102', 'Bogota D.C.', 'Principal', 'DVR 7', 102, '102.sotano 2', 'E08457066', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal103', 'Bogota D.C.', 'Principal', 'DVR 7', 103, '103.sotano 3', 'D93113428', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal104', 'Bogota D.C.', 'Principal', 'DVR 7', 104, '104.esc vestier', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal105', 'Bogota D.C.', 'Principal', 'DVR 7', 105, '105.P Vestieres', 'Sin Serial', 'Dahua', 'Bala', 'Arriendo', ''),
('Principal106', 'Bogota D.C.', 'Principal', 'DVR 7', 106, '106.Escale lock', 'TA09E12PBVF8E1E', 'Dahua', 'Bala', 'Arriendo', ''),
('Principal107', 'Bogota D.C.', 'Principal', 'DVR 7', 107, '107.canastillas', 'X7CCCB53PAPAAAA6858E', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal108', 'Bogota D.C.', 'Principal', 'DVR 7', 108, '108.Lock Homb 1', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal109', 'Bogota D.C.', 'Principal', 'DVR 7', 109, '109.Lock Homb 2', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal110', 'Bogota D.C.', 'Principal', 'DVR 7', 110, '110.Lock Homb 3', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal111', 'Bogota D.C.', 'Principal', 'DVR 7', 111, '111.Supervidora', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal112', 'Bogota D.C.', 'Principal', 'DVR 7', 112, '112.Supervisor', 'Sin Serial', 'Dahua', 'Domo', 'Arriendo', ''),
('Principal113', 'Bogota D.C.', 'Principal', 'DVR 8', 113, '113.salida cafeteria 1', 'G26956486', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal114', 'Bogota D.C.', 'Principal', 'DVR 8', 114, '114.salida cafeteria 2', 'G26956467', 'Hikvision', 'Bala', 'Arriendo', ''),
('Principal115', 'Bogota D.C.', 'Principal', 'DVR 8', 115, '115.Escalera piso 3', 'P12811699', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal116', 'Bogota D.C.', 'Principal', 'DVR 8', 116, '116.Entrada Auditorio', 'F77497111', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal117', 'Bogota D.C.', 'Principal', 'DVR 8', 117, '117.Terr Innov', 'L02152961', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal118', 'Bogota D.C.', 'Principal', 'DVR 8', 118, '118.Innovacion 1', 'L02152944', 'Hikvision', 'Domo', 'Arriendo', ''),
('Principal119', 'Bogota D.C.', 'Principal', 'DVR 8', 119, '119.Libre', '', '', '', '', ''),
('Principal120', 'Bogota D.C.', 'Principal', 'DVR 8', 120, '120.Libre', '', '', '', '', ''),
('Principal121', 'Bogota D.C.', 'Principal', 'DVR 8', 121, '121.Libre', '', '', '', '', ''),
('Principal122', 'Bogota D.C.', 'Principal', 'DVR 8', 122, '122.Libre', '', '', '', '', ''),
('Principal123', 'Bogota D.C.', 'Principal', 'DVR 8', 123, '123.Libre', '', '', '', '', ''),
('Principal124', 'Bogota D.C.', 'Principal', 'DVR 8', 124, '124.Libre', '', '', '', '', ''),
('Principal125', 'Bogota D.C.', 'Principal', 'DVR 8', 125, '125.Libre', '', '', '', '', ''),
('Principal126', 'Bogota D.C.', 'Principal', 'DVR 8', 126, '126.Libre', '', '', '', '', ''),
('Principal127', 'Bogota D.C.', 'Principal', 'DVR 8', 127, '127.Libre', '', '', '', '', ''),
('Principal128', 'Bogota D.C.', 'Principal', 'DVR 8', 128, '128.Libre', '', '', '', '', ''),
('CEDI1', 'Bogota D.C.', 'CEDI', 'DVR 1', 1, '1.PTZ Muelles', 'Sin Serial', '', '', 'Propia', ''),
('CEDI2', 'Bogota D.C.', 'CEDI', 'DVR 1', 2, '2.Libre', '', '', '', '', ''),
('CEDI3', 'Bogota D.C.', 'CEDI', 'DVR 1', 3, '3.empaque1', '', '', '', 'Propia', ''),
('CEDI4', 'Bogota D.C.', 'CEDI', 'DVR 1', 4, '4.empaque 2', '', '', '', 'Propia', ''),
('CEDI5', 'Bogota D.C.', 'CEDI', 'DVR 1', 5, '5.bod ent produc', 'CCE034230083', 'D-Tech', 'Bala', 'Propia', ''),
('CEDI6', 'Bogota D.C.', 'CEDI', 'DVR 1', 6, '6.canastillas 1', '6920828005201230', 'VixZion', 'Bala', 'Propia', ''),
('CEDI7', 'Bogota D.C.', 'CEDI', 'DVR 1', 7, '7.canastillas 2', '', 'VixZion', 'Bala', 'Propia', ''),
('CEDI8', 'Bogota D.C.', 'CEDI', 'DVR 1', 8, '8.embalaje 2', '', '', '', 'Propia', ''),
('CEDI9', 'Bogota D.C.', 'CEDI', 'DVR 1', 9, '9.parq jaulas', '830440713', 'Hikvision', 'Bala', 'Propia', ''),
('CEDI10', 'Bogota D.C.', 'CEDI', 'DVR 1', 10, '10.locker hombres 1', '', '', '', 'Arriendo', ''),
('CEDI11', 'Bogota D.C.', 'CEDI', 'DVR 1', 11, '11.locker hombres 2', '', '', '', 'Arriendo', ''),
('CEDI12', 'Bogota D.C.', 'CEDI', 'DVR 1', 12, '12.locker mujeres 1', '', '', '', 'Arriendo', ''),
('CEDI13', 'Bogota D.C.', 'CEDI', 'DVR 1', 13, '13.locker mujeres 2', '', '', '', 'Arriendo', ''),
('CEDI14', 'Bogota D.C.', 'CEDI', 'DVR 1', 14, '14.cafetería', '', '', '', 'Arriendo', ''),
('CEDI15', 'Bogota D.C.', 'CEDI', 'DVR 1', 15, '15.oficina 2 piso', '', '', '', 'Arriendo', ''),
('CEDI16', 'Bogota D.C.', 'CEDI', 'DVR 1', 16, '16.entrada almacen piso 1', '', '', '', 'Arriendo', ''),
('CEDI17', 'Bogota D.C.', 'CEDI', 'DVR 2', 17, '17.jaula 1', 'C31291130015', 'VixZion', 'Bala', 'Propia', ''),
('CEDI18', 'Bogota D.C.', 'CEDI', 'DVR 2', 18, '18.jaula 2', 'C31291130121', 'VixZion', 'Bala', 'Propia', ''),
('CEDI19', 'Bogota D.C.', 'CEDI', 'DVR 2', 19, '19.jaula 3 y 4', 'C31291130296', 'VixZion', 'Bala', 'Propia', ''),
('CEDI20', 'Bogota D.C.', 'CEDI', 'DVR 2', 20, '20.jaula 4 y 5', 'C6H223890373', 'D-Tech', 'Bala', 'Propia', ''),
('CEDI21', 'Bogota D.C.', 'CEDI', 'DVR 2', 21, '21.jaula6 y 7', 'C31291130184', 'VixZion', 'Bala', 'Propia', ''),
('CEDI22', 'Bogota D.C.', 'CEDI', 'DVR 2', 22, '22.pas alista', 'G16490734', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI23', 'Bogota D.C.', 'CEDI', 'DVR 2', 23, '23.pasillo 4', 'C31291130122', 'Hikvision', 'Bala', 'Propia', ''),
('CEDI24', 'Bogota D.C.', 'CEDI', 'DVR 2', 24, '24.pasillo 5', 'C31291130208', 'VixZion', 'Bala', 'Propia', ''),
('CEDI25', 'Bogota D.C.', 'CEDI', 'DVR 2', 25, '25.pasillo exporta', 'K72742407', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI26', 'Bogota D.C.', 'CEDI', 'DVR 2', 26, '26.hall exportación', 'K7247244947', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI27', 'Bogota D.C.', 'CEDI', 'DVR 2', 27, '27.jaula 8', 'k72449148', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI28', 'Bogota D.C.', 'CEDI', 'DVR 2', 28, '28.cargue jaula 8', 'K72449143', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI29', 'Bogota D.C.', 'CEDI', 'DVR 2', 29, '29.jaula 9', 'K72449146', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI30', 'Bogota D.C.', 'CEDI', 'DVR 2', 30, '30.cargue jaula 9', 'K727424473', 'Hikvision', 'Bala', 'Propia', ''),
('CEDI31', 'Bogota D.C.', 'CEDI', 'DVR 2', 31, '31.ent producto', 'C31291130092', 'VixZion', 'Bala', 'Propia', ''),
('CEDI32', 'Bogota D.C.', 'CEDI', 'DVR 2', 32, '32.lav canastas', 'Sin Serial', 'D-Tech', 'Bala', 'Propia', ''),
('CEDI33', 'Bogota D.C.', 'CEDI', 'DVR 3', 33, '33.ent vehicular', 'E66082934', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI34', 'Bogota D.C.', 'CEDI', 'DVR 3', 34, '34.control vehicular', 'D82445155', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI35', 'Bogota D.C.', 'CEDI', 'DVR 3', 35, '35.parque muelle 1', 'E15525191', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI36', 'Bogota D.C.', 'CEDI', 'DVR 3', 36, '36.parque muelle 2', 'E13139520', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI37', 'Bogota D.C.', 'CEDI', 'DVR 3', 37, '37.parque nitrogreno', '', '', '', 'Arriendo', ''),
('CEDI38', 'Bogota D.C.', 'CEDI', 'DVR 3', 38, '38.parque plataforma', 'D82445310', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI39', 'Bogota D.C.', 'CEDI', 'DVR 3', 39, '39.parque bicicletas', 'D82445961', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI40', 'Bogota D.C.', 'CEDI', 'DVR 3', 40, '40.esqui. motos', 'D95670307', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI41', 'Bogota D.C.', 'CEDI', 'DVR 3', 41, '41.parque motos 1', 'D82446034', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI42', 'Bogota D.C.', 'CEDI', 'DVR 3', 42, '42.parque motos 2', 'D95670235', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI43', 'Bogota D.C.', 'CEDI', 'DVR 3', 43, '43.parque motos 3', 'D95670281', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI44', 'Bogota D.C.', 'CEDI', 'DVR 3', 44, '44.parque motos 4', 'D82445490', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI45', 'Bogota D.C.', 'CEDI', 'DVR 3', 45, '45.parque aceite 4', '5LOLAC7PAAADC125', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI46', 'Bogota D.C.', 'CEDI', 'DVR 3', 46, '46.entrada vehicular 4', 'D62445114', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI47', 'Bogota D.C.', 'CEDI', 'DVR 3', 47, '47.oficina monitoreo cedi', 'CALJ000092', 'DLUX', 'Domo', 'Propia', ''),
('CEDI48', 'Bogota D.C.', 'CEDI', 'DVR 3', 48, '48.lote', '616490791', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI49', 'Bogota D.C.', 'CEDI', 'DVR 4', 49, '49.embalaje 1', '', '', '', 'Propia', ''),
('CEDI50', 'Bogota D.C.', 'CEDI', 'DVR 4', 50, '50.oficina pnc', '', '', '', 'Arriendo', ''),
('CEDI51', 'Bogota D.C.', 'CEDI', 'DVR 4', 51, '51.ascensor 1', 'D90431553', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI52', 'Bogota D.C.', 'CEDI', 'DVR 4', 52, '52.ascensor 2', 'D990431274', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI53', 'Bogota D.C.', 'CEDI', 'DVR 4', 53, '53.Laboratorio', 'C8K00N370049', 'D-Tech', 'Domo', 'Propia', ''),
('CEDI54', 'Bogota D.C.', 'CEDI', 'DVR 4', 54, '54.Tanque de Agua', 'C79012310', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI55', 'Bogota D.C.', 'CEDI', 'DVR 4', 55, '55.Bioreactor 1', 'C790123B', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI56', 'Bogota D.C.', 'CEDI', 'DVR 4', 56, '56.Bioreactor 2', 'C63581806', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI57', 'Bogota D.C.', 'CEDI', 'DVR 4', 57, '57.Oficina Papa', 'C8B09O900043', 'D-Tech', 'Bala', 'Propia', ''),
('CEDI58', 'Bogota D.C.', 'CEDI', 'DVR 4', 58, '58.Bodega Papas', 'D66082982', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI59', 'Bogota D.C.', 'CEDI', 'DVR 4', 59, '59.pasillo pa 1', 'K72449140', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI60', 'Bogota D.C.', 'CEDI', 'DVR 4', 60, '60.Pasillo Pa 2', 'D90431204', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI61', 'Bogota D.C.', 'CEDI', 'DVR 4', 61, '61.descargue 2', 'D90431117', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI62', 'Bogota D.C.', 'CEDI', 'DVR 4', 62, '62.Descargue 1', 'K72742427', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI63', 'Bogota D.C.', 'CEDI', 'DVR 4', 63, '63.Entrada Papa', 'D90431099', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI64', 'Bogota D.C.', 'CEDI', 'DVR 4', 64, '64.Area PNC', 'Sin Serial', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI65', 'Bogota D.C.', 'CEDI', 'DVR 5', 65, '65.Libre', '', '', '', 'Arriendo', ''),
('CEDI66', 'Bogota D.C.', 'CEDI', 'DVR 5', 66, '66.Rampa Planta', 'D82445366', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI67', 'Bogota D.C.', 'CEDI', 'DVR 5', 67, '67.tanque de agua', 'C79012315', 'Hikvision', 'Bala', 'Arriendo', ''),
('CEDI68', 'Bogota D.C.', 'CEDI', 'DVR 5', 68, '68.puerta plataforma', '', '', '', 'Arriendo', ''),
('CEDI69', 'Bogota D.C.', 'CEDI', 'DVR 5', 69, '69.Libre', '', '', '', '', ''),
('CEDI70', 'Bogota D.C.', 'CEDI', 'DVR 5', 70, '70.puerta almacen', '', '', '', 'Propia', ''),
('CEDI71', 'Bogota D.C.', 'CEDI', 'DVR 5', 71, '71.embalaje 1', '', 'Hikvision', 'Bala', 'Propia', ''),
('CEDI72', 'Bogota D.C.', 'CEDI', 'DVR 5', 72, '72.Libre', '', '', '', '', ''),
('CEDI73', 'Bogota D.C.', 'CEDI', 'DVR 5', 73, '73.Libre', '', '', '', '', ''),
('CEDI74', 'Bogota D.C.', 'CEDI', 'DVR 5', 74, '74.Libre', '', '', '', '', ''),
('CEDI75', 'Bogota D.C.', 'CEDI', 'DVR 5', 75, '75.Libre', '', '', '', '', ''),
('CEDI76', 'Bogota D.C.', 'CEDI', 'DVR 5', 76, '76.Libre', '', '', '', '', ''),
('CEDI77', 'Bogota D.C.', 'CEDI', 'DVR 5', 77, '77.Libre', '', '', '', '', ''),
('CEDI78', 'Bogota D.C.', 'CEDI', 'DVR 5', 78, '78.Libre', '', '', '', '', ''),
('CEDI79', 'Bogota D.C.', 'CEDI', 'DVR 5', 79, '79.Libre', '', '', '', '', ''),
('CEDI80', 'Bogota D.C.', 'CEDI', 'DVR 5', 80, '80.Libre', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifasacreditacion`
--

CREATE TABLE `tarifasacreditacion` (
  `cod_tar` int(11) NOT NULL,
  `nom_tar` varchar(250) DEFAULT NULL COMMENT 'nombre',
  `val_tar` varchar(250) DEFAULT NULL COMMENT 'valor',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `tarifasacreditacion`
--

INSERT INTO `tarifasacreditacion` (`cod_tar`, `nom_tar`, `val_tar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Precio $0 (-100%) ', '0', '2023-05-22 14:08:40', '2024-05-14 16:44:37', '2024-05-14 16:44:37'),
(2, '-20% para asociaciones ', '-20', '2023-05-22 14:08:40', '2023-05-23 19:11:16', '2023-05-23 19:11:16'),
(3, '-50% para BAM Regiones - Regular Fee', '140000', '2023-05-22 14:08:40', '2024-05-14 16:44:34', '2024-05-14 16:44:34'),
(5, 'Estucine', '100000', '2023-05-22 16:45:30', '2024-05-14 16:44:32', '2024-05-14 16:44:32'),
(6, 'Early Bird ', '200000', '2023-05-22 16:48:12', '2024-05-14 16:44:29', '2024-05-14 16:44:29'),
(7, '-50% BAM refgiones Early Bird ', '100000', '2023-05-23 10:46:11', '2023-05-24 09:32:48', '2023-05-24 09:32:48'),
(8, 'Precio Full', '280000', '2023-05-23 10:54:59', '2024-05-14 16:44:27', '2024-05-14 16:44:27'),
(9, 'test ', '500000', '2023-05-31 10:35:04', '2023-05-31 10:38:25', '2023-05-31 10:38:25'),
(10, '-50% para Consejeros Departamentales - Regular Fee', '140000', '2023-06-02 10:25:53', '2024-05-14 16:44:24', '2024-05-14 16:44:24'),
(11, 'FACULTAD DE CINE DE MÉXICO', '5750000', '2023-06-09 16:17:39', '2024-05-14 16:44:22', '2024-05-14 16:44:22'),
(12, 'FantasoLab Fundación Oveja Eléctrica', '1000000', '2023-06-14 16:09:45', '2024-05-14 16:44:20', '2024-05-14 16:44:20'),
(13, 'ACADEMIA COLOMBIANA DE CINE ', '210000', '2023-06-15 14:44:46', '2024-05-14 16:44:17', '2024-05-14 16:44:17'),
(14, 'Casting Workbook', '9000000', '2023-06-22 12:08:18', '2024-05-14 16:44:15', '2024-05-14 16:44:15'),
(15, 'RX Global', '10430825', '2023-06-26 15:34:44', '2024-05-14 16:44:11', '2024-05-14 16:44:11'),
(16, 'Risk Control Compra Insitu', '210000', '2023-07-13 13:14:45', '2024-05-14 16:44:08', '2024-05-14 16:44:08'),
(17, '1113', '22223', '2024-05-14 16:44:42', '2024-05-14 16:44:54', '2024-05-14 16:44:54'),
(18, 'Acreditacion Early Bird', '200000', '2024-05-15 15:59:40', '2024-05-15 15:59:40', NULL),
(19, 'Acreditacion Precio $0 (-100%)', '0', '2024-05-16 15:58:26', '2024-05-22 09:37:55', NULL),
(20, '-50% para BAM Regiones - Regular Fee', '140000', '2024-05-28 09:05:22', '2024-05-28 09:05:22', NULL),
(21, 'Acreditacion Regular Fee ', '280000', '2024-05-28 09:17:41', '2024-05-28 09:17:41', NULL),
(22, 'RX Global', '11043592', '2024-06-14 17:37:06', '2024-06-14 17:37:06', NULL),
(23, 'ACREDITACIONES 25% DE DESCUENTO ', '210000', '2024-06-24 16:48:29', '2024-06-25 08:58:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_equipo`
--

CREATE TABLE `tipo_equipo` (
  `cod_teq` int(11) NOT NULL,
  `nom_teq` varchar(100) NOT NULL,
  `cod_tsi_teq` int(11) DEFAULT NULL COMMENT 'codigo del tipo de sistema',
  `dma_teq` int(5) DEFAULT NULL COMMENT 'dias de mantenimieto',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_equipo`
--

INSERT INTO `tipo_equipo` (`cod_teq`, `nom_teq`, `cod_tsi_teq`, `dma_teq`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Camaras', 1, 180, NULL, NULL, NULL),
(2, 'NVR', 1, 180, NULL, NULL, NULL),
(3, 'DVR', 1, 180, NULL, NULL, NULL),
(4, 'SOFTWARE', 1, 180, NULL, NULL, NULL),
(5, 'RACK o GABINETE', 1, 180, NULL, NULL, NULL),
(6, 'Sensores', 2, 180, NULL, NULL, NULL),
(7, 'Paneles', 2, 180, NULL, NULL, NULL),
(8, 'Modulos', 2, 180, NULL, NULL, NULL),
(9, 'Estaciones Manuales', 2, 180, NULL, NULL, NULL),
(10, 'Luces estroboscopicas', 2, 180, NULL, NULL, NULL),
(11, 'Lectoras', 3, 180, NULL, NULL, NULL),
(12, 'Electro imanes', 3, 180, NULL, NULL, NULL),
(13, 'Boton de Apertura', 3, 180, NULL, NULL, NULL),
(14, 'Panel', 3, 180, NULL, NULL, NULL),
(15, 'Sensores', 4, 180, NULL, NULL, NULL),
(16, 'Panel', 4, 180, NULL, NULL, NULL),
(17, 'Tableros', 5, 180, NULL, NULL, NULL),
(18, 'Lamparas', 5, 180, NULL, NULL, NULL),
(19, 'Planta', 5, 180, NULL, NULL, NULL),
(20, 'Tomas', 5, 180, NULL, NULL, NULL),
(21, 'Interruptores', 5, 180, NULL, NULL, NULL),
(22, '1111', NULL, 2222, '2024-12-19 16:46:11', '2024-12-19 16:49:32', '2024-12-19 16:49:32'),
(23, '111', 4, 2222, '2024-12-19 16:47:41', '2024-12-19 16:49:29', '2024-12-19 16:49:29'),
(24, '111', 4, 2, '2024-12-19 16:48:13', '2024-12-19 16:49:22', '2024-12-19 16:49:22'),
(25, '111', 4, 2222, '2024-12-19 16:48:59', '2024-12-19 16:49:19', '2024-12-19 16:49:19'),
(26, 'un tipo de quipo 999', 2, 1009, '2024-12-19 16:49:48', '2024-12-19 16:50:05', '2024-12-19 16:50:05'),
(27, '1111rwer', 5, 2, '2024-12-20 18:17:59', '2024-12-20 18:18:25', '2024-12-20 18:18:25'),
(28, '111111444', 3, 44, '2025-07-02 20:25:07', '2025-07-02 20:25:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_sistema`
--

CREATE TABLE `tipo_sistema` (
  `cod_tsi` int(11) NOT NULL,
  `nom_tsi` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_sistema`
--

INSERT INTO `tipo_sistema` (`cod_tsi`, `nom_tsi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CCTV', NULL, NULL, NULL),
(2, 'DETECCION', NULL, NULL, NULL),
(3, 'ACCESO', NULL, NULL, NULL),
(4, 'INTRUSION', NULL, NULL, NULL),
(5, 'ELECTRICIDAD', NULL, NULL, NULL),
(6, '11111222222', '2024-12-19 16:27:08', '2024-12-19 16:27:16', '2024-12-19 16:27:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacaciones`
--

CREATE TABLE `ubicacaciones` (
  `cod_ubi` int(11) NOT NULL COMMENT 'codigo',
  `nom_ubi` varchar(250) DEFAULT NULL COMMENT 'nombre ',
  `cod_cli_ubi` int(11) DEFAULT NULL COMMENT 'cliente',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ubicacaciones`
--

INSERT INTO `ubicacaciones` (`cod_ubi`, `nom_ubi`, `cod_cli_ubi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Principal', 5, NULL, NULL, NULL),
(2, '11113333', 2, '2025-01-16 14:30:46', '2025-01-16 14:31:10', '2025-01-16 14:31:10'),
(3, '11115555', 4, '2025-07-02 20:24:44', '2025-07-02 20:24:51', NULL),
(4, 'una ubicacion lys', 2, '2025-07-15 16:25:46', '2025-07-15 16:25:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadesmedida`
--

CREATE TABLE `unidadesmedida` (
  `cod_uni` int(11) NOT NULL,
  `nom_uni` varchar(50) DEFAULT NULL,
  `sig_uni` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `unidadesmedida`
--

INSERT INTO `unidadesmedida` (`cod_uni`, `nom_uni`, `sig_uni`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Metro Lineal', 'ML', NULL, NULL, NULL),
(2, 'GL', 'GL', NULL, NULL, NULL),
(3, 'Unidades', 'UN', NULL, NULL, NULL),
(7, '3434343434', NULL, '2025-07-23 19:32:38', '2025-07-23 19:59:28', '2025-07-23 19:59:28'),
(8, '3434343434767676767678989889434343434aaaaaaaa11111', NULL, '2025-07-23 19:33:23', '2025-07-23 19:38:42', '2025-07-23 19:38:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cod_usu` int(11) NOT NULL,
  `nom_usu` char(200) DEFAULT NULL,
  `log_usu` char(250) DEFAULT NULL,
  `pas_usu` char(250) DEFAULT NULL,
  `cod_per_usu` int(11) DEFAULT NULL COMMENT '1 codigo del perfil contenido - 2 perfil agendas',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cod_usu`, `nom_usu`, `log_usu`, `pas_usu`, `cod_per_usu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'administrador', 'web@bam.com', '$2y$10$mZfZoUeOwLOOdtD0.6DRKu2r8ZGlpw3L9xhIKCLYqkKDR3OBm2yeq', 1, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(2, 'Alejandra Castellanos', 'alejandra.castellanos@ccb.org.co', '$2y$10$nC7.UcUucHU2IIWPF82p2uEi.F5F22Fp.pK5SABYqimAyHymYRcFK', 1, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(3, 'Aurelia Berthier', 'comunicaciones@bogotamarket.com', '$2y$10$ZxpR0nnjZZKsUNJhgpENBOZM.rf.CE8TyKLJl85NMTNv2S3wyAKua', 1, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(4, 'Carlos Moreno', 'seytec', '$2y$10$3LO7cVFfqDgojSNyJXigoewcaNi1zlXTbskPEiGsAwqpCmxMg4hFe', 1, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(5, 'registration', 'registration@bogotamarket.com', '$2y$10$OblDoBxQSW6suuxYOW98IOrmKiNPBXSyHGWl72Ht6oeFNweMUK8Ju', 1, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(6, 'registration  - 2', 'registration2@bogotamarket.com', '$2y$10$WsElfVC0zwCvrpzsr8K9leeEqQiviAfo7b0s7Wi9CQyeM/y.r0ueK', 1, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(7, 'Ana Nieto', 'guestoffice@bogotamarket.com', '$2y$10$qk.K6cSA9Iz5T1OyAYMFEObntxmJMHHAOv7zeo4x3jV1b/OV.jI4G', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(8, 'Ingrid Torres', 'coord.tv@bogotamarket.com', '$2y$10$NcTeimMmLKgb7ooAlPqrnO3gfYjcVdbYsViJbU641XNjQAagDEbwK', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(9, 'Isabel Cuadros', 'isabelcuadros@proimagenescolombia.com', '$2y$10$EqyD43FcfwGk6g/uVA2Jf.xDT159PzNI83Vp/DzRln7IVxwmirXNC', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(10, 'Katalina Tobón', 'contents@bogotamarket.com', '$2y$10$AK5B22d3ruErbl8gdZEw.e0JaRedhefJY27f7bSmfdiiX3jBZ5Hpa', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(11, 'Laura Muñoz', 'lauramunoz@proimagenescolombia.com', '$2y$10$AD/YKSk1elhtz9Zpu/o5iesOqYEV/h15Z50ZGhWDyskZnGFcD1IdK', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(12, 'Manuel Zuluaga', 'stories@bogotamarket.com', '$2y$10$jXntmDveJV4.rKb.eUbBsOIJBRQFmrboXlVkMJR/v9apoJoHDDXqm', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(13, 'Manuela Blandón', 'forum@bogotamarket.com', '$2y$10$VWzDhebQ4wMe.ewncjOS3uDo1O/D1nQyMbijx4J/0qtKo1JBZpc6a', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(14, 'Santiago Parra', 'industry@bogotamarket.com', '$2y$10$ny3tlky3deTvV30aS9DhKOIiNAFOlKdRUrz/DBzsnbqX0DHFAODSi', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(15, 'Carlos Mican', 'experience@bogotamarket.com', '$2y$10$0v5wpZWzagOlcGQ.bbQRC.N/GygKzf3GRXCcprIW2I14z7V9Eh6u2', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL),
(16, 'Denisse Martínez', 'projects@bogotamarket.com', '$2y$10$LTPg5dlGT4WwWhPKFROpgOAjavYk6wmMw6RWJC51SJyAVbBUPeSzi', 2, '2022-08-24 18:25:33', '2022-08-24 18:25:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videohome`
--

CREATE TABLE `videohome` (
  `cod_vid` int(11) NOT NULL,
  `you_vid` varchar(250) DEFAULT NULL COMMENT 'codigo youtube',
  `img_vid` varchar(250) DEFAULT NULL COMMENT 'imagen de fondo',
  `tit_vid` varchar(250) DEFAULT NULL COMMENT 'titulo',
  `sti_vid` varchar(250) DEFAULT NULL COMMENT 'subtitulo',
  `ent_not` varchar(250) DEFAULT NULL COMMENT 'entradilla',
  `tit_vid_ing` varchar(250) DEFAULT NULL,
  `sti_vid_ing` varchar(250) DEFAULT NULL,
  `ent_not_ing` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `videohome`
--

INSERT INTO `videohome` (`cod_vid`, `you_vid`, `img_vid`, `tit_vid`, `sti_vid`, `ent_not`, `tit_vid_ing`, `sti_vid_ing`, `ent_not_ing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'XUhT-i0HVhI', 'https://bogotamarket.com/images/site/1694212368_667f600e8984e12c0fcd.jpg', 'ASÍ SE VIVIÓ EL #14BAM', 'BAM 2023', '', 'THIS IS #14BAM', 'BAM 2023', '', NULL, '2023-11-20 11:35:35', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendaeventos`
--
ALTER TABLE `agendaeventos`
  ADD PRIMARY KEY (`cod_ave`);

--
-- Indices de la tabla `agendaeventosregiones`
--
ALTER TABLE `agendaeventosregiones`
  ADD PRIMARY KEY (`cod_ave`);

--
-- Indices de la tabla `agendalugares`
--
ALTER TABLE `agendalugares`
  ADD PRIMARY KEY (`cod_lug`);

--
-- Indices de la tabla `agendamantenimiento`
--
ALTER TABLE `agendamantenimiento`
  ADD PRIMARY KEY (`cod_ama`);

--
-- Indices de la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  ADD PRIMARY KEY (`cod_age`);

--
-- Indices de la tabla `agendatipo`
--
ALTER TABLE `agendatipo`
  ADD PRIMARY KEY (`cod_tag`);

--
-- Indices de la tabla `agendaubicacion`
--
ALTER TABLE `agendaubicacion`
  ADD PRIMARY KEY (`cod_ubi`);

--
-- Indices de la tabla `aliados`
--
ALTER TABLE `aliados`
  ADD PRIMARY KEY (`cod_ali`);

--
-- Indices de la tabla `aliadosacreditacion`
--
ALTER TABLE `aliadosacreditacion`
  ADD PRIMARY KEY (`cod_alc`);

--
-- Indices de la tabla `alianzaagenda`
--
ALTER TABLE `alianzaagenda`
  ADD PRIMARY KEY (`cod_aag`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`cod_ban`);

--
-- Indices de la tabla `bom`
--
ALTER TABLE `bom`
  ADD PRIMARY KEY (`cod_bom`);

--
-- Indices de la tabla `cabezotebomdetalle`
--
ALTER TABLE `cabezotebomdetalle`
  ADD PRIMARY KEY (`cod_cab`);

--
-- Indices de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`cod_cap`);

--
-- Indices de la tabla `capitulosbom`
--
ALTER TABLE `capitulosbom`
  ADD PRIMARY KEY (`cod_cbo`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`cod_cat`);

--
-- Indices de la tabla `categoriasconvocatoria`
--
ALTER TABLE `categoriasconvocatoria`
  ADD PRIMARY KEY (`cod_cac`);

--
-- Indices de la tabla `cifras`
--
ALTER TABLE `cifras`
  ADD PRIMARY KEY (`cod_cif`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cli`);

--
-- Indices de la tabla `codigosacreditacion`
--
ALTER TABLE `codigosacreditacion`
  ADD PRIMARY KEY (`cod_coa`);

--
-- Indices de la tabla `comiteevaluador`
--
ALTER TABLE `comiteevaluador`
  ADD PRIMARY KEY (`cod_coe`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`cod_con`);

--
-- Indices de la tabla `cuerpobomdetalle`
--
ALTER TABLE `cuerpobomdetalle`
  ADD PRIMARY KEY (`cod_cub`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`cod_dep`);

--
-- Indices de la tabla `detagendaparticioantes`
--
ALTER TABLE `detagendaparticioantes`
  ADD PRIMARY KEY (`cod_dap`);

--
-- Indices de la tabla `detplantillaitem`
--
ALTER TABLE `detplantillaitem`
  ADD PRIMARY KEY (`cod_dpi`);

--
-- Indices de la tabla `detsubpartidas`
--
ALTER TABLE `detsubpartidas`
  ADD PRIMARY KEY (`cod_dsu`);

--
-- Indices de la tabla `ediciones`
--
ALTER TABLE `ediciones`
  ADD PRIMARY KEY (`cod_edi`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`cod_equ`);

--
-- Indices de la tabla `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`cod_faq`);

--
-- Indices de la tabla `favoritosguia`
--
ALTER TABLE `favoritosguia`
  ADD PRIMARY KEY (`cod_fav`);

--
-- Indices de la tabla `galeriaimagenes`
--
ALTER TABLE `galeriaimagenes`
  ADD PRIMARY KEY (`cod_gal`);

--
-- Indices de la tabla `galeriaimagenesdetalle`
--
ALTER TABLE `galeriaimagenesdetalle`
  ADD PRIMARY KEY (`cod_dga`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`cod_ite`);

--
-- Indices de la tabla `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`cod_lab`);

--
-- Indices de la tabla `listafavoritos`
--
ALTER TABLE `listafavoritos`
  ADD PRIMARY KEY (`cod_lif`);

--
-- Indices de la tabla `menueventos`
--
ALTER TABLE `menueventos`
  ADD PRIMARY KEY (`cod_mne`);

--
-- Indices de la tabla `menuprincipal`
--
ALTER TABLE `menuprincipal`
  ADD PRIMARY KEY (`cod_mep`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`cod_mun`),
  ADD KEY `departamento_id` (`cod_dep_mun`);

--
-- Indices de la tabla `municipios_1`
--
ALTER TABLE `municipios_1`
  ADD PRIMARY KEY (`cod_mun`),
  ADD KEY `departamento_id` (`id_dep_mun`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`cod_not`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`cod_pra`);

--
-- Indices de la tabla `participanbam`
--
ALTER TABLE `participanbam`
  ADD PRIMARY KEY (`cod_par`);

--
-- Indices de la tabla `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`cod_par`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`cod_per`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`cod_pla`);

--
-- Indices de la tabla `prensa`
--
ALTER TABLE `prensa`
  ADD PRIMARY KEY (`cod_pre`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`cod_pro`);

--
-- Indices de la tabla `regionesbam`
--
ALTER TABLE `regionesbam`
  ADD PRIMARY KEY (`cod_reg`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`cod_sed`);

--
-- Indices de la tabla `sitio`
--
ALTER TABLE `sitio`
  ADD PRIMARY KEY (`cod_sit`);

--
-- Indices de la tabla `speakerseventos`
--
ALTER TABLE `speakerseventos`
  ADD PRIMARY KEY (`cod_spe`);

--
-- Indices de la tabla `tarifasacreditacion`
--
ALTER TABLE `tarifasacreditacion`
  ADD PRIMARY KEY (`cod_tar`);

--
-- Indices de la tabla `tipo_equipo`
--
ALTER TABLE `tipo_equipo`
  ADD PRIMARY KEY (`cod_teq`);

--
-- Indices de la tabla `tipo_sistema`
--
ALTER TABLE `tipo_sistema`
  ADD PRIMARY KEY (`cod_tsi`);

--
-- Indices de la tabla `ubicacaciones`
--
ALTER TABLE `ubicacaciones`
  ADD PRIMARY KEY (`cod_ubi`);

--
-- Indices de la tabla `unidadesmedida`
--
ALTER TABLE `unidadesmedida`
  ADD PRIMARY KEY (`cod_uni`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod_usu`);

--
-- Indices de la tabla `videohome`
--
ALTER TABLE `videohome`
  ADD PRIMARY KEY (`cod_vid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendaeventos`
--
ALTER TABLE `agendaeventos`
  MODIFY `cod_ave` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `agendaeventosregiones`
--
ALTER TABLE `agendaeventosregiones`
  MODIFY `cod_ave` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `agendalugares`
--
ALTER TABLE `agendalugares`
  MODIFY `cod_lug` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `agendamantenimiento`
--
ALTER TABLE `agendamantenimiento`
  MODIFY `cod_ama` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  MODIFY `cod_age` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `agendatipo`
--
ALTER TABLE `agendatipo`
  MODIFY `cod_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `agendaubicacion`
--
ALTER TABLE `agendaubicacion`
  MODIFY `cod_ubi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `aliados`
--
ALTER TABLE `aliados`
  MODIFY `cod_ali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `aliadosacreditacion`
--
ALTER TABLE `aliadosacreditacion`
  MODIFY `cod_alc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT de la tabla `alianzaagenda`
--
ALTER TABLE `alianzaagenda`
  MODIFY `cod_aag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `cod_ban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `bom`
--
ALTER TABLE `bom`
  MODIFY `cod_bom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `cabezotebomdetalle`
--
ALTER TABLE `cabezotebomdetalle`
  MODIFY `cod_cab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `cod_cap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `capitulosbom`
--
ALTER TABLE `capitulosbom`
  MODIFY `cod_cbo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cod_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `categoriasconvocatoria`
--
ALTER TABLE `categoriasconvocatoria`
  MODIFY `cod_cac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cifras`
--
ALTER TABLE `cifras`
  MODIFY `cod_cif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod_cli` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codigo', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `codigosacreditacion`
--
ALTER TABLE `codigosacreditacion`
  MODIFY `cod_coa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comiteevaluador`
--
ALTER TABLE `comiteevaluador`
  MODIFY `cod_coe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `cod_con` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `cuerpobomdetalle`
--
ALTER TABLE `cuerpobomdetalle`
  MODIFY `cod_cub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `cod_dep` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `detagendaparticioantes`
--
ALTER TABLE `detagendaparticioantes`
  MODIFY `cod_dap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detplantillaitem`
--
ALTER TABLE `detplantillaitem`
  MODIFY `cod_dpi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT de la tabla `detsubpartidas`
--
ALTER TABLE `detsubpartidas`
  MODIFY `cod_dsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `ediciones`
--
ALTER TABLE `ediciones`
  MODIFY `cod_edi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `cod_equ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT de la tabla `faq`
--
ALTER TABLE `faq`
  MODIFY `cod_faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `favoritosguia`
--
ALTER TABLE `favoritosguia`
  MODIFY `cod_fav` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galeriaimagenes`
--
ALTER TABLE `galeriaimagenes`
  MODIFY `cod_gal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `galeriaimagenesdetalle`
--
ALTER TABLE `galeriaimagenesdetalle`
  MODIFY `cod_dga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `cod_ite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT de la tabla `label`
--
ALTER TABLE `label`
  MODIFY `cod_lab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `listafavoritos`
--
ALTER TABLE `listafavoritos`
  MODIFY `cod_lif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menueventos`
--
ALTER TABLE `menueventos`
  MODIFY `cod_mne` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menuprincipal`
--
ALTER TABLE `menuprincipal`
  MODIFY `cod_mep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `cod_mun` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT de la tabla `municipios_1`
--
ALTER TABLE `municipios_1`
  MODIFY `cod_mun` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `cod_not` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `parametros`
--
ALTER TABLE `parametros`
  MODIFY `cod_pra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=769;

--
-- AUTO_INCREMENT de la tabla `participanbam`
--
ALTER TABLE `participanbam`
  MODIFY `cod_par` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `partida`
--
ALTER TABLE `partida`
  MODIFY `cod_par` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `cod_per` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `cod_pla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `prensa`
--
ALTER TABLE `prensa`
  MODIFY `cod_pre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `cod_pro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regionesbam`
--
ALTER TABLE `regionesbam`
  MODIFY `cod_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `cod_sed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `sitio`
--
ALTER TABLE `sitio`
  MODIFY `cod_sit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `speakerseventos`
--
ALTER TABLE `speakerseventos`
  MODIFY `cod_spe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `tarifasacreditacion`
--
ALTER TABLE `tarifasacreditacion`
  MODIFY `cod_tar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tipo_equipo`
--
ALTER TABLE `tipo_equipo`
  MODIFY `cod_teq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `tipo_sistema`
--
ALTER TABLE `tipo_sistema`
  MODIFY `cod_tsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ubicacaciones`
--
ALTER TABLE `ubicacaciones`
  MODIFY `cod_ubi` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codigo', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `unidadesmedida`
--
ALTER TABLE `unidadesmedida`
  MODIFY `cod_uni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `videohome`
--
ALTER TABLE `videohome`
  MODIFY `cod_vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
