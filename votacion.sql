-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2023 a las 07:16:04
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `ID_candidato` int(11) NOT NULL,
  `C_nombre` varchar(200) NOT NULL,
  `ID_estado` int(11) NOT NULL DEFAULT 1,
  `C_fecha_creacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`ID_candidato`, `C_nombre`, `ID_estado`, `C_fecha_creacion`) VALUES
(1, 'CANDIDATO 1', 1, '2023-12-03 00:00:02'),
(2, 'CANDIDATO 2', 1, '2023-12-03 00:00:02'),
(3, 'CANDIDATO 3', 1, '2023-12-03 00:00:02'),
(4, 'CANDIDATO 4', 1, '2023-12-03 00:00:02'),
(5, 'CANDIDATO 5', 1, '2023-12-03 00:00:02'),
(6, 'CANDIDATO 6', 1, '2023-12-03 00:00:02'),
(7, 'CANDIDATO 7', 1, '2023-12-03 00:00:02'),
(8, 'CANDIDATO 8', 1, '2023-12-03 00:00:02'),
(9, 'CANDIDATO 9', 1, '2023-12-03 00:00:02'),
(10, 'CANDIDATO 10', 1, '2023-12-03 00:00:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `ID_comuna` int(11) NOT NULL,
  `ID_region` int(11) NOT NULL,
  `CM_nombre` varchar(200) NOT NULL,
  `ID_estado` int(11) NOT NULL DEFAULT 1,
  `CM_fecha_creacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`ID_comuna`, `ID_region`, `CM_nombre`, `ID_estado`, `CM_fecha_creacion`) VALUES
