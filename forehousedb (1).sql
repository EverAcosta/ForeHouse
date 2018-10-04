-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2018 a las 01:50:29
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `forehousedb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `Usuario` varchar(80) NOT NULL,
  `Contraseña` varchar(150) NOT NULL,
  `Token` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arrendados`
--

CREATE TABLE `arrendados` (
  `Codigo` int(11) NOT NULL,
  `CodigoUsuario` int(11) NOT NULL,
  `CodigoPension` int(11) NOT NULL,
  `FechaDeIngreso` date NOT NULL,
  `FechaDeSalida` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condiciones`
--

CREATE TABLE `condiciones` (
  `Codigo` int(11) NOT NULL,
  `Descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicionespensiones`
--

CREATE TABLE `condicionespensiones` (
  `CodigoPension` int(11) NOT NULL,
  `CodigoCondicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicionesusuarios`
--

CREATE TABLE `condicionesusuarios` (
  `CodigoUsuario` int(11) NOT NULL,
  `CodigoCondicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `CodUsuario` int(11) NOT NULL,
  `TipoNotificacion` int(11) NOT NULL,
  `Titulo` varchar(300) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opiniones`
--

CREATE TABLE `opiniones` (
  `CodUsuario` int(11) NOT NULL,
  `CodPension` int(11) NOT NULL,
  `Calificación` decimal(1,1) NOT NULL,
  `Opinion` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `CodUsuario` int(11) NOT NULL,
  `CodPension` int(11) NOT NULL,
  `Pregunta` varchar(500) NOT NULL,
  `Respuesta` varchar(500) DEFAULT NULL,
  `FechaPregunta` datetime NOT NULL,
  `FechaRespuesta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacionpension`
--

CREATE TABLE `publicacionpension` (
  `CodPension` int(11) NOT NULL,
  `CodUsuario` int(11) NOT NULL,
  `NombrePension` varchar(80) NOT NULL,
  `Precio` int(11) NOT NULL,
  `CuposDisponibles` int(11) NOT NULL,
  `Iformacion` varchar(1000) NOT NULL,
  `Calificacion` float NOT NULL DEFAULT '0',
  `Ubicacion` varchar(200) NOT NULL,
  `TipoAlojamiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacionusuario`
--

CREATE TABLE `publicacionusuario` (
  `CodUsuario` int(11) NOT NULL,
  `Informacion` varchar(1000) NOT NULL,
  `Presupuesto` int(11) NOT NULL,
  `UbicacionPreferente` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `Codigo` int(11) NOT NULL,
  `CodUsuario` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciopensiones`
--

CREATE TABLE `serviciopensiones` (
  `CodigoPension` int(11) NOT NULL,
  `CodigoServicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Codigo` int(11) NOT NULL,
  `Descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciousuario`
--

CREATE TABLE `serviciousuario` (
  `CodigoUsuario` int(11) NOT NULL,
  `CodigoServicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudesayuda`
--

CREATE TABLE `solicitudesayuda` (
  `Codigo` int(11) NOT NULL,
  `CodUsuario` int(11) NOT NULL,
  `Encabezado` varchar(150) DEFAULT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoalojamiento`
--

CREATE TABLE `tipoalojamiento` (
  `Codigo` int(11) NOT NULL,
  `Tipo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiponotificacion`
--

CREATE TABLE `tiponotificacion` (
  `Codigo` int(11) NOT NULL,
  `Tipo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiporeporte`
--

CREATE TABLE `tiporeporte` (
  `Codigo` int(11) NOT NULL,
  `Descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `Codigo` int(11) NOT NULL,
  `Tipo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Correo` varchar(80) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `Contraseña` varchar(130) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `TipoUsuario` int(11) NOT NULL,
  `FechaDeNacimiento` date NOT NULL,
  `Token` varchar(100) NOT NULL,
  `Token_password` varchar(100) DEFAULT NULL,
  `password_request` int(11) DEFAULT NULL,
  `EstadoPremiun` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arrendados`
--
ALTER TABLE `arrendados`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `CodigoPension` (`CodigoPension`),
  ADD KEY `CodigoUsuario` (`CodigoUsuario`);

--
-- Indices de la tabla `condiciones`
--
ALTER TABLE `condiciones`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `condicionespensiones`
--
ALTER TABLE `condicionespensiones`
  ADD KEY `CodigoCondicion` (`CodigoCondicion`),
  ADD KEY `CodigoPension` (`CodigoPension`);

--
-- Indices de la tabla `condicionesusuarios`
--
ALTER TABLE `condicionesusuarios`
  ADD KEY `CodigoCondicion` (`CodigoCondicion`),
  ADD KEY `CodigoUsuario` (`CodigoUsuario`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD KEY `CodUsuario` (`CodUsuario`),
  ADD KEY `TipoNotificacion` (`TipoNotificacion`);

--
-- Indices de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD KEY `OpinionFkPension` (`CodPension`),
  ADD KEY `OpinionFkUsuario` (`CodUsuario`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD KEY `PreguntafkUsuario` (`CodUsuario`),
  ADD KEY `PreguntafkPension` (`CodPension`);

--
-- Indices de la tabla `publicacionpension`
--
ALTER TABLE `publicacionpension`
  ADD PRIMARY KEY (`CodPension`),
  ADD KEY `CodUsuario` (`CodUsuario`),
  ADD KEY `TipoAlojamiento` (`TipoAlojamiento`);

--
-- Indices de la tabla `publicacionusuario`
--
ALTER TABLE `publicacionusuario`
  ADD PRIMARY KEY (`CodUsuario`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `CodUsuario` (`CodUsuario`);

--
-- Indices de la tabla `serviciopensiones`
--
ALTER TABLE `serviciopensiones`
  ADD KEY `CodigoPension` (`CodigoPension`),
  ADD KEY `CodigoServicio` (`CodigoServicio`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `serviciousuario`
--
ALTER TABLE `serviciousuario`
  ADD KEY `CodigoUsuario` (`CodigoUsuario`),
  ADD KEY `CodigoServicio` (`CodigoServicio`);

--
-- Indices de la tabla `solicitudesayuda`
--
ALTER TABLE `solicitudesayuda`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `CodUsuario` (`CodUsuario`);

--
-- Indices de la tabla `tipoalojamiento`
--
ALTER TABLE `tipoalojamiento`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `tiponotificacion`
--
ALTER TABLE `tiponotificacion`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `tiporeporte`
--
ALTER TABLE `tiporeporte`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Usr_UK_Correo` (`Correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arrendados`
--
ALTER TABLE `arrendados`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `condiciones`
--
ALTER TABLE `condiciones`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicacionpension`
--
ALTER TABLE `publicacionpension`
  MODIFY `CodPension` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudesayuda`
--
ALTER TABLE `solicitudesayuda`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoalojamiento`
--
ALTER TABLE `tipoalojamiento`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiponotificacion`
--
ALTER TABLE `tiponotificacion`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiporeporte`
--
ALTER TABLE `tiporeporte`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arrendados`
--
ALTER TABLE `arrendados`
  ADD CONSTRAINT `arrendados_ibfk_1` FOREIGN KEY (`CodigoPension`) REFERENCES `publicacionpension` (`CodPension`),
  ADD CONSTRAINT `arrendados_ibfk_2` FOREIGN KEY (`CodigoUsuario`) REFERENCES `usuarios` (`Id`);

--
-- Filtros para la tabla `condicionespensiones`
--
ALTER TABLE `condicionespensiones`
  ADD CONSTRAINT `condicionespensiones_ibfk_1` FOREIGN KEY (`CodigoCondicion`) REFERENCES `condiciones` (`Codigo`),
  ADD CONSTRAINT `condicionespensiones_ibfk_2` FOREIGN KEY (`CodigoPension`) REFERENCES `publicacionpension` (`CodPension`);

--
-- Filtros para la tabla `condicionesusuarios`
--
ALTER TABLE `condicionesusuarios`
  ADD CONSTRAINT `condicionesusuarios_ibfk_1` FOREIGN KEY (`CodigoCondicion`) REFERENCES `condiciones` (`Codigo`),
  ADD CONSTRAINT `condicionesusuarios_ibfk_2` FOREIGN KEY (`CodigoUsuario`) REFERENCES `usuarios` (`Id`);

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`Id`),
  ADD CONSTRAINT `notificaciones_ibfk_2` FOREIGN KEY (`TipoNotificacion`) REFERENCES `tiponotificacion` (`Codigo`);

--
-- Filtros para la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD CONSTRAINT `OpinionFkPension` FOREIGN KEY (`CodPension`) REFERENCES `publicacionpension` (`CodPension`),
  ADD CONSTRAINT `OpinionFkUsuario` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`Id`);

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `PreguntafkPension` FOREIGN KEY (`CodPension`) REFERENCES `publicacionpension` (`CodPension`),
  ADD CONSTRAINT `PreguntafkUsuario` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`Id`);

--
-- Filtros para la tabla `publicacionpension`
--
ALTER TABLE `publicacionpension`
  ADD CONSTRAINT `publicacionpension_ibfk_1` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`Id`),
  ADD CONSTRAINT `publicacionpension_ibfk_2` FOREIGN KEY (`TipoAlojamiento`) REFERENCES `tipoalojamiento` (`Codigo`);

--
-- Filtros para la tabla `publicacionusuario`
--
ALTER TABLE `publicacionusuario`
  ADD CONSTRAINT `CodUsuarioFKUsuario` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`Id`);

--
-- Filtros para la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `reportes_ibfk_1` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`Id`);

--
-- Filtros para la tabla `serviciopensiones`
--
ALTER TABLE `serviciopensiones`
  ADD CONSTRAINT `serviciopensiones_ibfk_1` FOREIGN KEY (`CodigoPension`) REFERENCES `publicacionpension` (`CodPension`),
  ADD CONSTRAINT `serviciopensiones_ibfk_2` FOREIGN KEY (`CodigoServicio`) REFERENCES `servicios` (`Codigo`);

--
-- Filtros para la tabla `serviciousuario`
--
ALTER TABLE `serviciousuario`
  ADD CONSTRAINT `serviciousuario_ibfk_1` FOREIGN KEY (`CodigoUsuario`) REFERENCES `usuarios` (`Id`),
  ADD CONSTRAINT `serviciousuario_ibfk_2` FOREIGN KEY (`CodigoServicio`) REFERENCES `servicios` (`Codigo`);

--
-- Filtros para la tabla `solicitudesayuda`
--
ALTER TABLE `solicitudesayuda`
  ADD CONSTRAINT `solicitudesayuda_ibfk_1` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
