-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 02:52:51
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`ID`, `nombre`, `descripcion`) VALUES
(1, 'Beyoncé', 'Beyoncé Giselle Knowles-Carter es una cantante, compositora, actriz y productora discográfica estadounidense.'),
(2, 'Ed Sheeran', 'Edward Christopher Sheeran es un cantante, compositor, guitarrista, actor y productor discográfico inglés.'),
(3, 'Shakira', 'Shakira Isabel Mebarak Ripoll es una cantante, compositora, productora discográfica, bailarina, actriz, empresaria, embajadora de buena voluntad de la UNICEF y filántropa colombiana.'),
(4, 'Drake', 'Aubrey Drake Graham es un rapero, cantante, compositor, actor, productor discográfico y empresario canadiense.'),
(5, 'Rihanna', 'Robyn Rihanna Fenty es una cantante, actriz y empresaria barbadense.'),
(6, 'Adele', 'Adele Laurie Blue Adkins es una cantante, compositora y multinstrumentista británica.'),
(7, 'Justin Bieber', 'Justin Drew Bieber es un cantante, compositor y actor canadiense.'),
(8, 'Taylor Swift', 'Taylor Alison Swift es una cantante, compositora y actriz estadounidense.'),
(9, 'Bruno Mars', 'Peter Gene Hernández, conocido como Bruno Mars, es un cantante, compositor, productor musical y coreógrafo estadounidense.'),
(10, 'Ariana Grande', 'Ariana Grande-Butera es una cantante, compositora, actriz y empresaria estadounidense.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `ID` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas_canciones`
--

INSERT INTO `artistas_canciones` (`ID`, `artista_id`, `cancion_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 1, 11),
(12, 2, 12),
(13, 3, 13),
(14, 4, 14),
(15, 5, 15),
(16, 6, 16),
(17, 7, 17),
(18, 8, 18),
(19, 9, 19),
(20, 10, 20),
(21, 1, 21),
(22, 2, 22),
(23, 3, 23),
(24, 4, 24),
(25, 5, 25),
(26, 6, 26),
(27, 7, 27),
(28, 8, 28),
(29, 9, 29),
(30, 10, 30),
(31, 1, 31),
(32, 2, 32),
(33, 3, 33),
(34, 4, 34),
(35, 5, 35),
(36, 6, 36),
(37, 7, 37),
(38, 8, 38),
(39, 9, 39),
(40, 10, 40),
(41, 1, 41),
(42, 2, 42),
(43, 3, 43),
(44, 4, 44),
(45, 5, 45),
(46, 6, 46),
(47, 7, 47),
(48, 8, 48),
(49, 9, 49),
(50, 10, 50),
(51, 1, 51),
(52, 2, 52),
(53, 3, 53),
(54, 4, 54),
(55, 5, 55),
(56, 6, 56),
(57, 7, 57),
(58, 8, 58),
(59, 9, 59),
(60, 10, 60),
(61, 1, 61),
(62, 2, 62),
(63, 3, 63),
(64, 4, 64),
(65, 5, 65),
(66, 6, 66),
(67, 7, 67),
(68, 8, 68),
(69, 9, 69),
(70, 10, 70),
(71, 1, 71),
(72, 2, 72),
(73, 3, 73),
(74, 4, 74),
(75, 5, 75),
(76, 6, 76),
(77, 7, 77),
(78, 8, 78),
(79, 9, 79),
(80, 10, 80),
(81, 1, 81),
(82, 2, 82),
(83, 3, 83),
(84, 4, 84),
(85, 5, 85),
(86, 6, 86),
(87, 7, 87),
(88, 8, 88),
(89, 9, 89),
(90, 10, 90),
(91, 1, 91),
(92, 2, 92),
(93, 3, 93),
(94, 4, 94),
(95, 5, 95),
(96, 6, 96),
(97, 7, 97),
(98, 8, 98),
(99, 9, 99),
(100, 10, 100),
(101, 1, 101),
(102, 2, 102),
(103, 3, 103),
(104, 4, 104),
(105, 5, 105),
(106, 6, 106),
(107, 7, 107),
(108, 8, 108),
(109, 9, 109),
(110, 10, 110),
(111, 1, 111),
(112, 2, 112),
(113, 3, 113),
(114, 4, 114),
(115, 5, 115),
(116, 6, 116),
(117, 7, 117),
(118, 8, 118),
(119, 9, 119),
(120, 10, 120),
(121, 1, 121),
(122, 2, 122),
(123, 3, 123),
(124, 4, 124),
(125, 5, 125),
(126, 6, 126),
(127, 7, 127),
(128, 8, 128),
(129, 9, 129),
(130, 10, 130),
(131, 1, 131),
(132, 2, 132),
(133, 3, 133),
(134, 4, 134),
(135, 5, 135),
(136, 6, 136),
(137, 7, 137),
(138, 8, 138),
(139, 9, 139),
(140, 10, 140),
(141, 1, 141),
(142, 2, 142),
(143, 3, 143),
(144, 4, 144),
(145, 5, 145),
(146, 6, 146),
(147, 7, 147),
(148, 8, 148),
(149, 9, 149),
(150, 10, 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`ID`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Shape of You', 2, '00:03:54', '2017-01-06', 1, '/path/to/photo1.jpg'),
(2, 'Blinding Lights', 3, '00:03:20', '2019-11-29', 1, '/path/to/photo2.jpg'),
(3, 'Dance Monkey', 5, '00:03:29', '2019-05-10', 1, '/path/to/photo3.jpg'),
(4, 'Uptown Funk', 4, '00:04:30', '2014-11-10', 1, '/path/to/photo4.jpg'),
(5, 'Rockstar', 1, '00:03:38', '2017-09-15', 1, '/path/to/photo5.jpg'),
(6, 'Someone Like You', 2, '00:04:45', '2011-01-24', 1, '/path/to/photo6.jpg'),
(7, 'Despacito', 3, '00:03:47', '2017-01-12', 1, '/path/to/photo7.jpg'),
(8, 'Old Town Road', 4, '00:01:53', '2018-12-03', 1, '/path/to/photo8.jpg'),
(9, 'Havana', 5, '00:03:37', '2017-08-03', 1, '/path/to/photo9.jpg'),
(10, 'Closer', 1, '00:04:04', '2016-07-29', 1, '/path/to/photo10.jpg'),
(11, 'Thinking Out Loud', 2, '00:04:41', '2014-09-24', 1, '/path/to/photo11.jpg'),
(12, 'Sicko Mode', 3, '00:05:12', '2018-08-21', 1, '/path/to/photo12.jpg'),
(13, 'Girls Like You', 4, '00:03:35', '2018-05-30', 1, '/path/to/photo13.jpg'),
(14, 'Shallow', 5, '00:03:35', '2018-09-27', 1, '/path/to/photo14.jpg'),
(15, 'Happy', 1, '00:03:52', '2013-11-21', 1, '/path/to/photo15.jpg'),
(16, 'Bad Guy', 2, '00:03:14', '2019-03-29', 1, '/path/to/photo16.jpg'),
(17, 'Perfect', 3, '00:04:23', '2017-03-03', 1, '/path/to/photo17.jpg'),
(18, 'Senorita', 4, '00:03:11', '2019-06-21', 1, '/path/to/photo18.jpg'),
(19, 'All of Me', 5, '00:04:29', '2013-08-12', 1, '/path/to/photo19.jpg'),
(20, 'God\'s Plan', 1, '00:03:18', '2018-01-19', 1, '/path/to/photo20.jpg'),
(21, 'Nuevos horizontes', 3, '04:50:00', '2024-01-20', 3, 'enlace21.jpg'),
(22, 'Bajo la luz de la luna', 1, '03:20:00', '2023-08-28', 2, 'enlace22.jpg'),
(23, 'Atrévete a soñar', 2, '04:15:00', '2024-05-25', 1, 'enlace23.jpg'),
(24, 'Destellos', 3, '05:05:00', '2023-12-12', 3, 'enlace24.jpg'),
(25, 'Caminos cruzados', 1, '03:45:00', '2024-03-05', 2, 'enlace25.jpg'),
(26, 'Despertar', 2, '04:30:00', '2023-10-15', 1, 'enlace26.jpg'),
(27, 'A través del tiempo', 3, '04:40:00', '2024-02-02', 3, 'enlace27.jpg'),
(28, 'Susurros en la noche', 1, '03:30:00', '2023-09-18', 2, 'enlace28.jpg'),
(29, 'Destino compartido', 2, '04:20:00', '2024-05-12', 1, 'enlace29.jpg'),
(30, 'El eco de tu voz', 3, '03:55:00', '2023-12-08', 3, 'enlace30.jpg'),
(31, 'Luces en la ciudad', 1, '04:10:00', '2024-04-02', 2, 'enlace31.jpg'),
(32, 'Reflejos del alma', 2, '03:25:00', '2023-11-05', 1, 'enlace32.jpg'),
(33, 'En busca de la verdad', 3, '04:50:00', '2024-01-25', 3, 'enlace33.jpg'),
(34, 'Alma perdida', 1, '03:15:00', '2023-08-15', 2, 'enlace34.jpg'),
(35, 'Vientos del sur', 2, '04:40:00', '2024-05-20', 1, 'enlace35.jpg'),
(36, 'Un nuevo comienzo', 3, '04:30:00', '2023-12-15', 3, 'enlace36.jpg'),
(37, 'Canción de la noche', 1, '03:45:00', '2024-03-10', 2, 'enlace37.jpg'),
(38, 'Sueños de libertad', 2, '04:20:00', '2023-10-22', 1, 'enlace38.jpg'),
(39, 'Camino hacia la luz', 3, '05:00:00', '2024-02-15', 3, 'enlace39.jpg'),
(40, 'Destellos de esperanza', 1, '04:15:00', '2023-09-02', 2, 'enlace40.jpg'),
(41, 'Sueños infinitos', 3, '04:20:00', '2024-06-18', 3, 'enlace41.jpg'),
(42, 'Vuelo sin destino', 1, '03:35:00', '2023-11-20', 2, 'enlace42.jpg'),
(43, 'Destellos de amor', 2, '04:10:00', '2024-05-28', 1, 'enlace43.jpg'),
(44, 'Caminando hacia ti', 3, '04:45:00', '2023-12-20', 3, 'enlace44.jpg'),
(45, 'Ritmo de la noche', 1, '03:55:00', '2024-04-15', 2, 'enlace45.jpg'),
(46, 'Bailando en el cielo', 2, '04:30:00', '2023-10-25', 1, 'enlace46.jpg'),
(47, 'Canción eterna', 3, '05:10:00', '2024-02-20', 3, 'enlace47.jpg'),
(48, 'Amanecer contigo', 1, '04:00:00', '2023-09-15', 2, 'enlace48.jpg'),
(49, 'Melodía del recuerdo', 2, '03:25:00', '2024-06-05', 1, 'enlace49.jpg'),
(50, 'Sueños de un nuevo día', 3, '04:35:00', '2023-12-25', 3, 'enlace50.jpg'),
(51, 'Entre sueños', 1, '03:45:00', '2024-03-20', 2, 'enlace51.jpg'),
(52, 'Noche interminable', 2, '04:20:00', '2023-11-10', 1, 'enlace52.jpg'),
(53, 'Renacimiento', 3, '05:00:00', '2024-01-30', 3, 'enlace53.jpg'),
(54, 'Luces en el horizonte', 1, '04:05:00', '2023-08-20', 2, 'enlace54.jpg'),
(55, 'Bajo el sol', 2, '03:30:00', '2024-05-10', 1, 'enlace55.jpg'),
(56, 'Refugio del alma', 3, '04:40:00', '2023-12-30', 3, 'enlace56.jpg'),
(57, 'Canción del ocaso', 1, '03:55:00', '2024-04-25', 2, 'enlace57.jpg'),
(58, 'Senderos de libertad', 2, '04:15:00', '2023-10-30', 1, 'enlace58.jpg'),
(59, 'A la luz de las estrellas', 3, '05:20:00', '2024-02-25', 3, 'enlace59.jpg'),
(60, 'Sueños compartidos', 1, '04:25:00', '2023-09-20', 2, 'enlace60.jpg'),
(61, 'Pasos en la arena', 2, '03:40:00', '2024-06-15', 1, 'enlace61.jpg'),
(62, 'Melodía de la esperanza', 3, '04:50:00', '2024-01-10', 3, 'enlace62.jpg'),
(63, 'Alma viajera', 1, '03:15:00', '2023-08-05', 2, 'enlace63.jpg'),
(64, 'Bajo el cielo estrellado', 2, '04:10:00', '2024-05-05', 1, 'enlace64.jpg'),
(65, 'Canción del amanecer', 3, '05:05:00', '2023-12-05', 3, 'enlace65.jpg'),
(66, 'Mirando hacia atrás', 1, '04:30:00', '2024-04-10', 2, 'enlace66.jpg'),
(67, 'Vientos del norte', 2, '03:45:00', '2023-10-05', 1, 'enlace67.jpg'),
(68, 'Sinfonía del atardecer', 3, '04:20:00', '2024-02-05', 3, 'enlace68.jpg'),
(69, 'Canción de la brisa', 1, '03:35:00', '2023-09-25', 2, 'enlace69.jpg'),
(70, 'Melodía del crepúsculo', 2, '04:00:00', '2024-06-20', 1, 'enlace70.jpg'),
(71, 'Canción del corazón', 3, '04:45:00', '2024-01-15', 3, 'enlace71.jpg'),
(72, 'Luz en la oscuridad', 1, '04:05:00', '2023-08-10', 2, 'enlace72.jpg'),
(73, 'Susurros del viento', 2, '03:30:00', '2024-05-15', 1, 'enlace73.jpg'),
(74, 'Destino final', 3, '04:40:00', '2023-12-15', 3, 'enlace74.jpg'),
(75, 'Ritmo del alma', 1, '03:55:00', '2024-04-20', 2, 'enlace75.jpg'),
(76, 'A orillas del río', 2, '04:15:00', '2023-10-10', 1, 'enlace76.jpg'),
(77, 'Canción de la montaña', 3, '05:20:00', '2024-02-10', 3, 'enlace77.jpg'),
(78, 'Sueños de medianoche', 1, '04:25:00', '2023-09-05', 2, 'enlace78.jpg'),
(79, 'Entre susurros', 2, '03:40:00', '2024-06-25', 1, 'enlace79.jpg'),
(80, 'Melodía del destino', 3, '04:50:00', '2024-01-05', 3, 'enlace80.jpg'),
(81, 'Canción del horizonte', 1, '03:20:00', '2023-08-15', 2, 'enlace81.jpg'),
(82, 'Bajo el cielo azul', 2, '04:05:00', '2024-05-20', 1, 'enlace82.jpg'),
(83, 'A través de los sueños', 3, '05:00:00', '2023-12-20', 3, 'enlace83.jpg'),
(84, 'Luz en la tormenta', 1, '04:15:00', '2024-04-25', 2, 'enlace84.jpg'),
(85, 'Caminos sin rumbo', 2, '03:30:00', '2023-10-20', 1, 'enlace85.jpg'),
(86, 'Susurros en el viento', 3, '04:40:00', '2024-02-15', 3, 'enlace86.jpg'),
(87, 'Ritmo del corazón', 1, '03:55:00', '2023-09-10', 2, 'enlace87.jpg'),
(88, 'Bajo la luz del sol', 2, '04:20:00', '2024-06-05', 1, 'enlace88.jpg'),
(89, 'Canción del viajero', 3, '04:45:00', '2024-01-20', 3, 'enlace89.jpg'),
(90, 'Sueños de libertad', 1, '04:00:00', '2023-08-25', 2, 'enlace90.jpg'),
(91, 'Brillo en la oscuridad', 2, '03:25:00', '2024-05-25', 1, 'enlace91.jpg'),
(92, 'Canción de la naturaleza', 3, '04:50:00', '2023-12-20', 3, 'enlace92.jpg'),
(93, 'Alma en fuga', 1, '03:15:00', '2024-04-15', 2, 'enlace93.jpg'),
(94, 'Melodía del desierto', 2, '04:10:00', '2023-10-10', 1, 'enlace94.jpg'),
(95, 'Sueños de un nuevo comienzo', 3, '05:05:00', '2024-02-20', 3, 'enlace95.jpg'),
(96, 'Luces en la noche', 1, '04:30:00', '2023-09-15', 2, 'enlace96.jpg'),
(97, 'Destellos de la luna', 2, '03:45:00', '2024-06-10', 1, 'enlace97.jpg'),
(98, 'Canción del recuerdo', 3, '04:20:00', '2024-01-25', 3, 'enlace98.jpg'),
(99, 'A través de la neblina', 1, '04:35:00', '2023-08-30', 2, 'enlace99.jpg'),
(100, 'Melodía del silencio', 2, '03:40:00', '2024-05-15', 1, 'enlace100.jpg'),
(101, 'Susurros en el mar', 3, '04:55:00', '2023-12-10', 3, 'enlace101.jpg'),
(102, 'Canción del adiós', 1, '03:10:00', '2024-04-05', 2, 'enlace102.jpg'),
(103, 'Bajo la luz de las estrellas', 2, '04:25:00', '2023-10-01', 1, 'enlace103.jpg'),
(104, 'Amanecer en el horizonte', 3, '04:40:00', '2024-02-25', 3, 'enlace104.jpg'),
(105, 'Canción del destino', 1, '03:55:00', '2023-09-20', 2, 'enlace105.jpg'),
(106, 'Reflejos en el agua', 2, '04:30:00', '2024-06-15', 1, 'enlace106.jpg'),
(107, 'Bajo la luz de las velas', 3, '05:00:00', '2024-01-10', 3, 'enlace107.jpg'),
(108, 'Sueños en la ciudad', 1, '04:45:00', '2023-08-05', 2, 'enlace108.jpg'),
(109, 'Canción del río', 2, '03:30:00', '2024-05-25', 1, 'enlace109.jpg'),
(110, 'Melodía del atardecer', 3, '04:20:00', '2023-12-20', 3, 'enlace110.jpg'),
(111, 'Sueños en la brisa', 1, '03:55:00', '2024-04-15', 2, 'enlace111.jpg'),
(112, 'Canción del verano', 2, '04:10:00', '2023-10-10', 1, 'enlace112.jpg'),
(113, 'A través de la lluvia', 3, '05:05:00', '2024-02-20', 3, 'enlace113.jpg'),
(114, 'Canción del invierno', 1, '04:30:00', '2023-09-15', 2, 'enlace114.jpg'),
(115, 'Melodía del otoño', 2, '03:45:00', '2024-06-10', 1, 'enlace115.jpg'),
(116, 'Sueños en el bosque', 3, '04:20:00', '2024-01-25', 3, 'enlace116.jpg'),
(117, 'Canción del amanecer', 1, '04:35:00', '2023-08-30', 2, 'enlace117.jpg'),
(118, 'Melodía de la primavera', 2, '03:40:00', '2024-05-15', 1, 'enlace118.jpg'),
(119, 'Sueños en la montaña', 3, '04:55:00', '2023-12-10', 3, 'enlace119.jpg'),
(120, 'Miradas perdidas', 2, '04:25:00', '2024-06-20', 1, 'enlace120.jpg'),
(121, 'Canción de la vida', 3, '04:40:00', '2024-01-25', 3, 'enlace121.jpg'),
(122, 'Melodía del corazón roto', 1, '03:55:00', '2023-09-20', 2, 'enlace122.jpg'),
(123, 'Bajo la luna llena', 2, '04:30:00', '2024-06-15', 1, 'enlace123.jpg'),
(124, 'Canción del sueño eterno', 3, '05:00:00', '2024-02-10', 3, 'enlace124.jpg'),
(125, 'Susurros en la oscuridad', 1, '04:45:00', '2023-08-05', 2, 'enlace125.jpg'),
(126, 'Canción del alma solitaria', 2, '03:30:00', '2024-05-25', 1, 'enlace126.jpg'),
(127, 'Melodía del viajero perdido', 3, '04:20:00', '2023-12-20', 3, 'enlace127.jpg'),
(128, 'Sueños en la noche eterna', 1, '03:55:00', '2024-04-15', 2, 'enlace128.jpg'),
(129, 'Canción de la esperanza perdida', 2, '04:10:00', '2023-10-10', 1, 'enlace129.jpg'),
(130, 'Melodía del destino incierto', 3, '05:05:00', '2024-02-20', 3, 'enlace130.jpg'),
(131, 'Canción del amor prohibido', 1, '04:30:00', '2023-09-15', 2, 'enlace131.jpg'),
(132, 'Bajo la luz de las estrellas fugaces', 2, '03:45:00', '2024-06-10', 1, 'enlace132.jpg'),
(133, 'Sueños en el valle de las sombras', 3, '04:20:00', '2024-01-25', 3, 'enlace133.jpg'),
(134, 'Canción del último adiós', 1, '04:35:00', '2023-08-30', 2, 'enlace134.jpg'),
(135, 'Melodía del ocaso', 2, '03:40:00', '2024-05-15', 1, 'enlace135.jpg'),
(136, 'Sueños en el abismo', 3, '04:55:00', '2023-12-10', 3, 'enlace136.jpg'),
(137, 'Canción de la eternidad', 1, '03:10:00', '2024-04-05', 2, 'enlace137.jpg'),
(138, 'Bajo la luz de la aurora', 2, '04:25:00', '2023-10-01', 1, 'enlace138.jpg'),
(139, 'Melodía del horizonte lejano', 3, '04:40:00', '2024-02-25', 3, 'enlace139.jpg'),
(140, 'Canción del último suspiro', 1, '03:55:00', '2023-09-20', 2, 'enlace140.jpg'),
(141, 'Susurros en el silencio', 2, '04:30:00', '2024-06-15', 1, 'enlace141.jpg'),
(142, 'Melodía de la oscuridad', 3, '05:00:00', '2024-01-10', 3, 'enlace142.jpg'),
(143, 'Canción del despertar', 1, '04:45:00', '2023-08-05', 2, 'enlace143.jpg'),
(144, 'Bajo la luz de la luna nueva', 2, '03:30:00', '2024-05-25', 1, 'enlace144.jpg'),
(145, 'Sueños en el laberinto', 3, '04:20:00', '2023-12-20', 3, 'enlace145.jpg'),
(146, 'Canción del fin del mundo', 1, '03:55:00', '2024-04-15', 2, 'enlace146.jpg'),
(147, 'Melodía del olvido', 2, '04:10:00', '2023-10-10', 1, 'enlace147.jpg'),
(148, 'Sueños en el vacío', 3, '05:05:00', '2024-02-20', 3, 'enlace148.jpg'),
(149, 'Canción del abandono', 1, '04:30:00', '2023-09-15', 2, 'enlace149.jpg'),
(150, 'Bajo la luz de la noche eterna', 2, '03:45:00', '2024-06-10', 1, 'enlace150.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `ID` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`ID`, `usuario_id`, `cancion_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 1, 11),
(12, 2, 12),
(13, 3, 13),
(14, 4, 14),
(15, 5, 15),
(16, 6, 16),
(17, 7, 17),
(18, 8, 18),
(19, 9, 19),
(20, 10, 20),
(21, 1, 21),
(22, 2, 22),
(23, 3, 23),
(24, 4, 24),
(25, 5, 25),
(26, 6, 26),
(27, 7, 27),
(28, 8, 28),
(29, 9, 29),
(30, 10, 30),
(31, 1, 31),
(32, 2, 32),
(33, 3, 33),
(34, 4, 34),
(35, 5, 35),
(36, 6, 36),
(37, 7, 37),
(38, 8, 38),
(39, 9, 39),
(40, 10, 40),
(41, 1, 41),
(42, 2, 42),
(43, 3, 43),
(44, 4, 44),
(45, 5, 45),
(46, 6, 46),
(47, 7, 47),
(48, 8, 48),
(49, 9, 49),
(50, 10, 50),
(51, 1, 51),
(52, 2, 52),
(53, 3, 53),
(54, 4, 54),
(55, 5, 55),
(56, 6, 56),
(57, 7, 57),
(58, 8, 58),
(59, 9, 59),
(60, 10, 60),
(61, 1, 61),
(62, 2, 62),
(63, 3, 63),
(64, 4, 64),
(65, 5, 65),
(66, 6, 66),
(67, 7, 67),
(68, 8, 68),
(69, 9, 69),
(70, 10, 70),
(71, 1, 71),
(72, 2, 72),
(73, 3, 73),
(74, 4, 74),
(75, 5, 75),
(76, 6, 76),
(77, 7, 77),
(78, 8, 78),
(79, 9, 79),
(80, 10, 80),
(81, 1, 81),
(82, 2, 82),
(83, 3, 83),
(84, 4, 84),
(85, 5, 85),
(86, 6, 86),
(87, 7, 87),
(88, 8, 88),
(89, 9, 89),
(90, 10, 90),
(91, 1, 91),
(92, 2, 92),
(93, 3, 93),
(94, 4, 94),
(95, 5, 95),
(96, 6, 96),
(97, 7, 97),
(98, 8, 98),
(99, 9, 99),
(100, 10, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`ID`, `nombre`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip Hop'),
(4, 'Jazz'),
(5, 'Reggae'),
(6, 'Blues'),
(7, 'Electronic'),
(8, 'Classical');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`ID`, `nombre`, `precio`) VALUES
(1, 'spotify premium individual', 175.88),
(2, 'spotify premium familiar', 263.9),
(3, 'spotify premium para estudiantes', 87.85);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`ID`, `nombre`, `duracion`, `total_canciones`, `descripcion`, `publico`) VALUES
(1, 'Clásicos del Rock', '02:30:00', 50, 'Una lista de reproducción con clásicos del rock de los años 70 y 80.', 1),
(2, 'Música para Entrenar', '01:45:00', 30, 'Playlist perfecta para motivarte durante tu rutina de ejercicio.', 1),
(3, 'Canciones Relajantes', '03:00:00', 40, 'Disfruta de estas melodías suaves para relajarte después de un largo día.', 1),
(4, 'Top Éxitos 2024', '01:20:00', 25, 'Las canciones más populares del año 2024.', 1),
(5, 'Música para Concentrarse', '02:15:00', 35, 'Playlist ideal para mantener la concentración mientras trabajas o estudias.', 1),
(6, 'Mejores Baladas', '02:50:00', 45, 'Disfruta de estas emotivas baladas que tocarán tu corazón.', 1),
(7, 'Favoritos de Verano', '01:30:00', 20, 'Las canciones que te harán sentir el espíritu del verano.', 1),
(8, 'Éxitos del Pasado', '02:40:00', 40, 'Revive los grandes éxitos de décadas pasadas con esta playlist.', 1),
(9, 'Música Latina Caliente', '02:15:00', 35, '¡Siente el ritmo con esta selección de música latina llena de energía!', 1),
(10, 'Clásicos del Jazz', '03:30:00', 50, 'Sumérgete en el mundo del jazz con estos clásicos atemporales.', 1),
(11, 'Rock Alternativo Indie', '02:00:00', 30, 'Descubre nuevos sonidos y bandas emergentes en la escena del rock alternativo.', 1),
(12, 'Canciones para Bailar', '01:45:00', 25, '¡Prepárate para mover el esqueleto con esta selección de canciones bailables!', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `ID` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`ID`, `playlist_id`, `cancion_id`, `usuario_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 1),
(12, 12, 12, 2),
(13, 1, 13, 3),
(14, 2, 14, 4),
(15, 3, 15, 5),
(16, 4, 16, 6),
(17, 5, 17, 7),
(18, 6, 18, 8),
(19, 7, 19, 9),
(20, 8, 20, 10),
(21, 9, 21, 1),
(22, 10, 22, 2),
(23, 11, 23, 3),
(24, 12, 24, 4),
(25, 1, 25, 5),
(26, 2, 26, 6),
(27, 3, 27, 7),
(28, 4, 28, 8),
(29, 5, 29, 9),
(30, 6, 30, 10),
(31, 7, 31, 1),
(32, 8, 32, 2),
(33, 9, 33, 3),
(34, 10, 34, 4),
(35, 11, 35, 5),
(36, 12, 36, 6),
(37, 1, 37, 7),
(38, 2, 38, 8),
(39, 3, 39, 9),
(40, 4, 40, 10),
(41, 5, 41, 1),
(42, 6, 42, 2),
(43, 7, 43, 3),
(44, 8, 44, 4),
(45, 9, 45, 5),
(46, 10, 46, 6),
(47, 11, 47, 7),
(48, 12, 48, 8),
(49, 1, 49, 9),
(50, 2, 50, 10),
(51, 3, 51, 1),
(52, 4, 52, 2),
(53, 5, 53, 3),
(54, 6, 54, 4),
(55, 7, 55, 5),
(56, 8, 56, 6),
(57, 9, 57, 7),
(58, 10, 58, 8),
(59, 11, 59, 9),
(60, 12, 60, 10),
(61, 1, 61, 1),
(62, 2, 62, 2),
(63, 3, 63, 3),
(64, 4, 64, 4),
(65, 5, 65, 5),
(66, 6, 66, 6),
(67, 7, 67, 7),
(68, 8, 68, 8),
(69, 9, 69, 9),
(70, 10, 70, 10),
(71, 11, 71, 1),
(72, 12, 72, 2),
(73, 1, 73, 3),
(74, 2, 74, 4),
(75, 3, 75, 5),
(76, 4, 76, 6),
(77, 5, 77, 7),
(78, 6, 78, 8),
(79, 7, 79, 9),
(80, 8, 80, 10),
(81, 9, 81, 1),
(82, 10, 82, 2),
(83, 11, 83, 3),
(84, 12, 84, 4),
(85, 1, 85, 5),
(86, 2, 86, 6),
(87, 3, 87, 7),
(88, 4, 88, 8),
(89, 5, 89, 9),
(90, 6, 90, 10),
(91, 7, 91, 1),
(92, 8, 92, 2),
(93, 9, 93, 3),
(94, 10, 94, 4),
(95, 11, 95, 5),
(96, 12, 96, 6),
(97, 1, 97, 7),
(98, 2, 98, 8),
(99, 3, 99, 9),
(100, 4, 100, 10),
(101, 5, 101, 1),
(102, 6, 102, 2),
(103, 7, 103, 3),
(104, 8, 104, 4),
(105, 9, 105, 5),
(106, 10, 106, 6),
(107, 11, 107, 7),
(108, 12, 108, 8),
(109, 1, 109, 9),
(110, 2, 110, 10),
(111, 3, 111, 1),
(112, 4, 112, 2),
(113, 5, 113, 3),
(114, 6, 114, 4),
(115, 7, 115, 5),
(116, 8, 116, 6),
(117, 9, 117, 7),
(118, 10, 118, 8),
(119, 11, 119, 9),
(120, 12, 120, 10),
(121, 1, 121, 1),
(122, 2, 122, 2),
(123, 3, 123, 3),
(124, 4, 124, 4),
(125, 5, 125, 5),
(126, 6, 126, 6),
(127, 7, 127, 7),
(128, 8, 128, 8),
(129, 9, 129, 9),
(130, 10, 130, 10),
(131, 11, 131, 1),
(132, 12, 132, 2),
(133, 1, 133, 3),
(134, 2, 134, 4),
(135, 3, 135, 5),
(136, 4, 136, 6),
(137, 5, 137, 7),
(138, 6, 138, 8),
(139, 7, 139, 9),
(140, 8, 140, 10),
(141, 9, 141, 1),
(142, 10, 142, 2),
(143, 11, 143, 3),
(144, 12, 144, 4),
(145, 1, 145, 5),
(146, 2, 146, 6),
(147, 3, 147, 7),
(148, 4, 148, 8),
(149, 5, 149, 9),
(150, 6, 150, 10),
(151, 7, 1, 1),
(152, 8, 2, 2),
(153, 9, 3, 3),
(154, 10, 4, 4),
(155, 11, 5, 5),
(156, 12, 6, 6),
(157, 1, 7, 7),
(158, 2, 8, 8),
(159, 3, 9, 9),
(160, 4, 10, 10),
(161, 5, 11, 1),
(162, 6, 12, 2),
(163, 7, 13, 3),
(164, 8, 14, 4),
(165, 9, 15, 5),
(166, 10, 16, 6),
(167, 11, 17, 7),
(168, 12, 18, 8),
(169, 1, 19, 9),
(170, 2, 20, 10),
(171, 3, 21, 1),
(172, 4, 22, 2),
(173, 5, 23, 3),
(174, 6, 24, 4),
(175, 7, 25, 5),
(176, 8, 26, 6),
(177, 9, 27, 7),
(178, 10, 28, 8),
(179, 11, 29, 9),
(180, 12, 30, 10),
(181, 1, 31, 1),
(182, 2, 32, 2),
(183, 3, 33, 3),
(184, 4, 34, 4),
(185, 5, 35, 5),
(186, 6, 36, 6),
(187, 7, 37, 7),
(188, 8, 38, 8),
(189, 9, 39, 9),
(190, 10, 40, 10),
(191, 11, 41, 1),
(192, 12, 42, 2),
(193, 1, 43, 3),
(194, 2, 44, 4),
(195, 3, 45, 5),
(196, 4, 46, 6),
(197, 5, 47, 7),
(198, 6, 48, 8),
(199, 7, 49, 9),
(200, 8, 50, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'JohnSmith', 'john.smith@example.com', 1),
(2, 'EmilyJohnson', 'emily.johnson@example.com', 2),
(3, 'MichaelDavis', 'michael.davis@example.com', 3),
(4, 'SarahWilliams', 'sarah.williams@example.com', 1),
(5, 'DavidBrown', 'david.brown@example.com', 3),
(6, 'JenniferMartinez', 'jennifer.martinez@example.com', 2),
(7, 'JamesJones', 'james.jones@example.com', 1),
(8, 'JessicaGarcia', 'jessica.garcia@example.com', 3),
(9, 'DanielRodriguez', 'daniel.rodriguez@example.com', 2),
(10, 'LindaHernandez', 'linda.hernandez@example.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`ID`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`ID`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`ID`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`ID`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`ID`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`ID`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