(1, 14, 'PUERTO MONTT', 1, '2023-04-06 15:32:36'),
(2, 1, 'ARICA', 1, '2023-04-13 09:48:00'),
(3, 1, 'CAMARONES', 1, '2023-04-13 09:48:00'),
(4, 1, 'GENERAL LAGOS', 1, '2023-04-13 09:48:00'),
(5, 1, 'PUTRE', 1, '2023-04-13 09:48:00'),
(6, 2, 'ALTO HOSPICIO', 1, '2023-04-13 09:48:00'),
(7, 2, 'IQUIQUE', 1, '2023-04-13 09:48:00'),
(8, 2, 'CAMIÑA', 1, '2023-04-13 09:48:00'),
(9, 2, 'COLCHANE', 1, '2023-04-13 09:48:00'),
(10, 2, 'HUARA', 1, '2023-04-13 09:48:00'),
(11, 2, 'PICA', 1, '2023-04-13 09:48:00'),
(12, 2, 'POZO ALMONTE', 1, '2023-04-13 09:48:00'),
(13, 3, 'TOCOPILLA', 1, '2023-04-13 09:48:00'),
(14, 3, 'MARIA ELENA', 1, '2023-04-13 09:48:00'),
(15, 3, 'CALAMA', 1, '2023-04-13 09:48:00'),
(16, 3, 'OLLAGUE', 1, '2023-04-13 09:48:00'),
(17, 3, 'SAN PEDRO DE ATACAMA', 1, '2023-04-13 09:48:00'),
(18, 3, 'ANTOFAGASTA', 1, '2023-04-13 09:48:00'),
(19, 3, 'MEJILLONES', 1, '2023-04-13 09:48:00'),
(20, 3, 'SIERRA GORDA', 1, '2023-04-13 09:48:00'),
(21, 3, 'TALTAL', 1, '2023-04-13 09:48:00'),
(22, 4, 'CHAÑARAL', 1, '2023-04-13 09:48:00'),
(23, 4, 'DIEGO DE ALMAGRO', 1, '2023-04-13 09:48:00'),
(24, 4, 'COPIAPÓ', 1, '2023-04-13 09:48:00'),
(25, 4, 'CALDERA', 1, '2023-04-13 09:48:00'),
(26, 4, 'TIERRA AMARILLA', 1, '2023-04-13 09:48:00'),
(27, 4, 'VALLENAR', 1, '2023-04-13 09:48:00'),
(28, 4, 'ALTO DEL CARMEN', 1, '2023-04-13 09:48:00'),
(29, 4, 'FREIRINA', 1, '2023-04-13 09:48:00'),
(30, 4, 'HUASCO', 1, '2023-04-13 09:48:00'),
(31, 5, 'LA SERENA', 1, '2023-04-13 09:48:00'),
(32, 5, 'COQUIMBO', 1, '2023-04-13 09:48:00'),
(33, 5, 'ANDACOLLO', 1, '2023-04-13 09:48:00'),
(34, 5, 'LA HIGUERA', 1, '2023-04-13 09:48:00'),
(35, 5, 'PAIHUANO', 1, '2023-04-13 09:48:00'),
(36, 5, 'VICUÑA', 1, '2023-04-13 09:48:00'),
(37, 5, 'OVALLE', 1, '2023-04-13 09:48:00'),
(38, 5, 'COMBARBALÁ', 1, '2023-04-13 09:48:00'),
(39, 5, 'MONTE PATRIA', 1, '2023-04-13 09:48:00'),
(40, 5, 'PUNITAQUI', 1, '2023-04-13 09:48:00'),
(41, 5, 'RÍO HURTADO', 1, '2023-04-13 09:48:00'),
(42, 5, 'ILLAPEL', 1, '2023-04-13 09:48:00'),
(43, 5, 'CANELA', 1, '2023-04-13 09:48:00'),
(44, 5, 'LOS VILOS', 1, '2023-04-13 09:48:00'),
(45, 5, 'SALAMANCA', 1, '2023-04-13 09:48:00'),
(46, 6, 'LA LIGUA', 1, '2023-04-13 09:48:00'),
(47, 6, 'CABILDO', 1, '2023-04-13 09:48:00'),
(48, 6, 'ZAPALLAR', 1, '2023-04-13 09:48:00'),
(49, 6, 'PAPUDO', 1, '2023-04-13 09:48:00'),
(50, 6, 'PETORCA', 1, '2023-04-13 09:48:00'),
(51, 6, 'LOS ANDES', 1, '2023-04-13 09:48:00'),
(52, 6, 'SAN ESTEBAN', 1, '2023-04-13 09:48:00'),
(53, 6, 'CALLE LARGA', 1, '2023-04-13 09:48:00'),
(67, 6, 'RINCONADA', 1, '2023-04-13 09:48:00'),
(68, 6, 'SAN FELIPE', 1, '2023-04-13 09:48:00'),
(69, 6, 'LLAILLAY', 1, '2023-04-13 09:48:00'),
(70, 6, 'PUTAENDO', 1, '2023-04-13 09:48:00'),
(71, 6, 'SANTA MARIA', 1, '2023-04-13 09:48:00'),
(72, 6, 'CATEMU', 1, '2023-04-13 09:48:00'),
(73, 6, 'PANQUEHUE', 1, '2023-04-13 09:48:00'),
(74, 6, 'QUILLOTA', 1, '2023-04-13 09:48:00'),
(75, 6, 'LA CRUZ', 1, '2023-04-13 09:48:00'),
(76, 6, 'LA CALERA', 1, '2023-04-13 09:48:00'),
(77, 6, 'NOGALES', 1, '2023-04-13 09:48:00'),
(78, 6, 'HIJUELAS', 1, '2023-04-13 09:48:00'),
(79, 6, 'VALPARAÍSO', 1, '2023-04-13 09:48:00'),
(80, 6, 'VIÑA DEL MAR', 1, '2023-04-13 09:48:00'),
(81, 6, 'CONCÓN', 1, '2023-04-13 09:48:00'),
(82, 6, 'QUINTERO', 1, '2023-04-13 09:48:00'),
(83, 6, 'PUCHUNCAVÍ', 1, '2023-04-13 09:48:00'),
(84, 6, 'CASABLANCA', 1, '2023-04-13 09:48:00'),
(85, 6, 'JUAN FERNÁNDEZ', 1, '2023-04-13 09:48:00'),
(86, 6, 'SAN ANTONIO', 1, '2023-04-13 09:48:00'),
(87, 6, 'CARTAGENA', 1, '2023-04-13 09:48:00'),
(88, 6, 'EL TABO', 1, '2023-04-13 09:48:00'),
(89, 6, 'EL QUISCO', 1, '2023-04-13 09:48:00'),
(90, 6, 'ALGARROBO', 1, '2023-04-13 09:48:00'),
(91, 6, 'SANTO DOMINGO', 1, '2023-04-13 09:48:00'),
(92, 6, 'ISLA DE PASCUA', 1, '2023-04-13 09:48:00'),
(93, 6, 'QUILPUÉ', 1, '2023-04-13 09:48:00'),
(94, 6, 'LIMACHE', 1, '2023-04-13 09:48:00'),
(95, 6, 'OLMUÉ', 1, '2023-04-13 09:48:00'),
(96, 6, 'VILLA ALEMANA', 1, '2023-04-13 09:48:00'),
(97, 7, 'COLINA', 1, '2023-04-13 09:48:00'),
(98, 7, 'LAMPA', 1, '2023-04-13 09:48:00'),
(99, 7, 'TILTIL', 1, '2023-04-13 09:48:00'),
(100, 7, 'SANTIAGO ', 1, '2023-04-13 09:48:00'),
(101, 7, 'VITACURA', 1, '2023-04-13 09:48:00'),
(102, 7, 'SAN RAMÓN', 1, '2023-04-13 09:48:00'),
(103, 7, 'SAN MIGUEL', 1, '2023-04-13 09:48:00'),
(104, 7, 'SAN JOAQUÍN', 1, '2023-04-13 09:48:00'),
(105, 7, 'RENCA', 1, '2023-04-13 09:48:00'),
(106, 7, 'RECOLETA', 1, '2023-04-13 09:48:00'),
(107, 7, 'QUINTA NORMAL', 1, '2023-04-13 09:48:00'),
(108, 7, 'QUILICURA', 1, '2023-04-13 09:48:00'),
(109, 7, 'PUDAHUEL', 1, '2023-04-13 09:48:00'),
(110, 7, 'PROVIDENCIA', 1, '2023-04-13 09:48:00'),
(111, 7, 'PEÑALOLÉN', 1, '2023-04-13 09:48:00'),
(112, 7, 'PEDRO AGUIRRE CERDA', 1, '2023-04-13 09:48:00'),
(113, 7, 'ÑUÑOA', 1, '2023-04-13 09:48:00'),
(114, 7, 'MAIPÚ', 1, '2023-04-13 09:48:00'),
(115, 7, 'MACUL', 1, '2023-04-13 09:48:00'),
(116, 7, 'LO PRADO', 1, '2023-04-13 09:48:00'),
(117, 7, 'LO ESPEJO', 1, '2023-04-13 09:48:00'),
(118, 7, 'LO BARNECHEA', 1, '2023-04-13 09:48:00'),
(119, 7, 'LAS CONDES', 1, '2023-04-13 09:48:00'),
(120, 7, 'LA REINA', 1, '2023-04-13 09:48:00'),
(121, 7, 'LA PINTANA', 1, '2023-04-13 09:48:00'),
(122, 7, 'LA GRANJA', 1, '2023-04-13 09:48:00'),
(123, 7, 'LA FLORIDA', 1, '2023-04-13 09:48:00'),
(124, 7, 'LA CISTERNA', 1, '2023-04-13 09:48:00'),
(125, 7, 'INDEPENDENCIA', 1, '2023-04-13 09:48:00'),
(126, 7, 'HUECHURABA', 1, '2023-04-13 09:48:00'),
(127, 7, 'ESTACIÓN CENTRAL', 1, '2023-04-13 09:48:00'),
(128, 7, 'EL BOSQUE', 1, '2023-04-13 09:48:00'),
(129, 7, 'CONCHALÍ', 1, '2023-04-13 09:48:00'),
(130, 7, 'CERRO NAVIA', 1, '2023-04-13 09:48:00'),
(131, 7, 'CERRILLOS', 1, '2023-04-13 09:48:00'),
(132, 7, 'PUENTE ALTO', 1, '2023-04-13 09:48:00'),
(133, 7, 'SAN JOSÉ DE MAIPO', 1, '2023-04-13 09:48:00'),
(134, 7, 'PIRQUE', 1, '2023-04-13 09:48:00'),
(135, 7, 'SAN BERNARDO', 1, '2023-04-13 09:48:00'),
(136, 7, 'BUIN', 1, '2023-04-13 09:48:00'),
(137, 7, 'PAINE', 1, '2023-04-13 09:48:00'),
(138, 7, 'CALERA DE TANGO', 1, '2023-04-13 09:48:00'),
(139, 7, 'MELIPILLA', 1, '2023-04-13 09:48:00'),
(140, 7, 'ALHUÉ', 1, '2023-04-13 09:48:00'),
(141, 7, 'CURACAVÍ', 1, '2023-04-13 09:48:00'),
(142, 7, 'MARÍA PINTO', 1, '2023-04-13 09:48:00'),
(143, 7, 'SAN PEDRO', 1, '2023-04-13 09:48:00'),
(144, 7, 'ISLA DE MAIPO', 1, '2023-04-13 09:48:00'),
(145, 7, 'EL MONTE', 1, '2023-04-13 09:48:00'),
(146, 7, 'PADRE HURTADO', 1, '2023-04-13 09:48:00'),
(147, 7, 'PEÑAFLOR', 1, '2023-04-13 09:48:00'),
(148, 7, 'TALAGANTE', 1, '2023-04-13 09:48:00'),
(149, 8, 'CODEGUA', 1, '2023-04-13 09:48:00'),
(150, 8, 'COINCO', 1, '2023-04-13 09:48:00'),
(151, 8, 'COLTAUCO', 1, '2023-04-13 09:48:00'),
(152, 8, 'DOÑIHUE', 1, '2023-04-13 09:48:00'),
(153, 8, 'GRANEROS', 1, '2023-04-13 09:48:00'),
(154, 8, 'LAS CABRAS', 1, '2023-04-13 09:48:00'),
(155, 8, 'MACHALÍ', 1, '2023-04-13 09:48:00'),
(156, 8, 'MALLOA', 1, '2023-04-13 09:48:00'),
(157, 8, 'MOSTAZAL', 1, '2023-04-13 09:48:00'),
(158, 8, 'OLIVAR', 1, '2023-04-13 09:48:00'),
(159, 8, 'PEUMO', 1, '2023-04-13 09:48:00'),
(160, 8, 'PICHIDEGUA', 1, '2023-04-13 09:48:00'),
(161, 8, 'QUINTA DE TILCOCO', 1, '2023-04-13 09:48:00'),
(162, 8, 'RANCAGUA', 1, '2023-04-13 09:48:00'),
(163, 8, 'RENGO', 1, '2023-04-13 09:48:00'),
(164, 8, 'REQUÍNOA', 1, '2023-04-13 09:48:00'),
(165, 8, 'SAN VICENTE DE TAGUA TAGUA', 1, '2023-04-13 09:48:00'),
(166, 8, 'CHÉPICA', 1, '2023-04-13 09:48:00'),
(167, 8, 'CHIMBARONGO', 1, '2023-04-13 09:48:00'),
(168, 8, 'LOLOL', 1, '2023-04-13 09:48:00'),
(169, 8, 'NANCAGUA', 1, '2023-04-13 09:48:00'),
(170, 8, 'PALMILLA', 1, '2023-04-13 09:48:00'),
(171, 8, 'PERALILLO', 1, '2023-04-13 09:48:00'),
(172, 8, 'PLACILLA', 1, '2023-04-13 09:48:00'),
(173, 8, 'PUMANQUE', 1, '2023-04-13 09:48:00'),
(174, 8, 'SAN FERNANDO', 1, '2023-04-13 09:48:00'),
(175, 8, 'SANTA CRUZ', 1, '2023-04-13 09:48:00'),
(176, 8, 'LA ESTRELLA', 1, '2023-04-13 09:48:00'),
(177, 8, 'LITUECHE', 1, '2023-04-13 09:48:00'),
(178, 8, 'MARCHIGÜE', 1, '2023-04-13 09:48:00'),
(179, 8, 'NAVIDAD', 1, '2023-04-13 09:48:00'),
(180, 8, 'PAREDONES', 1, '2023-04-13 09:48:00'),
(181, 8, 'PICHILEMU', 1, '2023-04-13 09:48:00'),
(182, 9, 'CURICÓ', 1, '2023-04-13 09:48:00'),
(183, 9, 'HUALAÑÉ', 1, '2023-04-13 09:48:00'),
(184, 9, 'LICANTÉN', 1, '2023-04-13 09:48:00'),
(185, 9, 'MOLINA', 1, '2023-04-13 09:48:00'),
(186, 9, 'RAUCO', 1, '2023-04-13 09:48:00'),
(187, 9, 'ROMERAL', 1, '2023-04-13 09:48:00'),
(188, 9, 'SAGRADA FAMILIA', 1, '2023-04-13 09:48:00'),
(189, 9, 'TENO', 1, '2023-04-13 09:48:00'),
(190, 9, 'CONSTITUCIÓN', 1, '2023-04-13 09:48:00'),
(191, 9, 'CUREPTO', 1, '2023-04-13 09:48:00'),
(192, 9, 'EMPEDRADO', 1, '2023-04-13 09:48:00'),
(193, 9, 'MAULE', 1, '2023-04-13 09:48:00'),
(194, 9, 'PELARCO', 1, '2023-04-13 09:48:00'),
(195, 9, 'PENCAHUE', 1, '2023-04-13 09:48:00'),
(196, 9, 'RÍO CLARO', 1, '2023-04-13 09:48:00'),
(197, 9, 'SAN CLEMENTE', 1, '2023-04-13 09:48:00'),
(198, 9, 'SAN RAFAEL', 1, '2023-04-13 09:48:00'),
(199, 9, 'TALCA', 1, '2023-04-13 09:48:00'),
(200, 9, 'LINARES', 1, '2023-04-13 09:48:00'),
(201, 9, 'COLBÚN', 1, '2023-04-13 09:48:00'),
(202, 9, 'LONGAVÍ', 1, '2023-04-13 09:48:00'),
(203, 9, 'PARRAL', 1, '2023-04-13 09:48:00'),
(204, 9, 'RETIRO', 1, '2023-04-13 09:48:00'),
(205, 9, 'SAN JAVIER DE LONCOMILLA', 1, '2023-04-13 09:48:00'),
(206, 9, 'VILLA ALEGRE', 1, '2023-04-13 09:48:00'),
(207, 9, 'YERBAS BUENAS', 1, '2023-04-13 09:48:00'),
(208, 9, 'CAUQUENES', 1, '2023-04-13 09:48:00'),
(209, 9, 'CHANCO', 1, '2023-04-13 09:48:00'),
(210, 9, 'PELLUHUE', 1, '2023-04-13 09:48:00'),
(211, 10, 'BULNES', 1, '2023-04-13 09:48:00'),
(212, 10, 'CHILLÁN', 1, '2023-04-13 09:48:00'),
(213, 10, 'CHILLÁN VIEJO', 1, '2023-04-13 09:48:00'),
(214, 10, 'EL CARMEN', 1, '2023-04-13 09:48:00'),
(215, 10, 'PEMUCO', 1, '2023-04-13 09:48:00'),
(216, 10, 'PINTO', 1, '2023-04-13 09:48:00'),
(217, 10, 'QUILLÓN', 1, '2023-04-13 09:48:00'),
(218, 10, 'SAN IGNACIO', 1, '2023-04-13 09:48:00'),
(219, 10, 'YUNGAY', 1, '2023-04-13 09:48:00'),
(220, 10, 'COBQUECURA', 1, '2023-04-13 09:48:00'),
(221, 10, 'COELEMU', 1, '2023-04-13 09:48:00'),
(222, 10, 'NINHUE', 1, '2023-04-13 09:48:00'),
(223, 10, 'PORTEZUELO', 1, '2023-04-13 09:48:00'),
(224, 10, 'QUIRIHUE', 1, '2023-04-13 09:48:00'),
(225, 10, 'RÁNQUIL', 1, '2023-04-13 09:48:00'),
(226, 10, 'TREGUACO', 1, '2023-04-13 09:48:00'),
(227, 10, 'SAN CARLOS', 1, '2023-04-13 09:48:00'),
(228, 10, 'COIHUECO', 1, '2023-04-13 09:48:00'),
(229, 10, 'SAN NICOLÁS', 1, '2023-04-13 09:48:00'),
(230, 10, 'ÑIQUÉN', 1, '2023-04-13 09:48:00'),
(231, 10, 'SAN FABIÁN', 1, '2023-04-13 09:48:00'),
(232, 11, 'ALTO BIOBÍO', 1, '2023-04-13 09:48:00'),
(233, 11, 'ANTUCO', 1, '2023-04-13 09:48:00'),
(234, 11, 'CABRERO', 1, '2023-04-13 09:48:00'),
(235, 11, 'LAJA', 1, '2023-04-13 09:48:00'),
(236, 11, 'LOS ÁNGELES', 1, '2023-04-13 09:48:00'),
(237, 11, 'MULCHÉN', 1, '2023-04-13 09:48:00'),
(238, 11, 'NACIMIENTO', 1, '2023-04-13 09:48:00'),
(239, 11, 'NEGRETE', 1, '2023-04-13 09:48:00'),
(240, 11, 'QUILACO', 1, '2023-04-13 09:48:00'),
(241, 11, 'QUILLECO', 1, '2023-04-13 09:48:00'),
(242, 11, 'SAN ROSENDO', 1, '2023-04-13 09:48:00'),
(243, 11, 'SANTA BÁRBARA', 1, '2023-04-13 09:48:00'),
(244, 11, 'TUCAPEL', 1, '2023-04-13 09:48:00'),
(245, 11, 'YUMBEL', 1, '2023-04-13 09:48:00'),
(246, 11, 'CONCEPCIÓN', 1, '2023-04-13 09:48:00'),
(247, 11, 'CORONEL', 1, '2023-04-13 09:48:00'),
(248, 11, 'CHIGUAYANTE', 1, '2023-04-13 09:48:00'),
(249, 11, 'FLORIDA', 1, '2023-04-13 09:48:00'),
(250, 11, 'HUALPÉN', 1, '2023-04-13 09:48:00'),
(251, 11, 'HUALQUI', 1, '2023-04-13 09:48:00'),
(252, 11, 'LOTA', 1, '2023-04-13 09:48:00'),
(253, 11, 'PENCO', 1, '2023-04-13 09:48:00'),
(254, 11, 'SAN PEDRO DE LA PAZ', 1, '2023-04-13 09:48:00'),
(255, 11, 'SANTA JUANA', 1, '2023-04-13 09:48:00'),
(256, 11, 'TALCAHUANO', 1, '2023-04-13 09:48:00'),
(257, 11, 'TOMÉ', 1, '2023-04-13 09:48:00'),
(258, 11, 'ARAUCO', 1, '2023-04-13 09:48:00'),
(259, 11, 'CAÑETE', 1, '2023-04-13 09:48:00'),
(260, 11, 'CONTULMO', 1, '2023-04-13 09:48:00'),
(261, 11, 'CURANILAHUE', 1, '2023-04-13 09:48:00'),
(262, 11, 'LEBU ', 1, '2023-04-13 09:48:00'),
(263, 11, 'LOS ÁLAMOS', 1, '2023-04-13 09:48:00'),
(264, 11, 'TIRÚA', 1, '2023-04-13 09:48:00'),
(265, 12, 'ANGOL', 1, '2023-04-13 09:48:00'),
(266, 12, 'COLLIPULLI', 1, '2023-04-13 09:48:00'),
(267, 12, 'CURACAUTÍN', 1, '2023-04-13 09:48:00'),
(268, 12, 'ERCILLA', 1, '2023-04-13 09:48:00'),
(269, 12, 'LONQUIMAY', 1, '2023-04-13 09:48:00'),
(270, 12, 'LOS SAUCES', 1, '2023-04-13 09:48:00'),
(271, 12, 'LUMACO', 1, '2023-04-13 09:48:00'),
(272, 12, 'PURÉN', 1, '2023-04-13 09:48:00'),
(273, 12, 'RENAICO', 1, '2023-04-13 09:48:00'),
(274, 12, 'TRAIGUÉN', 1, '2023-04-13 09:48:00'),
(275, 12, 'VICTORIA', 1, '2023-04-13 09:48:00'),
(276, 12, 'TEMUCO', 1, '2023-04-13 09:48:00'),
(277, 12, 'CARAHUE', 1, '2023-04-13 09:48:00'),
(278, 12, 'CHOLCHOL', 1, '2023-04-13 09:48:00'),
(279, 12, 'CUNCO', 1, '2023-04-13 09:48:00'),
(280, 12, 'CURARREHUE', 1, '2023-04-13 09:48:00'),
(281, 12, 'FREIRE', 1, '2023-04-13 09:48:00'),
(282, 12, 'GALVARINO', 1, '2023-04-13 09:48:00'),
(283, 12, 'GORBEA', 1, '2023-04-13 09:48:00'),
(284, 12, 'LAUTARO', 1, '2023-04-13 09:48:00'),
(285, 12, 'LONCOCHE', 1, '2023-04-13 09:48:00'),
(286, 12, 'MELIPEUCO', 1, '2023-04-13 09:48:00'),
(287, 12, 'NUEVA IMPERIAL', 1, '2023-04-13 09:48:00'),
(288, 12, 'PADRE LAS CASAS', 1, '2023-04-13 09:48:00'),
(289, 12, 'PERQUENCO', 1, '2023-04-13 09:48:00'),
(290, 12, 'PITRUFQUÉN', 1, '2023-04-13 09:48:00'),
(291, 12, 'PUCÓN', 1, '2023-04-13 09:48:00'),
(292, 12, 'SAAVEDRA', 1, '2023-04-13 09:48:00'),
(293, 12, 'TEODORO SCHMIDT', 1, '2023-04-13 09:48:00'),
(294, 12, 'TOLTÉN', 1, '2023-04-13 09:48:00'),
(295, 12, 'VILCÚN', 1, '2023-04-13 09:48:00'),
(296, 12, 'VILLARRICA', 1, '2023-04-13 09:48:00'),
(297, 13, 'VALDIVIA', 1, '2023-04-13 09:48:00'),
(298, 13, 'CORRAL', 1, '2023-04-13 09:48:00'),
(299, 13, 'LANCO', 1, '2023-04-13 09:48:00'),
(300, 13, 'LOS LAGOS', 1, '2023-04-13 09:48:00'),
(301, 13, 'MÁFIL', 1, '2023-04-13 09:48:00'),
(302, 13, 'SAN JOSÉ DE LA MARIQUINA', 1, '2023-04-13 09:48:00'),
(303, 13, 'PAILLACO', 1, '2023-04-13 09:48:00'),
(304, 13, 'PANGUIPULLI', 1, '2023-04-13 09:48:00'),
(305, 13, 'LA UNIÓN', 1, '2023-04-13 09:48:00'),
(306, 13, 'FUTRONO', 1, '2023-04-13 09:48:00'),
(307, 13, 'LAGO RANCO', 1, '2023-04-13 09:48:00'),
(308, 13, 'RÍO BUENO', 1, '2023-04-13 09:48:00'),
(309, 14, 'OSORNO', 1, '2023-04-13 09:48:00'),
(310, 14, 'PUERTO OCTAY', 1, '2023-04-13 09:48:00'),
(311, 14, 'PURRANQUE', 1, '2023-04-13 09:48:00'),
(312, 14, 'PUYEHUE', 1, '2023-04-13 09:48:00'),
(313, 14, 'RÍO NEGRO', 1, '2023-04-13 09:48:00'),
(314, 14, 'SAN JUAN DE LA COSTA', 1, '2023-04-13 09:48:00'),
(315, 14, 'SAN PABLO', 1, '2023-04-13 09:48:00'),
(316, 14, 'CALBUCO', 1, '2023-04-13 09:48:00'),
(317, 14, 'COCHAMÓ', 1, '2023-04-13 09:48:00'),
(318, 14, 'FRESIA', 1, '2023-04-13 09:48:00'),
(319, 14, 'FRUTILLAR', 1, '2023-04-13 09:48:00'),
(320, 14, 'LLANQUIHUE', 1, '2023-04-13 09:48:00'),
(321, 14, 'LOS MUERMOS', 1, '2023-04-13 09:48:00'),
(322, 14, 'MAULLÍN', 1, '2023-04-13 09:48:00'),
(323, 14, 'PUERTO VARAS', 1, '2023-04-13 09:48:00'),
(324, 14, 'ANCUD', 1, '2023-04-13 09:48:00'),
(325, 14, 'CASTRO', 1, '2023-04-13 09:48:00'),
(326, 14, 'CHONCHI', 1, '2023-04-13 09:48:00'),
(327, 14, 'CURACO DE VÉLEZ', 1, '2023-04-13 09:48:00'),
(328, 14, 'DALCAHUE', 1, '2023-04-13 09:48:00'),
(329, 14, 'PUQUELDÓN', 1, '2023-04-13 09:48:00'),
(330, 14, 'QUEILÉN', 1, '2023-04-13 09:48:00'),
(331, 14, 'QUELLÓN', 1, '2023-04-13 09:48:00'),
(332, 14, 'QUEMCHI', 1, '2023-04-13 09:48:00'),
(333, 14, 'QUINCHAO', 1, '2023-04-13 09:48:00'),
(334, 14, 'CHAITÉN', 1, '2023-04-13 09:48:00'),
(335, 14, 'FUTALEUFÚ', 1, '2023-04-13 09:48:00'),
(336, 14, 'HUALAIHUÉ', 1, '2023-04-13 09:48:00'),
(337, 14, 'PALENA', 1, '2023-04-13 09:48:00'),
(338, 15, 'LAGO VERDE', 1, '2023-04-13 09:48:00'),
(339, 15, 'COYHAIQUE', 1, '2023-04-13 09:48:00'),
(340, 15, 'AYSÉN', 1, '2023-04-13 09:48:00'),
(341, 15, 'CISNES', 1, '2023-04-13 09:48:00'),
(342, 15, 'GUAITECAS', 1, '2023-04-13 09:48:00'),
(343, 15, 'RÍO IBÁÑEZ', 1, '2023-04-13 09:48:00'),
(344, 15, 'CHILE CHICO', 1, '2023-04-13 09:48:00'),
(345, 15, 'COCHRANE', 1, '2023-04-13 09:48:00'),
(346, 15, 'OHIGGINS', 1, '2023-04-13 09:48:00'),
(347, 15, 'TORTEL', 1, '2023-04-13 09:48:00'),
(348, 16, 'NATALES', 1, '2023-04-13 11:45:00'),
(349, 16, 'TORRES DEL PAINE', 1, '2023-04-13 11:45:00'),
(350, 16, 'LAGUNA BLANCA', 1, '2023-04-13 11:45:00'),
(351, 16, 'PUNTA ARENAS', 1, '2023-04-13 11:45:00'),
(352, 16, 'RÍO VERDE', 1, '2023-04-13 11:45:00'),
(353, 16, 'SAN GREGORIO', 1, '2023-04-13 11:45:00'),
(354, 16, 'PORVENIR', 1, '2023-04-13 11:45:00'),
(355, 16, 'PRIMAVERA', 1, '2023-04-13 11:45:00'),
(356, 16, 'TIMAUKEL', 1, '2023-04-13 11:45:00'),
(357, 16, 'CABO DE HORNOS', 1, '2023-04-13 11:45:00'),
(358, 16, 'ANTÁRTICA', 1, '2023-04-13 11:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `ID_region` int(11) NOT NULL,
  `R_nombre` varchar(200) NOT NULL,
  `ID_estado` int(11) NOT NULL DEFAULT 1,
  `R_fecha_creacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`ID_region`, `R_nombre`, `ID_estado`, `R_fecha_creacion`) VALUES
(1, 'ARICA Y PARINACOTA', 1, '2023-03-28 11:32:39'),
(2, 'TARAPACÁ', 1, '2023-03-28 11:32:39'),
(3, 'ANTOFAGASTA', 1, '2023-03-28 11:33:00'),
(4, 'ATACAMA', 1, '2023-03-28 11:33:00'),
(5, 'COQUIMBO', 1, '2023-03-28 11:33:00'),
(6, 'VALPARAISO', 1, '2023-03-28 11:33:00'),
(7, 'REGION METROPOLITANA', 1, '2023-03-28 11:33:00'),
(8, 'LIBERTADOR BERNADO OHIGGINS', 1, '2023-03-28 11:33:00'),
(9, 'MAULE', 1, '2023-03-28 11:33:00'),
(10, 'ÑUBLE', 1, '2023-03-28 11:33:00'),
(11, 'BIO-BIO', 1, '2023-03-28 11:33:00'),
(12, 'ARAUCANIA', 1, '2023-03-28 11:33:00'),
(13, 'LOS RIOS', 1, '2023-03-28 11:33:00'),
(14, 'LOS LAGOS', 1, '2023-03-28 11:33:00'),
(15, 'AYSEN', 1, '2023-03-28 11:33:00'),
(16, 'MAGALLANES', 1, '2023-03-28 11:33:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votaciones`
--

CREATE TABLE `votaciones` (
  `ID_votacion` int(11) NOT NULL,
  `V_nombre_apellido` varchar(200) NOT NULL,
  `V_alias` varchar(200) NOT NULL,
  `V_rut` varchar(20) NOT NULL,
  `V_email` varchar(200) NOT NULL,
  `ID_region` int(11) NOT NULL,
  `ID_comuna` int(11) NOT NULL,
  `ID_candidato` int(11) NOT NULL,
  `V_interes` varchar(100) NOT NULL,
  `V_fecha_creacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`ID_candidato`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`ID_comuna`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`ID_region`);

--
-- Indices de la tabla `votaciones`
--
ALTER TABLE `votaciones`
  ADD PRIMARY KEY (`ID_votacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `ID_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
  MODIFY `ID_comuna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `ID_region` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `votaciones`
--
ALTER TABLE `votaciones`
  MODIFY `ID_votacion` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
