-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-03-2012 a las 21:38:36
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bdsoporte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_cargo`
--

CREATE TABLE IF NOT EXISTS `t_cargo` (
  `cod_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` text NOT NULL,
  PRIMARY KEY (`cod_cargo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `t_cargo`
--

INSERT INTO `t_cargo` (`cod_cargo`, `cargo`) VALUES
(1, 'Presidente'),
(2, 'Coordinador'),
(3, 'Analista'),
(4, 'Inspector'),
(5, 'Abogado'),
(6, 'Asistente'),
(7, 'Apoyo'),
(8, 'Director'),
(9, 'Consultor'),
(10, 'Diseñador'),
(12, 'Conductor'),
(13, 'Recepción'),
(14, 'Auditor Interno'),
(15, 'Jefe'),
(16, 'Secretaria'),
(17, 'Administrador'),
(18, 'Contador'),
(19, 'Auxiliar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_direccion`
--

CREATE TABLE IF NOT EXISTS `t_direccion` (
  `cod_direccion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_direccion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`cod_direccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `t_direccion`
--

INSERT INTO `t_direccion` (`cod_direccion`, `nombre_direccion`) VALUES
(1, 'Presidencia'),
(2, 'Dirección Ejecutiva de Protección Civil'),
(3, 'Dirección Ejecutiva de Ambiente'),
(4, 'Oficina Administrativa de Control y Saneamiento Am'),
(5, 'Consultoría Jurídica'),
(6, 'Dirección Ejecutiva de Gestión Interna'),
(7, 'Dirección de Recursos Humanos'),
(8, 'Dirección de Administración y Presupuesto'),
(9, 'Informática'),
(10, 'Educación'),
(11, 'Auditoria Interna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_empleado`
--

CREATE TABLE IF NOT EXISTS `t_empleado` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `PNombre` varchar(15) NOT NULL,
  `SNombre` varchar(15) DEFAULT NULL,
  `PApellido` varchar(15) NOT NULL,
  `SApellido` varchar(15) DEFAULT NULL,
  `Cedula` int(11) NOT NULL,
  `cod_sexo` int(11) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Telefono` char(15) NOT NULL,
  `cod_direccion` int(11) NOT NULL,
  `cod_cargo` int(11) NOT NULL,
  `cod_tipo_empleado` int(11) NOT NULL,
  `usuario` varchar(15) DEFAULT NULL,
  `contrasena` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  UNIQUE KEY `Cedula` (`Cedula`),
  KEY `fk_tipo_empleado` (`cod_tipo_empleado`),
  KEY `cod_direccion` (`cod_direccion`),
  KEY `fk_cargo` (`cod_cargo`),
  KEY `fk_sexo` (`cod_sexo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Volcado de datos para la tabla `t_empleado`
--

INSERT INTO `t_empleado` (`Codigo`, `PNombre`, `SNombre`, `PApellido`, `SApellido`, `Cedula`, `cod_sexo`, `Correo`, `Telefono`, `cod_direccion`, `cod_cargo`, `cod_tipo_empleado`, `usuario`, `contrasena`) VALUES
(1, 'Lillian', NULL, 'Chacon', NULL, 11735689, 1, 'ipcainformacion@ipcachacao.org.ve', '111', 9, 8, 2, 'lchacon', '123456'),
(2, 'José', 'Alejandro', 'Reina', 'Morales', 17562051, 1, 'jreina@ipcachacao.org.ve', '110', 9, 3, 1, 'josereina22', '220886'),
(3, 'Alejandro', NULL, 'Perez', NULL, 9964666, 1, 'jreina@ipcachacao.org.ve', '110', 9, 3, 1, 'alejandro', '123456'),
(4, 'Johnny', 'David', 'Gelvez', 'Noriega', 16116019, 1, 'ipcagraficas@ipcachacao.org.ve', '110', 9, 3, 1, 'johnnygelvez', '123456'),
(5, 'Braulio', NULL, 'Vasquez', NULL, 6492096, 1, 'ipcaeducacion@ipcachacao.org.ve', '2647807', 10, 8, 2, 'bvasquez', '123456'),
(6, 'Rafael', NULL, 'Moscoso', NULL, 10866743, 1, 'rmoscoso@ipcachacao.org.ve', '2647807', 10, 9, 2, 'rmoscoso', '123456'),
(7, 'Audrey', NULL, 'Hernandez', NULL, 6866581, 2, 'ahernandez@ipcachacao.org.ve', '2647807', 10, 9, 2, 'ahernandez', '123456'),
(8, 'Maria', NULL, 'Rondon', NULL, 17490953, 2, 'mrondon@ipcacahcao.org.ve', '2647807', 10, 10, 2, 'mrondon', '123456'),
(9, 'Dagmar', NULL, 'Marquez', NULL, 6313654, 2, 'dmarquez@ipcachacao.org.ve', '2647807', 10, 7, 2, NULL, NULL),
(10, 'Gonzalo', NULL, 'Quintero', NULL, 10472642, 1, '', '2647807', 10, 7, 2, NULL, NULL),
(11, 'Ana', 'Liz', 'FLores', NULL, 8670222, 2, 'ipcapresidencia@ipcachacao.org.ve', '109', 1, 1, 2, 'analiz', '123456'),
(12, 'Freddy', NULL, 'Mujica', NULL, 4814056, 1, 'fmujica@ipcachacao.org.ve', '131', 1, 9, 2, 'fmujica', '123456'),
(13, 'Vittorio', NULL, 'D''Ascenzo', NULL, 13126509, 1, 'vdascenzo@ipcachacao.org.ve', '125', 1, 2, 2, 'vdascenzo', '123456'),
(14, 'Jerry', NULL, 'Peralta', NULL, 14098796, 1, 'jperalta@ipcachacao.org.ve', '125', 1, 6, 2, 'jperalta', '123456'),
(15, 'Luis', NULL, 'Gonzalez', NULL, 14935943, 1, '', '125', 1, 12, 2, NULL, NULL),
(16, 'Yuraima ', NULL, 'Infante', NULL, 1852535, 2, 'yinfnate@ipcachacao.org.ve', '125', 1, 7, 2, NULL, NULL),
(17, 'Veronica ', NULL, 'Perez', NULL, 16462336, 2, 'vperez@ipcachacao.org.ve', '101', 1, 13, 2, 'vperez', '123456'),
(18, 'Victor', NULL, 'Hernandez', NULL, 5976821, 1, 'vhernandez@ipcachacao.org.ve', '128', 11, 14, 2, 'vhernandez', '123456'),
(19, 'Johan', '', 'Prieto', '', 13158624, 1, 'jprieto@ipcachacao.org.ve', '115', 2, 8, 2, 'jprieto', '123456'),
(20, 'Oswaldo', '', 'Martinez', '', 10203267, 1, 'ipcaoperaciones@ipcachacao.org.ve', '114', 2, 2, 2, 'omartinez', '123456'),
(21, 'Zulma', NULL, 'Key', NULL, 6683148, 2, 'zkey@ipcachacao.org.ve', '115', 2, 2, 2, 'zkey', '123456'),
(22, 'Roberto', '', 'Perdomo', '', 12387511, 1, 'rperdomo@ipcachacao.org.ve', '115', 2, 3, 2, 'rperdomo', '123456'),
(23, 'Wilmer', '', 'Valdiviezo', '', 13884575, 1, 'wvaldiviezo@ipcachacao.org.ve', '115', 2, 3, 2, 'wvaldiviezo', '123456'),
(24, 'Roberto', '', 'Ali', '', 10869794, 1, 'roperadores@ipcachacao.org.ve', '115', 2, 3, 2, 'rali', '641595'),
(25, 'Ebert', 'Jhon ', 'Sanchez', 'Ramirez', 11049596, 1, 'roperadores@ipcachacao.org.ve', '114', 2, 3, 2, 'esanchez', '10051973'),
(26, 'Yoszuth', '', 'Pacheco', '', 19513062, 1, 'roperadores@ipcachacao.org.ve', '115', 2, 3, 2, 'ypacheco', 'empireyst'),
(27, 'Victor', '', 'Ochoa', '', 6815661, 1, 'xgomez@ipcachacao.org.ve', '115', 2, 3, 2, 'vochoa', '123456'),
(28, 'Xenia', '', 'Gomez', '', 17115885, 2, 'xgomez@ipcachacao.org.ve', '114', 2, 16, 2, 'xgomez', '123456'),
(29, 'Fidel', '', 'Reveron', '', 19395977, 1, '', '114', 2, 7, 2, NULL, NULL),
(30, 'Jimmy', '', 'Alvarado', '', 19452098, 1, '', '114', 2, 7, 2, NULL, NULL),
(31, 'Julio', '', 'Cubas', '', 14156249, 1, 'ipcaambiente@ipcachacao.org.ve', '2633190', 3, 8, 2, 'jcubas', '123456'),
(32, 'Jesus', '', 'Ferrer', '', 12687047, 1, 'jferrer@ipcachacao.org.ve', '2633190', 3, 2, 2, 'jferrer', '123456'),
(33, 'Maria', '', 'Sanchez', '', 12483031, 2, '', '2633190', 3, 2, 2, NULL, NULL),
(34, 'Rosiret', '', 'Escalona', '', 15482564, 2, 'rescalona@ipcahcacao.org.ve', '2633190', 3, 2, 2, 'rescalona', '123456'),
(35, 'Luis', '', 'Ladera', '', 3889038, 1, 'lladera@ipcachacao.org.ve', '129', 8, 17, 2, 'lladera', '123456'),
(37, 'Yanibel', '', 'Zapato', '', 12952771, 2, 'ipcacomunidad@ipcachacao.org.ve', '2633190', 3, 3, 2, 'yzapata', '123456'),
(38, 'Reinaldo', '', 'Borges', '', 11226103, 1, 'rborges@ipcachacao.org.ve', '2633190', 3, 6, 2, NULL, ''),
(39, 'Jhonny', NULL, 'Covarrubia', NULL, 16113825, 1, 'jcovarrubia@ipcachacao.org.ve', '2633190', 3, 6, 2, NULL, NULL),
(40, 'Harol', NULL, 'Castro', NULL, 11673741, 1, '', '2633190', 3, 6, 2, NULL, NULL),
(41, 'Wilson', NULL, 'Perozo', NULL, 10115255, 1, 'wperozo@ipcachacao.org.ve', '2633190', 3, 6, 2, NULL, NULL),
(42, 'Rafael', '', 'Morales', '', 14152389, 1, 'rmorales@ipcachacao.org.ve', '2633190', 3, 4, 2, '', ''),
(43, 'Sasso', '', 'Donato', '', 1470192, 1, 'sdonato@ipcachacao.org.ve', '2633190', 3, 4, 2, '', ''),
(44, 'Jesus', '', 'Quintero', '', 15362740, 1, 'jquientero@ipcachacao.org.ve', '2633190', 3, 4, 2, '', ''),
(45, 'Diogenes', '', 'Alvares', '', 14967029, 1, 'dalvares@ipcachacao.org.ve', '2633190', 3, 4, 2, '', ''),
(46, 'Piñero', '', 'Douglas', '', 6898252, 1, 'pdouglas@ipcachacao.org.ve', '2633190', 3, 4, 2, '', ''),
(47, 'Cesar', '', 'Clemente', '', 11925850, 1, 'cclemente@ipcachacao.org.ve', '2633190', 3, 4, 2, '', ''),
(48, 'Danilo', '', 'Gonzalez', '', 13735274, 1, 'dgonzalez@ipcachacao.org.ve', '2633190', 3, 4, 2, '', ''),
(49, 'Kenny', '', 'Gomez', '', 14015045, 1, 'kgomez@ipcachacao.org.ve', '2633190', 3, 4, 2, '', ''),
(50, 'Jhonathan', '', 'Alvarado', '', 12385392, 1, 'jalvarado@ipcachacao.org.ve', '2633190', 3, 4, 2, '', ''),
(51, 'Norvelis', '', 'Castro', '', 6059084, 2, 'ncastro@ipcachacao.org.ve', '2633190', 3, 4, 2, 'ncastro', '123456'),
(52, 'Julissa', '', 'Lugo', '', 15385970, 2, 'jlugo@ipcachacao.org.ve', '2633190', 4, 8, 2, 'jlugo', '123456'),
(53, 'Nina', '', 'Rojas', '', 14535586, 2, 'nrojas@ipcacahcao.org.ve', '2633190', 4, 7, 2, 'nrojas', '123456'),
(54, 'Eduardo', '', 'Martin', '', 13114362, 1, 'ipcacj@ipcachacao.org.ve', '2633190', 5, 9, 2, 'emartin', '123456'),
(55, 'Reynaldo', '', 'Martinez', '', 16247100, 1, 'rmartinez@ipcachacao.org.ve', '116', 5, 5, 2, 'rmartinez', '123456'),
(56, 'Daniel', '', 'Perez', '', 17440149, 1, 'dperez@ipcachacao.org.ve', '116', 5, 5, 2, 'dperez', '123456'),
(57, 'Humberto', '', 'Rodriguez', '', 14991944, 1, 'hrodriguez@ipcachacao.org.ve', '116', 5, 5, 2, 'hrodriguez', '123456'),
(58, 'Jennifer', '', 'Fermin', '', 16116404, 2, 'jfermin@ipcachacao.org.ve', '116', 5, 5, 2, 'jfermin', '123456'),
(59, 'Maria', 'A', 'Hares', '', 13735325, 2, 'mhares@ipcachacao.org.ve', '107', 6, 8, 2, 'mhares', '123456'),
(60, 'Ana', '', 'Valera', '', 12630722, 2, 'ipcacomunicaciones@ipcachacao.org.ve', '126', 6, 2, 2, 'avalera', '123456'),
(61, 'Lucas', '', 'Perez', '', 4276886, 1, 'lperez@ipcachacao.org.ve', '2633190', 6, 12, 2, 'lperez', '123456'),
(62, 'Nelly', '', 'Marrero', '', 5538123, 2, 'nmarrero@ipcachacao.org.ve', '130', 1, 16, 2, 'nmarrero', '123456'),
(63, 'Ana', 'Mercedes', 'Ugueto', '', 12640044, 2, 'augueto@ipcachacao.org.ve', '106', 7, 8, 2, 'augueto', '123456'),
(64, 'Milesky', '', 'Barrozo', '', 15342897, 2, 'mbarrozo@ipcachacao.org.ve', '112', 7, 3, 2, 'mbarrozo', '123456'),
(65, 'Miralia', '', 'Madriz', '', 6906910, 2, 'ipcabienestar@ipcachacao.org.ve', '112', 7, 6, 2, 'mmadriz', '123456'),
(66, 'Suahil', '', 'Duran', '', 11922474, 2, 'ipcarrhh@ipcachacao.org.ve', '112', 7, 3, 2, 'sduran', '123456'),
(67, 'Delvi', '', 'Santos', '', 9353616, 2, 'ipcagerencia@ipcachacao.org.ve', '109', 8, 8, 2, 'dsantos', '123456'),
(68, 'Marcia', '', 'Bastardo', '', 10199480, 2, 'mbastardo@ipcachacao.org.ve', '131', 7, 18, 2, 'mbastardo', '123456'),
(69, 'Jesus', '', 'Teran', '', 4418039, 1, 'jteran@ipcachacao.org.ve', '102', 8, 2, 2, '', ''),
(70, 'José', 'Manuel', 'Saez', '', 11705550, 1, 'ipcaadministracion@ipcachacao.org.ve', '102', 8, 3, 2, 'jsaez', '654321'),
(71, 'Delia', '', 'Gonzalez', '', 11025323, 2, '', '102', 8, 6, 2, '', ''),
(72, 'Yesika', '', 'Gonzalez', '', 15179790, 2, 'ygonzalez@ipcachacao.org.ve', '131', 8, 6, 2, 'ygonzalez', '123456'),
(73, 'Manuel', 'Enrique', 'Gil', '', 11204952, 1, 'mgil@ipcachacao.org.ve', '131', 8, 6, 2, '', ''),
(74, 'Dayis', '', 'Toloza', '', 14202048, 2, 'dtoloza@ipcachacao.org.ve', '131', 8, 6, 2, '', ''),
(75, 'Solanyeri', '', 'Arcia', '', 14645701, 2, 'sarcia', '131', 8, 6, 2, '', ''),
(76, 'Ezperanza', '', 'Gonzalez', '', 6513647, 2, 'egonzalez@ipcachacao.org.ve', '102', 8, 19, 2, 'egonzalez', '123456'),
(77, 'Denvher', '', 'Bueno', '', 15421729, 1, 'dbueno@ipcachacao.org.ve', '', 1, 7, 2, '', ''),
(78, 'Jean', '', 'Porras', '', 19505174, 1, 'jporra@ipcachacao.org.ve', '102', 8, 7, 2, '', ''),
(79, 'Ramon', '', 'Camacho', '', 16806591, 1, '', '16806591', 8, 7, 2, '', ''),
(81, 'Jessika', '', 'Osorio', '', 15508355, 2, 'josorio@ipcachacao.org.ve', '129', 8, 3, 2, 'josorio', '123456'),
(82, 'Ana', '', 'Cuenca', '', 8168, 2, '  ', '128', 11, 14, 2, '', ''),
(83, 'Laila ', '', 'Amndan', '', 18465336, 2, 'ipcaseguridad@ipcachacao.org.ve', '', 7, 7, 2, 'lamndan', '123456'),
(84, 'Katerin', '', 'Hernandez', '', 17438233, 2, 'khernandez@ipcachacao.org.ve', '', 2, 3, 2, 'khernandez', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_servicio`
--

CREATE TABLE IF NOT EXISTS `t_servicio` (
  `cod_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(20) NOT NULL,
  PRIMARY KEY (`cod_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `t_servicio`
--

INSERT INTO `t_servicio` (`cod_servicio`, `nombre_servicio`) VALUES
(1, 'Software'),
(2, 'Hardware'),
(3, 'Red'),
(5, 'Asesoría'),
(6, 'Otros'),
(7, 'Instalación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_sexo`
--

CREATE TABLE IF NOT EXISTS `t_sexo` (
  `cod_sexo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_sexo` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_sexo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `t_sexo`
--

INSERT INTO `t_sexo` (`cod_sexo`, `nombre_sexo`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_soporte`
--

CREATE TABLE IF NOT EXISTS `t_soporte` (
  `cod_soporte` int(11) NOT NULL AUTO_INCREMENT,
  `cod_tec` int(11) NOT NULL,
  `nombre_tecnico` varchar(25) NOT NULL,
  `apellido_tecnico` varchar(25) NOT NULL,
  `cod_usu` int(11) NOT NULL,
  `cod_servicio` int(11) NOT NULL,
  `Cod_status` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `solucion` varchar(300) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`cod_soporte`),
  KEY `fk_cod_usu` (`cod_usu`),
  KEY `fk_status` (`Cod_status`),
  KEY `cod_servicio` (`cod_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Volcado de datos para la tabla `t_soporte`
--

INSERT INTO `t_soporte` (`cod_soporte`, `cod_tec`, `nombre_tecnico`, `apellido_tecnico`, `cod_usu`, `cod_servicio`, `Cod_status`, `descripcion`, `solucion`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 2, 'Jose', 'Reina', 14, 3, 2, 'Se Conecta la impresora en la red, y configura de correo quedando operativo', 'Se Conecta la impresora en la red, y configura de correo quedando operativo', '2012-02-13', '2012-02-13'),
(2, 2, 'Jose', 'Reina', 73, 3, 2, 'Se Configura la impresora de Manuel a consultoria', 'Se Configura la impresora de Manuel a consultoria', '2012-02-14', '2012-02-14'),
(3, 2, 'Jose', 'Reina', 28, 2, 2, '1) problemas con Cpu, Formatear el mismo\r\n2)el Cpu se reparo y se instalo', '1) problemas con Cpu, Formatear el mismo\r\n2)el Cpu se reparo y se instalo', '2012-02-14', '2012-02-15'),
(4, 4, 'Johnny', 'Gelvez', 20, 2, 2, 'se instala cornetas nuevas', 'se instala cornetas nuevas', '2012-02-15', '2012-02-15'),
(5, 4, 'Johnny', 'Gelvez', 17, 1, 2, 'istalacion del programa internet', 'istalacion del programa internet', '2012-02-15', '2012-02-15'),
(6, 3, 'Alejandro', 'Perez', 72, 3, 2, 'Se Configura de impresora de red. ', 'Se Configura de impresora de red. ', '2012-02-15', '2012-02-15'),
(7, 4, 'Johnny', 'Gelvez', 25, 2, 2, 'instalacion de corneta a la pc de los radio operadores', 'instalacion de corneta a la pc de los radio operadores', '2012-02-15', '2012-02-15'),
(8, 2, 'Jose', 'Reina', 58, 1, 2, 'Se actualiza sistema restringido, para poder abrir expediente', 'Se actualiza sistema restringido, para poder abrir expediente', '2012-02-15', '2012-02-15'),
(9, 3, 'Alejandro', 'Perez', 20, 1, 2, 'Se Actualizo el sistema operativo al PC de las cámaras de monitoreo de quebradas.', 'Se Actualizo el sistema operativo al PC de las cámaras de monitoreo de quebradas.', '2012-02-17', '2012-02-17'),
(10, 2, 'Jose', 'Reina', 70, 3, 2, 'Configuracion de impresora de Red', 'Configuracion de impresora de Red', '2012-02-22', '2012-02-22'),
(11, 4, 'Johnny', 'Gelvez', 26, 5, 2, 'imprecion de un documento en tamaÃ±o tabloide ', 'imprecion de un documento en tamaÃ±o tabloide ', '2012-02-22', '2012-02-22'),
(12, 4, 'Johnny', 'Gelvez', 11, 2, 2, 'instalacion de una memoria RAM a la PC asiganada teniendo 2 GB DE ram', 'instalacion de una memoria RAM a la PC asiganada teniendo 2 GB DE ram', '2012-02-22', '2012-02-22'),
(13, 4, 'Johnny', 'Gelvez', 67, 3, 2, 'actualizacion del outlook ', 'actualizacion del outlook ', '2012-02-22', '2012-02-22'),
(14, 4, 'Johnny', 'Gelvez', 54, 5, 2, 'encendido de la sala de operacional. previo a una reunion.', 'encendido de la sala de operacional. previo a una reunion.', '2012-02-23', '2012-02-23'),
(15, 4, 'Johnny', 'Gelvez', 54, 1, 2, 'respaldo de la laptop que tenia asignada para la pc lenovo, q posee actualmente', 'respaldo de la laptop que tenia asignada para la pc lenovo, q posee actualmente', '2012-02-28', '2012-02-28'),
(16, 3, 'Alejandro', 'Perez', 67, 3, 2, 'configuración de impresora de red', 'configuración de impresora de red', '2012-02-28', '2012-02-28'),
(17, 4, 'Johnny', 'Gelvez', 26, 5, 2, 'encendido del monitor de camaras. notiofico que el monitor estaba daÃ±ado. pero lo que estaba era a', 'encendido del monitor de camaras. notiofico que el monitor estaba daÃ±ado. pero lo que estaba era a', '2012-02-28', '2012-02-28'),
(18, 4, 'Johnny', 'Gelvez', 63, 1, 2, 'instalacion del sistema operativo y configuracion del mozilla fire fox e ingreso al domino de la red', 'instalacion del sistema operativo y configuracion del mozilla fire fox e ingreso al domino de la red', '2012-03-01', '2012-03-01'),
(19, 4, 'Johnny', 'Gelvez', 31, 1, 2, 'levantamiento de informaciÃ³n a 9 equipos adscrito a la direcciÃ³n de ambiente. una vez hecho el lev', 'levantamiento de informaciÃ³n a 9 equipos adscrito a la direcciÃ³n de ambiente. una vez hecho el lev', '2012-03-01', '2012-03-01'),
(20, 3, 'Alejandro', 'Perez', 54, 5, 2, 'Se convirtió archivo de word 2010 a 2003.', 'Se convirtió archivo de word 2010 a 2003.', '2012-03-03', '2012-03-03'),
(21, 4, 'Johnny', 'Gelvez', 22, 2, 2, 'A solicitud del funcionario se porcede a verificar un problema, sobre puertos USB del Equipo, se reparó y quedo operativo', 'A solicitud del funcionario se porcede a verificar un problema, sobre puertos USB del Equipo, se reparó y quedo operativo', '2012-03-02', '2012-03-02'),
(22, 2, 'Jose', 'Reina', 81, 3, 2, 'se revisa la coneccion de internet, y se eliminan algunas barras de herramientas, Quedando operativo', 'se revisa la coneccion de internet, y se eliminan algunas barras de herramientas, Quedando operativo', '2012-03-02', '2012-03-06'),
(23, 4, 'Johnny', 'Gelvez', 58, 3, 2, 'introduccion al dominio del equipo que era asignado a mairuby casanova, instalacion de impresora ', 'introduccion al dominio del equipo que era asignado a mairuby casanova, instalacion de impresora ', '2012-03-06', '2012-03-06'),
(24, 4, 'Johnny', 'Gelvez', 82, 3, 2, 'instalacion de mozzilla fire fox y ingreso al domino junto a la instalaciomn de la impresora ', 'instalacion de mozzilla fire fox y ingreso al domino junto a la instalaciomn de la impresora ', '2012-03-06', '2012-03-06'),
(25, 3, 'Alejandro', 'Perez', 35, 3, 2, 'Se configuro la impresora láser de la dirección al usuario', 'Se configuro la impresora láser de la dirección al usuario', '2012-03-06', '2012-03-06'),
(26, 3, 'Alejandro', 'Perez', 55, 3, 2, 'configuración de correo ipca', 'configuración de correo ipca', '2012-03-06', '2012-03-06'),
(27, 4, 'Johnny', 'Gelvez', 31, 2, 2, 'instalacion de memorias ram a la pc de la sra norvelis, y las de los 2 inpectores', NULL, '2012-03-06', '2012-03-06'),
(28, 3, 'Alejandro', 'Perez', 25, 5, 2, 'AsesorÍa sobre creación de reporte.', 'AsesorÍa sobre creación de reporte.', '2012-03-06', '2012-03-06'),
(29, 3, 'Alejandro', 'Perez', 77, 5, 2, 'Se convirtió archivo de excel 2003 a 2007 ', 'Se convirtió archivo de excel 2003 a 2007 ', '2012-03-06', '2012-03-06'),
(30, 4, 'Johnny', 'Gelvez', 72, 3, 2, 'eliminacion y posterior instalacion de impresora compartida ', 'eliminacion y posterior instalacion de impresora compartida ', '2012-03-07', '2012-03-07'),
(31, 4, 'Johnny', 'Gelvez', 32, 1, 2, 'eliminacion de programa de pendrive', 'eliminacion de programa de pendrive', '2012-03-08', '2012-03-08'),
(32, 3, 'Alejandro', 'Perez', 81, 3, 2, 'Configuración de impresora de red', 'Configuración de impresora de red', '2012-03-09', '2012-03-09'),
(33, 4, 'Johnny', 'Gelvez', 20, 1, 2, 'liberacion de los puertos USB a las pc de operaciones', 'liberacion de los puertos USB a las pc de operaciones', '2012-03-12', '2012-03-12'),
(34, 4, 'Johnny', 'Gelvez', 27, 3, 2, 'comunica problema con unidades de red', 'se verifico en el lugar y se nota el cable de red desconectado, se procede a conectar y queda operat', '2012-03-13', '2012-03-13'),
(35, 4, 'Johnny', 'Gelvez', 54, 6, 2, '', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(36, 4, 'Johnny', 'Gelvez', 55, 1, 2, 'correo no llegan', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(37, 4, 'Johnny', 'Gelvez', 56, 1, 2, 'no llegan correo', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(38, 4, 'Johnny', 'Gelvez', 57, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(39, 4, 'Johnny', 'Gelvez', 35, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(40, 4, 'Johnny', 'Gelvez', 67, 5, 2, 'no llega correo', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(41, 4, 'Johnny', 'Gelvez', 70, 5, 2, 'correo no llega', 'configuracionn de correo', '2012-03-14', '2012-03-14'),
(42, 4, 'Johnny', 'Gelvez', 72, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(43, 4, 'Johnny', 'Gelvez', 81, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(44, 4, 'Johnny', 'Gelvez', 64, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(45, 4, 'Johnny', 'Gelvez', 65, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(46, 4, 'Johnny', 'Gelvez', 66, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(47, 4, 'Johnny', 'Gelvez', 62, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14'),
(48, 4, 'Johnny', 'Gelvez', 83, 1, 2, 'no lee pdf', 'se instala pdf para poder ver los reportes del sistema', '2012-03-15', '2012-03-15'),
(49, 4, 'Johnny', 'Gelvez', 20, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-15', '2012-03-15'),
(50, 4, 'Johnny', 'Gelvez', 28, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-15', '2012-03-15'),
(51, 4, 'Johnny', 'Gelvez', 25, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-15', '2012-03-15'),
(52, 4, 'Johnny', 'Gelvez', 19, 1, 2, 'correo no lee', 'configuiracion de correo', '2012-03-16', '2012-03-16'),
(53, 4, 'Johnny', 'Gelvez', 22, 5, 2, 'correo no lee', 'configuracion de correo', '2012-03-16', '2012-03-16'),
(54, 4, 'Johnny', 'Gelvez', 23, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-16', '2012-03-16'),
(55, 4, 'Johnny', 'Gelvez', 31, 7, 2, 'sin equipo', 'se le instala el equipo y el programa argis, luego se le configura correo ', '2012-03-20', '2012-03-20'),
(56, 4, 'Johnny', 'Gelvez', 51, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-20', '2012-03-20'),
(57, 4, 'Johnny', 'Gelvez', 5, 2, 2, 'no imprime', 'instalacion de toner color negro a la impresora xerox', '2012-03-20', '2012-03-20'),
(58, 4, 'Johnny', 'Gelvez', 5, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-20', '2012-03-20'),
(59, 4, 'Johnny', 'Gelvez', 6, 1, 2, 'no lee correo', 'configuiracion de correo', '2012-03-20', '2012-03-20'),
(60, 4, 'Johnny', 'Gelvez', 52, 5, 2, 'no lee correo', 'configuracion de correo', '2012-03-20', '2012-03-20'),
(61, 4, 'Johnny', 'Gelvez', 53, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-20', '2012-03-20'),
(62, 4, 'Johnny', 'Gelvez', 17, 3, 2, 'No Puedo Imprimir con la impresora de Consultoría', 'instalacion de la impresora de informatica', '2012-03-20', '2012-03-20'),
(63, 2, 'Jose', 'Reina', 28, 5, 2, 'Configuración del sistema de soporte', 'Se configura y se indica como pedir un soporte mediante el Sistema', '2012-03-22', '2012-03-22'),
(64, 2, 'José', 'Reina', 84, 5, 2, 'Configuración del sistema de soporte', 'Se configura y se indica como pedir un soporte mediante el Sistema', '2012-03-22', '2012-03-22'),
(65, 2, 'José', 'Reina', 25, 5, 2, 'Configuración del sistema de soporte', 'Se configura y se indica como pedir un soporte mediante el Sistema', '2012-03-22', '2012-03-22'),
(66, 2, 'José', 'Reina', 23, 5, 2, 'Configuración del sistema de soporte', 'Se configura y se indica como pedir un soporte mediante el Sistema', '2012-03-22', '2012-03-22'),
(67, 2, 'José', 'Reina', 24, 1, 2, 'Saludos la presente a para solicitarle que por favor agreguen al argis a la computadora de la sala.', 'Se Instala Argis al Equipo de OperacionesIII. El mismo queda Operativo', '2012-03-23', '2012-03-26'),
(68, 2, 'José', 'Reina', 70, 1, 3, 'EL PRESENTE ES PARA SOLICITAR ASISTENCIA EN CUANTO AL REPORTE: CATALOGO DE PROVEEDORES, EL CUAL NO S', '', '2012-03-23', '0000-00-00'),
(69, 2, 'José', 'Reina', 64, 5, 3, 'reporte de cidesa el cual aparece con falla, reporte de personal cuando se genera las asignaciones d', '', '2012-03-23', '0000-00-00'),
(70, 2, 'José', 'Reina', 51, 5, 2, 'problemas con el correo Institucional', 'Se configura correo, se prueba y se le comunica a norvelis por donde revisar los correo', '2012-03-23', '2012-03-23'),
(71, 2, 'José', 'Reina', 7, 3, 2, 'Configuración de Correos', 'Se Configura correo y queda operativo', '2012-03-23', '2012-03-23'),
(72, 4, 'Johnny', 'Gelvez', 35, 2, 2, 'PROBLEMA CON LA IMPRESORA DE IMPRESION DE CHEQUE', 'instalacion de cable en otro puerto y trabajar bajo ambiente administrador  (posible falla permanente en la impresora)', '2012-03-26', '2012-03-26'),
(73, 2, 'José', 'Reina', 63, 3, 2, 'No Puedo Abrir ningun Disco Compartido a la RED', 'Se Configuran Nuevamente los Discos de la Red, quedando operativo', '2012-03-26', '2012-03-26'),
(74, 2, 'José', 'Reina', 57, 5, 2, 'Asesoria del sistema de soporte', 'Ya se atendio, y se dio asesoria', '2012-03-26', '2012-03-26'),
(75, 2, 'José', 'Reina', 13, 5, 2, 'Sobre, el sistema de soporte', 'Se explico a Denvher, el sistema de soporte', '2012-03-26', '2012-03-26'),
(76, 4, 'Johnny', 'Gelvez', 54, 1, 2, 'solicito la instalación de la aplicaciòn que permite trabajar con archivos .docx.\r\nGracias', 'instalacion del software. Y instalacion del equipo ', '2012-03-26', '2012-03-27'),
(77, 4, 'Johnny', 'Gelvez', 25, 5, 2, 'Hola buenos dias e visto que instalaron unprograma de ARCGIS mi pregunta es se podra colocar en español y si pueden darnos una induccion sobre su uso gracias feliz dia ', 'respueta a su correo\r\n', '2012-03-27', '2012-03-27'),
(78, 0, '', '', 19, 3, 1, 'La máquina de Wilmer Valdivieso ya no puede guardar documentos o informes en el Público de Riesgos, me imagino ya se consumió la capacidad que tiene cada maquina para guardar en la red. por favor revisar o estudiar la posibilidad de adicionar mas capacidad', '', '2012-03-27', '0000-00-00'),
(79, 2, 'José', 'Reina', 83, 1, 2, 'cada vez que abro la pagina de mozilla, se abre automaticamente la pagina de descarga y pone que esta se esta realizando.', 'se configura el navegador de Mozilla, para que no aparezca la ventana emergente que aparecia por defecto', '2012-03-27', '2012-03-27'),
(80, 0, '', '', 83, 2, 1, 'La computadora el dia de hoy se me apagado 5 veces . ', '', '2012-03-27', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_status`
--

CREATE TABLE IF NOT EXISTS `t_status` (
  `cod_status` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_status` varchar(10) NOT NULL,
  PRIMARY KEY (`cod_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `t_status`
--

INSERT INTO `t_status` (`cod_status`, `nombre_status`) VALUES
(1, 'Abierto'),
(2, 'Cerrado'),
(3, 'En Proceso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_tipo_empleado`
--

CREATE TABLE IF NOT EXISTS `t_tipo_empleado` (
  `cod_tipo_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_empleado` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_tipo_empleado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `t_tipo_empleado`
--

INSERT INTO `t_tipo_empleado` (`cod_tipo_empleado`, `tipo_empleado`) VALUES
(1, 'Técnico'),
(2, 'Usuario');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_empleado`
--
ALTER TABLE `t_empleado`
  ADD CONSTRAINT `t_empleado_ibfk_1` FOREIGN KEY (`cod_direccion`) REFERENCES `t_direccion` (`cod_direccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_empleado_ibfk_13` FOREIGN KEY (`cod_sexo`) REFERENCES `t_sexo` (`cod_sexo`),
  ADD CONSTRAINT `t_empleado_ibfk_14` FOREIGN KEY (`cod_cargo`) REFERENCES `t_cargo` (`cod_cargo`),
  ADD CONSTRAINT `t_empleado_ibfk_15` FOREIGN KEY (`cod_tipo_empleado`) REFERENCES `t_tipo_empleado` (`cod_tipo_empleado`);

--
-- Filtros para la tabla `t_soporte`
--
ALTER TABLE `t_soporte`
  ADD CONSTRAINT `t_soporte_ibfk_3` FOREIGN KEY (`cod_usu`) REFERENCES `t_empleado` (`Codigo`),
  ADD CONSTRAINT `t_soporte_ibfk_4` FOREIGN KEY (`cod_servicio`) REFERENCES `t_servicio` (`cod_servicio`),
  ADD CONSTRAINT `t_soporte_ibfk_5` FOREIGN KEY (`Cod_status`) REFERENCES `t_status` (`cod_status`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
