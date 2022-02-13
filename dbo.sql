-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2022 a las 17:36:19
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `Id_Ciudad` int(11) NOT NULL,
  `Id_Departamento` int(11) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Codigo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`Id_Ciudad`, `Id_Departamento`, `Ciudad`, `Codigo`) VALUES
(100, 895, 'Arauca', '032'),
(200, 997, 'Cali', '031');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `placa` varchar(255) NOT NULL,
  `numero_documento` bigint(20) NOT NULL,
  `cant` int(11) NOT NULL,
  `empresa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `Id_Departamento` int(11) NOT NULL,
  `Id_Pais` int(11) NOT NULL,
  `Departamento` varchar(50) NOT NULL,
  `Codigo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`Id_Departamento`, `Id_Pais`, `Departamento`, `Codigo`) VALUES
(895, 10, 'Arauca', '131'),
(997, 10, 'Valle', '031');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `Id_Empresa` int(11) NOT NULL,
  `Id_Representante_Legal` int(11) NOT NULL,
  `Empresa` varchar(20) NOT NULL,
  `Tipo_Documento` varchar(50) NOT NULL,
  `Numero_Documento` varchar(50) NOT NULL,
  `Dirrecion` varchar(50) NOT NULL,
  `Id_Ciudad` int(11) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`Id_Empresa`, `Id_Representante_Legal`, `Empresa`, `Tipo_Documento`, `Numero_Documento`, `Dirrecion`, `Id_Ciudad`, `Telefono`) VALUES
(111, 10, 'LIBERTADORES', '1', '9003265987', 'Avenida 5', 100, '3216549874'),
(222, 20, 'COOTRANSAR', '2', '9003265987', 'Avenida 10', 200, '3106549874'),
(333, 30, 'COOTRASTEFLOARAUCA', '2', '9009865987', 'Avenida 12', 100, '3106587874'),
(444, 40, 'PEGASO', '2', '9003261087', 'Avenida 13', 200, '3106879874'),
(555, 50, 'CRADIODIT', '2', '9003243987', 'Avenida 6', 100, '3106549714');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `Id_Pais` int(11) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `Codigo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`Id_Pais`, `Pais`, `Codigo`) VALUES
(2, 'VENEZUELA', '012'),
(10, 'COLOMBIA', '020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `Id_Persona` int(11) NOT NULL,
  `Id_Tipo_Documento` int(11) NOT NULL,
  `Numero_Documento` varchar(20) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Fecha_Nacimiento` datetime DEFAULT NULL,
  `Dirrecion` varchar(50) DEFAULT NULL,
  `Id_Ciudad` int(11) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`Id_Persona`, `Id_Tipo_Documento`, `Numero_Documento`, `Nombres`, `Apellidos`, `Fecha_Nacimiento`, `Dirrecion`, `Id_Ciudad`, `Telefono`) VALUES
