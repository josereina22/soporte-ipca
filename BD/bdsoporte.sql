-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-03-2012 a las 21:40:23
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
(10, 'Disenador'),
(11, 'Apoyo'),
(12, 'Conductor'),
(13, 'Recepcion'),
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
  `nombre_direccion` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_direccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `t_direccion`
--

INSERT INTO `t_direccion` (`cod_direccion`, `nombre_direccion`) VALUES
(1, 'Presidencia'),
(2, 'Direccion Ejecutiva de Proteccion Civil'),
(3, 'Direccion Ejecutiva de Ambiente'),
(4, 'Oficina Administrativa de Control y Saneamiento Am'),
(5, 'Consultoria Juridica'),
(6, 'Direccion Ejecutiva de Gestion Interna'),
(7, 'Direccion de Recursos Humanos'),
(8, 'Direccion de Administracion y Presupuesto'),
(9, 'Informatica'),
(10, 'Educacion'),
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
  `Correo` varchar(35) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- Volcado de datos para la tabla `t_empleado`
--

INSERT INTO `t_empleado` (`Codigo`, `PNombre`, `SNombre`, `PApellido`, `SApellido`, `Cedula`, `cod_sexo`, `Correo`, `Telefono`, `cod_direccion`, `cod_cargo`, `cod_tipo_empleado`, `usuario`, `contrasena`) VALUES
(1, 'Lilian', NULL, 'Chacon', NULL, 11735689, 1, 'ipcainformacion@ipcachacao.org.ve', '111', 9, 8, 1, 'lilian', '123456'),
(2, 'Jose', 'Alejandro', 'Reina', 'Morales', 17562051, 1, 'jreina@ipcachacao.org.ve', '110', 9, 3, 1, 'josereina22', '220886'),
(3, 'Alejandro', NULL, 'Perez', NULL, 9964666, 1, 'ipcainformatica@ipcachacao.org.ve', '110', 9, 3, 1, 'alejandro', '123456'),
(4, 'Johnny', 'David', 'Gelvez', 'Noriega', 16116019, 1, 'ipcagraficas@ipcachacao.org.ve', '110', 9, 3, 1, 'johnnygelvez', '123456'),
(5, 'Braulio', NULL, 'Vasquez', NULL, 6492096, 1, 'nose@ipcachacao.org.ve', '2647807', 10, 8, 2, 'braulio', '123456'),
(6, 'Rafael', NULL, 'Moscoso', NULL, 10866743, 1, 'rmoscoso@ipcachacao.org.ve', '2647807', 10, 9, 2, NULL, NULL),
(7, 'Audrey', NULL, 'Hernandez', NULL, 6866581, 2, 'ahernandez@ipcachacao.org.ve', '2647807', 10, 9, 2, NULL, NULL),
(8, 'Maria', NULL, 'Rondon', NULL, 17490953, 2, 'mrondon@ipcacahcao.org.ve', '2647807', 10, 10, 2, NULL, NULL),
(9, 'Dagmar', NULL, 'Marquez', NULL, 6313654, 2, 'dmarquez@ipcachacao.org.ve', '2647807', 10, 11, 2, NULL, NULL),
(10, 'Gonzalo', NULL, 'Quintero', NULL, 10472642, 1, 'gquintero@ipcachacao.org.ve', '2647807', 10, 11, 2, NULL, NULL),
(11, 'Ana', 'Liz', 'FLores', NULL, 8670222, 2, 'ipcapresidencia@ipcachacao.org.ve', '109', 1, 1, 2, 'analizflores', '123456'),
(12, 'Freddy', NULL, 'Mujica', NULL, 4814056, 1, 'fmujica@ipcachacao.org.ve', '131', 1, 9, 2, NULL, NULL),
(13, 'Vittorio', NULL, 'D''Ascenzo', NULL, 13126509, 1, 'vdascenzo@ipcachacao.org.ve', '125', 1, 2, 2, NULL, NULL),
(14, 'Jerry', NULL, 'Peralta', NULL, 14098796, 1, 'jperalta@ipcachacao.org.ve', '125', 1, 6, 2, NULL, NULL),
(15, 'Luis', NULL, 'Gonzalez', NULL, 14935943, 1, 'lgonzalez@ipcachacao.org.ve', '125', 1, 12, 2, NULL, NULL),
(16, 'Yuraima ', NULL, 'Infante', NULL, 1852535, 2, 'yinfnate@ipcachacao.org.ve', '125', 1, 7, 2, NULL, NULL),
(17, 'Veronica ', NULL, 'Perez', NULL, 16462336, 2, 'vperez@ipcachacao.org.ve', '101', 1, 13, 2, NULL, NULL),
(18, 'Victor', NULL, 'Hernandez', NULL, 5976821, 1, 'vhernandez@ipcachacao.org.ve', '128', 11, 14, 2, NULL, NULL),
(19, 'Johan', '', 'Prieto', '', 13158624, 1, 'jprieto@ipcachacao.org.ve', '115', 2, 8, 2, 'johan', '123456'),
(20, 'Oswaldo', '', 'Martinez', '', 10203267, 1, 'omaltinez@ipcachacao.org.ve', '114', 2, 2, 2, NULL, ''),
(21, 'Zulma', NULL, 'Key', NULL, 6683148, 2, 'zkey@ipcachacao.org.ve', '115', 2, 2, 2, NULL, NULL),
(22, 'Roberto', '', 'Perdomo', '', 12387511, 1, 'rperdomo@ipcachacao.org.ve', '115', 2, 3, 2, NULL, ''),
(23, 'Wilmer', '', 'Valdiviezo', '', 13884575, 1, 'wvaldiviezo@ipcachacao.org.ve', '115', 2, 3, 2, NULL, ''),
(24, 'Roberto', '', 'Ali', '', 10869794, 1, 'rali@ipcachacao.org.ve', '115', 2, 3, 2, NULL, ''),
(25, 'Ebert', '', 'Zanchez', '', 11049596, 1, 'ezanchez@ipcachacao.org.ve', '114', 2, 3, 2, NULL, ''),
(26, 'Yoszuth', '', 'Pacheco', '', 19513062, 1, 'ypacheco@ipcachacao.org.ve', '115', 2, 3, 2, NULL, NULL),
(27, 'Victor', '', 'Ochoa', '', 6815661, 1, 'vochoa@ipcachacao.org.ve', '115', 2, 3, 2, NULL, NULL),
(28, 'Xenia', '', 'Gomez', '', 17115885, 2, 'xgomez@ipcachacao,org.ve', '114', 2, 16, 2, NULL, NULL),
(29, 'Fidel', '', 'Reveron', '', 19395977, 1, 'freveron@ipcachacao.org.ve', '114', 2, 7, 2, NULL, NULL),
(30, 'Jimmy', '', 'Alvarado', '', 19452098, 1, 'jalvarado@ipcachacao.org.ve', '114', 2, 7, 2, NULL, NULL),
(31, 'Julio', '', 'Cubas', '', 14156249, 1, 'jcuba@ipcachacao.org.ve', '2633190', 3, 8, 2, 'juliocubas', '123456'),
(32, 'Jesus', '', 'Ferrer', '', 12687047, 1, 'jferrer@ipcachacao.org.ve', '2633190', 3, 2, 2, NULL, NULL),
(33, 'Maria', '', 'Sanchez', '', 12483031, 2, 'msanchez@ipcachacao.org.ve', '2633190', 3, 2, 2, NULL, NULL),
(34, 'Rosiret', '', 'Escalona', '', 15482564, 2, 'rescalona@ipcahcacao.org.ve', '2633190', 3, 2, 2, NULL, NULL),
(35, 'Luis', '', 'Ladera', '', 3889038, 1, 'lladera@ipcachacao.org.ve', '129', 8, 17, 2, '', ''),
(36, 'Adenys', '', 'Viloria', '', 15049137, 1, 'aviloria@ipcachacao.org.ve', '2633190', 3, 3, 2, NULL, NULL),
(37, 'Yanibel', '', 'Zapato', '', 12952771, 2, 'yzapata@ipcachacao.org.ve', '2633190', 3, 3, 2, NULL, NULL),
(38, 'Reinaldo', '', 'Borges', '', 11226103, 1, 'rborges@ipcachacao.org.ve', '2633190', 3, 6, 2, NULL, ''),
(39, 'Jhonny', NULL, 'Covarrubia', NULL, 16113825, 1, 'jcovarrubia@ipcachacao.org.ve', '2633190', 3, 6, 2, NULL, NULL),
(40, 'Harol', NULL, 'Castro', NULL, 11673741, 1, 'hcastro@ipcachacao.org.ve', '2633190', 3, 6, 2, NULL, NULL),
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
(51, 'Norvelis', '', 'Castro', '', 6059084, 2, 'ncastro@ipcachacao.org.ve', '2633190', 8, 4, 2, '', ''),
(52, 'Julissa', '', 'Lugo', '', 15385970, 2, 'jlugo@ipcachacao.org.ve', '2633190', 4, 8, 2, '', ''),
(53, 'Nina', '', 'Rojas', '', 14535586, 2, 'nrojas@ipcacahcao.org.ve', '2633190', 4, 7, 2, '', ''),
(54, 'Eduardo', '', 'Martin', '', 13114362, 1, 'emartin@ipcachacao.org.ve', '2633190', 5, 9, 2, '', ''),
(55, 'Reynaldo', '', 'Martinez', '', 16247100, 1, 'rmartinez@ipcachacao.org.ve', '116', 5, 5, 2, '', ''),
(56, 'Daniel', '', 'Perez', '', 17440149, 1, 'dperez@ipcachacao.org.ve', '116', 5, 5, 2, '', ''),
(57, 'Humberto', '', 'Rodriguez', '', 14991944, 1, 'hrodriguez@ipcachacao.org.ve', '116', 5, 5, 2, '', ''),
(58, 'Jennifer', '', 'Fermin', '', 16116404, 2, 'jfermin@ipcachacao.org.ve', '116', 5, 5, 2, '', ''),
(59, 'Maria', 'A', 'Hares', '', 13735325, 2, 'mhares@ipcachacao.org.ve', '107', 6, 8, 2, '', ''),
(60, 'Ana', '', 'Valera', '', 12630722, 2, 'avalera@ipcachacao.org.ve', '126', 6, 2, 2, '', ''),
(61, 'Lucas', '', 'Perez', '', 4276886, 1, 'lperez@ipcachacao.org.ve', '2633190', 6, 12, 2, '', ''),
(62, 'Nelly', '', 'Marrero', '', 5538123, 2, 'nmarrero@ipcachacao.org.ve', '130', 6, 16, 2, '', ''),
(63, 'Ana', 'Mercedes', 'Ugueto', '', 12640044, 2, 'augueto@ipcachacao.org.ve', '106', 7, 8, 2, '', ''),
(64, 'Milesky', '', 'Barrozo', '', 15342897, 2, 'mbarrozo@ipcachacao.org.ve', '112', 7, 3, 2, '', ''),
(65, 'Miralia', '', 'Madriz', '', 6906910, 2, 'mmadriz@ipcachacao.org.ve', '112', 7, 6, 2, '', ''),
(66, 'Suahil', '', 'Duran', '', 11922474, 2, 'sduran@ipcachacao.org.ve', '112', 7, 3, 2, '', ''),
(67, 'Delvi', '', 'Santos', '', 9353616, 2, 'dsantos@ipcachacao.org.ve', '109', 8, 8, 2, '', ''),
(68, 'Marcia', '', 'Bastardo', '', 10199480, 2, 'mbastardo@ipcachacao.org.ve', '131', 7, 18, 2, '', ''),
(69, 'Jesus', '', 'Teran', '', 4418039, 1, 'jteran@ipcachacao.org.ve', '102', 8, 2, 2, '', ''),
(70, 'Jose', 'Manuel', 'Saez', '', 11705550, 1, 'jsaez@ipcachacao.org.ve', '102', 8, 3, 2, '', ''),
(71, 'Delia', '', 'Gonzalez', '', 11025323, 2, 'dgonzalez@ipcachacao.org.ve', '102', 8, 6, 2, '', ''),
(72, 'Yesika', '', 'Gonzalez', '', 15179790, 2, 'ygonzalez@ipcachacao.org.ve', '131', 8, 6, 2, '', ''),
(73, 'Manuel', 'Enrique', 'Gil', '', 11204952, 1, 'mgil@ipcachacao.org.ve', '131', 8, 6, 2, '', ''),
(74, 'Dayis', '', 'Toloza', '', 14202048, 2, 'dtoloza@ipcachacao.org.ve', '131', 8, 6, 2, '', ''),
(75, 'Solanyeri', '', 'Arcia', '', 14645701, 2, 'sarcia', '131', 8, 6, 2, '', ''),
(76, 'Ezperanza', '', 'Gonzalez', '', 6513647, 2, 'egonzalez@ipcachacao.org.ve', '102', 8, 19, 2, '', ''),
(77, 'Denvher', '', 'Bueno', '', 15421729, 1, 'dbueno@ipcachacao.org.ve', '', 1, 7, 2, '', ''),
(78, 'Jean', '', 'Porras', '', 19505174, 1, 'jporra@ipcachacao.org.ve', '102', 8, 7, 2, '', ''),
(79, 'Ramon', '', 'Camacho', '', 16806591, 1, 'rcamacho@ipcachacao.org.ve', '16806591', 8, 7, 2, '', ''),
(81, 'Jessika', '', 'Osorio', '', 15508355, 2, 'josorio@ipcachacao.org.ve', '129', 8, 3, 2, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_servicio`
--

CREATE TABLE IF NOT EXISTS `t_servicio` (
  `cod_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(20) NOT NULL,
  PRIMARY KEY (`cod_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `t_servicio`
--

INSERT INTO `t_servicio` (`cod_servicio`, `nombre_servicio`) VALUES
(1, 'Instalacion'),
(2, 'Actualizacion'),
(3, 'Hardware'),
(4, 'Impresora'),
(5, 'Reparacion'),
(6, 'Mantenimiento'),
(7, 'Software'),
(8, 'Red'),
(9, 'Otros');

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
  `nombre_tecnico` varchar(25) NOT NULL,
  `apellido_tecnico` varchar(25) NOT NULL,
  `cod_usu` int(11) NOT NULL,
  `cod_servicio` int(11) NOT NULL,
  `Cod_status` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`cod_soporte`),
  KEY `cod_servicio` (`cod_servicio`),
  KEY `fk_cod_usu` (`cod_usu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `t_soporte`
--

INSERT INTO `t_soporte` (`cod_soporte`, `nombre_tecnico`, `apellido_tecnico`, `cod_usu`, `cod_servicio`, `Cod_status`, `descripcion`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'Jose', 'Reina', 14, 4, 2, 'Conectar la impresora en la maquina del funcionario, y configuración de correo quedando operativo', '2012-02-13', '2012-02-13'),
(2, 'Jose', 'Reina', 73, 4, 2, 'Configuración de la impresora de consultoria', '2012-02-14', '2012-02-14'),
(3, 'Jose', 'Reina', 28, 5, 2, '1) problemas con Cpu, Formatear el mismo\r\n2)el Cpu se reparo y se instalo', '2012-02-14', '2012-02-15'),
(4, 'Johnny', 'Gelvez', 20, 3, 2, 'se instala cornetas nuevas', '2012-02-15', '2012-02-15'),
(5, 'Johnny', 'Gelvez', 17, 1, 2, 'istalacion del programa internet restringido', '2012-02-15', '2012-02-15'),
(6, 'Alejandro', 'Perez', 72, 4, 2, 'ConfiguraciÃ³n de impresora de red. ', '2012-02-15', '2012-02-15'),
(7, 'Johnny', 'Gelvez', 25, 1, 2, 'instalacion de corneta a la pc de los radio operadores', '2012-02-15', '2012-02-15'),
(8, 'Jose', 'Reina', 58, 2, 2, 'Se actualiza, sistema restringido, para poder abrir expediente', '2012-02-15', '2012-02-15'),
(9, 'Alejandro', 'Perez', 20, 2, 2, 'Se Actualizo el sistema operativo al PC de las cÃ¡maras de monitoreo de quebradas.', '2012-02-17', '2012-02-17'),
(10, 'Jose', 'Reina', 70, 4, 2, 'Configuracion de impresora de Red', '2012-02-22', '2012-02-22'),
(11, 'Johnny', 'Gelvez', 26, 6, 2, 'imprecion de un documento en tamaÃ±o tabloide ', '2012-02-22', '2012-02-22'),
(12, 'Johnny', 'Gelvez', 11, 3, 2, 'instalacion de una memoria RAM a la PC asiganada teniendo 2 GB DE ram', '2012-02-22', '2012-02-22'),
(13, 'Johnny', 'Gelvez', 67, 6, 2, 'actualizacipn del outlook ', '2012-02-22', '2012-02-22'),
(14, 'Johnny', 'Gelvez', 54, 3, 2, 'encendido de la sala de operacional. previo a una reunion.', '2012-02-23', '2012-02-23'),
(15, 'Johnny', 'Gelvez', 54, 6, 2, 'respaldo de la laptop que tenia asignada para la pc lenovo, q posee actualmente', '2012-02-28', '2012-02-28'),
(16, 'Alejandro', 'Perez', 67, 4, 2, 'configuraciÃ³n de impresora de red', '2012-02-28', '2012-02-28'),
(17, 'Johnny', 'Gelvez', 26, 3, 2, 'encendido del monitor dfe camaras. notiofico que el monitor estaba daÃ±ado. pero lo que estaba era a', '2012-02-28', '2012-02-28'),
(18, 'Johnny', 'Gelvez', 63, 1, 2, 'instalacion del sistema operativo y configuracion del mozilla fire fox e ingreso al domino de la red', '2012-03-01', '2012-03-01'),
(19, 'Johnny', 'Gelvez', 31, 2, 2, 'levantamiento de informaciÃ³n a 9 equipos adscrito a la direcciÃ³n de ambiente. una vez hecho el lev', '2012-03-01', '2012-03-01'),
(20, 'Alejandro', 'Perez', 54, 9, 2, 'Se convirtiÃ³ archivo de word 2010 a 2003.', '2012-03-03', '2012-03-03'),
(21, 'Johnny', 'Gelvez', 22, 3, 2, 'A solicitud del funcionario se porcede a verificar un problema, el cual fue la desincorporaciÃ³n del', '2012-03-02', '2012-03-02'),
(22, 'Jose', 'Reina', 81, 8, 1, 'se revisa la coneccion de internet, y se eliminan algunas barras de herramientas, Quedando operativo', '2012-03-02', '0000-00-00'),
(23, '', '', 5, 2, 1, 'necesito que actualicen mi equipo', '2012-03-02', '0000-00-00');

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
(1, 'Tecnico'),
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
  ADD CONSTRAINT `t_soporte_ibfk_1` FOREIGN KEY (`cod_usu`) REFERENCES `t_empleado` (`Codigo`),
  ADD CONSTRAINT `t_soporte_ibfk_2` FOREIGN KEY (`cod_servicio`) REFERENCES `t_servicio` (`cod_servicio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
