-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2019 a las 23:15:30
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `directorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `nombre_cat` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `departamento_id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`departamento_id`, `codigo`, `descripcion`, `estado`) VALUES
(1, 5, 'ANTIOQUIA', 1),
(2, 8, 'ATLANTICO', 1),
(3, 11, 'BOGOTA', 1),
(4, 13, 'BOLIVAR', 1),
(5, 15, 'BOYACA', 1),
(6, 17, 'CALDAS', 1),
(7, 18, 'CAQUETA', 0),
(8, 19, 'CAUCA', 0),
(9, 20, 'CESAR', 0),
(10, 23, 'CORDOBA', 0),
(11, 25, 'CUNDINAMARCA', 0),
(12, 27, 'CHOCO', 0),
(13, 41, 'HUILA', 0),
(14, 44, 'LA GUAJIRA', 0),
(15, 47, 'MAGDALENA', 0),
(16, 50, 'META', 0),
(17, 52, 'NARIÑO', 0),
(18, 54, 'N. DE SANTANDER', 1),
(19, 63, 'QUINDIO', 0),
(20, 66, 'RISARALDA', 0),
(21, 68, 'SANTANDER', 0),
(22, 70, 'SUCRE', 0),
(23, 73, 'TOLIMA', 0),
(24, 76, 'VALLE DEL CAUCA', 0),
(25, 81, 'ARAUCA', 0),
(26, 85, 'CASANARE', 0),
(27, 86, 'PUTUMAYO', 0),
(28, 88, 'SAN ANDRES', 0),
(29, 91, 'AMAZONAS', 0),
(30, 94, 'GUAINIA', 0),
(31, 95, 'GUAVIARE', 0),
(32, 97, 'VAUPES', 0),
(33, 99, 'VICHADA', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(11) NOT NULL,
  `nit` int(11) NOT NULL,
  `razon_social` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `celular` int(11) NOT NULL,
  `email` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado_registro` tinyint(4) NOT NULL,
  `subcategoria_id` int(11) NOT NULL,
  `estado_pago` tinyint(1) NOT NULL,
  `contador_emp` bigint(20) NOT NULL,
  `logitud` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `latitud` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `municipio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `imagen-id` int(11) NOT NULL,
  `descripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ruta_url` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `empresa-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `municipio_id` int(11) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`municipio_id`, `departamento_id`, `codigo`, `descripcion`, `estado`) VALUES
(1, 5, 1, 'MEDELLIN', 1),
(2, 5, 2, 'ABEJORRAL', 1),
(3, 5, 4, 'ABRIAQUI', 1),
(4, 5, 21, 'ALEJANDRIA', 1),
(5, 5, 30, 'AMAGA', 1),
(6, 5, 31, 'AMALFI', 1),
(7, 5, 34, 'ANDES', 1),
(8, 5, 36, 'ANGELOPOLIS', 1),
(9, 5, 38, 'ANGOSTURA', 1),
(10, 5, 40, 'ANORI', 1),
(11, 5, 42, 'SANTAFE DE ANTIOQUIA', 1),
(12, 5, 44, 'ANZA', 1),
(13, 5, 45, 'APARTADO', 1),
(14, 5, 51, 'ARBOLETES', 1),
(15, 5, 55, 'ARGELIA', 1),
(16, 5, 59, 'ARMENIA', 1),
(17, 5, 79, 'BARBOSA', 1),
(18, 5, 86, 'BELMIRA', 1),
(19, 5, 88, 'BELLO', 1),
(20, 5, 91, 'BETANIA', 1),
(21, 5, 93, 'BETULIA', 1),
(22, 5, 101, 'CIUDAD BOLIVAR', 1),
(23, 5, 107, 'BRICEÑO', 1),
(24, 5, 113, 'BURITICA', 1),
(25, 5, 120, 'CACERES', 1),
(26, 5, 125, 'CAICEDO', 1),
(27, 5, 129, 'CALDAS', 1),
(28, 5, 134, 'CAMPAMENTO', 1),
(29, 5, 138, 'CAÑASGORDAS', 1),
(30, 5, 142, 'CARACOLI', 1),
(31, 5, 145, 'CARAMANTA', 1),
(32, 5, 147, 'CAREPA', 1),
(33, 5, 148, 'EL CARMEN DE VIBORAL', 1),
(34, 5, 150, 'CAROLINA', 1),
(35, 5, 154, 'CAUCASIA', 1),
(36, 5, 172, 'CHIGORODO', 1),
(37, 5, 190, 'CISNEROS', 1),
(38, 5, 197, 'COCORNA', 1),
(39, 5, 206, 'CONCEPCION', 1),
(40, 5, 209, 'CONCORDIA', 1),
(41, 5, 212, 'COPACABANA', 1),
(42, 5, 234, 'DABEIBA', 1),
(43, 5, 237, 'DON MATIAS', 1),
(44, 5, 240, 'EBEJICO', 1),
(45, 5, 250, 'EL BAGRE', 1),
(46, 5, 264, 'ENTRERRIOS', 1),
(47, 5, 266, 'ENVIGADO', 1),
(48, 5, 282, 'FREDONIA', 1),
(49, 5, 284, 'FRONTINO', 1),
(50, 5, 306, 'GIRALDO', 1),
(51, 5, 308, 'GIRARDOTA', 1),
(52, 5, 310, 'GOMEZ PLATA', 1),
(53, 5, 313, 'GRANADA', 1),
(54, 5, 315, 'GUADALUPE', 1),
(55, 5, 318, 'GUARNE', 1),
(56, 5, 321, 'GUATAPE', 1),
(57, 5, 347, 'HELICONIA', 1),
(58, 5, 353, 'HISPANIA', 1),
(59, 5, 360, 'ITAGUI', 1),
(60, 5, 361, 'ITUANGO', 1),
(61, 5, 364, 'JARDIN', 1),
(62, 5, 368, 'JERICO', 1),
(63, 5, 376, 'LA CEJA', 1),
(64, 5, 380, 'LA ESTRELLA', 1),
(65, 5, 390, 'LA PINTADA', 1),
(66, 5, 400, 'LA UNION', 1),
(67, 5, 411, 'LIBORINA', 1),
(68, 5, 425, 'MACEO', 1),
(69, 5, 440, 'MARINILLA', 1),
(70, 5, 467, 'MONTEBELLO', 1),
(71, 5, 475, 'MURINDO', 1),
(72, 5, 480, 'MUTATA', 1),
(73, 5, 483, 'NARIÑO', 1),
(74, 5, 490, 'NECOCLI', 1),
(75, 5, 495, 'NECHI', 1),
(76, 5, 501, 'OLAYA', 1),
(77, 5, 541, 'PEÐOL', 1),
(78, 5, 543, 'PEQUE', 1),
(79, 5, 576, 'PUEBLORRICO', 1),
(80, 5, 579, 'PUERTO BERRIO', 1),
(81, 5, 585, 'PUERTO NARE', 1),
(82, 5, 591, 'PUERTO TRIUNFO', 1),
(83, 5, 604, 'REMEDIOS', 1),
(84, 5, 607, 'RETIRO', 1),
(85, 5, 615, 'RIONEGRO', 1),
(86, 5, 628, 'SABANALARGA', 1),
(87, 5, 631, 'SABANETA', 1),
(88, 5, 642, 'SALGAR', 1),
(89, 5, 647, 'SAN ANDRES DE CUERQUIA', 1),
(90, 5, 649, 'SAN CARLOS', 1),
(91, 5, 652, 'SAN FRANCISCO', 1),
(92, 5, 656, 'SAN JERONIMO', 1),
(93, 5, 658, 'SAN JOSE DE LA MONTAÑA', 1),
(94, 5, 659, 'SAN JUAN DE URABA', 1),
(95, 5, 660, 'SAN LUIS', 1),
(96, 5, 664, 'SAN PEDRO', 1),
(97, 5, 665, 'SAN PEDRO DE URABA', 1),
(98, 5, 667, 'SAN RAFAEL', 1),
(99, 5, 670, 'SAN ROQUE', 1),
(100, 5, 674, 'SAN VICENTE', 1),
(101, 5, 679, 'SANTA BARBARA', 1),
(102, 5, 686, 'SANTA ROSA DE OSOS', 1),
(103, 5, 690, 'SANTO DOMINGO', 1),
(104, 5, 697, 'EL SANTUARIO', 1),
(105, 5, 736, 'SEGOVIA', 1),
(106, 5, 756, 'SONSON', 1),
(107, 5, 761, 'SOPETRAN', 1),
(108, 5, 789, 'TAMESIS', 1),
(109, 5, 790, 'TARAZA', 1),
(110, 5, 792, 'TARSO', 1),
(111, 5, 809, 'TITIRIBI', 1),
(112, 5, 819, 'TOLEDO', 1),
(113, 5, 837, 'TURBO', 1),
(114, 5, 842, 'URAMITA', 1),
(115, 5, 847, 'URRAO', 1),
(116, 5, 854, 'VALDIVIA', 1),
(117, 5, 856, 'VALPARAISO', 1),
(118, 5, 858, 'VEGACHI', 1),
(119, 5, 861, 'VENECIA', 1),
(120, 5, 873, 'VIGIA DEL FUERTE', 1),
(121, 5, 885, 'YALI', 1),
(122, 5, 887, 'YARUMAL', 1),
(123, 5, 890, 'YOLOMBO', 1),
(124, 5, 893, 'YONDO', 1),
(125, 5, 895, 'ZARAGOZA', 1),
(126, 8, 1, 'BARRANQUILLA', 1),
(127, 8, 78, 'BARANOA', 1),
(128, 8, 137, 'CAMPO DE LA CRUZ', 1),
(129, 8, 141, 'CANDELARIA', 1),
(130, 8, 296, 'GALAPA', 1),
(131, 8, 372, 'JUAN DE ACOSTA', 1),
(132, 8, 421, 'LURUACO', 1),
(133, 8, 433, 'MALAMBO', 1),
(134, 8, 436, 'MANATI', 1),
(135, 8, 520, 'PALMAR DE VARELA', 1),
(136, 8, 549, 'PIOJO', 1),
(137, 8, 558, 'POLONUEVO', 1),
(138, 8, 560, 'PONEDERA', 1),
(139, 8, 573, 'PUERTO COLOMBIA', 1),
(140, 8, 606, 'REPELON', 1),
(141, 8, 634, 'SABANAGRANDE', 1),
(142, 8, 638, 'SABANALARGA', 1),
(143, 8, 675, 'SANTA LUCIA', 1),
(144, 8, 685, 'SANTO TOMAS', 1),
(145, 8, 758, 'SOLEDAD', 1),
(146, 8, 770, 'SUAN', 1),
(147, 8, 832, 'TUBARA', 1),
(148, 8, 849, 'USIACURI', 1),
(149, 11, 1, 'BOGOTA, D.C.', 1),
(150, 13, 1, 'CARTAGENA', 1),
(151, 13, 6, 'ACHI', 1),
(152, 13, 30, 'ALTOS DEL ROSARIO', 1),
(153, 13, 42, 'ARENAL', 1),
(154, 13, 52, 'ARJONA', 1),
(155, 13, 62, 'ARROYOHONDO', 1),
(156, 13, 74, 'BARRANCO DE LOBA', 1),
(157, 13, 140, 'CALAMAR', 1),
(158, 13, 160, 'CANTAGALLO', 1),
(159, 13, 188, 'CICUCO', 1),
(160, 13, 212, 'CORDOBA', 1),
(161, 13, 222, 'CLEMENCIA', 1),
(162, 13, 244, 'EL CARMEN DE BOLIVAR', 1),
(163, 13, 248, 'EL GUAMO', 1),
(164, 13, 268, 'EL PEÑON', 1),
(165, 13, 300, 'HATILLO DE LOBA', 1),
(166, 13, 430, 'MAGANGUE', 1),
(167, 13, 433, 'MAHATES', 1),
(168, 13, 440, 'MARGARITA', 1),
(169, 13, 442, 'MARIA LA BAJA', 1),
(170, 13, 458, 'MONTECRISTO', 1),
(171, 13, 468, 'MOMPOS', 1),
(172, 13, 490, 'NOROSI', 1),
(173, 13, 473, 'MORALES', 1),
(174, 13, 549, 'PINILLOS', 1),
(175, 13, 580, 'REGIDOR', 1),
(176, 13, 600, 'RIO VIEJO', 1),
(177, 13, 620, 'SAN CRISTOBAL', 1),
(178, 13, 647, 'SAN ESTANISLAO', 1),
(179, 13, 650, 'SAN FERNANDO', 1),
(180, 13, 654, 'SAN JACINTO', 1),
(181, 13, 655, 'SAN JACINTO DEL CAUCA', 1),
(182, 13, 657, 'SAN JUAN NEPOMUCENO', 1),
(183, 13, 667, 'SAN MARTIN DE LOBA', 1),
(184, 13, 670, 'SAN PABLO', 1),
(185, 13, 673, 'SANTA CATALINA', 1),
(186, 13, 683, 'SANTA ROSA', 1),
(187, 13, 688, 'SANTA ROSA DEL SUR', 1),
(188, 13, 744, 'SIMITI', 1),
(189, 13, 760, 'SOPLAVIENTO', 1),
(190, 13, 780, 'TALAIGUA NUEVO', 1),
(191, 13, 810, 'TIQUISIO', 1),
(192, 13, 836, 'TURBACO', 1),
(193, 13, 838, 'TURBANA', 1),
(194, 13, 873, 'VILLANUEVA', 1),
(195, 13, 894, 'ZAMBRANO', 1),
(196, 15, 1, 'TUNJA', 0),
(197, 15, 22, 'ALMEIDA', 1),
(198, 15, 47, 'AQUITANIA', 1),
(199, 15, 51, 'ARCABUCO', 1),
(200, 15, 87, 'BELEN', 1),
(201, 15, 90, 'BERBEO', 1),
(202, 15, 92, 'BETEITIVA', 1),
(203, 15, 97, 'BOAVITA', 1),
(204, 15, 104, 'BOYACA', 1),
(205, 15, 106, 'BRICEÑO', 1),
(206, 15, 109, 'BUENAVISTA', 1),
(207, 15, 114, 'BUSBANZA', 1),
(208, 15, 131, 'CALDAS', 1),
(209, 15, 135, 'CAMPOHERMOSO', 1),
(210, 15, 162, 'CERINZA', 1),
(211, 15, 172, 'CHINAVITA', 1),
(212, 15, 176, 'CHIQUINQUIRA', 1),
(213, 15, 180, 'CHISCAS', 1),
(214, 15, 183, 'CHITA', 1),
(215, 15, 185, 'CHITARAQUE', 1),
(216, 15, 187, 'CHIVATA', 1),
(217, 15, 189, 'CIENEGA', 1),
(218, 15, 204, 'COMBITA', 1),
(219, 15, 212, 'COPER', 1),
(220, 15, 215, 'CORRALES', 1),
(221, 15, 218, 'COVARACHIA', 1),
(222, 15, 223, 'CUBARA', 1),
(223, 15, 224, 'CUCAITA', 1),
(224, 15, 226, 'CUITIVA', 1),
(225, 15, 232, 'CHIQUIZA', 1),
(226, 15, 236, 'CHIVOR', 1),
(227, 15, 238, 'DUITAMA', 1),
(228, 15, 244, 'EL COCUY', 1),
(229, 15, 248, 'EL ESPINO', 1),
(230, 15, 272, 'FIRAVITOBA', 1),
(231, 15, 276, 'FLORESTA', 1),
(232, 15, 293, 'GACHANTIVA', 1),
(233, 15, 296, 'GAMEZA', 1),
(234, 15, 299, 'GARAGOA', 1),
(235, 15, 317, 'GUACAMAYAS', 1),
(236, 15, 322, 'GUATEQUE', 1),
(237, 15, 325, 'GUAYATA', 1),
(238, 15, 332, 'GsICAN', 1),
(239, 15, 362, 'IZA', 1),
(240, 15, 367, 'JENESANO', 1),
(241, 15, 368, 'JERICO', 1),
(242, 15, 377, 'LABRANZAGRANDE', 1),
(243, 15, 380, 'LA CAPILLA', 1),
(244, 15, 401, 'LA VICTORIA', 1),
(245, 15, 403, 'LA UVITA', 1),
(246, 15, 407, 'VILLA DE LEYVA', 1),
(247, 15, 425, 'MACANAL', 1),
(248, 15, 442, 'MARIPI', 1),
(249, 15, 455, 'MIRAFLORES', 1),
(250, 15, 464, 'MONGUA', 1),
(251, 15, 466, 'MONGUI', 1),
(252, 15, 469, 'MONIQUIRA', 1),
(253, 15, 476, 'MOTAVITA', 1),
(254, 15, 480, 'MUZO', 1),
(255, 15, 491, 'NOBSA', 1),
(256, 15, 494, 'NUEVO COLON', 1),
(257, 15, 500, 'OICATA', 1),
(258, 15, 507, 'OTANCHE', 1),
(259, 15, 511, 'PACHAVITA', 1),
(260, 15, 514, 'PAEZ', 1),
(261, 15, 516, 'PAIPA', 1),
(262, 15, 518, 'PAJARITO', 1),
(263, 15, 522, 'PANQUEBA', 1),
(264, 15, 531, 'PAUNA', 1),
(265, 15, 533, 'PAYA', 1),
(266, 15, 537, 'PAZ DE RIO', 1),
(267, 15, 542, 'PESCA', 1),
(268, 15, 550, 'PISBA', 1),
(269, 15, 572, 'PUERTO BOYACA', 1),
(270, 15, 580, 'QUIPAMA', 1),
(271, 15, 599, 'RAMIRIQUI', 1),
(272, 15, 600, 'RAQUIRA', 1),
(273, 15, 621, 'RONDON', 1),
(274, 15, 632, 'SABOYA', 1),
(275, 15, 638, 'SACHICA', 1),
(276, 15, 646, 'SAMACA', 1),
(277, 15, 660, 'SAN EDUARDO', 1),
(278, 15, 664, 'SAN JOSE DE PARE', 1),
(279, 15, 667, 'SAN LUIS DE GACENO', 1),
(280, 15, 673, 'SAN MATEO', 1),
(281, 15, 676, 'SAN MIGUEL DE SEMA', 1),
(282, 15, 681, 'SAN PABLO DE BORBUR', 1),
(283, 15, 686, 'SANTANA', 1),
(284, 15, 690, 'SANTA MARIA', 1),
(285, 15, 693, 'SANTA ROSA DE VITERBO', 1),
(286, 15, 696, 'SANTA SOFIA', 1),
(287, 15, 720, 'SATIVANORTE', 1),
(288, 15, 723, 'SATIVASUR', 1),
(289, 15, 740, 'SIACHOQUE', 1),
(290, 15, 753, 'SOATA', 1),
(291, 15, 755, 'SOCOTA', 1),
(292, 15, 757, 'SOCHA', 1),
(293, 15, 759, 'SOGAMOSO', 1),
(294, 15, 761, 'SOMONDOCO', 1),
(295, 15, 762, 'SORA', 1),
(296, 15, 763, 'SOTAQUIRA', 1),
(297, 15, 764, 'SORACA', 1),
(298, 15, 774, 'SUSACON', 1),
(299, 15, 776, 'SUTAMARCHAN', 1),
(300, 15, 778, 'SUTATENZA', 1),
(301, 15, 790, 'TASCO', 1),
(302, 15, 798, 'TENZA', 1),
(303, 15, 804, 'TIBANA', 1),
(304, 15, 806, 'TIBASOSA', 1),
(305, 15, 808, 'TINJACA', 1),
(306, 15, 810, 'TIPACOQUE', 1),
(307, 15, 814, 'TOCA', 1),
(308, 15, 816, 'TOGsI', 1),
(309, 15, 820, 'TOPAGA', 1),
(310, 15, 822, 'TOTA', 1),
(311, 15, 832, 'TUNUNGUA', 1),
(312, 15, 835, 'TURMEQUE', 1),
(313, 15, 837, 'TUTA', 1),
(314, 15, 839, 'TUTAZA', 1),
(315, 15, 842, 'UMBITA', 1),
(316, 15, 861, 'VENTAQUEMADA', 1),
(317, 15, 879, 'VIRACACHA', 1),
(318, 15, 897, 'ZETAQUIRA', 1),
(319, 17, 1, 'MANIZALES', 1),
(320, 17, 13, 'AGUADAS', 0),
(321, 17, 42, 'ANSERMA', 0),
(322, 17, 50, 'ARANZAZU', 0),
(323, 17, 88, 'BELALCAZAR', 0),
(324, 17, 174, 'CHINCHINA', 0),
(325, 17, 272, 'FILADELFIA', 0),
(326, 17, 380, 'LA DORADA', 0),
(327, 17, 388, 'LA MERCED', 0),
(328, 17, 433, 'MANZANARES', 0),
(329, 17, 442, 'MARMATO', 0),
(330, 17, 444, 'MARQUETALIA', 0),
(331, 17, 446, 'MARULANDA', 0),
(332, 17, 486, 'NEIRA', 0),
(333, 17, 495, 'NORCASIA', 0),
(334, 17, 513, 'PACORA', 0),
(335, 17, 524, 'PALESTINA', 0),
(336, 17, 541, 'PENSILVANIA', 0),
(337, 17, 614, 'RIOSUCIO', 0),
(338, 17, 616, 'RISARALDA', 0),
(339, 17, 653, 'SALAMINA', 0),
(340, 17, 662, 'SAMANA', 0),
(341, 17, 665, 'SAN JOSE', 0),
(342, 17, 777, 'SUPIA', 0),
(343, 17, 867, 'VICTORIA', 0),
(344, 17, 873, 'VILLAMARIA', 0),
(345, 17, 877, 'VITERBO', 0),
(346, 18, 1, 'FLORENCIA', 0),
(347, 18, 29, 'ALBANIA', 0),
(348, 18, 94, 'BELEN DE LOS ANDAQUIES', 0),
(349, 18, 150, 'CARTAGENA DEL CHAIRA', 0),
(350, 18, 205, 'CURILLO', 0),
(351, 18, 247, 'EL DONCELLO', 0),
(352, 18, 256, 'EL PAUJIL', 0),
(353, 18, 410, 'LA MONTAÑITA', 0),
(354, 18, 460, 'MILAN', 0),
(355, 18, 479, 'MORELIA', 0),
(356, 18, 592, 'PUERTO RICO', 0),
(357, 18, 610, 'SAN JOSE DEL FRAGUA', 0),
(358, 18, 753, 'SAN VICENTE DEL CAGUAN', 0),
(359, 18, 756, 'SOLANO', 0),
(360, 18, 785, 'SOLITA', 0),
(361, 18, 860, 'VALPARAISO', 0),
(362, 19, 1, 'POPAYAN', 0),
(363, 19, 22, 'ALMAGUER', 0),
(364, 19, 50, 'ARGELIA', 0),
(365, 19, 75, 'BALBOA', 0),
(366, 19, 100, 'BOLIVAR', 0),
(367, 19, 110, 'BUENOS AIRES', 0),
(368, 19, 130, 'CAJIBIO', 0),
(369, 19, 137, 'CALDONO', 0),
(370, 19, 142, 'CALOTO', 0),
(371, 19, 212, 'CORINTO', 0),
(372, 19, 256, 'EL TAMBO', 0),
(373, 19, 290, 'FLORENCIA', 0),
(374, 19, 300, 'GUACHENE', 0),
(375, 19, 318, 'GUAPI', 0),
(376, 19, 355, 'INZA', 0),
(377, 19, 364, 'JAMBALO', 0),
(378, 19, 392, 'LA SIERRA', 0),
(379, 19, 397, 'LA VEGA', 0),
(380, 19, 418, 'LOPEZ', 0),
(381, 19, 450, 'MERCADERES', 0),
(382, 19, 455, 'MIRANDA', 0),
(383, 19, 473, 'MORALES', 0),
(384, 19, 513, 'PADILLA', 0),
(385, 19, 517, 'PAEZ', 0),
(386, 19, 532, 'PATIA', 0),
(387, 19, 533, 'PIAMONTE', 0),
(388, 19, 548, 'PIENDAMO', 0),
(389, 19, 573, 'PUERTO TEJADA', 0),
(390, 19, 585, 'PURACE', 0),
(391, 19, 622, 'ROSAS', 0),
(392, 19, 693, 'SAN SEBASTIAN', 0),
(393, 19, 698, 'SANTANDER DE QUILICHAO', 0),
(394, 19, 701, 'SANTA ROSA', 0),
(395, 19, 743, 'SILVIA', 0),
(396, 19, 760, 'SOTARA', 0),
(397, 19, 780, 'SUAREZ', 0),
(398, 19, 785, 'SUCRE', 0),
(399, 19, 807, 'TIMBIO', 0),
(400, 19, 809, 'TIMBIQUI', 0),
(401, 19, 821, 'TORIBIO', 0),
(402, 19, 824, 'TOTORO', 0),
(403, 19, 845, 'VILLA RICA', 0),
(404, 20, 1, 'VALLEDUPAR', 0),
(405, 20, 11, 'AGUACHICA', 0),
(406, 20, 13, 'AGUSTIN CODAZZI', 0),
(407, 20, 32, 'ASTREA', 0),
(408, 20, 45, 'BECERRIL', 0),
(409, 20, 60, 'BOSCONIA', 0),
(410, 20, 175, 'CHIMICHAGUA', 0),
(411, 20, 178, 'CHIRIGUANA', 0),
(412, 20, 228, 'CURUMANI', 0),
(413, 20, 238, 'EL COPEY', 0),
(414, 20, 250, 'EL PASO', 0),
(415, 20, 295, 'GAMARRA', 0),
(416, 20, 310, 'GONZALEZ', 0),
(417, 20, 383, 'LA GLORIA', 0),
(418, 20, 400, 'LA JAGUA DE IBIRICO', 0),
(419, 20, 443, 'MANAURE', 0),
(420, 20, 517, 'PAILITAS', 0),
(421, 20, 550, 'PELAYA', 0),
(422, 20, 570, 'PUEBLO BELLO', 0),
(423, 20, 614, 'RIO DE ORO', 0),
(424, 20, 621, 'LA PAZ', 0),
(425, 20, 710, 'SAN ALBERTO', 0),
(426, 20, 750, 'SAN DIEGO', 0),
(427, 20, 770, 'SAN MARTIN', 0),
(428, 20, 787, 'TAMALAMEQUE', 0),
(429, 23, 1, 'MONTERIA', 0),
(430, 23, 68, 'AYAPEL', 0),
(431, 23, 79, 'BUENAVISTA', 0),
(432, 23, 90, 'CANALETE', 0),
(433, 23, 162, 'CERETE', 0),
(434, 23, 168, 'CHIMA', 0),
(435, 23, 182, 'CHINU', 0),
(436, 23, 189, 'CIENAGA DE ORO', 0),
(437, 23, 300, 'COTORRA', 0),
(438, 23, 350, 'LA APARTADA', 0),
(439, 23, 417, 'LORICA', 0),
(440, 23, 419, 'LOS CORDOBAS', 0),
(441, 23, 464, 'MOMIL', 0),
(442, 23, 466, 'MONTELIBANO', 0),
(443, 23, 500, 'MOÑITOS', 0),
(444, 23, 555, 'PLANETA RICA', 0),
(445, 23, 570, 'PUEBLO NUEVO', 0),
(446, 23, 574, 'PUERTO ESCONDIDO', 0),
(447, 23, 580, 'PUERTO LIBERTADOR', 0),
(448, 23, 586, 'PURISIMA', 0),
(449, 23, 660, 'SAHAGUN', 0),
(450, 23, 670, 'SAN ANDRES SOTAVENTO', 0),
(451, 23, 672, 'SAN ANTERO', 0),
(452, 23, 675, 'SAN BERNARDO DEL VIENTO', 0),
(453, 23, 678, 'SAN CARLOS', 0),
(454, 23, 686, 'SAN PELAYO', 0),
(455, 23, 807, 'TIERRALTA', 0),
(456, 23, 855, 'VALENCIA', 0),
(457, 25, 1, 'AGUA DE DIOS', 0),
(458, 25, 19, 'ALBAN', 0),
(459, 25, 35, 'ANAPOIMA', 0),
(460, 25, 40, 'ANOLAIMA', 0),
(461, 25, 53, 'ARBELAEZ', 0),
(462, 25, 86, 'BELTRAN', 0),
(463, 25, 95, 'BITUIMA', 0),
(464, 25, 99, 'BOJACA', 0),
(465, 25, 120, 'CABRERA', 0),
(466, 25, 123, 'CACHIPAY', 0),
(467, 25, 126, 'CAJICA', 0),
(468, 25, 148, 'CAPARRAPI', 0),
(469, 25, 151, 'CAQUEZA', 0),
(470, 25, 154, 'CARMEN DE CARUPA', 0),
(471, 25, 168, 'CHAGUANI', 0),
(472, 25, 175, 'CHIA', 0),
(473, 25, 178, 'CHIPAQUE', 0),
(474, 25, 181, 'CHOACHI', 0),
(475, 25, 183, 'CHOCONTA', 0),
(476, 25, 200, 'COGUA', 0),
(477, 25, 214, 'COTA', 0),
(478, 25, 224, 'CUCUNUBA', 0),
(479, 25, 245, 'EL COLEGIO', 0),
(480, 25, 258, 'EL PEÑON', 0),
(481, 25, 260, 'EL ROSAL', 0),
(482, 25, 269, 'FACATATIVA', 0),
(483, 25, 279, 'FOMEQUE', 0),
(484, 25, 281, 'FOSCA', 0),
(485, 25, 286, 'FUNZA', 0),
(486, 25, 288, 'FUQUENE', 0),
(487, 25, 290, 'FUSAGASUGA', 0),
(488, 25, 293, 'GACHALA', 0),
(489, 25, 295, 'GACHANCIPA', 0),
(490, 25, 297, 'GACHETA', 0),
(491, 25, 299, 'GAMA', 0),
(492, 25, 307, 'GIRARDOT', 0),
(493, 25, 312, 'GRANADA', 0),
(494, 25, 317, 'GUACHETA', 0),
(495, 25, 320, 'GUADUAS', 0),
(496, 25, 322, 'GUASCA', 0),
(497, 25, 324, 'GUATAQUI', 0),
(498, 25, 326, 'GUATAVITA', 0),
(499, 25, 328, 'GUAYABAL DE SIQUIMA', 0),
(500, 25, 335, 'GUAYABETAL', 0),
(501, 25, 339, 'GUTIERREZ', 0),
(502, 25, 368, 'JERUSALEN', 0),
(503, 25, 372, 'JUNIN', 0),
(504, 25, 377, 'LA CALERA', 0),
(505, 25, 386, 'LA MESA', 0),
(506, 25, 394, 'LA PALMA', 0),
(507, 25, 398, 'LA PEÑA', 0),
(508, 25, 402, 'LA VEGA', 0),
(509, 25, 407, 'LENGUAZAQUE', 0),
(510, 25, 426, 'MACHETA', 0),
(511, 25, 430, 'MADRID', 0),
(512, 25, 436, 'MANTA', 0),
(513, 25, 438, 'MEDINA', 0),
(514, 25, 473, 'MOSQUERA', 0),
(515, 25, 483, 'NARIÑO', 0),
(516, 25, 486, 'NEMOCON', 0),
(517, 25, 488, 'NILO', 0),
(518, 25, 489, 'NIMAIMA', 0),
(519, 25, 491, 'NOCAIMA', 0),
(520, 25, 506, 'VENECIA', 0),
(521, 25, 513, 'PACHO', 0),
(522, 25, 518, 'PAIME', 0),
(523, 25, 524, 'PANDI', 0),
(524, 25, 530, 'PARATEBUENO', 0),
(525, 25, 535, 'PASCA', 0),
(526, 25, 572, 'PUERTO SALGAR', 0),
(527, 25, 580, 'PULI', 0),
(528, 25, 592, 'QUEBRADANEGRA', 0),
(529, 25, 594, 'QUETAME', 0),
(530, 25, 596, 'QUIPILE', 0),
(531, 25, 599, 'APULO', 0),
(532, 25, 612, 'RICAURTE', 0),
(533, 25, 645, 'SAN ANTONIO DEL TEQUENDAMA', 0),
(534, 25, 649, 'SAN BERNARDO', 0),
(535, 25, 653, 'SAN CAYETANO', 0),
(536, 25, 658, 'SAN FRANCISCO', 0),
(537, 25, 662, 'SAN JUAN DE RIO SECO', 0),
(538, 25, 718, 'SASAIMA', 0),
(539, 25, 736, 'SESQUILE', 0),
(540, 25, 740, 'SIBATE', 0),
(541, 25, 743, 'SILVANIA', 0),
(542, 25, 745, 'SIMIJACA', 0),
(543, 25, 754, 'SOACHA', 0),
(544, 25, 758, 'SOPO', 0),
(545, 25, 769, 'SUBACHOQUE', 0),
(546, 25, 772, 'SUESCA', 0),
(547, 25, 777, 'SUPATA', 0),
(548, 25, 779, 'SUSA', 0),
(549, 25, 781, 'SUTATAUSA', 0),
(550, 25, 785, 'TABIO', 0),
(551, 25, 793, 'TAUSA', 0),
(552, 25, 797, 'TENA', 0),
(553, 25, 799, 'TENJO', 0),
(554, 25, 805, 'TIBACUY', 0),
(555, 25, 807, 'TIBIRITA', 0),
(556, 25, 815, 'TOCAIMA', 0),
(557, 25, 817, 'TOCANCIPA', 0),
(558, 25, 823, 'TOPAIPI', 0),
(559, 25, 839, 'UBALA', 0),
(560, 25, 841, 'UBAQUE', 0),
(561, 25, 843, 'VILLA DE SAN DIEGO DE UBATE', 0),
(562, 25, 845, 'UNE', 0),
(563, 25, 851, 'UTICA', 0),
(564, 25, 862, 'VERGARA', 0),
(565, 25, 867, 'VIANI', 0),
(566, 25, 871, 'VILLAGOMEZ', 0),
(567, 25, 873, 'VILLAPINZON', 0),
(568, 25, 875, 'VILLETA', 0),
(569, 25, 878, 'VIOTA', 0),
(570, 25, 885, 'YACOPI', 0),
(571, 25, 898, 'ZIPACON', 0),
(572, 25, 899, 'ZIPAQUIRA', 0),
(573, 27, 1, 'QUIBDO', 0),
(574, 27, 6, 'ACANDI', 0),
(575, 27, 25, 'ALTO BAUDO', 0),
(576, 27, 50, 'ATRATO', 0),
(577, 27, 73, 'BAGADO', 0),
(578, 27, 75, 'BAHIA SOLANO', 0),
(579, 27, 77, 'BAJO BAUDO', 0),
(580, 27, 99, 'BOJAYA', 0),
(581, 27, 135, 'EL CANTON DEL SAN PABLO', 0),
(582, 27, 150, 'CARMEN DEL DARIEN', 0),
(583, 27, 160, 'CERTEGUI', 0),
(584, 27, 205, 'CONDOTO', 0),
(585, 27, 245, 'EL CARMEN DE ATRATO', 0),
(586, 27, 250, 'EL LITORAL DEL SAN JUAN', 0),
(587, 27, 361, 'ISTMINA', 0),
(588, 27, 372, 'JURADO', 0),
(589, 27, 413, 'LLORO', 0),
(590, 27, 425, 'MEDIO ATRATO', 0),
(591, 27, 430, 'MEDIO BAUDO', 0),
(592, 27, 450, 'MEDIO SAN JUAN', 0),
(593, 27, 491, 'NOVITA', 0),
(594, 27, 495, 'NUQUI', 0),
(595, 27, 580, 'RIO IRO', 0),
(596, 27, 600, 'RIO QUITO', 0),
(597, 27, 615, 'RIOSUCIO', 0),
(598, 27, 660, 'SAN JOSE DEL PALMAR', 0),
(599, 27, 745, 'SIPI', 0),
(600, 27, 787, 'TADO', 0),
(601, 27, 800, 'UNGUIA', 0),
(602, 27, 810, 'UNION PANAMERICANA', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE `subcategoria` (
  `subcategoria_id` int(11) NOT NULL,
  `nombre_sub_cat` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `descripcion_sub_cat` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `contador-sub_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `tipo_usuario_id` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `num_doc` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_doc` text COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_usuario_id` int(11) NOT NULL,
  `usuario` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `contraseña` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`departamento_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `usuario_id_2` (`usuario_id`),
  ADD KEY `subcategoria_id` (`subcategoria_id`),
  ADD KEY `municipio_id` (`municipio_id`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`imagen-id`),
  ADD KEY `empresa-id` (`empresa-id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`municipio_id`),
  ADD KEY `departamento_id` (`departamento_id`);

--
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`subcategoria_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`tipo_usuario_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `tipo_usuario_id` (`tipo_usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `municipio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;
--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `tipo_usuario_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`municipio_id`),
  ADD CONSTRAINT `empresa_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `empresa_ibfk_3` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategoria` (`subcategoria_id`);

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`empresa-id`) REFERENCES `empresa` (`empresa_id`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`);

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `subcategoria_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `tipo_usuario` (`tipo_usuario_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