(10, 1, '17593509', 'Hernando Jose', 'Vela', '2011-10-01 21:45:38', 'Calle 149 50 57', 100, '3107746192'),
(20, 1, '17593509', 'Nestor Fabian', 'Rodriguez', '1995-10-25 00:00:00', 'Calle 14 50 18', 100, '3107746178'),
(30, 1, '17573509', 'Juan Carlos', 'Garcia', '1990-12-24 00:00:00', 'Calle 18 2 57', 200, '3117746192'),
(40, 1, '17583509', 'Juan Jose', 'Velandia', '1990-12-18 00:00:00', 'Calle 12 8 57', 100, '3107747192'),
(50, 1, '17593409', 'Pedro', 'Quintero', '1990-12-19 00:00:00', 'Carrera 2 10 18', 100, '3107716192'),
(60, 1, '17591509', 'David Fernando', 'Varela', '1990-12-24 00:00:00', 'Carrera 52 50 57', 100, '3107736192'),
(70, 1, '17523509', 'Jose', 'Garcia', '1990-02-01 00:00:00', 'Calle 149 5 57', 100, '3107748192'),
(80, 1, '17593510', 'Jose Alirio', 'Sanchez', '1994-10-18 00:00:00', 'Calle 149 50 57', 200, '3187746192'),
(90, 1, '17587509', 'Carlos Eduardo', 'Jaimez', '1993-10-18 00:00:00', 'Calle 149 15 57', 100, '3109656192'),
(100, 1, '17599809', 'Carlos Eduardo', 'Puentes', '1992-10-18 00:00:00', 'Calle 149 50 87', 100, '3198746192'),
(110, 1, '17599209', 'Rafael Leonardo', 'Navaz', '1997-10-18 00:00:00', 'Carrera 10 80 57', 100, '3107746162');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_vehiculos_empresas`
--

CREATE TABLE `personas_vehiculos_empresas` (
  `Id_Personas_VehiculosEmpresas` int(11) NOT NULL,
  `Id_Persona` int(11) NOT NULL,
  `Id_Vehiculo` int(11) NOT NULL,
  `Id_Empresa` int(11) NOT NULL,
  `ESTADO` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas_vehiculos_empresas`
--

