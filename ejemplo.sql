-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2016 a las 03:03:20
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ejemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
`ID` int(11) NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ID_LOCALIDAD` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ID`, `NOMBRE`, `ID_LOCALIDAD`) VALUES
(1, 'ALBERTO CASILLAS', 1),
(2, 'JUAN MARIAA', 2),
(3, 'ALBERTO PEREZ', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE IF NOT EXISTS `localidad` (
`ID` int(11) NOT NULL,
  `DESCRIPCION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`ID`, `DESCRIPCION`) VALUES
(1, 'LANUS'),
(2, 'AVELLANEDA'),
(3, 'QUILMES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE IF NOT EXISTS `socio` (
`ID` int(11) NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ID_LOCALIDAD` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`ID`, `NOMBRE`, `ID_LOCALIDAD`) VALUES
(1, 'JOSE HERNANDEZ', 1),
(2, 'MARTIN KAPLAN', 2),
(3, 'EZEQUIEL LOPEZ', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE IF NOT EXISTS `vehiculo` (
`ID` int(11) NOT NULL,
  `PATENTE` varchar(50) NOT NULL,
  `INGRESO` varchar(50) NOT NULL,
  `SALIDA` varchar(50) NOT NULL,
  `ID_EMPLEADO` int(11) NOT NULL,
  `ID_SOCIO` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`ID`, `PATENTE`, `INGRESO`, `SALIDA`, `ID_EMPLEADO`, `ID_SOCIO`) VALUES
(7, 'NATALIA', '3/10/2016 13:00', '', 3, 1),
(8, 'TEKILA', '4/10/2016 14:00', '', 3, 2),
(9, 'NATALIA', '2/10/2016 15:00', '3/10/2016 16:00', 0, 0),
(10, 'NATALIA', '1/10/2016 18:00', '', 0, 0),
(11, 'NATALIA', '3/10/2016 19:00', '4/10/2016 20:01', 0, 0),
(12, 'NATALIA', '3/10/2016 20:00', '', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `socio`
--
ALTER TABLE `socio`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
