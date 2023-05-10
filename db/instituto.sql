-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2023 a las 13:42:53
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `instituto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `id_profesor1` int(11) NOT NULL,
  `id_profesor2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id`, `nombre`, `id_profesor1`, `id_profesor2`) VALUES
(1, 'HTML', 0, 0),
(2, 'CSS3', 0, 0),
(3, 'JavaScript', 0, 0),
(4, 'Java', 0, 0),
(5, 'Python', 0, 0),
(6, 'SQL', 0, 0),
(7, 'Spring e Hibernate', 0, 0),
(8, 'Módulo empleabilidad', 100, 101),
(9, 'Cuestionarios empleabilidad', 100, 101),
(10, 'Evaluaciones y prácticas', 100, 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `ID` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `id_1` int(11) NOT NULL,
  `id_2` int(11) NOT NULL,
  `id_3` int(11) NOT NULL,
  `id_4` int(11) NOT NULL,
  `id_5` int(11) NOT NULL,
  `id_6` int(11) NOT NULL,
  `id_7` int(11) NOT NULL,
  `id_8` int(11) NOT NULL,
  `id_9` int(11) NOT NULL,
  `id_10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`ID`, `Nombre`, `id_1`, `id_2`, `id_3`, `id_4`, `id_5`, `id_6`, `id_7`, `id_8`, `id_9`, `id_10`) VALUES
(1, 'PROGRAMACIÓN WEB FULL STACK', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `nota` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `id_usuario`, `id_asignatura`, `id_curso`, `nota`) VALUES
(1, 1, 1, 1, 16),
(2, 1, 2, 1, 11),
(3, 2, 1, 1, 15),
(4, 2, 2, 1, 14),
(5, 3, 1, 1, 19),
(6, 3, 2, 1, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `DNI` text NOT NULL,
  `Nombres` text NOT NULL,
  `Apellidos` text NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  `Foto` text NOT NULL,
  `Direccion` text NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Tipo_de_usuario` int(11) NOT NULL,
  `Activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `DNI`, `Nombres`, `Apellidos`, `Username`, `Password`, `Foto`, `Direccion`, `Telefono`, `Tipo_de_usuario`, `Activo`) VALUES
(1, '04725525', 'Luis Manuel', 'Moreira Esteban', 'luismanuel', '123456789', 'foto.jpg', 'Av. Doctor Ángel Pascual Megías', 622052509, 0, 0),
(2, '24869471', 'Jesús', 'Alonso', 'jesusa', '123456789', 'foto.jpg', 'Av. Doctor Rico Pérez', 611215496, 0, 0),
(3, '12324745', 'María', 'Rodríguez', 'marodriguez', '123456789', 'foto.jpg', 'Av. Rambla', 699213567, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
