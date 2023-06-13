-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2023 a las 02:28:14
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbsistema_reservas_vuelos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aerolineas`
--

CREATE TABLE `aerolineas` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Pais` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aerolineas`
--

INSERT INTO `aerolineas` (`ID`, `Nombre`, `Pais`) VALUES
(1, 'Lopez', 'País 1'),
(2, 'Robinson', 'País 2'),
(3, 'Jose', 'País 3'),
(4, 'Pepe', 'País 4'),
(5, 'Divinson', 'Noruega'),
(6, 'Isabel', 'Mexico'),
(7, 'Alan', 'España'),
(9, 'Sara', 'China'),
(22, 'Maria ', 'Francia'),
(23, 'LOR', 'Francia'),
(26, 'Marisol', 'Noruega'),
(27, 'Sofia', 'Estados Unidos'),
(31, 'Petroncita', 'italia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`ID`, `usuario`, `password`) VALUES
(1, 'Maleja20172017@gmail.com', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

CREATE TABLE `pasajeros` (
  `ID` int(11) NOT NULL,
  `NombrePasajero` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`ID`, `NombrePasajero`, `Apellido`, `Edad`) VALUES
(1, 'Pasajero 1', 'Apellido 1', 25),
(2, 'Pasajero 2', 'Apellido 2', 30),
(3, 'Pasajero 3', 'Apellido 3', 45),
(4, 'Pasajero 4', 'Apellido 4', 28),
(5, 'Pasajero 5', 'Apellido 5', 50),
(6, 'Pasajero 6', 'Apellido 6', 33),
(7, 'Pasajero 7', 'Apellido 7', 22),
(8, 'Pasajero 8', 'Apellido 8', 40),
(9, 'Pasajero 9', 'Apellido 9', 29),
(10, 'Pasajero 10', 'Apellido 10', 37),
(11, 'Pasajero 11', 'Apellido 11', 48),
(12, 'Pasajero 12', 'Apellido 12', 31),
(13, 'Pasajero 13', 'Apellido 13', 27),
(14, 'Pasajero 14', 'Apellido 14', 55),
(15, 'Pasajero 15', 'Apellido 15', 36),
(16, 'Pasajero 16', 'Apellido 16', 43),
(17, 'Pasajero 17', 'Apellido 17', 26),
(18, 'Pasajero 18', 'Apellido 18', 39),
(19, 'Pasajero 19', 'Apellido 19', 32),
(20, 'Pasajero 20', 'Apellido 20', 42),
(44, 'Maria Alejandra', 'Gonzales Cardenas', 19),
(45, 'Petroncita', 'Gomez', 78);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `ID` int(11) NOT NULL,
  `VueloID` int(11) DEFAULT NULL,
  `PasajeroID` int(11) DEFAULT NULL,
  `Asiento` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`ID`, `VueloID`, `PasajeroID`, `Asiento`) VALUES
(1, 1, 1, 'A1'),
(2, 1, 2, 'B2'),
(3, 2, 3, 'C3'),
(4, 2, 4, 'D4'),
(5, 3, 5, 'E5'),
(6, 3, 6, 'F6'),
(7, 4, 7, 'G7'),
(8, 4, 8, 'H8'),
(9, 5, 9, 'I9'),
(10, 5, 10, 'J10'),
(56, 4, 1, 'B7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `ID` int(11) NOT NULL,
  `AerolineaID` int(11) DEFAULT NULL,
  `Origen` varchar(100) DEFAULT NULL,
  `Destino` varchar(100) DEFAULT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`ID`, `AerolineaID`, `Origen`, `Destino`, `Fecha`) VALUES
(1, 1, 'Origen 1', 'Destino 1', '2023-06-10'),
(2, 2, 'Origen 2', 'Destino 2', '2023-06-11'),
(3, 1, 'Origen 3', 'Destino 3', '2023-06-12'),
(4, 3, 'Origen 4', 'Destino 4', '2023-06-13'),
(5, 2, 'Origen 5', 'Destino 5', '2023-06-14'),
(6, 4, 'Origen 6', 'Destino 6', '2023-06-15'),
(7, 3, 'Origen 7', 'Destino 7', '2023-06-16'),
(8, 1, 'Origen 8', 'Destino 8', '2023-06-17'),
(9, 4, 'Origen 9', 'Destino 9', '2023-06-18'),
(10, 2, 'Origen 10', 'Destino 10', '2023-06-19'),
(11, 4, 'Origen11', 'Destino11', '2023-06-11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aerolineas`
--
ALTER TABLE `aerolineas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `VueloID` (`VueloID`),
  ADD KEY `PasajeroID` (`PasajeroID`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AerolineaID` (`AerolineaID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aerolineas`
--
ALTER TABLE `aerolineas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`VueloID`) REFERENCES `vuelos` (`ID`),
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`PasajeroID`) REFERENCES `pasajeros` (`ID`);

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`AerolineaID`) REFERENCES `aerolineas` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
