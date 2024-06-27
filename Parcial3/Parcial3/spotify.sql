-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2024 a las 03:55:24
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
(20, 'God\'s Plan', 1, '00:03:18', '2018-01-19', 1, '/path/to/photo20.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `ID` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
