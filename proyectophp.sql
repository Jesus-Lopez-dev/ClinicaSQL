-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2021 a las 00:29:14
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectophp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_generales`
--

CREATE TABLE `datos_generales` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `FechaEla` date NOT NULL,
  `Genero` varchar(10) NOT NULL,
  `Edad` int(11) NOT NULL,
  `FechaNac` date NOT NULL,
  `Ocupacion` varchar(30) NOT NULL,
  `Lateralidad` varchar(20) NOT NULL,
  `Nacionalidad` varchar(30) NOT NULL,
  `Religion` varchar(20) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Domicilio` varchar(50) NOT NULL,
  `TelEmergencia` varchar(10) NOT NULL,
  `PersonaContactar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datos_generales`
--

INSERT INTO `datos_generales` (`Id`, `Nombre`, `FechaEla`, `Genero`, `Edad`, `FechaNac`, `Ocupacion`, `Lateralidad`, `Nacionalidad`, `Religion`, `Telefono`, `Domicilio`, `TelEmergencia`, `PersonaContactar`) VALUES
(25, 'Roberto', '2020-04-08', 'Hombre', 32, '1997-03-12', 'Estudiante', 'Diestro', 'Mexicano', 'Católico', '4778416618', 'Jardin de encinos', '4771488372', 'Juan Lopez'),
(26, 'Jesus Emmanuel Lopez Villavicencio', '2020-04-08', 'Hombre', 12, '1998-12-24', 'Estudiante', 'Diestro', 'Mexicano', 'Otra', '4778416618', 'Jardin de encinos', '4771488372', 'Lorena Mercedes'),
(27, 'Samanta', '2020-04-16', 'Mujer', 24, '1998-03-18', 'Ama de casa', 'Ambidiestro', 'Americana', 'Católico', '4778201340', 'Jardines de margaritas #814 A', '4772316821', 'Florencia Torres'),
(28, 'Villa', '2020-05-08', 'Hombre', 21, '1998-12-24', 'Estudiante', 'Diestro', 'Mexicano', 'Católico', '4778416618', 'Jardin de encinos', '4771234567', 'Juan Lopez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades_paciente`
--

CREATE TABLE `enfermedades_paciente` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Enfermedad` varchar(50) DEFAULT NULL,
  `Parentesco` varchar(30) NOT NULL,
  `Genero_pariente` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `enfermedades_paciente`
--

INSERT INTO `enfermedades_paciente` (`Id`, `Nombre`, `Enfermedad`, `Parentesco`, `Genero_pariente`) VALUES
(26, 'Jesus Emmanuel Lopez Villavicencio', 'Alergias', 'Papá', 'V'),
(27, 'Samanta', 'Enfermedades respiratorias', 'Tia', 'M'),
(28, 'Emmanuel', 'Alergias', 'Abuelo', 'V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_enfermedad`
--

CREATE TABLE `tipo_enfermedad` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_enfermedad`
--

INSERT INTO `tipo_enfermedad` (`Id`, `Nombre`) VALUES
(1, 'Neoplasias'),
(2, 'Tuberculosis'),
(3, 'Diabetes'),
(4, 'Artritis'),
(5, 'Cardiopatias'),
(6, 'Enfermedades neurologicas'),
(7, 'Trastornos psiquiatricos'),
(8, 'Enfermedades respiratorias'),
(9, 'Hepatopatias'),
(10, 'Alergias'),
(11, 'Hipertension'),
(12, 'Enfermedades hematologicas'),
(13, 'Enfermedades endocrinologicas'),
(14, 'Enfermedades geneticas'),
(15, 'Otras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Matricula` varchar(8) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Matricula`, `Password`, `Tipo`) VALUES
('10101010', '95432713', 'Administrador'),
('17240130', '17240130', 'Empleado'),
('17240139', '123', 'Administrador'),
('17240145', '24681012', 'Empleado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_generales`
--
ALTER TABLE `datos_generales`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `enfermedades_paciente`
--
ALTER TABLE `enfermedades_paciente`
  ADD KEY `Id` (`Id`);

--
-- Indices de la tabla `tipo_enfermedad`
--
ALTER TABLE `tipo_enfermedad`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Matricula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tipo_enfermedad`
--
ALTER TABLE `tipo_enfermedad`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enfermedades_paciente`
--
ALTER TABLE `enfermedades_paciente`
  ADD CONSTRAINT `enfermedades_paciente_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `datos_generales` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
