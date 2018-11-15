-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-11-2018 a las 05:47:11
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebabennu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_alumno`
--

CREATE TABLE `t_alumno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `fecha_nac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_alumno`
--

INSERT INTO `t_alumno` (`id`, `nombre`, `fecha_nac`) VALUES
(1, 'Jonatan Gonzalez', '1993-05-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_asignatura`
--

CREATE TABLE `t_asignatura` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_asignatura`
--

INSERT INTO `t_asignatura` (`id`, `nombre`) VALUES
(1, 'Matematicas'),
(2, 'Historia'),
(3, 'Quimica'),
(4, 'Fisica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_asignaturacolegio`
--

CREATE TABLE `t_asignaturacolegio` (
  `id_asignatura_fk` int(11) NOT NULL,
  `id_colegio_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_asignaturacolegio`
--

INSERT INTO `t_asignaturacolegio` (`id_asignatura_fk`, `id_colegio_fk`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_colegio`
--

CREATE TABLE `t_colegio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `direccion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_colegio`
--

INSERT INTO `t_colegio` (`id`, `nombre`, `direccion`) VALUES
(1, 'Liceo Polivalente Arturo Alessandri', 'providencia XXXX '),
(2, 'Liceo Siglo XX1', 'Super lejos de aqui'),
(4, 'Liceo 1', 'mi house');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_mantenedorprofe`
--

CREATE TABLE `t_mantenedorprofe` (
  `profesor_id_fk` int(11) NOT NULL,
  `asignatura_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_mantenedorprofe`
--

INSERT INTO `t_mantenedorprofe` (`profesor_id_fk`, `asignatura_id_fk`) VALUES
(1, 1),
(2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_nota`
--

CREATE TABLE `t_nota` (
  `id` int(11) NOT NULL,
  `nota` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_profesor`
--

CREATE TABLE `t_profesor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `fecha_nac` date NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_profesor`
--

INSERT INTO `t_profesor` (`id`, `nombre`, `fecha_nac`, `id_asignatura`, `activo`) VALUES
(1, 'Profesor Rosa', '2018-11-14', 1, 1),
(2, 'jirafales', '1993-05-28', 2, 1),
(3, 'aaa', '2018-11-15', 1, 1),
(4, 'Profesor X', '2018-11-15', 1, 1),
(7, 'Juanito Perez', '2018-11-15', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_alumno`
--
ALTER TABLE `t_alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_asignatura`
--
ALTER TABLE `t_asignatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_asignaturacolegio`
--
ALTER TABLE `t_asignaturacolegio`
  ADD PRIMARY KEY (`id_asignatura_fk`),
  ADD KEY `fk_datos_table_AC2` (`id_colegio_fk`);

--
-- Indices de la tabla `t_colegio`
--
ALTER TABLE `t_colegio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_mantenedorprofe`
--
ALTER TABLE `t_mantenedorprofe`
  ADD PRIMARY KEY (`profesor_id_fk`),
  ADD KEY `fk_datos_table_mc2` (`asignatura_id_fk`);

--
-- Indices de la tabla `t_nota`
--
ALTER TABLE `t_nota`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_profesor`
--
ALTER TABLE `t_profesor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_alumno`
--
ALTER TABLE `t_alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `t_asignatura`
--
ALTER TABLE `t_asignatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `t_colegio`
--
ALTER TABLE `t_colegio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `t_profesor`
--
ALTER TABLE `t_profesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_asignaturacolegio`
--
ALTER TABLE `t_asignaturacolegio`
  ADD CONSTRAINT `fk_datos_table_AC` FOREIGN KEY (`id_asignatura_fk`) REFERENCES `t_asignatura` (`id`),
  ADD CONSTRAINT `fk_datos_table_AC2` FOREIGN KEY (`id_colegio_fk`) REFERENCES `t_colegio` (`id`);

--
-- Filtros para la tabla `t_mantenedorprofe`
--
ALTER TABLE `t_mantenedorprofe`
  ADD CONSTRAINT `fk_datos_table_mc` FOREIGN KEY (`profesor_id_fk`) REFERENCES `t_profesor` (`id`),
  ADD CONSTRAINT `fk_datos_table_mc2` FOREIGN KEY (`asignatura_id_fk`) REFERENCES `t_asignatura` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
