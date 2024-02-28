-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2024 a las 06:46:19
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sisi2024`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_talleres`
--

CREATE TABLE `detalles_talleres` (
  `Secuencia` int(11) NOT NULL,
  `ID_taller` int(11) DEFAULT NULL,
  `Dia` varchar(20) DEFAULT NULL,
  `Hora` varchar(20) DEFAULT NULL,
  `Aula` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalles_talleres`
--

INSERT INTO `detalles_talleres` (`Secuencia`, `ID_taller`, `Dia`, `Hora`, `Aula`) VALUES
(1, 1, 'Lunes', '8:00 - 12:00', 'Aula 101'),
(2, 2, 'Martes', '10:00 - 14:00', 'Aula 102'),
(3, 3, 'Miércoles', '14:00 - 18:00', 'Aula 103'),
(4, 1, 'Jueves', '9:00 - 13:00', 'Aula 104'),
(5, 2, 'Viernes', '13:00 - 17:00', 'Aula 105');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres`
--

CREATE TABLE `talleres` (
  `ID_taller` int(11) NOT NULL,
  `Nombre_Taller` varchar(50) DEFAULT NULL,
  `Instructor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `talleres`
--

INSERT INTO `talleres` (`ID_taller`, `Nombre_Taller`, `Instructor`) VALUES
(1, 'taller1', 'Instructor1'),
(2, 'taller2', 'Instructor2'),
(3, 'taller3', 'Instructor3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalles_talleres`
--
ALTER TABLE `detalles_talleres`
  ADD PRIMARY KEY (`Secuencia`),
  ADD KEY `ID_taller` (`ID_taller`);

--
-- Indices de la tabla `talleres`
--
ALTER TABLE `talleres`
  ADD PRIMARY KEY (`ID_taller`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalles_talleres`
--
ALTER TABLE `detalles_talleres`
  MODIFY `Secuencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `talleres`
--
ALTER TABLE `talleres`
  MODIFY `ID_taller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles_talleres`
--
ALTER TABLE `detalles_talleres`
  ADD CONSTRAINT `detalles_talleres_ibfk_1` FOREIGN KEY (`ID_taller`) REFERENCES `talleres` (`ID_taller`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