INSERT INTO `personas_vehiculos_empresas` (`Id_Personas_VehiculosEmpresas`, `Id_Persona`, `Id_Vehiculo`, `Id_Empresa`, `ESTADO`) VALUES
(123, 10, 1001, 111, 'AFILIADO'),
(124, 20, 1001, 111, 'AFILIADO'),
(125, 30, 1001, 222, 'DESAFIALIADO'),
(126, 40, 1002, 333, 'AFILIADO'),
(127, 50, 1003, 444, 'AFILIADO'),
(128, 60, 1001, 555, 'DESAFIALIADO'),
(129, 70, 1002, 444, 'DESAFIALIADO'),
(130, 80, 1003, 333, 'DESAFIALIADO'),
(131, 90, 1004, 222, 'AFILIADO'),
(132, 80, 1005, 111, 'AFILIADO'),
(133, 10, 1002, 333, 'AFILIADO'),
(134, 40, 1001, 111, 'AFILIADO'),
(135, 50, 1001, 111, 'AFILIADO'),
(136, 20, 1002, 333, 'AFILIADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_documentos`
--

CREATE TABLE `tipos_documentos` (
  `Id_Tipo_Documento` int(11) NOT NULL,
  `Tipo_Documento` varchar(50) NOT NULL,
  `Codigo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos_documentos`
--

INSERT INTO `tipos_documentos` (`Id_Tipo_Documento`, `Tipo_Documento`, `Codigo`) VALUES
(1, 'CEDULA', '10'),
(2, 'NIT', '20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `Id_Vehiculo` int(11) NOT NULL,
  `Placa` varchar(10) NOT NULL,
  `Motor` varchar(20) NOT NULL,
  `Chasis` varchar(20) NOT NULL,
  `Modelo` varchar(52) NOT NULL,
  `Fecha_Matricula` datetime NOT NULL,
  `Capacidad_Pasajeros_Sentados` int(11) DEFAULT NULL,
  `Capacidad_Pasajeros_Pie` int(11) DEFAULT NULL,
  `Peso_Seco` int(11) DEFAULT NULL,
  `Peso_Bruto` int(11) DEFAULT NULL,
  `Cantidad_Puertas` int(11) DEFAULT NULL,
  `Marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`Id_Vehiculo`, `Placa`, `Motor`, `Chasis`, `Modelo`, `Fecha_Matricula`, `Capacidad_Pasajeros_Sentados`, `Capacidad_Pasajeros_Pie`, `Peso_Seco`, `Peso_Bruto`, `Cantidad_Puertas`, `Marca`) VALUES
(1001, 'MAO121', 'A123456789', 'AB123456', '2006', '2006-01-01 00:00:00', 5, 0, 2000, 2100, 4, 'TOYOTA'),
(1002, 'MAO787', 'A123456965', 'AB123000', '2020', '2020-01-01 00:00:00', 5, 0, 2000, 2100, 4, 'TOYOTA'),
(1003, 'PAO157', 'A123456790', 'AB123457', '2007', '2007-01-01 00:00:00', 5, 0, 2000, 2100, 4, 'MAZDA'),
(1004, 'EUO131', 'A123456791', 'AB123458', '2008', '2008-01-01 00:00:00', 5, 0, 2000, 2100, 4, 'FOTON'),
(1005, 'MAO781', 'A123456792', 'AB123459', '2009', '2009-01-31 00:00:00', 5, 0, 2000, 2100, 4, 'KIA'),
(1006, 'TAO895', 'A123456793', 'AB123461', '2010', '2010-12-01 00:00:00', 5, 0, 2000, 2100, 4, 'RENAULT'),
(1007, 'FAT897', 'A123456794', 'AB123462', '2011', '2011-07-01 00:00:00', 5, 0, 2000, 2100, 4, 'VOLSWAGEN');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`Id_Ciudad`),
  ADD KEY `Id_Departamento` (`Id_Departamento`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`placa`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`Id_Departamento`),
  ADD KEY `Id_Pais` (`Id_Pais`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`Id_Empresa`),
  ADD KEY `Id_Representante_Legal` (`Id_Representante_Legal`),
  ADD KEY `Id_Ciudad` (`Id_Ciudad`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`Id_Pais`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`Id_Persona`),
  ADD KEY `Id_Tipo_Documento` (`Id_Tipo_Documento`),
  ADD KEY `Id_Ciudad` (`Id_Ciudad`);

--
-- Indices de la tabla `personas_vehiculos_empresas`
--
ALTER TABLE `personas_vehiculos_empresas`
  ADD PRIMARY KEY (`Id_Personas_VehiculosEmpresas`),
  ADD KEY `Id_Persona` (`Id_Persona`),
  ADD KEY `Id_Vehiculo` (`Id_Vehiculo`),
  ADD KEY `Id_Empresa` (`Id_Empresa`);

--
-- Indices de la tabla `tipos_documentos`
--
ALTER TABLE `tipos_documentos`
  ADD PRIMARY KEY (`Id_Tipo_Documento`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`Id_Vehiculo`),
  ADD UNIQUE KEY `Placa` (`Placa`),
  ADD UNIQUE KEY `Motor` (`Motor`),
  ADD UNIQUE KEY `Chasis` (`Chasis`),
  ADD UNIQUE KEY `Modelo` (`Modelo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`Id_Departamento`) REFERENCES `departamentos` (`Id_Departamento`);

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`Id_Pais`) REFERENCES `paises` (`Id_Pais`);

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`Id_Representante_Legal`) REFERENCES `personas` (`Id_Persona`),
  ADD CONSTRAINT `empresas_ibfk_2` FOREIGN KEY (`Id_Ciudad`) REFERENCES `ciudades` (`Id_Ciudad`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`Id_Tipo_Documento`) REFERENCES `tipos_documentos` (`Id_Tipo_Documento`),
  ADD CONSTRAINT `personas_ibfk_2` FOREIGN KEY (`Id_Ciudad`) REFERENCES `ciudades` (`Id_Ciudad`);

--
-- Filtros para la tabla `personas_vehiculos_empresas`
--
ALTER TABLE `personas_vehiculos_empresas`
  ADD CONSTRAINT `personas_vehiculos_empresas_ibfk_1` FOREIGN KEY (`Id_Persona`) REFERENCES `personas` (`Id_Persona`),
  ADD CONSTRAINT `personas_vehiculos_empresas_ibfk_2` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculos` (`Id_Vehiculo`),
  ADD CONSTRAINT `personas_vehiculos_empresas_ibfk_3` FOREIGN KEY (`Id_Empresa`) REFERENCES `empresas` (`Id_Empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
