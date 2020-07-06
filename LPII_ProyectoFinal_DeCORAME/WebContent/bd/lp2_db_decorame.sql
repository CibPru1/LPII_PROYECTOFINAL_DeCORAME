-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-07-2020 a las 17:23:57
-- Versión del servidor: 5.7.30-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lp2_db_decorame`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambientes`
--
CREATE DATABASE lp2_db_decorame;

USE lp2_db_decorame;


CREATE TABLE `ambientes` (
  `idAmbiente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesoramientos`
--

CREATE TABLE `asesoramientos` (
  `idAsesoramiento` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apePat` varchar(50) NOT NULL,
  `apeMat` varchar(50) NOT NULL,
  `fecNac` date NOT NULL,
  `direccion` varchar(90) NOT NULL,
  `calle` varchar(30) NOT NULL,
  `numeroCalle` varchar(25) NOT NULL,
  `numeroDepartamento` varchar(25) NOT NULL,
  `urbanizacion` varchar(50) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `idProvincia` int(11) NOT NULL,
  `idDistrito` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `celular` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `nombre`) VALUES
(1, 'Amazonas'),
(2, 'Ancash'),
(3, 'Apurimac'),
(4, 'Arequipa'),
(5, 'Ayacucho'),
(6, 'Cajarmarca'),
(7, 'Callao'),
(8, 'Cuzco'),
(9, 'Huancavelica'),
(10, 'Huánuco'),
(11, 'Ica'),
(12, 'Junín'),
(13, 'La Libertad'),
(14, 'Lambayeque'),
(15, 'Lima'),
(16, 'Loreto'),
(17, 'Madre de Dios'),
(18, 'Moquegua'),
(19, 'Pasco'),
(20, 'Piura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `idDetallePedido` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `idAsesoramiento` int(11) NOT NULL,
  `cantidadDetallePedido` int(11) NOT NULL,
  `precioDetallePedido` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `idDistrito` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `idProvincia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`idDistrito`, `idDepartamento`, `idProvincia`, `nombre`) VALUES
(1, 4, 73, 'Alto Selva Alegre'),
(2, 4, 73, 'Arequipa'),
(3, 4, 73, 'Cerro Colorado'),
(4, 4, 73, 'Chiguata'),
(5, 4, 73, 'La Joya'),
(6, 5, 24, 'Cajamarca'),
(7, 5, 24, 'Asunción'),
(8, 5, 25, 'Chota'),
(9, 5, 25, 'Anguía'),
(10, 5, 25, 'Chadín'),
(11, 8, 30, 'Cusco'),
(12, 8, 30, 'Ccorca'),
(13, 15, 51, 'Barranca'),
(14, 15, 51, 'Supe'),
(15, 15, 50, 'Lima'),
(16, 15, 50, 'Ancón'),
(17, 15, 50, 'Ate'),
(18, 15, 50, 'Barranco'),
(19, 15, 50, 'Breña'),
(20, 15, 50, 'Carabayllo'),
(21, 15, 50, 'Chorrillos'),
(22, 15, 50, 'Cienguilla'),
(23, 15, 50, 'Comas'),
(24, 15, 50, 'El Agustino'),
(25, 15, 50, 'Lima'),
(26, 15, 50, 'Jesús María'),
(27, 15, 50, 'La Molina'),
(28, 15, 50, 'San Borja'),
(29, 15, 50, 'San Isidro'),
(30, 15, 50, 'San Juan de Lurigancho'),
(31, 15, 49, 'Santa Anita'),
(32, 15, 50, 'Santiago de Surco'),
(33, 15, 50, 'San Juan de Miraflores'),
(34, 15, 50, 'Villa María del Triunfo'),
(35, 20, 68, 'Castilla'),
(36, 20, 68, 'Catacaos'),
(37, 20, 68, 'Curra Mori'),
(38, 20, 68, 'El Tallán'),
(39, 20, 68, 'Pira');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apePat` varchar(50) NOT NULL,
  `apeMat` varchar(50) NOT NULL,
  `fecNac` date NOT NULL,
  `direccion` varchar(90) NOT NULL,
  `calle` int(20) NOT NULL,
  `numCalle` int(20) NOT NULL,
  `numDepartamento` int(20) NOT NULL,
  `urbanizacion` int(20) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `idProvincia` int(11) NOT NULL,
  `idDistrito` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `celular` char(11) NOT NULL,
  `idPuesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `idEstado` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idPedido` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `fecPedido` date NOT NULL,
  `idEstado` int(11) NOT NULL,
  `imptTotalPedido` double NOT NULL,
  `idAmbiente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `idProvincia` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idProvincia`, `idDepartamento`, `nombre`) VALUES
(1, 1, 'Chachapoyas'),
(2, 1, 'Condorcanqui'),
(3, 1, 'Luya'),
(4, 1, 'Rodriguez de Mendoza'),
(5, 1, 'Utcubamba'),
(6, 2, 'Huaraz'),
(7, 2, 'Aija'),
(8, 2, 'Antio Raimondi'),
(9, 2, 'Carhuaz'),
(10, 2, 'Casma'),
(11, 3, 'Abancay'),
(12, 3, 'Andahuaylas'),
(13, 3, 'Antabamba'),
(14, 3, 'Aymaraes'),
(15, 3, 'Chincheros'),
(16, 3, 'Camana'),
(17, 3, 'Caraveli'),
(18, 3, 'Castilla'),
(19, 3, 'Islay'),
(20, 3, 'La Unión'),
(21, 4, 'Huamanga'),
(22, 4, 'Huanta'),
(23, 5, 'Cajabamba'),
(24, 5, 'Cajamarca'),
(25, 5, 'Chota'),
(26, 5, 'Cutervo'),
(27, 5, 'Jaén'),
(28, 7, 'Provincia Const del Callao'),
(29, 7, 'Callao'),
(30, 8, 'Cuzco'),
(31, 8, 'Acomayo'),
(32, 8, 'Anta'),
(33, 8, 'Calca'),
(34, 8, 'Espinar'),
(35, 9, 'Huancavelica'),
(36, 9, 'Acotamba'),
(37, 10, 'Huanuco'),
(38, 10, 'Marañon'),
(39, 11, 'Ica'),
(40, 11, 'Chincha'),
(41, 12, 'Huancayo'),
(42, 12, 'Chanchamayo'),
(43, 12, 'Chupaca'),
(44, 12, 'Jauja'),
(45, 12, 'Junín'),
(46, 13, 'Trujillo'),
(47, 13, 'Ascope'),
(48, 14, 'Chiclayo'),
(49, 14, 'Lambayeque'),
(50, 15, 'Lima'),
(51, 15, 'Barranca'),
(52, 15, 'Cajatambo'),
(53, 15, 'Canta'),
(54, 15, 'Cañete'),
(55, 15, 'Huaral'),
(56, 15, 'Huarochiri'),
(57, 15, 'Huaura'),
(58, 15, 'Oyón'),
(59, 15, 'Yauyos'),
(60, 16, 'Loreto'),
(61, 16, 'Ucayali'),
(62, 17, 'Tambopata'),
(63, 17, 'Manu'),
(64, 18, 'Mariscal Nieto'),
(65, 18, 'Ilo'),
(66, 19, 'Pasco'),
(67, 19, 'Oxapampa'),
(68, 20, 'Piura'),
(69, 20, 'Ayabaca'),
(70, 20, 'Huancabamba'),
(71, 20, 'Morropón'),
(72, 20, 'Paita'),
(73, 4, 'Arequipa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `idPuesto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambientes`
--
ALTER TABLE `ambientes`
  ADD PRIMARY KEY (`idAmbiente`);

--
-- Indices de la tabla `asesoramientos`
--
ALTER TABLE `asesoramientos`
  ADD PRIMARY KEY (`idAsesoramiento`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idDepartamento` (`idDepartamento`),
  ADD KEY `idProvincia` (`idProvincia`),
  ADD KEY `idDistrito` (`idDistrito`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`idDetallePedido`),
  ADD KEY `idPedido` (`idPedido`),
  ADD KEY `idAsesoramiento` (`idAsesoramiento`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`idDistrito`),
  ADD KEY `idDepartamento` (`idDepartamento`),
  ADD KEY `idProvincia` (`idProvincia`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idDepartamento` (`idDepartamento`),
  ADD KEY `idProvincia` (`idProvincia`),
  ADD KEY `idDistrito` (`idDistrito`),
  ADD KEY `idPuesto` (`idPuesto`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`idEstado`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idEstado` (`idEstado`),
  ADD KEY `idAmbiente` (`idAmbiente`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`idProvincia`),
  ADD KEY `idDepartamento` (`idDepartamento`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`idPuesto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambientes`
--
ALTER TABLE `ambientes`
  MODIFY `idAmbiente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `asesoramientos`
--
ALTER TABLE `asesoramientos`
  MODIFY `idAsesoramiento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `idDetallePedido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `idDistrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `idEstado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `idProvincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `idPuesto` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `PK_cliente_departamento` FOREIGN KEY (`idDepartamento`) REFERENCES `departamentos` (`idDepartamento`),
  ADD CONSTRAINT `PK_cliente_distrito` FOREIGN KEY (`idDistrito`) REFERENCES `distrito` (`idDistrito`),
  ADD CONSTRAINT `PK_cliente_provincia` FOREIGN KEY (`idProvincia`) REFERENCES `provincias` (`idProvincia`);

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `PK_detallePedido_asesoramiento` FOREIGN KEY (`idAsesoramiento`) REFERENCES `asesoramientos` (`idAsesoramiento`),
  ADD CONSTRAINT `PK_detallePedido_pedido` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`idPedido`);

--
-- Filtros para la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `PK_distrito_departamento` FOREIGN KEY (`idDepartamento`) REFERENCES `departamentos` (`idDepartamento`),
  ADD CONSTRAINT `PK_distrito_provincia` FOREIGN KEY (`idProvincia`) REFERENCES `provincias` (`idProvincia`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `PK_empleado_departamento` FOREIGN KEY (`idDepartamento`) REFERENCES `departamentos` (`idDepartamento`),
  ADD CONSTRAINT `PK_empleado_distrito` FOREIGN KEY (`idDistrito`) REFERENCES `distrito` (`idDistrito`),
  ADD CONSTRAINT `PK_empleado_provincia` FOREIGN KEY (`idProvincia`) REFERENCES `provincias` (`idProvincia`),
  ADD CONSTRAINT `PK_empleado_puesto` FOREIGN KEY (`idPuesto`) REFERENCES `puestos` (`idPuesto`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `PK_pedido_ambiente` FOREIGN KEY (`idAmbiente`) REFERENCES `ambientes` (`idAmbiente`),
  ADD CONSTRAINT `PK_pedido_cliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`),
  ADD CONSTRAINT `PK_pedido_estado` FOREIGN KEY (`idEstado`) REFERENCES `estados` (`idEstado`);

--
-- Filtros para la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD CONSTRAINT `PK_provincia_departamento` FOREIGN KEY (`idDepartamento`) REFERENCES `departamentos` (`idDepartamento`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
