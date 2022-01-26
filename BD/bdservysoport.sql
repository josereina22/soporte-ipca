-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 19-03-2013 a las 18:30:20
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `bdservysoport`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_cargo`
-- 

CREATE TABLE `t_cargo` (
  `cod_cargo` int(11) NOT NULL auto_increment,
  `cargo` text NOT NULL,
  PRIMARY KEY  (`cod_cargo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- 
-- Volcar la base de datos para la tabla `t_cargo`
-- 

INSERT INTO `t_cargo` VALUES (17, 'Administrador');
INSERT INTO `t_cargo` VALUES (16, 'Secretaria');
INSERT INTO `t_cargo` VALUES (15, 'Jefe');
INSERT INTO `t_cargo` VALUES (14, 'Auditor Interno');
INSERT INTO `t_cargo` VALUES (13, 'Recepción');
INSERT INTO `t_cargo` VALUES (12, 'Conductor');
INSERT INTO `t_cargo` VALUES (10, 'Diseñador');
INSERT INTO `t_cargo` VALUES (9, 'Consultor');
INSERT INTO `t_cargo` VALUES (8, 'Director');
INSERT INTO `t_cargo` VALUES (7, 'Apoyo');
INSERT INTO `t_cargo` VALUES (6, 'Asistente');
INSERT INTO `t_cargo` VALUES (5, 'Abogado');
INSERT INTO `t_cargo` VALUES (4, 'Inspector');
INSERT INTO `t_cargo` VALUES (3, 'Analista');
INSERT INTO `t_cargo` VALUES (2, 'Coordinador');
INSERT INTO `t_cargo` VALUES (1, 'Presidente');
INSERT INTO `t_cargo` VALUES (18, 'Contador');
INSERT INTO `t_cargo` VALUES (19, 'Auxiliar');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_direccion`
-- 

CREATE TABLE `t_direccion` (
  `cod_direccion` int(11) NOT NULL auto_increment,
  `nombre_direccion` varchar(50) character set utf8 collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_direccion`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `t_direccion`
-- 

INSERT INTO `t_direccion` VALUES (4, 'Oficina Administrativa de Control y Saneamiento Am');
INSERT INTO `t_direccion` VALUES (3, 'Dirección Ejecutiva de Ambiente');
INSERT INTO `t_direccion` VALUES (2, 'Dirección Ejecutiva de Protección Civil');
INSERT INTO `t_direccion` VALUES (1, 'Presidencia');
INSERT INTO `t_direccion` VALUES (5, 'Consultoría Jurídica');
INSERT INTO `t_direccion` VALUES (6, 'Dirección Ejecutiva de Gestión Interna');
INSERT INTO `t_direccion` VALUES (7, 'Dirección de Recursos Humanos');
INSERT INTO `t_direccion` VALUES (8, 'Dirección de Administración y Presupuesto');
INSERT INTO `t_direccion` VALUES (9, 'Dirección de Informática');
INSERT INTO `t_direccion` VALUES (10, 'Dirección de Educación');
INSERT INTO `t_direccion` VALUES (11, 'Auditoria Interna');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_empleado`
-- 

CREATE TABLE `t_empleado` (
  `Codigo` int(11) NOT NULL auto_increment,
  `PNombre` varchar(15) character set utf8 NOT NULL,
  `SNombre` varchar(15) character set utf8 default NULL,
  `PApellido` varchar(15) character set utf8 NOT NULL,
  `SApellido` varchar(15) character set utf8 default NULL,
  `Cedula` int(11) NOT NULL,
  `cod_sexo` int(11) NOT NULL,
  `Correo` varchar(40) character set utf8 NOT NULL,
  `ext` char(15) character set utf8 NOT NULL,
  `cod_direccion` int(11) NOT NULL,
  `cod_cargo` int(11) NOT NULL,
  `cod_tipo_empleado` int(11) NOT NULL,
  `cod_status_empleado` int(11) NOT NULL,
  `usuario` varchar(15) character set utf8 default NULL,
  `contrasena` varchar(15) character set utf8 default NULL,
  PRIMARY KEY  (`Codigo`),
  UNIQUE KEY `Cedula` (`Cedula`),
  KEY `fk_cargo` (`cod_cargo`),
  KEY `fk_status_empleado` (`cod_status_empleado`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=92 ;

-- 
-- Volcar la base de datos para la tabla `t_empleado`
-- 

INSERT INTO `t_empleado` VALUES (1, 'Lillian', NULL, 'Chacon', NULL, 11735689, 1, 'ipcainformacion@ipcachacao.org.ve', '111', 9, 8, 1, 1, 'lchacon', '123456');
INSERT INTO `t_empleado` VALUES (2, 'José', 'Alejandro', 'Reina', 'Morales', 17562051, 1, 'jreina@ipcachacao.org.ve', '110', 9, 3, 1, 1, 'josereina22', '220886');
INSERT INTO `t_empleado` VALUES (3, 'Alejandro', NULL, 'Perez', NULL, 9964666, 1, 'ipcainformatica@ipcachacao.org.ve', '110', 9, 3, 1, 1, 'alejandro', '9964666');
INSERT INTO `t_empleado` VALUES (4, 'Johnny', 'David', 'Gelvez', 'Noriega', 16116019, 1, 'ipcagraficas@ipcachacao.org.ve', '110', 9, 3, 1, 1, 'johnnygelvez', '123456');
INSERT INTO `t_empleado` VALUES (5, 'Braulio', NULL, 'Vasquez', NULL, 6492096, 1, 'ipcaeducacion@ipcachacao.org.ve', '2647807', 10, 8, 2, 1, 'bvasquez', '123456');
INSERT INTO `t_empleado` VALUES (6, 'Rafael', NULL, 'Moscoso', NULL, 10866743, 1, 'rmoscoso@ipcachacao.org.ve', '2647807', 10, 9, 2, 1, 'rmoscoso', '123456');
INSERT INTO `t_empleado` VALUES (7, 'Audrey', NULL, 'Hernandez', NULL, 6866581, 2, 'ahernandez@ipcachacao.org.ve', '2647807', 10, 9, 2, 1, 'ahernandez', '123456');
INSERT INTO `t_empleado` VALUES (8, 'Maria', 'Eugenia', 'Rondon', NULL, 17490953, 2, 'mrondon@ipcacahcao.org.ve', '2647807', 6, 10, 2, 1, 'mrondon', '123456');
INSERT INTO `t_empleado` VALUES (9, 'Dagmar', NULL, 'Marquez', NULL, 6313654, 2, 'dmarque@ipcachacao.org.ve', '2647807', 10, 7, 2, 1, 'dmarquez', '123456');
INSERT INTO `t_empleado` VALUES (10, 'Gonzalo', NULL, 'Quintero', NULL, 10472642, 1, 'gquintero@ipcachacao.org.ve', '2647807', 10, 7, 2, 1, 'gquintero', '123456');
INSERT INTO `t_empleado` VALUES (11, 'Ana', 'Liz', 'FLores', NULL, 8670222, 2, 'ipcapresidencia@ipcachacao.org.ve', '109', 1, 1, 2, 1, 'analiz', '123456');
INSERT INTO `t_empleado` VALUES (12, 'Freddy', NULL, 'Mujica', NULL, 4814056, 1, 'fmujica@ipcachacao.org.ve', '131', 1, 9, 2, 1, 'fmujica', '123456');
INSERT INTO `t_empleado` VALUES (13, 'Vittorio', NULL, 'D''Ascenzo', NULL, 13126509, 1, 'vdascenzo@ipcachacao.org.ve', '125', 1, 2, 2, 1, 'vdascenzo', '123456');
INSERT INTO `t_empleado` VALUES (14, 'Jerry', NULL, 'Peralta', NULL, 14098796, 1, 'jperalta@ipcachacao.org.ve', '125', 1, 6, 2, 1, 'jperalta', '123456');
INSERT INTO `t_empleado` VALUES (15, 'Luis', NULL, 'Gonzalez', NULL, 14935943, 1, '', '125', 1, 12, 2, 1, NULL, NULL);
INSERT INTO `t_empleado` VALUES (16, 'Yuraima ', NULL, 'Infante', NULL, 1852535, 2, '', '125', 1, 7, 2, 1, NULL, NULL);
INSERT INTO `t_empleado` VALUES (17, 'Veronica ', NULL, 'Perez', NULL, 16462336, 2, 'vperez@ipcachacao.org.ve', '101', 1, 13, 2, 1, 'vperez', '123456');
INSERT INTO `t_empleado` VALUES (18, 'Victor', NULL, 'Hernandez', NULL, 5976821, 1, 'vhernandez@ipcachacao.org.ve', '128', 11, 14, 2, 1, 'vhernandez', '123456');
INSERT INTO `t_empleado` VALUES (19, 'Johan', '', 'Prieto', '', 13158624, 1, 'jprieto@ipcachacao.org.ve', '115', 2, 8, 2, 1, 'jprieto', '123456');
INSERT INTO `t_empleado` VALUES (20, 'Oswaldo', '', 'Martinez', '', 10203267, 1, 'ipcaoperaciones@ipcachacao.org.ve', '114', 2, 2, 2, 1, 'omartinez', '123456');
INSERT INTO `t_empleado` VALUES (21, 'Zulma', NULL, 'Key', NULL, 6683148, 2, 'zkey@ipcachacao.org.ve', '115', 2, 2, 2, 1, 'zkey', '123456');
INSERT INTO `t_empleado` VALUES (22, 'Roberto', '', 'Perdomo', '', 12387511, 1, 'rperdomo@ipcachacao.org.ve', '115', 2, 3, 2, 1, 'rperdomo', '123456');
INSERT INTO `t_empleado` VALUES (23, 'Wilmer', '', 'Valdiviezo', '', 13884575, 1, 'wvaldiviezo@ipcachacao.org.ve', '115', 2, 3, 2, 1, 'wvaldiviezo', '123456');
INSERT INTO `t_empleado` VALUES (24, 'Roberto', '', 'Ali', '', 10869794, 1, 'roperadores@ipcachacao.org.ve', '115', 2, 3, 2, 1, 'rali', '641595');
INSERT INTO `t_empleado` VALUES (25, 'Ebert', 'Jhon ', 'Sanchez', 'Ramirez', 11049596, 1, 'roperadores@ipcachacao.org.ve', '114', 2, 3, 2, 1, 'esanchez', '10051973');
INSERT INTO `t_empleado` VALUES (26, 'Yoszuth', '', 'Pacheco', '', 19513062, 1, 'roperadores@ipcachacao.org.ve', '115', 2, 3, 2, 1, 'ypacheco', '123456');
INSERT INTO `t_empleado` VALUES (27, 'Victor', '', 'Ochoa', '', 6815661, 1, 'xgomez@ipcachacao.org.ve', '115', 2, 3, 2, 1, 'vochoa', '123456');
INSERT INTO `t_empleado` VALUES (28, 'Xenia', '', 'Gomez', '', 17115885, 2, 'xgomez@ipcachacao.org.ve', '114', 2, 16, 2, 1, 'xgomez', '123456');
INSERT INTO `t_empleado` VALUES (29, 'Fidel', '', 'Reveron', '', 19395977, 1, '', '114', 2, 7, 2, 1, NULL, NULL);
INSERT INTO `t_empleado` VALUES (30, 'Jimmy', '', 'Alvarado', '', 19452098, 1, '', '114', 2, 7, 2, 1, NULL, NULL);
INSERT INTO `t_empleado` VALUES (31, 'Julio', '', 'Cubas', '', 14156249, 1, 'ipcaambiente@ipcachacao.org.ve', '2633190', 3, 8, 2, 1, 'jcubas', '123456');
INSERT INTO `t_empleado` VALUES (32, 'Jesus', '', 'Ferrer', '', 12687047, 1, 'jferrer@ipcachacao.org.ve', '2633190', 3, 2, 2, 1, 'jferrer', '123456');
INSERT INTO `t_empleado` VALUES (33, 'Maria', '', 'Sanchez', '', 12483031, 2, 'ipcadega@ipcachacao.org.ve', '2633190', 3, 2, 2, 1, 'msanchez', '123456');
INSERT INTO `t_empleado` VALUES (34, 'Rosiret', '', 'Escalona', '', 15482564, 2, 'rescalona@ipcachacao.org.ve', '2633190', 3, 2, 2, 1, 'rescalona', '123456');
INSERT INTO `t_empleado` VALUES (35, 'Luis', '', 'Ladera', '', 3889038, 1, 'lladera@ipcachacao.org.ve', '129', 8, 17, 2, 1, 'lladera', '123456');
INSERT INTO `t_empleado` VALUES (37, 'Yanibel', '', 'Zapata', '', 12952771, 2, 'ipcacomunidad@ipcachacao.org.ve', '2633190', 3, 3, 2, 1, 'yzapata', '123456');
INSERT INTO `t_empleado` VALUES (38, 'Reinaldo', '', 'Borges', '', 11226103, 1, '', '2633190', 3, 6, 2, 1, NULL, '');
INSERT INTO `t_empleado` VALUES (39, 'Jhonny', NULL, 'Covarrubia', NULL, 16113825, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 6, 2, 1, 'jcovarrubia', '123456');
INSERT INTO `t_empleado` VALUES (40, 'Harol', NULL, 'Castro', NULL, 11673741, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 6, 2, 1, 'hcastro', '123456');
INSERT INTO `t_empleado` VALUES (41, 'Wilson', '', 'Perozo', '', 10115255, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 6, 2, 1, 'wperozo', '241101');
INSERT INTO `t_empleado` VALUES (42, 'Rafael', '', 'Morales', '', 14152389, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 4, 2, 1, 'rmorales', '123456');
INSERT INTO `t_empleado` VALUES (43, 'Donato', '', 'Sasso', '', 1470192, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 4, 2, 1, 'dsasso', '123456');
INSERT INTO `t_empleado` VALUES (44, 'Jesus', '', 'Quero', '', 15362740, 1, '', '2633190', 3, 4, 2, 1, '', '');
INSERT INTO `t_empleado` VALUES (45, 'Diogenes', '', 'Alvares', '', 14967029, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 4, 2, 1, 'dalvares', '123456');
INSERT INTO `t_empleado` VALUES (46, 'Douglas', '', 'Piñero', '', 6898252, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 4, 2, 1, 'dpinero', '123456');
INSERT INTO `t_empleado` VALUES (47, 'Cesar', 'Oswaldo', 'Clemente', 'Sol', 11925850, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 4, 2, 1, 'cclemente', 'cocs1276');
INSERT INTO `t_empleado` VALUES (49, 'Kenny', '', 'Gomez', '', 14015045, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 4, 2, 1, 'kgomez', '123456');
INSERT INTO `t_empleado` VALUES (50, 'Jhonathan', '', 'Alvarado', '', 12385392, 1, 'iambientales@ipcachacao.org.ve', '2633190', 3, 4, 2, 1, 'jalvarado', '123456');
INSERT INTO `t_empleado` VALUES (51, 'Norvelis', '', 'Castro', '', 6059084, 2, 'ncastro@ipcachacao.org.ve', '2633190', 3, 4, 2, 1, 'ncastro', '123456');
INSERT INTO `t_empleado` VALUES (52, 'Julissa', '', 'Lugo', '', 15385970, 2, 'jlugo@ipcachacao.org.ve', '2633190', 4, 8, 2, 1, 'jlugo', '123456');
INSERT INTO `t_empleado` VALUES (53, 'Nina', '', 'Rojas', '', 14535586, 2, 'nrojas@ipcachacao.org.ve', '2633190', 4, 7, 2, 1, 'nrojas', '123456');
INSERT INTO `t_empleado` VALUES (54, 'Eduardo', '', 'Martin', '', 13114362, 1, 'ipcacj@ipcachacao.org.ve', '2633190', 5, 9, 2, 1, 'emartin', '123456');
INSERT INTO `t_empleado` VALUES (55, 'Reynaldo', '', 'Martinez', '', 16247100, 1, 'rmartinez@ipcachacao.org.ve', '116', 5, 5, 2, 1, 'rmartinez', '123456');
INSERT INTO `t_empleado` VALUES (56, 'Daniel', '', 'Perez', '', 17440149, 1, 'dperez@ipcachacao.org.ve', '116', 5, 5, 2, 1, 'dperez', '123456');
INSERT INTO `t_empleado` VALUES (57, 'Humberto', '', 'Rodriguez', '', 14991944, 1, 'hrodriguez@ipcachacao.org.ve', '116', 5, 5, 2, 1, 'hrodriguez', '123456');
INSERT INTO `t_empleado` VALUES (58, 'Jennifer', '', 'Fermin', '', 16116404, 2, 'jfermin@ipcachacao.org.ve', '116', 5, 5, 2, 1, 'jfermin', '123456');
INSERT INTO `t_empleado` VALUES (59, 'Maria', 'A', 'Hares', '', 13735325, 2, 'mhares@ipcachacao.org.ve', '107', 6, 8, 2, 1, 'mhares', '123456');
INSERT INTO `t_empleado` VALUES (60, 'Ana', '', 'Varela', '', 12630722, 2, 'ipcacomunicaciones@ipcachacao.org.ve', '126', 6, 2, 2, 1, 'avarela', '123456');
INSERT INTO `t_empleado` VALUES (61, 'Lucas', '', 'Perez', '', 4276886, 1, 'lperez@ipcachacao.org.ve', '2633190', 6, 12, 2, 1, 'lperez', '123456');
INSERT INTO `t_empleado` VALUES (62, 'Nelly', '', 'Marrero', '', 5538123, 2, 'nmarrero@ipcachacao.org.ve', '130', 1, 16, 2, 1, 'nmarrero', '123456');
INSERT INTO `t_empleado` VALUES (63, 'Ana', 'Mercedes', 'Ugueto', '', 12640044, 2, 'augueto@ipcachacao.org.ve', '106', 7, 8, 2, 1, 'augueto', '123456');
INSERT INTO `t_empleado` VALUES (64, 'Milesky', '', 'Barrozo', '', 15342897, 2, 'mbarrozo@ipcachacao.org.ve', '112', 7, 3, 2, 1, 'mbarrozo', '123456');
INSERT INTO `t_empleado` VALUES (65, 'Miralia', '', 'Madriz', '', 6906910, 2, 'ipcabienestar@ipcachacao.org.ve', '112', 7, 6, 2, 1, 'mmadriz', '123456');
INSERT INTO `t_empleado` VALUES (66, 'Suahil', '', 'Duran', '', 11922474, 2, 'ipcarrhh@ipcachacao.org.ve', '112', 7, 3, 2, 1, 'sduran', '123456');
INSERT INTO `t_empleado` VALUES (67, 'Delvi', '', 'Santos', '', 9353616, 2, 'ipcagerencia@ipcachacao.org.ve', '109', 8, 8, 2, 1, 'dsantos', '123456');
INSERT INTO `t_empleado` VALUES (68, 'Marcia', '', 'Bastardo', '', 10199480, 2, 'mbastardo@ipcachacao.org.ve', '131', 8, 18, 2, 1, 'mbastardo', '123456');
INSERT INTO `t_empleado` VALUES (69, 'Jesus', '', 'Teran', '', 4418039, 1, '', '102', 8, 2, 2, 1, '', '');
INSERT INTO `t_empleado` VALUES (70, 'José', 'Manuel', 'Saez', '', 11705550, 1, 'ipcaadministracion@ipcachacao.org.ve', '102', 8, 3, 2, 1, 'jsaez', '654321');
INSERT INTO `t_empleado` VALUES (71, 'Delia', '', 'Gonzalez', '', 11025323, 2, '', '102', 8, 6, 2, 1, '', '');
INSERT INTO `t_empleado` VALUES (72, 'Yesika', '', 'Gonzalez', '', 15179790, 2, 'ygonzalez@ipcachacao.org.ve', '131', 8, 6, 2, 1, 'ygonzalez', '123456');
INSERT INTO `t_empleado` VALUES (73, 'Manuel', 'Enrique', 'Gil', '', 11204952, 1, 'egonzalez@ipcachacao.org.ve', '131', 8, 6, 2, 1, 'mgil', '123456');
INSERT INTO `t_empleado` VALUES (74, 'Dayis', '', 'Toloza', '', 14202048, 2, '', '131', 8, 6, 2, 1, '', '');
INSERT INTO `t_empleado` VALUES (75, 'Solanyeri', '', 'Arcia', '', 14645701, 2, 'jreina@ipcachacao.org.ve', '131', 8, 6, 2, 1, 'sarcia', '123456');
INSERT INTO `t_empleado` VALUES (76, 'Esperanza', '', 'Gonzalez', '', 6513647, 2, 'egonzalez@ipcachacao.org.ve', '102', 8, 19, 2, 1, 'egonzalez', '123456');
INSERT INTO `t_empleado` VALUES (77, 'Denvher', '', 'Bueno', '', 15421729, 1, 'vperez@ipcachacao.org.ve', '', 1, 7, 2, 1, 'dbueno', '123456');
INSERT INTO `t_empleado` VALUES (78, 'Jean', '', 'Porras', '', 19505174, 1, '', '102', 8, 7, 2, 1, '', '');
INSERT INTO `t_empleado` VALUES (79, 'Ramon', '', 'Camacho', '', 16806591, 1, '', '16806591', 8, 7, 2, 1, '', '');
INSERT INTO `t_empleado` VALUES (81, 'Jessika', '', 'Osorio', '', 15508355, 2, 'josorio@ipcachacao.org.ve', '129', 8, 3, 2, 1, 'josorio', '123456');
INSERT INTO `t_empleado` VALUES (82, 'Ana', '', 'Cuenca', '', 8168483, 2, 'acuenca@ipcachacao.org.ve', '128', 11, 14, 2, 1, 'acuenca', '123456');
INSERT INTO `t_empleado` VALUES (83, 'Laila ', '', 'Amndan', '', 18465336, 2, 'ipcarrhh@ipcachacao.org.ve', '', 7, 7, 2, 1, 'lamndan', '123456');
INSERT INTO `t_empleado` VALUES (84, 'Katerin', '', 'Hernandez', '', 17438233, 2, 'khernandez@ipcachacao.org.ve', '', 2, 3, 2, 1, 'khernandez', '123456');
INSERT INTO `t_empleado` VALUES (85, 'Pablo', '', 'Mendoza', '', 11034651, 1, 'pmendoza@ipcachacao.org.ve', '110', 9, 2, 1, 1, 'pmendoza', '123456');
INSERT INTO `t_empleado` VALUES (86, 'Johanabel', '', 'Simanca', '', 14935821, 2, 'ipcacompras@ipcachacao.org.ve', '109', 8, 3, 2, 1, 'jsimanca', '123456');
INSERT INTO `t_empleado` VALUES (87, 'Anggie', '', 'Peña', '', 16716390, 2, 'apena@ipcachacao.org.ve', '', 2, 2, 2, 1, 'apena', '654321');
INSERT INTO `t_empleado` VALUES (88, 'Andrea', '', 'León', '', 14407690, 2, 'rrhh@ipcachacao.org.ve', '106', 7, 5, 2, 1, 'aleon', '123456');
INSERT INTO `t_empleado` VALUES (89, ' RADHARANI ', '', 'MEDINA', '', 0, 2, 'ipcaambiente@ipcachacao.org.ve', '', 3, 8, 2, 1, 'Rmedina', '123456');
INSERT INTO `t_empleado` VALUES (90, 'daniel', '', 'lizcano', '', 1, 1, 'dlizcano@ipcachacao.org.ve', '', 11, 3, 2, 1, 'dlizcano', '123456');
INSERT INTO `t_empleado` VALUES (91, 'Jose', 'Alejandro', 'Reina', 'Morales', 17562053, 1, 'jreina@ipcachacao.org.ve', '111', 9, 3, 3, 2, 'josereina', '123456');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_sexo`
-- 

CREATE TABLE `t_sexo` (
  `cod_sexo` int(11) NOT NULL auto_increment,
  `nombre_sexo` varchar(15) NOT NULL,
  PRIMARY KEY  (`cod_sexo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `t_sexo`
-- 

INSERT INTO `t_sexo` VALUES (1, 'Masculino');
INSERT INTO `t_sexo` VALUES (2, 'Femenino');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_soporte`
-- 

CREATE TABLE `t_soporte` (
  `cod_soporte` int(11) NOT NULL auto_increment,
  `cod_tec` int(11) NOT NULL,
  `nombre_tecnico` varchar(25) character set latin1 NOT NULL,
  `apellido_tecnico` varchar(25) character set latin1 NOT NULL,
  `cod_usu` int(11) NOT NULL,
  `cod_tipo_soporte` int(11) NOT NULL,
  `cod_status_soporte` int(11) NOT NULL,
  `descripcion` varchar(300) character set latin1 NOT NULL,
  `solucion` varchar(300) character set latin1 default NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY  (`cod_soporte`),
  KEY `fk_cod_usu` (`cod_usu`),
  KEY `fk_status` (`cod_status_soporte`),
  KEY `cod_servicio` (`cod_tipo_soporte`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=488 ;

-- 
-- Volcar la base de datos para la tabla `t_soporte`
-- 

INSERT INTO `t_soporte` VALUES (1, 2, 'Jose', 'Reina', 14, 3, 2, 'Se Conecta la impresora en la red, y configura de correo quedando operativo', 'Se Conecta la impresora en la red, y configura de correo quedando operativo', '2012-02-13', '2012-02-13');
INSERT INTO `t_soporte` VALUES (2, 2, 'Jose', 'Reina', 73, 3, 2, 'Se Configura la impresora de Manuel a consultoria', 'Se Configura la impresora de Manuel a consultoria', '2012-02-14', '2012-02-14');
INSERT INTO `t_soporte` VALUES (3, 2, 'Jose', 'Reina', 28, 2, 2, '1) problemas con Cpu, Formatear el mismo\r\n2)el Cpu se reparo y se instalo', '1) problemas con Cpu, Formatear el mismo\r\n2)el Cpu se reparo y se instalo', '2012-02-14', '2012-02-15');
INSERT INTO `t_soporte` VALUES (4, 4, 'Johnny', 'Gelvez', 20, 2, 2, 'se instala cornetas nuevas', 'se instala cornetas nuevas', '2012-02-15', '2012-02-15');
INSERT INTO `t_soporte` VALUES (5, 4, 'Johnny', 'Gelvez', 17, 1, 2, 'istalacion del programa internet', 'istalacion del programa internet', '2012-02-15', '2012-02-15');
INSERT INTO `t_soporte` VALUES (6, 3, 'Alejandro', 'Perez', 72, 3, 2, 'Se Configura de impresora de red. ', 'Se Configura de impresora de red. ', '2012-02-15', '2012-02-15');
INSERT INTO `t_soporte` VALUES (7, 4, 'Johnny', 'Gelvez', 25, 2, 2, 'instalacion de corneta a la pc de los radio operadores', 'instalacion de corneta a la pc de los radio operadores', '2012-02-15', '2012-02-15');
INSERT INTO `t_soporte` VALUES (8, 2, 'Jose', 'Reina', 58, 1, 2, 'Se actualiza sistema restringido, para poder abrir expediente', 'Se actualiza sistema restringido, para poder abrir expediente', '2012-02-15', '2012-02-15');
INSERT INTO `t_soporte` VALUES (9, 3, 'Alejandro', 'Perez', 20, 1, 2, 'Se Actualizo el sistema operativo al PC de las cámaras de monitoreo de quebradas.', 'Se Actualizo el sistema operativo al PC de las cámaras de monitoreo de quebradas.', '2012-02-17', '2012-02-17');
INSERT INTO `t_soporte` VALUES (10, 2, 'Jose', 'Reina', 70, 3, 2, 'Configuracion de impresora de Red', 'Configuracion de impresora de Red', '2012-02-22', '2012-02-22');
INSERT INTO `t_soporte` VALUES (11, 4, 'Johnny', 'Gelvez', 26, 5, 2, 'imprecion de un documento en tamaÃ±o tabloide ', 'imprecion de un documento en tamaÃ±o tabloide ', '2012-02-22', '2012-02-22');
INSERT INTO `t_soporte` VALUES (12, 4, 'Johnny', 'Gelvez', 11, 2, 2, 'instalacion de una memoria RAM a la PC asiganada teniendo 2 GB DE ram', 'instalacion de una memoria RAM a la PC asiganada teniendo 2 GB DE ram', '2012-02-22', '2012-02-22');
INSERT INTO `t_soporte` VALUES (13, 4, 'Johnny', 'Gelvez', 67, 3, 2, 'actualizacion del outlook ', 'actualizacion del outlook ', '2012-02-22', '2012-02-22');
INSERT INTO `t_soporte` VALUES (14, 4, 'Johnny', 'Gelvez', 54, 5, 2, 'encendido de la sala de operacional. previo a una reunion.', 'encendido de la sala de operacional. previo a una reunion.', '2012-02-23', '2012-02-23');
INSERT INTO `t_soporte` VALUES (15, 4, 'Johnny', 'Gelvez', 54, 1, 2, 'respaldo de la laptop que tenia asignada para la pc lenovo, q posee actualmente', 'respaldo de la laptop que tenia asignada para la pc lenovo, q posee actualmente', '2012-02-28', '2012-02-28');
INSERT INTO `t_soporte` VALUES (16, 3, 'Alejandro', 'Perez', 67, 3, 2, 'configuración de impresora de red', 'configuración de impresora de red', '2012-02-28', '2012-02-28');
INSERT INTO `t_soporte` VALUES (17, 4, 'Johnny', 'Gelvez', 26, 5, 2, 'encendido del monitor de camaras. notiofico que el monitor estaba daÃ±ado. pero lo que estaba era a', 'encendido del monitor de camaras. notiofico que el monitor estaba daÃ±ado. pero lo que estaba era a', '2012-02-28', '2012-02-28');
INSERT INTO `t_soporte` VALUES (18, 4, 'Johnny', 'Gelvez', 63, 1, 2, 'instalacion del sistema operativo y configuracion del mozilla fire fox e ingreso al domino de la red', 'instalacion del sistema operativo y configuracion del mozilla fire fox e ingreso al domino de la red', '2012-03-01', '2012-03-01');
INSERT INTO `t_soporte` VALUES (19, 4, 'Johnny', 'Gelvez', 31, 1, 2, 'levantamiento de informaciÃ³n a 9 equipos adscrito a la direcciÃ³n de ambiente. una vez hecho el lev', 'levantamiento de informaciÃ³n a 9 equipos adscrito a la direcciÃ³n de ambiente. una vez hecho el lev', '2012-03-01', '2012-03-01');
INSERT INTO `t_soporte` VALUES (20, 3, 'Alejandro', 'Perez', 54, 5, 2, 'Se convirtió archivo de word 2010 a 2003.', 'Se convirtió archivo de word 2010 a 2003.', '2012-03-03', '2012-03-03');
INSERT INTO `t_soporte` VALUES (21, 4, 'Johnny', 'Gelvez', 22, 2, 2, 'A solicitud del funcionario se porcede a verificar un problema, sobre puertos USB del Equipo, se reparó y quedo operativo', 'A solicitud del funcionario se porcede a verificar un problema, sobre puertos USB del Equipo, se reparó y quedo operativo', '2012-03-02', '2012-03-02');
INSERT INTO `t_soporte` VALUES (22, 2, 'Jose', 'Reina', 81, 3, 2, 'se revisa la coneccion de internet, y se eliminan algunas barras de herramientas, Quedando operativo', 'se revisa la coneccion de internet, y se eliminan algunas barras de herramientas, Quedando operativo', '2012-03-02', '2012-03-06');
INSERT INTO `t_soporte` VALUES (23, 4, 'Johnny', 'Gelvez', 58, 3, 2, 'introduccion al dominio del equipo que era asignado a mairuby casanova, instalacion de impresora ', 'introduccion al dominio del equipo que era asignado a mairuby casanova, instalacion de impresora ', '2012-03-06', '2012-03-06');
INSERT INTO `t_soporte` VALUES (24, 4, 'Johnny', 'Gelvez', 82, 3, 2, 'instalacion de mozzilla fire fox y ingreso al domino junto a la instalaciomn de la impresora ', 'instalacion de mozzilla fire fox y ingreso al domino junto a la instalaciomn de la impresora ', '2012-03-06', '2012-03-06');
INSERT INTO `t_soporte` VALUES (25, 3, 'Alejandro', 'Perez', 35, 3, 2, 'Se configuro la impresora láser de la dirección al usuario', 'Se configuro la impresora láser de la dirección al usuario', '2012-03-06', '2012-03-06');
INSERT INTO `t_soporte` VALUES (26, 3, 'Alejandro', 'Perez', 55, 3, 2, 'configuración de correo ipca', 'configuración de correo ipca', '2012-03-06', '2012-03-06');
INSERT INTO `t_soporte` VALUES (27, 4, 'Johnny', 'Gelvez', 31, 2, 2, 'instalacion de memorias ram a la pc de la sra norvelis, y las de los 2 inpectores', NULL, '2012-03-06', '2012-03-06');
INSERT INTO `t_soporte` VALUES (28, 3, 'Alejandro', 'Perez', 25, 5, 2, 'AsesorÍa sobre creación de reporte.', 'AsesorÍa sobre creación de reporte.', '2012-03-06', '2012-03-06');
INSERT INTO `t_soporte` VALUES (29, 3, 'Alejandro', 'Perez', 77, 5, 2, 'Se convirtió archivo de excel 2003 a 2007 ', 'Se convirtió archivo de excel 2003 a 2007 ', '2012-03-06', '2012-03-06');
INSERT INTO `t_soporte` VALUES (30, 4, 'Johnny', 'Gelvez', 72, 3, 2, 'eliminacion y posterior instalacion de impresora compartida ', 'eliminacion y posterior instalacion de impresora compartida ', '2012-03-07', '2012-03-07');
INSERT INTO `t_soporte` VALUES (31, 4, 'Johnny', 'Gelvez', 32, 1, 2, 'eliminacion de programa de pendrive', 'eliminacion de programa de pendrive', '2012-03-08', '2012-03-08');
INSERT INTO `t_soporte` VALUES (32, 3, 'Alejandro', 'Perez', 81, 3, 2, 'Configuración de impresora de red', 'Configuración de impresora de red', '2012-03-09', '2012-03-09');
INSERT INTO `t_soporte` VALUES (33, 4, 'Johnny', 'Gelvez', 20, 1, 2, 'liberacion de los puertos USB a las pc de operaciones', 'liberacion de los puertos USB a las pc de operaciones', '2012-03-12', '2012-03-12');
INSERT INTO `t_soporte` VALUES (34, 4, 'Johnny', 'Gelvez', 27, 3, 2, 'comunica problema con unidades de red', 'se verifico en el lugar y se nota el cable de red desconectado, se procede a conectar y queda operat', '2012-03-13', '2012-03-13');
INSERT INTO `t_soporte` VALUES (35, 4, 'Johnny', 'Gelvez', 54, 6, 2, '', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (36, 4, 'Johnny', 'Gelvez', 55, 1, 2, 'correo no llegan', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (37, 4, 'Johnny', 'Gelvez', 56, 1, 2, 'no llegan correo', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (38, 4, 'Johnny', 'Gelvez', 57, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (39, 4, 'Johnny', 'Gelvez', 35, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (40, 4, 'Johnny', 'Gelvez', 67, 5, 2, 'no llega correo', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (41, 4, 'Johnny', 'Gelvez', 70, 5, 2, 'correo no llega', 'configuracionn de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (42, 4, 'Johnny', 'Gelvez', 72, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (43, 4, 'Johnny', 'Gelvez', 81, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (44, 4, 'Johnny', 'Gelvez', 64, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (45, 4, 'Johnny', 'Gelvez', 65, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (46, 4, 'Johnny', 'Gelvez', 66, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (47, 4, 'Johnny', 'Gelvez', 62, 1, 2, 'correo no llega', 'configuracion de correo', '2012-03-14', '2012-03-14');
INSERT INTO `t_soporte` VALUES (48, 4, 'Johnny', 'Gelvez', 83, 1, 2, 'no lee pdf', 'se instala pdf para poder ver los reportes del sistema', '2012-03-15', '2012-03-15');
INSERT INTO `t_soporte` VALUES (49, 4, 'Johnny', 'Gelvez', 20, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-15', '2012-03-15');
INSERT INTO `t_soporte` VALUES (50, 4, 'Johnny', 'Gelvez', 28, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-15', '2012-03-15');
INSERT INTO `t_soporte` VALUES (51, 4, 'Johnny', 'Gelvez', 25, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-15', '2012-03-15');
INSERT INTO `t_soporte` VALUES (52, 4, 'Johnny', 'Gelvez', 19, 1, 2, 'correo no lee', 'configuiracion de correo', '2012-03-16', '2012-03-16');
INSERT INTO `t_soporte` VALUES (53, 4, 'Johnny', 'Gelvez', 22, 5, 2, 'correo no lee', 'configuracion de correo', '2012-03-16', '2012-03-16');
INSERT INTO `t_soporte` VALUES (54, 4, 'Johnny', 'Gelvez', 23, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-16', '2012-03-16');
INSERT INTO `t_soporte` VALUES (55, 4, 'Johnny', 'Gelvez', 31, 7, 2, 'sin equipo', 'se le instala el equipo y el programa argis, luego se le configura correo ', '2012-03-20', '2012-03-20');
INSERT INTO `t_soporte` VALUES (56, 4, 'Johnny', 'Gelvez', 51, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-20', '2012-03-20');
INSERT INTO `t_soporte` VALUES (57, 4, 'Johnny', 'Gelvez', 5, 2, 2, 'no imprime', 'instalacion de toner color negro a la impresora xerox', '2012-03-20', '2012-03-20');
INSERT INTO `t_soporte` VALUES (58, 4, 'Johnny', 'Gelvez', 5, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-20', '2012-03-20');
INSERT INTO `t_soporte` VALUES (59, 4, 'Johnny', 'Gelvez', 6, 1, 2, 'no lee correo', 'configuiracion de correo', '2012-03-20', '2012-03-20');
INSERT INTO `t_soporte` VALUES (60, 4, 'Johnny', 'Gelvez', 52, 5, 2, 'no lee correo', 'configuracion de correo', '2012-03-20', '2012-03-20');
INSERT INTO `t_soporte` VALUES (61, 4, 'Johnny', 'Gelvez', 53, 1, 2, 'no lee correo', 'configuracion de correo', '2012-03-20', '2012-03-20');
INSERT INTO `t_soporte` VALUES (62, 4, 'Johnny', 'Gelvez', 17, 3, 2, 'No Puedo Imprimir con la impresora de Consultoría', 'instalacion de la impresora de informatica', '2012-03-20', '2012-03-20');
INSERT INTO `t_soporte` VALUES (63, 2, 'Jose', 'Reina', 28, 5, 2, 'Configuración del sistema de soporte', 'Se configura y se indica como pedir un soporte mediante el Sistema', '2012-03-22', '2012-03-22');
INSERT INTO `t_soporte` VALUES (64, 2, 'José', 'Reina', 84, 5, 2, 'Configuración del sistema de soporte', 'Se configura y se indica como pedir un soporte mediante el Sistema', '2012-03-22', '2012-03-22');
INSERT INTO `t_soporte` VALUES (65, 2, 'José', 'Reina', 25, 5, 2, 'Configuración del sistema de soporte', 'Se configura y se indica como pedir un soporte mediante el Sistema', '2012-03-22', '2012-03-22');
INSERT INTO `t_soporte` VALUES (66, 2, 'José', 'Reina', 23, 5, 2, 'Configuración del sistema de soporte', 'Se configura y se indica como pedir un soporte mediante el Sistema', '2012-03-22', '2012-03-22');
INSERT INTO `t_soporte` VALUES (67, 2, 'José', 'Reina', 24, 1, 2, 'Saludos la presente a para solicitarle que por favor agreguen al argis a la computadora de la sala.', 'Se Instala Argis al Equipo de OperacionesIII. El mismo queda Operativo', '2012-03-23', '2012-03-26');
INSERT INTO `t_soporte` VALUES (68, 2, 'José', 'Reina', 70, 1, 2, 'EL PRESENTE ES PARA SOLICITAR ASISTENCIA EN CUANTO AL REPORTE: CATALOGO DE PROVEEDORES, EL CUAL NO SE ESTA GENERANDO, SOLO APARECE EL ENCABEZADO DE LA PAGINA. ES IMPORTANTE REMITIR ESTA INFORMACIÓN AL SOPORTE DEL SISTEMA SIGA CON CIDESA, EN TAL SENTIDO COMUNICARSE CON RENE BRACHO, AL TF.0416-6185647', 'Se da por cerrado el caso, ya que el sr Benjamin atendió el caso, pero no se pudo comprobar, si la falla se vuelve a presentar se abrirá otro soporte, Saludos', '2012-03-23', '2012-04-25');
INSERT INTO `t_soporte` VALUES (69, 2, 'José', 'Reina', 64, 5, 2, 'reporte de cidesa el cual aparece con falla, reporte de personal cuando se genera las asignaciones de cargo solo para el personal fijo ', 'Se corrige la falla junto con el personal de Cidesa, quedando este caso operativo', '2012-03-23', '2012-03-30');
INSERT INTO `t_soporte` VALUES (70, 2, 'José', 'Reina', 51, 5, 2, 'problemas con el correo Institucional', 'Se configura correo, se prueba y se le comunica a norvelis por donde revisar los correo', '2012-03-23', '2012-03-23');
INSERT INTO `t_soporte` VALUES (71, 2, 'José', 'Reina', 7, 3, 2, 'Configuración de Correos', 'Se Configura correo y queda operativo', '2012-03-23', '2012-03-23');
INSERT INTO `t_soporte` VALUES (72, 4, 'Johnny', 'Gelvez', 35, 2, 2, 'PROBLEMA CON LA IMPRESORA DE IMPRESION DE CHEQUE', 'instalacion de cable en otro puerto y trabajar bajo ambiente administrador  (posible falla permanente en la impresora)', '2012-03-26', '2012-03-26');
INSERT INTO `t_soporte` VALUES (73, 2, 'José', 'Reina', 63, 3, 2, 'No Puedo Abrir ningun Disco Compartido a la RED', 'Se Configuran Nuevamente los Discos de la Red, quedando operativo', '2012-03-26', '2012-03-26');
INSERT INTO `t_soporte` VALUES (74, 2, 'José', 'Reina', 57, 5, 2, 'Asesoria del sistema de soporte', 'Ya se atendio, y se dio asesoria', '2012-03-26', '2012-03-26');
INSERT INTO `t_soporte` VALUES (75, 2, 'José', 'Reina', 13, 5, 2, 'Sobre, el sistema de soporte', 'Se explico a Denvher, el sistema de soporte', '2012-03-26', '2012-03-26');
INSERT INTO `t_soporte` VALUES (76, 4, 'Johnny', 'Gelvez', 54, 1, 2, 'solicito la instalación de la aplicaciòn que permite trabajar con archivos .docx.\r\nGracias', 'instalacion del software. Y instalacion del equipo ', '2012-03-26', '2012-03-27');
INSERT INTO `t_soporte` VALUES (77, 4, 'Johnny', 'Gelvez', 25, 5, 2, 'Hola buenos dias e visto que instalaron unprograma de ARCGIS mi pregunta es se podra colocar en español y si pueden darnos una induccion sobre su uso gracias feliz dia ', 'respueta a su correo\r\n', '2012-03-27', '2012-03-27');
INSERT INTO `t_soporte` VALUES (78, 4, 'Johnny', 'Gelvez', 19, 3, 2, 'La máquina de Wilmer Valdivieso ya no puede guardar documentos o informes en el Público de Riesgos, me imagino ya se consumió la capacidad que tiene cada maquina para guardar en la red. por favor revisar o estudiar la posibilidad de adicionar mas capacidad', 'se debera evaluar la disponibilidad de espacio en disco por el administrador de red.', '2012-03-27', '2012-03-28');
INSERT INTO `t_soporte` VALUES (79, 2, 'José', 'Reina', 83, 1, 2, 'cada vez que abro la pagina de mozilla, se abre automaticamente la pagina de descarga y pone que esta se esta realizando.', 'se configura el navegador de Mozilla, para que no aparezca la ventana emergente que aparecia por defecto', '2012-03-27', '2012-03-27');
INSERT INTO `t_soporte` VALUES (80, 4, 'Johnny', 'Gelvez', 83, 2, 2, 'La computadora el dia de hoy se me apagado 5 veces . ', '', '2012-03-27', '2012-03-29');
INSERT INTO `t_soporte` VALUES (81, 2, 'José', 'Reina', 63, 3, 2, 'Buenos días, les escribo para solicitar la revisión de mi cuenta de Outlook Express, pues desde el día de ayer no se envian los correos que trato de enviar. Gracias', '', '2012-03-28', '2012-03-28');
INSERT INTO `t_soporte` VALUES (82, 4, 'Johnny', 'Gelvez', 24, 5, 2, 'Saludos para poder revisar la siguiente pagina del tiempo me pide un complemento de java el cual no puedo bajar e instalarlo yo. http://www.ssd.noaa.gov/goes/east/carb/loop-wv.html gracias', 'instalacion de java', '2012-03-28', '2012-03-28');
INSERT INTO `t_soporte` VALUES (83, 2, 'José', 'Reina', 24, 5, 2, 'Gracias por su pronta respuesta en cuanto al argis. pero no tengo las capas jejeje. pero muchas gracias.', 'cerramos este caso del argis, debido a que fue solo instalación, yo le comunique a Jhon que no tenia las capas y que eso lo podian Cuadrar Con Pablo Mendoza, a su orden', '2012-03-28', '2012-03-28');
INSERT INTO `t_soporte` VALUES (84, 1, 'Lillian', 'Chacon', 67, 6, 2, 'Estoy enviando las actividades de las semanas 9,10,11 y 12 para que por favor le de la forma de estadistica', '', '2012-03-28', '2012-03-29');
INSERT INTO `t_soporte` VALUES (85, 2, 'José', 'Reina', 35, 2, 2, 'problema con la impresora de impresion de cheque no reconoce el puerto usb', 'se verifica impresora y la misma se confugura quedando operativa para el momento', '2012-03-28', '2012-03-28');
INSERT INTO `t_soporte` VALUES (86, 2, 'José', 'Reina', 24, 5, 2, 'Saludos y gracias por su pronta respuesta. LE escribo por que el dia de hoy procedia a encender la computadora de la sala situacional para mostrarle los mapas de lluvias al funcionario Pablo de informatica y la misma presento problemas.', 'Listo, se Reviso el CPU. y quedo operativo, se pudo observar lo apagaron de forma incorrecta, saludo', '2012-03-29', '2012-03-29');
INSERT INTO `t_soporte` VALUES (87, 4, 'Johnny', 'Gelvez', 26, 2, 2, 'Saludos para la fecha las computadoras de Oswaldo M. y asistentes de operaciones, presentan problemas de coneccion con la impresora HP 1220 ubicada en operaciones, Gracias. ', 'reeinstalacion de impresora a operaciones I', '2012-03-29', '2012-03-29');
INSERT INTO `t_soporte` VALUES (88, 4, 'Johnny', 'Gelvez', 26, 2, 2, 'Saludos para la fecha presenta problemas para imprimir en la impresora HP 1220', 'instalacion de impresora a operaciones I', '2012-03-29', '2012-03-29');
INSERT INTO `t_soporte` VALUES (89, 2, 'José', 'Reina', 26, 1, 2, 'Saludos la presente es para solicitar la descarga del programa Zello para radio comunicacion inalambrica de la sala de operaciones los detalles del programa ya estan en el escritorio de la computadora de la sala, gracias.', 'Se Instala Apicación, Quedando operativo', '2012-03-30', '2012-03-30');
INSERT INTO `t_soporte` VALUES (90, 4, 'Johnny', 'Gelvez', 24, 5, 2, 'Saludos desde varios dias el programa de monitoreo de la camaras estan fallando. la misma se caen.', 'caso cerrado ', '2012-04-09', '2012-04-10');
INSERT INTO `t_soporte` VALUES (91, 2, 'José', 'Reina', 20, 3, 2, 'revisar la computadora que usan los asistentes de operaciones,en virtud de que cuando los mismos desean imprimir un documento, la computadora indica que no reconoce la impresora, los mismos tienen que colocar los documentos en el publico y luego mandar a imprimir con otra computadora', 'Se Configura la computadora de los asistentes de operaciones, para que puedan imprimir de forma correcta, quedando operativa', '2012-04-09', '2012-04-09');
INSERT INTO `t_soporte` VALUES (92, 2, 'José', 'Reina', 86, 3, 2, 'No puedo Imprimir en la direccion de Administracion', 'Se configura nuevamente la impresora quedando la misma operativa', '2012-04-10', '2012-04-10');
INSERT INTO `t_soporte` VALUES (93, 2, 'José', 'Reina', 59, 3, 2, 'Problemas con el correo institucional', 'Se Configura el correo nuevamente y el mismo queda operativo', '2012-04-10', '2012-04-10');
INSERT INTO `t_soporte` VALUES (94, 2, 'José', 'Reina', 73, 3, 2, 'Problemas con la impresora', 'Se configuró la impresora hacia consultoria quedando la misma operativa', '2012-04-10', '2012-04-10');
INSERT INTO `t_soporte` VALUES (95, 4, 'Johnny', 'Gelvez', 60, 7, 2, 'falta de archivos al programa de oficce', '', '2012-04-11', '2012-04-11');
INSERT INTO `t_soporte` VALUES (96, 4, 'Johnny', 'Gelvez', 86, 3, 2, 'NO PUEDO ACCEDER A LA RED DE ADMINISTRACION', 'reinicio del sistema operativo, configurando las aplicacione sde red de manera automatica.', '2012-04-11', '2012-04-11');
INSERT INTO `t_soporte` VALUES (97, 2, 'José', 'Reina', 83, 1, 2, 'instalar mi correo en la computadora que era de suhail ', 'se deja el mismo correo, ya que el correo de suhail pasa a ser para laila, y se copian las carpetas. quedando operativo', '2012-04-11', '2012-04-11');
INSERT INTO `t_soporte` VALUES (98, 4, 'Johnny', 'Gelvez', 86, 3, 2, 'BUENOS DIOS NO PUEDO IMPRIMIR ', 'traslandando el documento al escritorio y mandarlo a imprimir desd alli se puede imprimir', '2012-04-12', '2012-04-12');
INSERT INTO `t_soporte` VALUES (99, 3, 'Alejandro', 'Perez', 67, 5, 2, 'Asesoria para ingreso pagina web bancaribe', 'Se creo nueva clave y se imprimió formulario ', '2012-04-12', '2012-04-12');
INSERT INTO `t_soporte` VALUES (100, 2, 'José', 'Reina', 35, 2, 2, 'Problemas con la impresora de Cheques', 'se verifican los cables de la impresora se reinicia el equipo y la impresora y luego se logra colocar en conexion la impresora quedando operativa al momento', '2012-04-12', '2012-04-12');
INSERT INTO `t_soporte` VALUES (101, 3, 'Alejandro', 'Perez', 31, 3, 2, 'Solicitud de carpeta publica ', 'Se conecto volumen de red publico', '2012-04-13', '2012-04-13');
INSERT INTO `t_soporte` VALUES (102, 3, 'Alejandro', 'Perez', 9, 6, 2, 'solicitud de correo', 'Configuración de correo Institucional ', '2012-04-13', '2012-04-13');
INSERT INTO `t_soporte` VALUES (103, 3, 'Alejandro', 'Perez', 86, 3, 2, 'BUENOS DIAS NO PUEDO IMPRIMIR DICE Q EL PROGRAMA NO RESPONDE', 'Se reinstalo el adobe Reader', '2012-04-13', '2012-04-13');
INSERT INTO `t_soporte` VALUES (104, 3, 'Alejandro', 'Perez', 31, 3, 2, 'No imprime', 'Se instalo impresora de red ', '2012-04-13', '2012-04-13');
INSERT INTO `t_soporte` VALUES (105, 4, 'Johnny', 'Gelvez', 60, 1, 2, 'Buenos días, favor revisar el outlook ipcacomunicaciones, porque no envía los correos. Se quedan en buzón de salida y la información no llega a los destinatarios. Saludos. Mil gracias de antemano', 'reeinsatalacion de las libretas de direcciones.', '2012-04-13', '2012-04-16');
INSERT INTO `t_soporte` VALUES (106, 4, 'Johnny', 'Gelvez', 24, 5, 2, 'Saludos desde hace varios dias el programa de monitoreo de las quebradas viene dando un error. Como tambien algunas camaras de las quebradas no se aprecian', '', '2012-04-16', '2012-04-23');
INSERT INTO `t_soporte` VALUES (107, 4, 'Johnny', 'Gelvez', 24, 2, 2, 'Saludos la computadora de motnitore del clima que era de las camaras de circulacion viene presentado un ruido fuerte se presume que es el fan coolers. No se encendio el dia domingo.', 'limpieza del fan coolers ', '2012-04-16', '2012-04-16');
INSERT INTO `t_soporte` VALUES (108, 2, 'José', 'Reina', 86, 3, 2, 'BUENOS DIAS NO PUEDO IMPRIMIR NI TENGO ACCESO A LA RED DE ADMINISTRACION', 'Se Verifica cable de red, se solventa la falla y el equipo queda operativo', '2012-04-16', '2012-04-16');
INSERT INTO `t_soporte` VALUES (109, 2, 'José', 'Reina', 35, 2, 2, 'IMPRESORA DE LOS CHEQUES NO IMPRIME', 'se cambia el cable, por uno nuevo, quedando la impresora operativo para el momento, se espero que en los proximos día se solvente la falla', '2012-04-16', '2012-04-16');
INSERT INTO `t_soporte` VALUES (110, 2, 'José', 'Reina', 23, 1, 2, 'habilitar macros, para poder usar unas formulas de exel', 'se configura los macros, y se baja los niveles de seguridad del Documento exel, ', '2012-04-23', '2012-04-23');
INSERT INTO `t_soporte` VALUES (111, 3, 'Alejandro', 'Perez', 83, 1, 2, 'tengo problemas con el envio y recepciòn de correos.', 'Se configuro nuevo correo en su equipo.', '2012-04-23', '2012-04-23');
INSERT INTO `t_soporte` VALUES (112, 2, 'José', 'Reina', 68, 5, 2, 'Buenos dias es para notificar que el sistema me esta generando cada vez q realizo una operación error y se sale sin guardar la operación la cual dice a ocurrido una visicitud y es en el area de de regsitros de bancos agradeciendo su colaboración a ver el motivo del mismo, ya que me genera enormes re', 'se corrige el problema de la conciliaciones bancarias en conjunto con el personal de CIDESA', '2012-04-23', '2012-05-04');
INSERT INTO `t_soporte` VALUES (113, 2, 'José', 'Reina', 25, 5, 2, 'Hola Buenos dias perdonen una consulta sera que en el programa que utilisamos para el registro de novedades podriamos poner un ling para colocar colores a las notas o mensajes de sumo interes que los analistas entantes puedan ver con facilidad disculpen nuevamente gracias ', 'Buen dia Ebert, momentaneamente tu solicitud no se puede proceder, sin embargo, se va a estudiar la posibilidad de colocar una alerta al sistema, saludos', '2012-04-23', '2012-04-25');
INSERT INTO `t_soporte` VALUES (114, 85, 'Pablo', 'Mendoza', 19, 8, 2, 'buenas tardes, estimados necesito imprimir dos mapas de riesgos en tamaño doble carta. dichos mapas los voy a colocar en el servidor  en publico de riesgos.', 'Se imprimieron y se hace entrega de los planos remitidos por Johan Prieto', '2012-04-23', '2012-04-25');
INSERT INTO `t_soporte` VALUES (115, 2, 'José', 'Reina', 68, 5, 2, 'Buenos dias,pude resolver algunas operaciones que me causaban el error en bancos pero ahora persiste el problema con las conciliaciones bancarias,no me las acepta necesito corregir urgentemente la situación,para realizar la entrega . ', 'se corrige el problema de la conciliaciones bancarias en conjunto con el personal de CIDESA', '2012-04-24', '2012-05-04');
INSERT INTO `t_soporte` VALUES (116, 3, 'Alejandro', 'Perez', 60, 5, 2, 'Buenas tardes, nuevamente el correo tiene problemas para enviar los mensajes. Estoy tratando de enviar a todo el instituto la información publicada en El Universal y no sale el mensaje. Este es el mismo problema reportado la semana pasada. Mil gracias de antemano por su apoyo. ', 'Se creo nuevo grupo en libreta de direcciones y se eliminaron correos viejos', '2012-04-24', '2012-04-24');
INSERT INTO `t_soporte` VALUES (117, 4, 'Johnny', 'Gelvez', 60, 5, 2, 'Buenos días, el programa resizer utilizado para bajar resolución no funciona. Agradezco su apoyo. Mil gracias. ', 'programa ya instalado \r\nNota: para el momento la funcionaria solicitante del servicio no estuvo presente. \r\ncualquier duda por este medio para validar dicha instalación', '2012-04-25', '2012-04-25');
INSERT INTO `t_soporte` VALUES (118, 2, 'José', 'Reina', 72, 1, 2, 'buen dia, mi equino no abre cidesa, el mismo se queda colgado', 'Se verifica equipo, y se reinicia el servidor de cidesa, quedando operativo', '2012-04-27', '2012-04-27');
INSERT INTO `t_soporte` VALUES (119, 85, 'Pablo', 'Mendoza', 24, 7, 2, 'saludos si esposible requerimos las capas del municipio par argis. gracias', 'Se grabó Data y se creó Proyecto Base de Capas llamado Operaciones Chacao. ', '2012-04-30', '2012-04-30');
INSERT INTO `t_soporte` VALUES (120, 3, 'Alejandro', 'Perez', 22, 1, 2, 'Se requiere realizar dos copias de un material almacenado en dos cd´s. ( copiar dos cd)', 'Se copiaron dos DVD de datos', '2012-04-30', '2012-05-02');
INSERT INTO `t_soporte` VALUES (121, 4, 'Johnny', 'Gelvez', 22, 6, 2, 'Se requiere la elaboracion del carnet de la funcionaria anggie Peña ya que la misma esta realizando inspecciones de campo y no posee identificacion que la identifique como funcionaria del IPCA.', 'informacion pasada por correo explicando el procedimiento.', '2012-04-30', '2012-05-02');
INSERT INTO `t_soporte` VALUES (122, 3, 'Alejandro', 'Perez', 60, 5, 2, 'Hola.. es maru.. no tengo soporte en la computadora. creo que tengo un virus en la maquina para que porfa vengan a solventarlo.. gracias!!', 'En el momento que estés en disposición para resolver el problema del equipo nos envías un nuevo correo gracias.', '2012-04-30', '2012-05-03');
INSERT INTO `t_soporte` VALUES (123, 4, 'Johnny', 'Gelvez', 31, 7, 2, 'instalacion de impresora', 'instalación de impresora xerox en la quinta configurada y compartida', '2012-04-30', '2012-04-30');
INSERT INTO `t_soporte` VALUES (124, 4, 'Johnny', 'Gelvez', 34, 7, 2, 'instalacion de unidad de cd', 'se procedio a instalar unidad de CD a la PC asignada a la funcionaria Rosiret Escalona (quedando pendiente la solicitud por escrito)', '2012-04-30', '2012-04-30');
INSERT INTO `t_soporte` VALUES (125, 4, 'Johnny', 'Gelvez', 25, 6, 2, 'No se puede imprimir desde las computadoras de los asistentes ni de los analistas', 'debido a a que la computadora del funcionario oswaldo martinez estaba apagado no puede imprimir. una vez encendida ya queda solventada la situación.', '2012-05-02', '2012-05-02');
INSERT INTO `t_soporte` VALUES (126, 4, 'Johnny', 'Gelvez', 21, 1, 2, 'Solicitud de verificacion de correo institucional ', 'correo configurado y operativo. feliz tarde..', '2012-05-03', '2012-05-04');
INSERT INTO `t_soporte` VALUES (127, 85, 'Pablo', 'Mendoza', 60, 6, 2, 'Buenos días,\r\nPor medio de la presente solicito el video institucional que grabamos hace 2 años, el cual forma parte del material que conserva la Dirección de Informática. Agradezco grabar el video en 2 CDs para cumplir un requerimiento de Polichacao. Saluditos. Mil gracias \r\n', 'Se realizaron 2 copias de CD y se entregó a la funcionaria saolicitante', '2012-05-03', '2012-05-03');
INSERT INTO `t_soporte` VALUES (128, 2, 'José', 'Reina', 32, 5, 2, 'Configurar correo', 'Se configura el correo institucional y se le indica a Jesus Ferrer, que ya puede hacer uso del mismo', '2012-05-03', '2012-05-03');
INSERT INTO `t_soporte` VALUES (129, 2, 'José', 'Reina', 34, 5, 2, 'Asesoría sobre la impresora', 'Se da asesoria sobre el uso de la impresora, a los funcionarios Rosiret y Norbelis', '2012-05-03', '2012-05-03');
INSERT INTO `t_soporte` VALUES (130, 85, 'Pablo', 'Mendoza', 13, 6, 2, 'Impresión de 04 Artes en el Ploter de dimensiones 1,00 mts. x 90,00 cm.', 'Buenas Tardes, las impresiones fueron realizadas y entregadas al solicitante.', '2012-05-04', '2012-05-04');
INSERT INTO `t_soporte` VALUES (131, 2, 'José', 'Reina', 20, 6, 2, 'buenas tardes, me dirijo a ustedes con la finalidad de solictar sus buenos oficios en pro de poder subsanar una situacion irregular que tengo al momento de enviar correos a traves del outlook, cada ves que envio un correo en el monitor sale un recuadro indicando un error, de ante mano gracias ', 'Se verifica correo y se detecta que existe un error, debido a que un correo se quedaba en bandeja de salida, se presume que la falla proviene del correo a enviar', '2012-05-04', '2012-05-04');
INSERT INTO `t_soporte` VALUES (132, 3, 'Alejandro', 'Perez', 86, 3, 2, 'HOLA BUENOS DIAS NO PUEDO IMPRIMIR', 'Se cambio cable en el puerto del switch', '2012-05-07', '2012-05-07');
INSERT INTO `t_soporte` VALUES (133, 85, 'Pablo', 'Mendoza', 87, 8, 2, 'Mapa del municipio chacao, donde se especifiquen las quebradas con su cámara y el punto control donde llega cada garbación de estas. ', 'Se generó archivo JPG, se colocó en carpeta público ya que la solicitante no tiene correo para remitir imagen.', '2012-05-08', '2012-05-08');
INSERT INTO `t_soporte` VALUES (134, 4, 'Johnny', 'Gelvez', 83, 1, 2, 'EL SISTEMA DE CAPTA HUELLAS NO ABRE. ', 'Actualizando en la barra de herramientas veras la pantalla maximizada en el escritorio. se le explico las funcionalidades basicas para el descarge de eventos.', '2012-05-08', '2012-05-08');
INSERT INTO `t_soporte` VALUES (135, 2, 'José', 'Reina', 72, 1, 2, 'EL SISTEMA CIDESA EN EL MODULO DE COMPRAS- ASIGNACION DE PRIORIDAD  NO ELIMINA LO REQUERIDO SIGUE APARCIENDO EN PANTALLA ', 'EL CASO FUE RESUELTO, JUNTO AL PERSONAL DE CIDESA', '2012-05-08', '2012-05-22');
INSERT INTO `t_soporte` VALUES (136, 2, 'José', 'Reina', 86, 1, 2, 'EN EL SISTEMA CIDESA NO PUEDO ELIMINAR LA ASIGNACION DE PRIORIDAD DEL MODULO DE COMPRAS, SE  ELIMINA SIN EMBARGO EN EL REPORTE APARECE ', 'EL CASO FUE RESUELTO, JUNTO AL PERSONAL DE CIDESA\r\n', '2012-05-08', '2012-05-22');
INSERT INTO `t_soporte` VALUES (137, 4, 'Johnny', 'Gelvez', 59, 2, 2, 'Instalación de memoria ram debido a que mi equipo (PC) es muy lento', 'instalacion concluida', '2012-05-09', '2012-05-09');
INSERT INTO `t_soporte` VALUES (138, 4, 'Johnny', 'Gelvez', 59, 2, 2, 'Los puertos usb ubicados en el espacio del case (parte frontal) no están ajustados en su espacio correspondiente, impidiendo el uso de los mismos', 'debido a un mal uso del frontal, el mismo se encuentra partido.', '2012-05-09', '2012-05-09');
INSERT INTO `t_soporte` VALUES (139, 4, 'Johnny', 'Gelvez', 59, 1, 2, 'Instalación de software Microsoft Office 2007 y Mozila Firefox', 'software instalado', '2012-05-09', '2012-05-09');
INSERT INTO `t_soporte` VALUES (140, 2, 'José', 'Reina', 28, 3, 2, 'Buenos dias la presente es para solicitar sea revisado la conexión de red ya que no puedo realizar ninguna impresión', 'Cable flojo.', '2012-05-09', '2012-05-14');
INSERT INTO `t_soporte` VALUES (141, 2, 'José', 'Reina', 28, 3, 2, 'Buenos dias la presente es para solicitar sea revisado la conexión de red ya que no puedo realizar ninguna impresión', '', '2012-05-09', '2012-05-14');
INSERT INTO `t_soporte` VALUES (142, 4, 'Johnny', 'Gelvez', 21, 5, 2, 'Buenas tardes,la presente es para solicitar se agregue la libreta de direcciones actualizada de los correos institucionales en el equipo.', 'libreta actualizada', '2012-05-09', '2012-05-09');
INSERT INTO `t_soporte` VALUES (143, 1, 'Lillian', 'Chacon', 56, 2, 2, 'La impresora no imprime correctamente, solo funciona la bandeja extera, probablemente sea el rodillo el problema.', '', '2012-05-10', '2012-05-28');
INSERT INTO `t_soporte` VALUES (144, 3, 'Alejandro', 'Perez', 13, 5, 2, 'Verificación y solicitud de cambio de clave de Usuario.', '', '2012-05-10', '2012-05-14');
INSERT INTO `t_soporte` VALUES (145, 3, 'Alejandro', 'Perez', 60, 7, 2, 'Buenos tardes, la única impresora que estaba conectada a mi máquina es la de Consultoría Jurídica. Entiendo que informática realizó una actualización de redes hoy y ahora no tengo conexión con la impresora. Agradezco de antemano su colaboración. Mil gracias ', 'se reinstalo impresora de red, no tiene nada que ver con la actualizaciones del sistema SIDESA. ', '2012-05-11', '2012-05-11');
INSERT INTO `t_soporte` VALUES (146, 4, 'Johnny', 'Gelvez', 23, 7, 2, 'instalacion de nero', 'nero instalado y funcinado feliz tarde', '2012-05-11', '2012-05-14');
INSERT INTO `t_soporte` VALUES (147, 2, 'José', 'Reina', 23, 5, 2, '', 'Se convierte Archivo de Word a formato Xp para que pueda ser visualizado.\r\n', '2012-05-11', '2012-05-11');
INSERT INTO `t_soporte` VALUES (148, 2, 'José', 'Reina', 23, 3, 2, 'la impresora da error', 'se verifica la impresora y la misma esta funcioando correctamente, adicionalmente se conecta la impresora Laser de Administración', '2012-05-14', '2012-05-14');
INSERT INTO `t_soporte` VALUES (149, 2, 'José', 'Reina', 60, 5, 2, 'Buenas tardes,\r\nNecesito grabar artes pesados en unidad de DVD, porque en CD no caben. Por fa podrían bajar y apoyar a Maru, porque me dice que no tiene unidad de DVD. Mil gracias de antemano.', 'Se fue atender el caso, y para el momento no requeria grabar en DVD la información. por tal motivo se cierra el caso', '2012-05-14', '2012-05-14');
INSERT INTO `t_soporte` VALUES (150, 2, 'José', 'Reina', 25, 6, 2, 'Hola buenas tardes en dias anteriores se solicito por este medio la posibilidad de solventar el problema que tiene el sistema de novedades ya que no se puede colocar en un documento word esto para trasmitir esa informacion a atencion al ciudadano gracia ', 'se cierra el caso ya que se esta estudiando la posibilidad de poder solverntar tu requerimiento, en cuando se tenga una respuesta se retomara el caso', '2012-05-14', '2012-06-05');
INSERT INTO `t_soporte` VALUES (151, 2, 'José', 'Reina', 62, 3, 2, 'No me permite imprimir', 'Se configura la impresora Laser, y la misma quedó operativa', '2012-05-15', '2012-05-15');
INSERT INTO `t_soporte` VALUES (152, 2, 'José', 'Reina', 65, 6, 2, 'Solicito Revisión de impresora, la cual presenta falla al solicitarla la impresión de documentos', 'se configura nuevamente impresora y se verifica que la misma quede operativa', '2012-05-15', '2012-05-15');
INSERT INTO `t_soporte` VALUES (153, 3, 'Alejandro', 'Perez', 51, 3, 2, 'Instalación de scanner desde este equipo a la impresora xerox', 'Se instalo scanner de red', '2012-05-16', '2012-05-25');
INSERT INTO `t_soporte` VALUES (154, 2, 'José', 'Reina', 53, 5, 2, 'Hola buenos días, tenemos un problema con unas carpetas que teniamos dentro de la red y ahora no las ubicamos.', 'El problema que existe, es que si borran algun documento del publico, el mismo se borra permanentemente. Sin embargo te deje un lista de los ultimos archivo para que verificaras. ', '2012-05-16', '2012-05-16');
INSERT INTO `t_soporte` VALUES (155, 3, 'Alejandro', 'Perez', 32, 2, 2, 'solicito cambio de cargador de la lapto', 'Tienes que enviar un memo solicitando la compra de este cargador, en la dirección no tenemos cargadores para ninguna lapto.', '2012-05-16', '2012-05-16');
INSERT INTO `t_soporte` VALUES (156, 2, 'José', 'Reina', 32, 6, 2, 'configuracion de correo a mi blackberry', 'Se configura correo institucional en el telefono de jesus. El mismo queda operativo', '2012-05-16', '2012-05-16');
INSERT INTO `t_soporte` VALUES (157, 2, 'José', 'Reina', 33, 5, 2, 'asesoria ya que tengo problemas al abrir documentos en wor que me son enviados por adjunto al email, creo que porq esta en versión mas actualizada. al intentar abrir indica por visor vista previa no disponible', 'Se le indica como abrir el archivo y se instala el convertidor de Oficce', '2012-05-16', '2012-05-16');
INSERT INTO `t_soporte` VALUES (158, 3, 'Alejandro', 'Perez', 5, 6, 2, 'Alejandro tienes alguna informacion para el arreglo de la impresora XEROX', 'Se esta llamando constantemente a los técnicos de Xerox', '2012-05-16', '2012-05-16');
INSERT INTO `t_soporte` VALUES (159, 2, 'José', 'Reina', 23, 1, 2, 'configuración de correo', 'Se configura el correo, quedando operativo', '2012-05-16', '2012-05-17');
INSERT INTO `t_soporte` VALUES (160, 2, 'José', 'Reina', 23, 1, 2, 'configuración de correo', 'Se configura el correo, quedando operativo', '2012-05-16', '2012-05-17');
INSERT INTO `t_soporte` VALUES (161, 2, 'José', 'Reina', 25, 5, 2, 'Hola buenas tardes el dia 14 le envie una solicitud de servicio por este medio no hemos tenido respuesta gracias ', 'se cierra el caso, ya que la misma solicitud aparece con el numero 150', '2012-05-17', '2012-05-17');
INSERT INTO `t_soporte` VALUES (162, 3, 'Alejandro', 'Perez', 7, 2, 2, 'Problemas con el Office, mucho agradecería la atención inmediata ya que por este PC se trabaja el Programa de Autogestón y estamos en los actuales momentos trabajando con varias empresas para su captación. Mil gracias', 'Se resolvió el problema con el office, pero de igual forma se tiene que reemplazar el sistema operativo del equipo, en el momento que el usuario disponga de tiempo es necesario realizar ese cambio.', '2012-05-17', '2012-05-22');
INSERT INTO `t_soporte` VALUES (163, 2, 'José', 'Reina', 24, 2, 2, 'Saludos por favor si me pueden ayudar con un soporte aqui en la compu ya que no puedo ver una pagina de meteorologia.\r\n', 'Se observa que da error al momento de abrir la pagina mencionada, pero tambien se observa que es por el navegador explorer, se le indica a ALI que use el navegador mozilla firefox', '2012-05-21', '2012-05-21');
INSERT INTO `t_soporte` VALUES (164, 3, 'Alejandro ', 'Perez', 51, 2, 2, 'Revisisón de botón de arranque de la impresora Xerox Work Centre 3550', 'Técnico de empresa xerox repara falla de botón de copiado', '2012-05-22', '2012-05-25');
INSERT INTO `t_soporte` VALUES (165, 85, 'Pablo', 'Mendoza', 19, 5, 2, 'Buenas tardes, con el presente solicito a la Dirección de Informática el reinicio de la capacitación y adiestramiento en la aplicación Argis para los analistas de riesgos, a llevarse a cabo a partir de la semana proxima 28 de mayo desde las 9:00 am. Gracias', 'Buenas Tardes Johan, perfecto a partir del lunes estaremos allí para continuar con el proceso de capacitación ArcGis, en caso de que se requiera mi asistencia al directorio, arrancariamos el martes.', '2012-05-22', '2012-05-22');
INSERT INTO `t_soporte` VALUES (166, 4, 'Johnny', 'Gelvez', 19, 3, 2, 'estimados buenos días, desde el día de ayer mi maquina no tiene internet, porfavor solicito el servicio', 'se procede a realizar las actualizaciones, ya que el problema presentado era el bloqueo de paginas y poder entrar al gmail. ', '2012-05-23', '2012-05-23');
INSERT INTO `t_soporte` VALUES (167, 4, 'Johnny', 'Gelvez', 23, 1, 2, 'habilitar paginas bloqueadas', 'paginas liberada.. cabe destacar que queda bajo resposabilidad el uso libre del internet. cualquier duda podra pasar por la dirección.', '2012-05-23', '2012-05-23');
INSERT INTO `t_soporte` VALUES (168, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días,\r\nEstoy tratando de enviar una noticia de El Nacional por el ipcacomunicaciones y no sale, aparece en enviados pero no llega a los destinatarios. Mil gracias de antemano. Saludos cordiales. Ana Varela', 'se revisa libreta de direccion y se detecta que la misma esta correcta, el problema causado es por el correo y formatos de imagen, para cualquier asesoria estoy a la orden', '2012-05-24', '2012-06-05');
INSERT INTO `t_soporte` VALUES (169, 3, 'Alejandro', 'Perez', 37, 6, 2, 'buen día!! al mandar a imprimir aparece el aviso que existe un problema con la impresora seleccionada, gracias', 'instalación de impresora de red', '2012-05-25', '2012-05-25');
INSERT INTO `t_soporte` VALUES (170, 3, 'Alejandro', 'Perez', 56, 7, 2, 'Solicitud instalación Mozilla Firefox', 'Se instalo Mozilla.', '2012-05-25', '2012-05-25');
INSERT INTO `t_soporte` VALUES (171, 3, 'Alejandro', 'Perez', 51, 2, 2, 'No puedo imprimir al revisar la opción de impresora dice sin conexión', 'Revisión de equipo e impresora, se dejo imprimiendo correctamente ', '2012-05-25', '2012-05-28');
INSERT INTO `t_soporte` VALUES (172, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Solicitud de apoyopara para generar unas planillas con la información de parcelas del Municipio  que manda catastro.', 'Se indicaron los lineamientos por parte de Julio y María, se generó nueva planilla en Word y exportó tabala de capa a Excel para cruce de info, se generaron 69 planos JPG, se remitió vía correo archivo PDF.\r\n', '2012-05-25', '2012-05-25');
INSERT INTO `t_soporte` VALUES (173, 3, 'Alejandro', 'Perez', 33, 3, 2, 'solicitud de conector de red, ya que el que tengo actualmente le falta una patica y queda flojo y pierdo conexión de red cada vez que medio afloja y tengo que verificar constantemente que este ajustado.', 'Cambio de conector RJ45 al equipo.', '2012-05-25', '2012-05-28');
INSERT INTO `t_soporte` VALUES (174, 3, 'Alejandro', 'Perez', 33, 6, 2, 'solicitud de una extensión para conectar la PC que me fue instalada hace poco ya que no llega el cable de protector hasta la toma de corriente.', 'Se instalo computador con extensión nueva.', '2012-05-25', '2012-05-28');
INSERT INTO `t_soporte` VALUES (175, 3, 'Alejandro', 'Perez', 47, 2, 2, 'Un cordial saludo, este tiene la finalidad de solicitar soporte para la revición del computador en la oficina de inspectores ambientales en la sede norte, identificado en la red como inspectores II; ya que el mismo se apaga con regularidad y cuando se solicita imprimir desde el mismo se apaga. Graci', 'Traer equipo a sede sur (00)', '2012-05-28', '2012-11-12');
INSERT INTO `t_soporte` VALUES (176, 3, 'Alejandro', 'Perez', 5, 3, 2, 'Amigos Buenas Tardes, tengo problemas con el INTERNET,en mi PC,  requiero de sus buenos oficios.. Gracias', 'Se configura barra del Explore', '2012-05-28', '2012-05-28');
INSERT INTO `t_soporte` VALUES (177, 3, 'Alejandro', 'Perez', 47, 6, 2, 'Un cordial saludo, debido a que en el instituto se cuenta con una cuenta de servidor de correo windows/exchange; existe la posibilidad que se creen cuentas de correo corporativo al personal de inspectores ambientales?. Aunque no se cuenten con computadores para cada uno existen formas para consultar', 'Estimado Clemente, para los Inspectores Ambientales se creo un correo que es iambientales@ipcachacao.org.ve el cual esta asignado a su computador, de requerir uno o varios correos para los inspectores el procedimiento lo debe realizar su Director con su justificativo', '2012-05-28', '2012-05-28');
INSERT INTO `t_soporte` VALUES (178, 2, 'José', 'Reina', 70, 6, 2, 'Buenos dias , el presente es para informarle de un error que se esta generando en el modulo de compras, envio archivo adjunto por el outlook, para su revición', 'el caso  fue resuelto junto con el personal de CIDESA', '2012-05-29', '2012-06-01');
INSERT INTO `t_soporte` VALUES (179, 3, 'Alejandro', 'Perez', 14, 6, 2, 'Problema al envio de correos por el outlook', 'Se modifico correo que estaba mal editado.', '2012-05-29', '2012-05-29');
INSERT INTO `t_soporte` VALUES (180, 3, 'Alejandro', 'Perez', 67, 5, 2, 'Por favor para revisar un cpu que hay en Servicios Generales para ponerlo operativo', 'Se realizo mantenimiento al CPU y descargaron actualizaciones, el equipo funciona bien para el tiempo que tiene de uso.', '2012-05-30', '2012-06-01');
INSERT INTO `t_soporte` VALUES (181, 3, 'Alejandro', 'Perez', 52, 6, 2, 'Hola a todos\r\nLes cuento que a la impresora de esta oficina le acaban de hacer mantenimiento, y creo que se desconfiguró porque mando a imprimir y nada.\r\n¿Es posible que revisen eso y que además configuren mi máquina para que pueda imprimir sin que la de Nina esta encendida?.\r\nAdicionalmente, es pos', 'En fecha 14 de Junio Canon resolvió solicitud instalando un Driver traído por ellos, dejando grabado el mismo en PC de Nina.', '2012-05-30', '2012-06-18');
INSERT INTO `t_soporte` VALUES (182, 85, 'Pablo', 'Mendoza', 60, 5, 2, 'Buenos días, recibí un archivo extensión .odt y no abre en mi compu. Por fa podrían probar para ver si existe la posibilidad de tener acceso a esa información es sobre el evento nacional Redes Ecológicas que realizaremos este 12 de Junio. Mil gracias. Saludos cordiales. Ana Varela ', 'Se conversó vía telefónica con la funcionaria, se verificó el archivo en unidad publico y fué convertido a formato Word (.doc), el formato .odt es asociado a aplicaciones para tabletas y dispositivos moviles, de software libre. ', '2012-05-30', '2012-05-30');
INSERT INTO `t_soporte` VALUES (183, 3, 'Alejandro', 'Perez', 18, 3, 2, 'No tengo internet', 'Se reinicio el Switch.', '2012-05-31', '2012-05-31');
INSERT INTO `t_soporte` VALUES (184, 2, 'José', 'Reina', 51, 2, 2, 'en el equipo de julio no se le peremite el acceso a las carpetas que están en el escritorio', 'Se verifican carpetas, y se le da permiso como administrador para que cada unos de los archivos sean usados por el funcionario', '2012-05-31', '2012-06-01');
INSERT INTO `t_soporte` VALUES (185, 3, 'Alejandro', 'Perez', 9, 6, 2, 'Revisión de la impresora marca xerox, ya que al momento de imprimir presenta un mensaje que dice el que rodillo falló, y no permite la impresión. ', 'Se retiro fusor y toner del equipo,luego se reinicio y se soluciono la falla.', '2012-06-01', '2012-06-04');
INSERT INTO `t_soporte` VALUES (186, 2, 'José', 'Reina', 25, 5, 2, 'Hola Buenos dia el dia de hoy la Sra de MAntenimiento halo la bandeja donde se encuentra el teclado el mismo callo dañandose la barra espaciadora sera posible su cambio gracias ', 'Se retira teclado dañado y se entrega un teclado nuevo, narca "Easy  Keyborard" conexion Ps2, quedando operativo', '2012-06-04', '2012-06-04');
INSERT INTO `t_soporte` VALUES (187, 3, 'Alejandro', 'Perez', 25, 5, 2, 'No se puede imprimir documendo de importancia por la impresora de operaciones se requiere que se solvente esta situacion ya que el documento es decaracter de urgencia ya que se debe llevar a una reunion importante en el colegio Juan de Dios Guanches gracias atentamente Supervisor de control de Opera', 'Se indico que se reiniciara el equipo y se soluciono la falla', '2012-06-05', '2012-06-05');
INSERT INTO `t_soporte` VALUES (188, 85, 'Pablo', 'Mendoza', 21, 5, 2, 'Hola , buenas tardes !\r\n     La presente tiene como finalidad solicitar se estudie la posibilidad de sustituir el equipo asignado a mi persona, ya que el mismo presenta fallas en el encendido, no tiene unidad de dvd y el procesador es muy viejo , por otra parte se requiere con urgencia la instalació', 'Buenas Tardes Zulma, indicale a Johan que haga la solicitud formalmente a Lilliam, por supuesto explicandole todos los detalles de lo que presenta tu maquina.\r\nGracias', '2012-06-05', '2012-06-05');
INSERT INTO `t_soporte` VALUES (189, 85, 'Pablo', 'Mendoza', 21, 5, 2, 'Por otra parte se requiere con urgencia la instalación del programa ArcMap. Gracias\r\n', 'Buenas Tardes Zulma ya remiti a Lilliam tu solicitud de máquina, se cierra el soporte mientras se resuelve la situación de tu maquina', '2012-06-05', '2012-06-05');
INSERT INTO `t_soporte` VALUES (190, 3, 'Alejandro', 'Perez', 51, 2, 2, 'desde ayer en la tarde ni Julio ni yo podemos imprimir, ya reinicie los 2 equipos y sigo sin imprimir', 'se verifico la instalación de la impresora y se pudo imprimir es posible que la impresora se fuese apagado y se perdió la conexión por unos instantes.', '2012-06-05', '2012-06-05');
INSERT INTO `t_soporte` VALUES (191, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, estoy tratando de enviar la nota de prensa del Alcalde con sus respectivas fotos y no sale el correo. Es el mismo problema que reporte la semana pasada. El ipcacomunicaciones dejó de enviar los correos que incluyen imágenes. Antes sí lo hacía sin problemas. Agradezco su colaboración. ', 'se verifica correo y se observa que debido a que la informacion tienes varios archivos adjuntos, llegan primeros a unos usuarios que otros. caso cerrado', '2012-06-05', '2012-06-05');
INSERT INTO `t_soporte` VALUES (192, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, tal como me indicó la Dirección de Informática, por esta vía solicito el acceso a público web.  Mil gracias. Saludos cordiales. Ana Varela.', 'se le  coneto la unidad de publico web de manera correcta', '2012-06-05', '2012-06-05');
INSERT INTO `t_soporte` VALUES (193, 2, 'José', 'Reina', 7, 5, 2, 'Solicitud de Asesoría para graficar información', 'Se realiza estadisticas, y se le indica a audrey que verifique la misma', '2012-06-05', '2012-07-31');
INSERT INTO `t_soporte` VALUES (194, 4, 'Johnny', 'Gelvez', 58, 2, 2, 'El computador asignado tiene un permanente ruido que se presume sea del ventilador interno, lo cual genera molestia al trabajar. para su revisión se solicita sea a partir del 11 de junio de 2.012, fecha en la cual el computador estara disponible y sin uso. de igual se solicita resguardar la informac', 'limpieza de la tarjeta madre ', '2012-06-06', '2012-06-18');
INSERT INTO `t_soporte` VALUES (195, 3, 'Alejandro', 'Perez', 25, 5, 2, 'Hola buenas tardes la apresente es para recordarles sobre lo conversado con la directora de informatica el dia de ayer 06/06/2012 sobre el enlace para las coordinaciones de riesgos y Operaciones esto para la relacion de estadisticas mucho sabria agradecerles su pronta respuesta atentamente Victor Jo', 'Se creo el volumen de red y se instalo en los equipos de riesgos y operaciones', '2012-06-07', '2012-06-07');
INSERT INTO `t_soporte` VALUES (196, 2, 'José', 'Reina', 32, 1, 2, 'se solicita un programa convertidor de archivo office para poder leer las programaciones que envia sateca a mi correo institucional, ya que no las puedo ver y la opcion que me da la maquina es que descargue un convertidor, esparando su respuesta, saludos', 'Se instala archivo convertidor de oficce y el mismo queda operativo', '2012-06-08', '2012-06-08');
INSERT INTO `t_soporte` VALUES (197, 2, 'José', 'Reina', 51, 5, 2, 'Que tipo de toner usa el equipo Xerox Work Center 3550', 'hola buen dia, ya la dirección de informática busco el presupuesto el mismo será entregado hoy a su persona..', '2012-06-08', '2012-06-11');
INSERT INTO `t_soporte` VALUES (198, 85, 'Pablo', 'Mendoza', 33, 6, 2, 'Buenas tardes, solicito apoyo para quemar 50 CD, que van a ser entregados en el evento Encuentro Nacional de Redes Ecológicas.', 'Se realizaron 50 Copias, para el 1er Encuentro Nacional de Redes Ecológicas. Entregadas a la Direcciòn de Ambiente', '2012-06-08', '2012-06-11');
INSERT INTO `t_soporte` VALUES (199, 2, 'José', 'Reina', 87, 5, 2, 'Buenos dias,les escribo para solicitarles la grabación de un CD, el cual contiene información en materia de gestion de riesgos, la misma fue solicitada por la señora Virginia Gimenez del CIGIR', 'se realiza el grabado de CD solicitado por la funcionaria...', '2012-06-11', '2012-06-11');
INSERT INTO `t_soporte` VALUES (200, 85, 'Pablo', 'Mendoza', 53, 1, 2, 'Buenos días para solicitar la instalación de la impresora el día de mañana martes, en virtud que viene la persona de la Canon para solventar el problema que se presento con la impresora.', 'Se verificó la Impresora, teniendo que llamar a Canon par asolventar, el dia jueves canon asisitó con Driver diferente y solventaron la situación, consultado con Nina, Impresora quedó operativa. ', '2012-06-11', '2012-06-15');
INSERT INTO `t_soporte` VALUES (201, 2, 'José', 'Reina', 24, 5, 2, 'serain tan amabale de verificar el outlook de operaciones gracias', 'se revisa correo y el mismo esta perfecto. Se le indica a roberto ali, que el correo funciona correctamente y que le avisara a la Dir. Ana Hugueto que lo agregara a la lista de contactos', '2012-06-11', '2012-06-12');
INSERT INTO `t_soporte` VALUES (202, 2, 'José', 'Reina', 65, 5, 2, 'Revisión del correo ', 'se actualiza lista de contacto del correo, quedando operativo', '2012-06-12', '2012-06-12');
INSERT INTO `t_soporte` VALUES (203, 2, 'José', 'Reina', 81, 1, 2, 'No Puedo Abrir el Sistema Cidesa', 'La falla proviene del navegador mozilla , el mismo se reinstala y queda operativo', '2012-06-13', '2012-06-13');
INSERT INTO `t_soporte` VALUES (204, 2, 'José', 'Reina', 18, 3, 2, 'problema con el internet', 'Se verifica la falla y se detecta que la misma proviene del cable de red, se procede a cambiar los conectores RJ45 y queda operativo', '2012-06-13', '2012-06-13');
INSERT INTO `t_soporte` VALUES (205, 2, 'José', 'Reina', 81, 1, 2, 'problema con la clave del acceso a Cidesa de la Sra. Marcia Bastardo', 'se corrige falla, y se borra la clave de historial', '2012-06-13', '2012-06-13');
INSERT INTO `t_soporte` VALUES (206, 2, 'José', 'Reina', 13, 3, 2, 'Saludos Cordiales, en la medida de sus posibilidades solicito la instalación del Publico de Ciudadanos en la PC ubicada en la recepción.. Mil gracias por el apoyo.', 'se le coloca publico Ciudadano, a recepcion solicitado por Vitorio', '2012-06-14', '2012-06-14');
INSERT INTO `t_soporte` VALUES (207, 2, 'José', 'Reina', 13, 6, 2, 'Saludos; en esta oportunidad les solicito el verificar mi dirección de outlook en la PC de sala de radio ya que al enviarme un correo les presenta un error... Nuevamente Mil Gracias.', 'se revisa el outlook de radio operadores y se actualiza la lista de contactos', '2012-06-14', '2012-06-15');
INSERT INTO `t_soporte` VALUES (208, 4, 'Johnny', 'Gelvez', 28, 5, 2, 'Buenos días le escribo para solicitar las gestiones necesarias, ya que no puedo hacer imprensiòn alguna(14/06/2012) ', 'asignacion de impresora xerox y posterior a la configuracion de la nueva pc de la funcionaria zulma se precede a configurar impresora conectada a la nueva pc de zulma', '2012-06-15', '2012-06-18');
INSERT INTO `t_soporte` VALUES (209, 4, 'Johnny', 'Gelvez', 28, 5, 2, 'Buenos días me dirijo a ustedes para solicitar se realice la revisión de mi correo outlook, ya que no me llegan todos los correos remitidos, sino solo algunos', 'configuracion del correo nuevamente', '2012-06-15', '2012-06-18');
INSERT INTO `t_soporte` VALUES (210, 2, 'José', 'Reina', 82, 3, 2, 'Problemas con el correo institucional', 'Se verifica el correo y el mismo esta correcto se le incdica a la auditora ana que envie su correo de contacto a todos los empleados interno, para que la agreguen a la lista de contactos', '2012-06-15', '2012-06-15');
INSERT INTO `t_soporte` VALUES (211, 4, 'Johnny', 'Gelvez', 28, 5, 2, 'Buenos días me dirijo a ustedes para solicitar se realice la revisión de mi correo outlook, ya que no me llegan todos los correos remitidos, sino solo algunos', 'importar lista de direcciones nuevamente', '2012-06-15', '2012-06-18');
INSERT INTO `t_soporte` VALUES (212, 2, 'José', 'Reina', 33, 1, 2, 'Buen día, la presente es para informar que mi equipo no tiene la hora actualizada. ', 'Se actualiza la zona horaria del equipo, queda operativo', '2012-06-15', '2012-06-18');
INSERT INTO `t_soporte` VALUES (213, 4, 'Johnny', 'Gelvez', 33, 1, 2, 'Buenos días la presente tiene como finalidad de solicitar la instalación del Nero o reintalación, ya que con mi usuario no se puede utilizar aparentemente esta desabilitado. esto se evidencio cuando se intento quemar un CD con información contentiva para el evento de Redes Ecológicas y no se pudo re', 'instalado el nuevo programa para quemar llamado CDBBURNERXP ', '2012-06-15', '2012-07-06');
INSERT INTO `t_soporte` VALUES (214, 4, 'Johnny', 'Gelvez', 28, 7, 2, 'Buen día la presente es para solicitar se realicen las gestiones necesaria para la coneccion de mi computador hacia la impresora de informática, esto motivado a que se están realizando trabajos en la computadora principal que esta conectada a la impresora de esta dirección por lo que no se puede imp', 'impresora conectada temporalmente', '2012-06-15', '2012-06-18');
INSERT INTO `t_soporte` VALUES (215, 4, 'Johnny', 'Gelvez', 64, 3, 2, 'Problema con impresora desde la maquina RRHHIV solucinada el dia 14/06/2012', 'intalacion y configuración de impresora.', '2012-06-15', '2012-06-18');
INSERT INTO `t_soporte` VALUES (216, 4, 'Johnny', 'Gelvez', 64, 1, 2, 'Problema con los macro de apertura del data entry banesco desde la maquina RRHHIV problema solventado 14/06/2012 ', 'habilitacion de marcos de seguridad', '2012-06-15', '2012-06-18');
INSERT INTO `t_soporte` VALUES (217, 4, 'Johnny', 'Gelvez', 64, 1, 2, 'Problema con programa excel ya que no esta abria correctamente solucionado 14/06/2012', 'CONFIGURACION DE LOS MACROS ', '2012-06-15', '2012-06-15');
INSERT INTO `t_soporte` VALUES (218, 4, 'Johnny', 'Gelvez', 32, 2, 2, 'buenos dias, al tratar de imprimir una hoja en la impresora hp laserjet 1018 asignada a la oficina de los inspectores ambientales, ya que la de la direccion ejecutiva de gestion ambiental no tiene toner, no podemos imprimir ningun documento, al ejecutar lo que indica lo que indica el mensaje de esta', 'se verifico la impresora el dia jueves 21 de junio, y se dio cuenta de unas manchas de toner en polvo, kuego se procede a realizar unas pruebas de impresion y la misma fue exitosa. se actualizo el sistema operativo y limpio archivos temporales.', '2012-06-15', '2012-06-26');
INSERT INTO `t_soporte` VALUES (219, 85, 'Pablo', 'Mendoza', 51, 6, 2, 'Para Pablo de Julio Cubas, necesita la Instalación de los Mapas de Puntos Ecológicos', 'Se generó archivo JPG con Puntos ecológicos.', '2012-06-15', '2012-06-15');
INSERT INTO `t_soporte` VALUES (220, 4, 'Johnny', 'Gelvez', 54, 1, 2, 'Solicito actualización del antivirus.', 'instalacion del antivirus, instalación de las actualizaciones y escaneo de todo el S.O para tenerlo al dia y protegido.', '2012-06-18', '2012-06-19');
INSERT INTO `t_soporte` VALUES (221, 4, 'Johnny', 'Gelvez', 20, 1, 2, 'problema con la pc de la sala situacional', 'reinicio del sistema operativo (queda pendiente a cualquier eventualidad con ese equipo, ya que viene presentando el mismo problema de manera repetitiva).', '2012-06-19', '2012-06-19');
INSERT INTO `t_soporte` VALUES (222, 2, 'José', 'Reina', 31, 3, 2, 'revision de entrada al publico web. gracias', 'se le da primiso nuevemente al publico web, quedando operativo', '2012-06-19', '2012-06-19');
INSERT INTO `t_soporte` VALUES (223, 4, 'Johnny', 'Gelvez', 17, 2, 2, 'Solicito realizar impresiones, al hacer clic en el icono de impresion, aparece un cuadro de dialogo, indicando un error, Gracias.', 'eliminacion y posterior conección de la impresora.', '2012-06-19', '2012-06-19');
INSERT INTO `t_soporte` VALUES (224, 4, 'Johnny', 'Gelvez', 17, 2, 2, 'Solicito realizar impresiones, al hacer clic en el icono de impresion, aparece un cuadro de dialogo, indicando un error, Gracias.', 'mismo caso resuelto', '2012-06-19', '2012-06-19');
INSERT INTO `t_soporte` VALUES (225, 2, 'José', 'Reina', 31, 3, 2, 'Problemas con el publico WEB', 'Se conecta el publico Web nuevamente, quedando operativo', '2012-06-20', '2012-06-20');
INSERT INTO `t_soporte` VALUES (226, 85, 'Pablo', 'Mendoza', 87, 5, 2, 'Buenas tardes, les escribo para solicitarles la liberación de espacio del público de riesgo, puesto que necesito guardar ciertos archivos en el mismo y no me lo permite, debido a que el disco esta lleno. Muchas gracias. \r\nSaludos\r\nAnggie Peña\r\n', 'Se sugiere eliminación de archivos de dicha unidad, al igual se esta en proceso de verificación de espacio disponible para aumentar dicha capacidad en la unidad.\r\n', '2012-06-20', '2012-06-25');
INSERT INTO `t_soporte` VALUES (227, 85, 'Pablo', 'Mendoza', 87, 5, 2, 'Buenas tardes Pablo,le escribo para informarle que la base de datos de las inspecciones realizadas en el año 2012 fue actualizada, para que por favor usted actualice el mapa correspondiente. De igual manera quiero solicitarle que por favor cargue un mapa de inspecciones del año 2011,cuya base de dat', '', '2012-06-20', '2012-06-25');
INSERT INTO `t_soporte` VALUES (228, 2, 'José', 'Reina', 54, 6, 2, 'Por reparaciòn de la pared se requiere desintalar la computadora que se encuentra en el puesto de trabajo del Abog. Reynaldo Martinez.', 'el equipo fue instalado por Pablo, y el mismo está operativo. ', '2012-06-21', '2012-07-02');
INSERT INTO `t_soporte` VALUES (229, 4, 'Johnny', 'Gelvez', 51, 2, 2, 'Solicitud de Activar el Hotmail, en mi equipo ya que no tengo acceso y se hace necesario ya que se maneja información que debe ser cotejada entre Julio Cubas y yo ya lo he solicitado a Lilian, José Reyna y Jhonny Gelber Gracias', 'se procedio a habilitar el acceso al hotmail, no obstante a manera de sugerencia invitamos a verificar bien los correos ya que dicha herramienta en varias ocaciones presenta problema con descarga de virus y troyanos. ', '2012-06-25', '2012-07-02');
INSERT INTO `t_soporte` VALUES (230, 4, 'Johnny', 'Gelvez', 59, 6, 2, 'Se requiere con urgencia revisión del equipo asignado a la Ing. Ana Liz Flores. El mismo está lentísimo y presenta problemas con la vista de compatibilidad de paginas web como gmail', 'se procedio a actualizar el sistema operativo, y se verifico que el gmail funcionaba en tal sentido si presenta la misma falla llamar a la dirección para solventar', '2012-06-26', '2012-07-02');
INSERT INTO `t_soporte` VALUES (231, 85, 'Pablo', 'Mendoza', 56, 7, 2, 'Instalación del equipo asignado al funcionario Reynaldo Martínez en el puesto donde está instalada la computadora Compaq que estaba asignada a la funcionaria Mairuby Casanova, la cual no está operativa. La solicitud obedece a que en el puesto del funcionario Reynaldo Martinez se van a realizar labor', 'Buenos Días se traslado el equipo a CJ y se procedió a la instalación del mismo en lugar indicado por Humberto. Gracias', '2012-06-28', '2012-06-29');
INSERT INTO `t_soporte` VALUES (232, 85, 'Pablo', 'Mendoza', 86, 1, 2, 'HOLA BUEN DIA EL CIDESA NO RESPONDE YA HE REINICIADO LA MAQUINA Y NADA ADICIONALMENTE ESTA MUY LENTA PARA TRABAJAR EN WORD', 'Se revisó la PC y se probó el usuario desde otra maquina, verificando que es el módulo que está fallando. Se solicitó a la usuaria reporte de falla especifico para remitirlo a CIDESA.', '2012-06-29', '2012-06-29');
INSERT INTO `t_soporte` VALUES (233, 85, 'Pablo', 'Mendoza', 86, 1, 2, 'HOLA BUEN DIA EL CIDESA NO RESPONDE YA HE REINICIADO LA MAQUINA Y NADA ADICIONALMENTE ESTA MUY LENTA PARA TRABAJAR EN WORD', 'Se revisó la PC y se probó el usuario desde otra maquina, verificando que es el módulo que está fallando. Se solicitó a la usuaria reporte de falla especifico para remitirlo a CIDESA.', '2012-06-29', '2012-06-29');
INSERT INTO `t_soporte` VALUES (234, 2, 'José', 'Reina', 23, 1, 2, 'intento imprimir un documento PDF que enviaron por correo y no se ve', 'se actualiza el adobe PDF', '2012-07-02', '2012-07-02');
INSERT INTO `t_soporte` VALUES (235, 3, 'Alejandro', 'Perez', 23, 7, 2, 'habilitar otra impresora', 'Ya se realizo el cambio de toner a la impresora', '2012-07-02', '2012-07-02');
INSERT INTO `t_soporte` VALUES (236, 2, 'José', 'Reina', 70, 6, 2, 'EL ARCHIVO QUE LE INDIQUE TE LO ESTOY ENVIANDO, GRACIAS', 'se actuacliza archivo, y se convierte a PDF', '2012-07-02', '2012-07-02');
INSERT INTO `t_soporte` VALUES (237, 3, 'Alejandro', 'Perez', 86, 7, 2, 'No puedo imprimir por impresora HP laser', 'Se cambio toner a la impresora HP de Administración ', '2012-07-02', '2012-07-02');
INSERT INTO `t_soporte` VALUES (238, 4, 'Johnny', 'Gelvez', 19, 7, 2, 'no puede quemar cd ni dvd', 'se le instalo el programa cd burner, para poder quemar los dc y dvd de igual forma en la computadora riesgosII asignada a la funcionaria Zulma Key  tambien se elaboro el mismo soporte y tambien queda operativa para realizar dicho trabajo.', '2012-07-03', '2012-07-03');
INSERT INTO `t_soporte` VALUES (239, 4, 'Johnny', 'Gelvez', 63, 6, 2, 'no imprime', 'se verifico la situacion y se percato que el cable de puerto USB estaba desconectado no permitiendo asi la transmicion de dato para poder imprimir. una vez conectado el cable queda funcionando el servicio.', '2012-07-03', '2012-07-03');
INSERT INTO `t_soporte` VALUES (240, 4, 'Johnny', 'Gelvez', 5, 5, 2, 'para instalar video beam', 'via telefonica se le explico al director de educacion como instalar el video beam y como ver la informacion desde su pc, para poder proyectar.', '2012-07-06', '2012-07-06');
INSERT INTO `t_soporte` VALUES (241, 2, 'José', 'Reina', 33, 5, 2, 'Probar quemador de CD', 'soporte atendido el 04/07/2012.\r\nSe verificó que el Programa Instalado en el equipo de María Sánchez. grabara CD. se realizó una prueba', '2012-07-10', '2012-07-10');
INSERT INTO `t_soporte` VALUES (242, 2, 'José', 'Reina', 51, 3, 2, 'Problema con la impresora HP 9800', 'Soporte atendido el 04/07/2012. Se le instala nuevamente la impresora hp 8900 a Norvelis, porque tenia conflicto de red.\r\n', '2012-07-10', '2012-07-10');
INSERT INTO `t_soporte` VALUES (243, 2, 'José', 'Reina', 52, 1, 2, 'Instalación del Sistema CIDESA', 'Se Instala CIDESA a Nina y a Julissa', '2012-07-10', '2012-07-10');
INSERT INTO `t_soporte` VALUES (244, 2, 'José', 'Reina', 31, 1, 2, 'Instalación de Sistema Grabador de CD', 'Soporte Atendido el 04/07/2012. \r\nSe instaló Programa para grabar Cd en el equipo Julio Cubas y se le notificó a Norvelis', '2012-07-10', '2012-07-10');
INSERT INTO `t_soporte` VALUES (245, 2, 'José', 'Reina', 51, 6, 2, 'Instalar Toner', 'Soporte Atendido el 04/07/2012. \r\nSe instala Tóner a la Impresora XEROX Nueva y se realiza una prueba de Impresión, desde el Equipo de Norvelis', '2012-07-10', '2012-07-10');
INSERT INTO `t_soporte` VALUES (246, 4, 'Johnny', 'Gelvez', 61, 3, 2, 'Direccionar mi PC, a la impresora de la Direccion de Ambiente.', 'impresora configurada y operativa.', '2012-07-11', '2012-07-18');
INSERT INTO `t_soporte` VALUES (247, 4, 'Johnny', 'Gelvez', 22, 5, 2, 'buenos dias.... en la medida de sus posibilidades le agradesco me indiquen la cantidad de simulacros de desalojo realizados en los ultimos tres años y los que van en el presente año, agradeciendo su gestion y en espera de su pronta respuesta..... Rp.', 'informacion entregada por año. via personal a la funcinaria katerine.', '2012-07-11', '2012-07-11');
INSERT INTO `t_soporte` VALUES (248, 4, 'Johnny', 'Gelvez', 21, 5, 2, 'Hola , buen dia !!! requiero con urgencia ubicar las capas de argis, no las encuentro y no puedo elaborar los mapas. gracias ', 'se redirecciono las carpetas para poder ser abiertas desde el argis 9.2 ', '2012-07-12', '2012-07-13');
INSERT INTO `t_soporte` VALUES (249, 2, 'José', 'Reina', 65, 6, 2, 'Se solicita la revision de la impresora , ya que la misma no funciona gracias', 'el caso fue atendido por alejandro', '2012-07-13', '2012-07-16');
INSERT INTO `t_soporte` VALUES (250, 3, 'Alejandro', 'Perez', 65, 5, 2, 'Se solicita la revision de la impresora , ya que la misma no funciona gracias', 'Se reinicio impresora y se soluciono la falla ', '2012-07-13', '2012-07-16');
INSERT INTO `t_soporte` VALUES (251, 85, 'Pablo', 'Mendoza', 34, 8, 2, 'Capacitación de ArcGIS para realización de mapas y manejo de SIG una vez a la semana en un horario en que el personal de la dirección de informatica tenga disponibilidad. ', '', '2012-07-16', '2012-07-26');
INSERT INTO `t_soporte` VALUES (252, 4, 'Johnny', 'Gelvez', 7, 7, 2, 'Primero: mi equipo no prende desde el  día miércoles 11, la cual fue reportada verbalmente a informática, acudió a esta Dirección el funcionario Gelvez y se percató que el disco duro no respondía, procedió a llevarse el cpu para revisión externa.\r\nEn tal sentido, y debido a la magnitud de la labor q', 'equipo cambiado, se ingrso al dominio del servidor de la quinta, se le configuro el correo se le coloco el respaldo. pc operativa', '2012-07-16', '2012-07-18');
INSERT INTO `t_soporte` VALUES (253, 4, 'Johnny', 'Gelvez', 83, 5, 2, 'capta huella', 'verificacion para descargar y actualizar los eventos.', '2012-07-16', '2012-07-16');
INSERT INTO `t_soporte` VALUES (254, 4, 'Johnny', 'Gelvez', 82, 6, 2, 'imposible imprimir archivos pdf', 'instalacion del adobe y actualizacion del acroba 10.0 ya impriminendo sin novedad', '2012-07-17', '2012-07-17');
INSERT INTO `t_soporte` VALUES (255, 4, 'Johnny', 'Gelvez', 75, 5, 2, 'solicito aclaratoria para la realizacion de las estadisticas.', 'veridficacion de los datos por semana y aclaratoria de dudas.', '2012-07-17', '2012-07-17');
INSERT INTO `t_soporte` VALUES (261, 3, 'Alejandro', 'Perez', 86, 1, 2, 'HOLA BUENOS DIAS NECESITO QUE REVISEN MI PC ESTA MUY LENTA Y SE GUINDA A CADA RATO ', 'Se realizo mantenimiento y cambio de conector RJ45', '2012-07-30', '2012-07-30');
INSERT INTO `t_soporte` VALUES (256, 3, 'Alejandro', 'Perez', 34, 3, 2, 'Hola. Buen día! El día de hoy la Oficina de ODRAXA donde trabaja Julissa, tiene nula o escasa conexión a Internet, por lo que se requiere soporte técnico. Muchas gracias!', 'Se reinicio Switch', '2012-07-20', '2012-07-30');
INSERT INTO `t_soporte` VALUES (257, 85, 'Pablo', 'Mendoza', 23, 2, 2, 'la pantalla del computador tiene dos tonos, se ve como si estuviera dividida', 'Buenos Días se solucionó con los Menús del Monitor, se recomendó cambiar de lugar los radios y cargadores que se encuentran detrás del monitor.\r\n', '2012-07-23', '2012-07-23');
INSERT INTO `t_soporte` VALUES (258, 3, 'Alejandro', 'Perez', 24, 2, 2, 'saludos la computadora de la sala que esta conectada a una pantalla tiene un sonido raro. por favor para que la revisen. gracias', 'se ajusto la fuente de poder que estaba un poco floja', '2012-07-23', '2012-07-23');
INSERT INTO `t_soporte` VALUES (259, 3, 'Alejandro', 'Perez', 5, 7, 2, 'Amigos buenas tardes la impresora XEROX NECESITA CAMBIO DE TONNER NUEVAMENTE MUCHO LE SABRIA AGRADECER SU COLABORACIÓN..........', 'Se realizo cambio de tres toner', '2012-07-23', '2012-07-26');
INSERT INTO `t_soporte` VALUES (260, 2, 'José', 'Reina', 5, 6, 2, 'Saludos buenas tardes por favorde ser posible hay que configurar correo institucional al funcionario Oliver Alvarado nuevo Consultor de Educacion. Gracias', 'Se configuro el correo al usuario solicitado', '2012-07-23', '2012-07-26');
INSERT INTO `t_soporte` VALUES (262, 2, 'José', 'Reina', 53, 3, 2, 'Buenas tardes, se ha hecho imposible la visualización de los reportes en el Sistema Cidesa, ya  que ingresamos pero cuando vamos a pedir el reporte sale error de página en la parte inferior izquierda de la pantalla.\r\nSe está ingresando por un acceso directo que esta predeterminado en el escritorio d', 'el caso fue resuelto por alejandro perez cualquier incoveniente abrir otro soporte gracias', '2012-07-30', '2012-08-10');
INSERT INTO `t_soporte` VALUES (263, 2, 'José', 'Reina', 53, 3, 2, 'Buenas tardes, se ha hecho imposible la visualización de los reportes en el Sistema Cidesa, ya  que ingresamos pero cuando vamos a pedir el reporte sale error de página en la parte inferior izquierda de la pantalla.\r\nSe está ingresando por un acceso directo que esta predeterminado en el escritorio d', 'el caso fue resuelto por alejandro perez cualquier incoveniente abrir otro soporte gracias', '2012-07-30', '2012-08-10');
INSERT INTO `t_soporte` VALUES (264, 85, 'Pablo', 'Mendoza', 5, 2, 2, 'amigos buenos dias necesito por fa revisen la impresora XEROX, creo que esta desconfigurada................Gracias', 'Buenas Tardes\r\nEl reporte fué realizado a la compañía Xerox de Venezuela, estiman pasar mañana en cualquier momento del día, el número de reporte es el 748860.', '2012-07-31', '2012-08-01');
INSERT INTO `t_soporte` VALUES (265, 2, 'José', 'Reina', 62, 6, 2, 'Favor instalar Galeria Pùblico en mi PC.  Mil gracias', 'se instalo publico', '2012-07-31', '2012-07-31');
INSERT INTO `t_soporte` VALUES (266, 2, 'José', 'Reina', 64, 1, 2, 'REALIZAR SOPORTE A LA MAQUINA QUE SE ENCUENTA DE LADO DERECHO DE LA OFICINA CERCA DE LA PUERTA DE ENTRADA A LA DIRECCION ', 'Se realiza RESPALDO a dicho equipo, quedando operativo', '2012-08-01', '2012-08-02');
INSERT INTO `t_soporte` VALUES (267, 85, 'Pablo', 'Mendoza', 5, 6, 2, 'Saludos Buenos dias,Sola para comentarles que el personal tecnico de XEROX,no se apersono por la Qta el dia de ayer mucho les sabria agradecer reportar el caso de la impresora nuevamente ya que no contamos con mas impresora a color...........y es para los certifidos por curso realizado..........', 'Buenas Tardes, se cierra el caso ya que el personal de Xerox acudió a la quinta el día de hoy viernes 3 de agosto de 2012 en horas de la mañana, quiero aclarar que cuando el reporte es directo a alguna empresa escapa de nuestras manos, ya que ellos llevarán su programación de soporte. GRacias y espe', '2012-08-03', '2012-08-03');
INSERT INTO `t_soporte` VALUES (268, 4, 'Johnny', 'Gelvez', 86, 3, 2, 'BUENAS TARDES, NO PUEDO IMPRIMIR', 'configuracion de envio en cola y solventado desde el martes.', '2012-08-06', '2012-08-10');
INSERT INTO `t_soporte` VALUES (269, 4, 'Johnny', 'Gelvez', 25, 6, 2, 'Hola Buemas tardes el monitor de la computadora de Oswaldo Martines no enciende ', 'estaba desconectado la fuente q alimenta de corriente al monitor', '2012-08-06', '2012-08-06');
INSERT INTO `t_soporte` VALUES (270, 4, 'Johnny', 'Gelvez', 70, 6, 2, 'LA PRESENTE ES PARA SOLICITAR DE SUS BUENOS OFICIOS PARA QUE REVICEN LA IMPRESORA HP 4250 LA CUAL NO IMPRIME, GRACIAS', 'recpnfiguracions desde el servidor, y ya funcionando.', '2012-08-06', '2012-08-06');
INSERT INTO `t_soporte` VALUES (271, 4, 'Johnny', 'Gelvez', 10, 2, 3, 'Buenos dias, por favor necesito sea revisado mi monitor ya que en ocaciones cambia de color y se dificulta su uso.', 'evidentemente existe un problema con el monitor, se debera evaluar un posible cambio del mismo, ya que presenta fallas de colores al momento de mover un cable o el el transcurso del tiempo. se suguiere elaborar un informe solicitando un monitor nuevo, teniendo en cuenta que este servidor verifico el', '2012-08-07', '2012-08-23');
INSERT INTO `t_soporte` VALUES (272, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, por favor verificar por qué la impresora ubicada en Consultoría Jurídica no imprime los documentos enviados desde mi máquina, a pesar de que aparece contectada en red. Dentro de Consultoría si imprime. Pero los documentos que envío a imprimir desde mi máquina no se imprimen. Mil graci', 'el caso fue resuelto, la impresora de consultaria estaba con otro nombre de conexion.', '2012-08-07', '2012-08-10');
INSERT INTO `t_soporte` VALUES (273, 2, 'José', 'Reina', 13, 5, 2, 'Solicitud de desbloqueo del Twitter', 'para el dia 07/08/2012 se realizo desbloqueo', '2012-08-07', '2012-08-10');
INSERT INTO `t_soporte` VALUES (274, 2, 'José', 'Reina', 25, 6, 2, 'Buenos dias solicito de sus buenos oficios estudie la posibilidad de revisar los documentos Word y Exel ya que no se le puede cambiar los nombres ', 'se revisan los documentos y se resuelve el caso', '2012-08-09', '2012-08-10');
INSERT INTO `t_soporte` VALUES (275, 2, 'José', 'Reina', 60, 1, 2, 'Buenos días, por medio de la presente les solicito instalar el software necesario para bajar las fotos del blackberry', 'se instala dispositivo', '2012-08-10', '2012-08-10');
INSERT INTO `t_soporte` VALUES (276, 2, 'José', 'Reina', 13, 3, 2, 'Problemas de Impresión con el equipo HP laserjet 4250 de Consultoria Jurídica conectada a través de la red con este equipo. ', 'impresora operativa', '2012-08-10', '2012-08-23');
INSERT INTO `t_soporte` VALUES (277, 4, 'Johnny', 'Gelvez', 13, 3, 2, 'Problemas de Impresión con el equipo HP laserjet 4250 de Consultoria Jurídica conectada a través de la red con este equipo. ', 'configuracion del nuevo software para impresion en red.', '2012-08-10', '2012-08-15');
INSERT INTO `t_soporte` VALUES (278, 4, 'Johnny', 'Gelvez', 5, 1, 2, 'Saludos buenos dias les envio la Lapto marca DELL, la cual la pantalla se pone de color azul despues de encendida, se presume de algun virus o el WINDOWS necesita actualizacion, requiero saber de ser posible el status del video - bean en reaparcion..Gracias', 'laptop entregada', '2012-08-13', '2012-08-16');
INSERT INTO `t_soporte` VALUES (279, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buen día, la presente es para solicitar apoyo con la revisión del CD que envió la Dirección de Catastro correspondiente  a la segunda entrega del Censo de Parcelas Julio 2012. lo que se quiere es verificar si hay incorporación de parcelas nievas y de ser así generar las planillas para las inspeccion', 'Buenas Tardes, se verificó la data, se generó listado para comparar registros con el 1er trimestre se genera 3 planillas que son los nuevos registros para el segundo trimestre, se remiten en formato PDF.', '2012-08-14', '2012-08-14');
INSERT INTO `t_soporte` VALUES (280, 2, 'José', 'Reina', 87, 7, 2, 'Buenas tardes, les escribo para solicitarles que por favor me instalen en el computador (asignado por el Instituto)los siguientes programas: Adobe Flash Player y Java Sun, motivado a que actualmente estoy realizando un trabajo y requiero tener los mismos para culminarlo.', 'caso resuelto', '2012-08-14', '2012-08-23');
INSERT INTO `t_soporte` VALUES (281, 2, 'José', 'Reina', 87, 7, 2, 'Buenas tardes, les escribo para solicitarles que por favor me instalen en el computador (asignado por el Instituto)los siguientes programas: Adobe Flash Player y Java Sun, motivado a que actualmente estoy realizando un trabajo y requiero tener los mismos para culminarlo.', 'listo caso repetido', '2012-08-14', '2012-08-23');
INSERT INTO `t_soporte` VALUES (282, 4, 'Johnny', 'Gelvez', 87, 6, 2, 'Buenas tardes, la presente es para solicitarles que por favor me liberen espacio en elcomputador que utilizo, puesto que necesito abrir documentos y no me lo permite.', 'caso atendido. esta solicitud esta repetida', '2012-08-15', '2012-08-28');
INSERT INTO `t_soporte` VALUES (283, 4, 'Johnny', 'Gelvez', 14, 5, 2, 'actualización de libreta de contacto Outlook', 'actualización de la libreta y configurada', '2012-08-16', '2012-08-16');
INSERT INTO `t_soporte` VALUES (284, 2, 'José', 'Reina', 14, 5, 2, 'actualización de libreta de contacto Outlook', 'se actualiza libreta de direcciones y queda operativo', '2012-08-16', '2012-08-23');
INSERT INTO `t_soporte` VALUES (285, 4, 'Johnny', 'Gelvez', 87, 6, 2, 'Buenos dias, les escribo para que por favor me coloquen en el computador que utilizo el publico de estadisticas para riesgos y operaciones.', 'solicitud atebdida, dispositivo conectado.', '2012-08-20', '2012-08-28');
INSERT INTO `t_soporte` VALUES (286, 4, 'Johnny', 'Gelvez', 20, 6, 2, 'buenos dias amigos, si no es mucho pedirles quisiera saber si es factible que en el computador el cual uso en mi puesto de trabajo, puedo yo tener la posibilidad de poder ver videos, ya que mensualmente recibo videos por parte de ofdalac o en su defecto de algunas personas con las que iteractuo en e', 'instalacion del reproductor VLC.', '2012-08-23', '2012-08-23');
INSERT INTO `t_soporte` VALUES (287, 4, 'Johnny', 'Gelvez', 65, 5, 2, 'FAVOR CONFIGURAR Scaner, el cual no aparece en mi PC', 'configuracion realizada, equipo dispuesto a escanear.', '2012-08-23', '2012-08-28');
INSERT INTO `t_soporte` VALUES (288, 2, 'José', 'Reina', 60, 2, 2, 'Buenas tardes, favor revisar la unidad D del case de mi compu, porque o abre. Mil gracias. ', 'SE REVISA LA UNIDAD DE CD Y SE CORRIGE LA FALLA, EQUIPO OPERATIVO', '2012-08-27', '2012-08-30');
INSERT INTO `t_soporte` VALUES (289, 2, 'José', 'Reina', 60, 2, 2, 'Buenas tardes, favor revisar la unidad D del case de mi compu, porque o abre. Mil gracias. ', 'CASO RESUELTO', '2012-08-27', '2012-08-30');
INSERT INTO `t_soporte` VALUES (290, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, el disco de mi compu está lleno y no me permite descargar las fotos de la cámara. Necesito su colaboración urgente. Mil gracias.   ', 'se agrego otro disco adicional', '2012-08-27', '2012-09-18');
INSERT INTO `t_soporte` VALUES (291, 2, 'José', 'Reina', 58, 1, 2, 'Mantenimiento equipo y ampliación de memoria. ', 'caso repetido', '2012-08-29', '2012-08-29');
INSERT INTO `t_soporte` VALUES (292, 4, 'Johnny', 'Gelvez', 58, 1, 2, 'Mantenimiento equipo y ampliación de memoria. ', 'instalacion de memoria ram al equipo quedando en 700 MB ya que no soporta 1gb la placa base. (tarjeta madre) posible evaluacion para asignación de otro equipo.', '2012-08-29', '2012-08-29');
INSERT INTO `t_soporte` VALUES (293, 4, 'Johnny', 'Gelvez', 57, 7, 2, 'Solicitud de ampliación de la memoria, instalación de google crome y actualización de hora', 'cambio de horario, instalacion del google crome y ampliacion de memoria ram quedadno en 2 gb el equipo.', '2012-08-29', '2012-08-29');
INSERT INTO `t_soporte` VALUES (294, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, necesito convertir documentos en pdf para su publicación en la web Alcaldía y necesito apoyo de informática, debido a que no abren los archivos en mi compu por tratarse de una versión reciente de power point y word. Por instrucciones de María Alejandra debemos remitir estos archivos a', 'se convierte documentos y se le entrega a ana varela', '2012-08-29', '2012-09-06');
INSERT INTO `t_soporte` VALUES (295, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, necesito convertir documentos en pdf para su publicación en la web Alcaldía y necesito apoyo de informática, debido a que no abren los archivos en mi compu por tratarse de una versión reciente de power point y word. Por instrucciones de María Alejandra debemos remitir estos archivos a', 'caso repetido', '2012-08-29', '2012-08-30');
INSERT INTO `t_soporte` VALUES (296, 2, 'José', 'Reina', 88, 5, 2, 'Hola chicos buenas tardes la Lic. Ana Ugueto me pidió que por favor les pidiera que quemaran 6 cd, contentivo a la información relativa a la notificación de riesgo del personal del ipca que se encuentra ubicado en la unidad de red publica en una carpeta denominada CSSL. Gracias.', 'se realizan copias de 6 Cd de la informacion solicitada', '2012-08-29', '2012-08-29');
INSERT INTO `t_soporte` VALUES (297, 3, 'Alejandro', 'Perez', 52, 1, 2, 'Buenos días\r\nTengo un problema con Acrobat. Al abrir cualquier archivo en PDF e intentar imprimirlo, no me lo permite.\r\nAdicionalmente, cuando intento abrir un archivo PDF desde internet para posteriormente imprimirlo, se cierra el explorador.\r\nEs posible solventar este problema?\r\nMuchas gracias\r\nJu', 'se realizo cambio en las políticas de seguridad para el correcto funcionamiento del programa', '2012-08-30', '2012-09-06');
INSERT INTO `t_soporte` VALUES (298, 2, 'José', 'Reina', 81, 1, 2, 'no abre el sistema de Cidesa, por favor revisar mi equipo', 'se actualiza el Mozilla Firefox y se corrige la falla', '2012-08-30', '2012-08-30');
INSERT INTO `t_soporte` VALUES (299, 4, 'Johnny', 'Gelvez', 86, 3, 2, 'HOLA BUENAS TARDES NO PUEDO IMPRIMIR ', 'encendido del servidor y activando la intranet, se reestablece el servisio.', '2012-08-30', '2012-08-30');
INSERT INTO `t_soporte` VALUES (300, 3, 'Alejandro', 'Perez', 52, 1, 2, 'Buenas tardes\r\nLes escribo para solicitar la instalación de la última versión del programa Excel en las computadoras asignadas a esta dirección. Actualmente estamos manejando bases de datos que debido a su gran tamaño, no pueden ser procesadas con la versión anterior de dicho programa.\r\nEspero poder', 'Se instalo Office 2007', '2012-09-03', '2012-09-05');
INSERT INTO `t_soporte` VALUES (301, 2, 'José', 'Reina', 88, 5, 2, 'Problemas al abrir archivos PDF', 'se recupera archivo pdf, el cual presentaba problema.', '2012-09-06', '2012-09-06');
INSERT INTO `t_soporte` VALUES (302, 2, 'José', 'Reina', 81, 5, 2, 'ASESORIA CON DOCUMENTOS DE EXCEL', 'se le explica a Jessika, como colocar configuracion de celdas en excel', '2012-09-06', '2012-09-06');
INSERT INTO `t_soporte` VALUES (303, 1, 'Lillian', 'Chacon', 32, 6, 2, 'buenos dias, no logro ver mi cooreo institucional en el blackberry corporativo, ustedes me podrian ayudar con esto? saludos', 'Buenas tardes, ya fue configurado el correo institucional en el dispositivo móvil. Gracias', '2012-09-06', '2012-09-10');
INSERT INTO `t_soporte` VALUES (304, 2, 'José', 'Reina', 27, 5, 2, 'Asesoria sobre documento en excel', 'se explica a victor como configurar celda en excel', '2012-09-06', '2012-09-06');
INSERT INTO `t_soporte` VALUES (305, 3, 'Alejandro', 'Perez', 81, 6, 2, 'descargar un documento', 'Se cambio formato del documento para office 2003', '2012-09-10', '2012-09-10');
INSERT INTO `t_soporte` VALUES (306, 2, 'José', 'Reina', 81, 6, 2, 'Buenos días, hay un problema con el sistema CIDESA, por favor es urgente, gracias\r\n', 'caso resuelto por el personal de CIDESA', '2012-09-11', '2012-09-18');
INSERT INTO `t_soporte` VALUES (307, 3, 'Alejandro', 'Perez', 35, 2, 2, 'La impresora FX-2190 EPSON NO ME ESTA IMPRIMIENDO EN ESTO MOMENTO', 'Se reinicio la impresora', '2012-09-11', '2012-09-11');
INSERT INTO `t_soporte` VALUES (308, 3, 'Alejandro', 'Perez', 5, 1, 2, 'Saludos amigos tengo mi pc tiene problemas con la confifugarcion del correo interno no recibe ni puedo enviar mensaje o correspondencias, adicional necesito si esta en su alcance hacer algunas restricciones con alguna paginas de internet, y que conecten la maquina a la impresoara Samsung para imprim', 'Se configuro de nuevo el correo', '2012-09-11', '2012-09-13');
INSERT INTO `t_soporte` VALUES (309, 3, 'Alejandro', 'Perez', 5, 2, 2, 'Saludos la impresora xerox no quiere imprimir y hay que cambiar crtucho amarillo, Gracias ', 'Cambio de toner amarillo.', '2012-09-11', '2012-09-13');
INSERT INTO `t_soporte` VALUES (310, 2, 'José', 'Reina', 35, 2, 2, 'Actualmente se esta presentando un problema en  el sistema administrativo con relacion a los movimiento bancarios,dichos  problemas  son los siguientes: 1.- en  los libros de banco se estan repitiendo varias veces las operaciones de creditos(cheques) y debitos en algunos bancos, igualmente los saldo', 'caso resuelto por el personal de CIDESA', '2012-09-12', '2012-09-18');
INSERT INTO `t_soporte` VALUES (311, 1, 'Lillian', 'Chacon', 20, 6, 2, 'muy buenas tardes, mucho sabria agradecer sus colaboracion para con esta Coordinacion en pro de poder gestionarnos la impresion de una capa del municipio chacao en donde se reflejen las unidades educativas que seran utilizadas como centros electorales durante las elcciones del 07 de Octubre del 2012', 'Buenas tardes, se entrego el plano a escala 1:6.500, con la información solicitada. ', '2012-09-12', '2012-09-13');
INSERT INTO `t_soporte` VALUES (312, 3, 'Alejandro', 'Perez', 81, 2, 2, 'Buenos días tengo problemas con el scaner no me lo reconoce la computadora, cuando puedan por favor gracias', 'Se reinicio el equipo.', '2012-09-13', '2012-09-17');
INSERT INTO `t_soporte` VALUES (313, 3, 'Alejandro', 'Perez', 65, 6, 2, 'Solicitud, cambio de correo, para ser direccionada a una sola maquina , la cual sera utilizada en el correo IPCASEGURIDAD ', 'se configuro correo en equipo RRHHIV', '2012-09-14', '2012-09-14');
INSERT INTO `t_soporte` VALUES (314, 3, 'Alejandro', 'Perez', 82, 6, 2, 'imprimir manual de auditoria 122 pag.', 'Impresión de un manual de 122 paginas.', '2012-09-14', '2012-09-14');
INSERT INTO `t_soporte` VALUES (315, 2, 'José', 'Reina', 87, 5, 2, 'Buenas tardes, les escribo para que por favor me permitan bajar unas fotografías que tome con mi telefono celular durante la realización de una inspección, ya que el computador que utilizo no me lo permite  y éstas las necesito para comenzar a realizar el respectivo informe.', 'se le indica a la Funcionaria, como descargar las imagenes a la PC', '2012-09-17', '2012-09-18');
INSERT INTO `t_soporte` VALUES (316, 2, 'José', 'Reina', 60, 6, 2, 'Hola buenos días, favor convertir en texto los 10 puntos básicos de la campaña mundial ciudades resilientes que están en el público. Mil gracias.   ', 'se comvierte el pdf a un documento word quedando el mismo operativo', '2012-09-18', '2012-09-18');
INSERT INTO `t_soporte` VALUES (317, 2, 'José', 'Reina', 35, 1, 2, 'ACTUALIZACION  DEL CORREO INTERNO', 'se actualiza libreta de correo interno', '2012-09-18', '2012-09-20');
INSERT INTO `t_soporte` VALUES (318, 2, 'José', 'Reina', 5, 3, 2, 'Saludos, amigos necesito imprimir por la impresora SAMSUNG y no se por cual razon mi maquina no esta configurada con ese equipo.Gracias', 'se configuro impresora Samsung y quedo operativa', '2012-09-19', '2012-09-27');
INSERT INTO `t_soporte` VALUES (319, 2, 'José', 'Reina', 65, 6, 2, 'Favor revisar impresora, ya que no se puede imprimir de ninguna maquina gracias', 'LA IMPRESORA NO TIENE TINTA, SE CONFIGURA LA IMPRESORA DE ADMINISTRACION\r\n', '2012-09-19', '2012-09-25');
INSERT INTO `t_soporte` VALUES (320, 2, 'José', 'Reina', 58, 1, 2, 'el ordenador esta generando un cuadro de información referida a error de disco. posible presencia de virus.', 'Se le realiza escaneo al equipo, se desfragmenta disco, se reparan errores varios de windows y se borran archivos TEMPORALES', '2012-09-21', '2012-09-27');
INSERT INTO `t_soporte` VALUES (321, 2, 'José', 'Reina', 24, 2, 2, 'Se solicita por favor liberar los puertos usb de la computadora operaciones II y operaciones IV. Esto por requerimientos laborales.', 'se habilita puerto en equipo operaciones 2.', '2012-09-21', '2012-09-21');
INSERT INTO `t_soporte` VALUES (322, 2, 'José', 'Reina', 86, 3, 2, 'Buen dia, No puedo imprimir por impresora HP laser', 'SE CORRIGE LA FALLA, QUEDADNO OPERATIVO', '2012-09-24', '2012-09-25');
INSERT INTO `t_soporte` VALUES (323, 2, 'José', 'Reina', 9, 1, 2, 'por favor, realizar mantenimiento al aquipo, ya que se cuelga mucho', 'se l erealizo revicion del equipo quedando operativo ', '2012-09-24', '2012-10-10');
INSERT INTO `t_soporte` VALUES (324, 1, 'Lillian', 'Chacon', 52, 1, 2, 'Buenas tardes\r\nLes escribo porque Nina tiene problemas en su compu para abrir documentos enviados por correo o provenientes de CDs. Eso para con archivos de excel, txt, word, pdf, imagen.\r\n\r\nNos pueden ayudar con eso?...\r\nGracias', 'Se trabajo directamente con el usuario: algunos archivos recibidos no poseían formato, adicionalmente al cambiar de versión de Office, se debe definir por tipo de archivo que aplicación debe abrirlos.', '2012-09-24', '2012-09-26');
INSERT INTO `t_soporte` VALUES (325, 1, 'Lillian', 'Chacon', 62, 5, 2, 'Computador de Presidencia no enciende.  Favor revisar.  Mil gracias.', 'El regulador de voltaje se encontraba apagado.', '2012-09-26', '2012-09-27');
INSERT INTO `t_soporte` VALUES (326, 1, 'Lillian', 'Chacon', 20, 6, 2, 'saludos, buenas tardes, solicito sus buenos oficios en pro de poder facilitarle una clave de usuario al funcionario humberto verenzuela para poder utilizar la computadora que esta siendo utilizada por los asistentes de operaciones.', 'Cada maquina asignada a operaciones tiene un usuario y password único por maquina, independientemente del operador, es decir, los usuarios se asignan por equipo de trabajo. En el caso especifico de la PC en cuestión el usuario es OPERACIONESII y la clave es la que ellos manejan, importante es que el', '2012-09-27', '2012-09-27');
INSERT INTO `t_soporte` VALUES (327, 2, 'José', 'Reina', 68, 2, 2, 'Buenos dias es para solicitar,nos realicen la revisión de la computadora de yesika osorio (esta opaca la imagen) y sr.luis ladera ,ya que se hicierón algunos cambios de puestos y se desconectaron estos equipos.', 'Se ajusto el conector de video', '2012-10-02', '2012-10-29');
INSERT INTO `t_soporte` VALUES (328, 1, 'Lillian', 'Chacon', 58, 5, 2, 'Eliminar archivo en la web', 'Se procedió a eliminar un archivo que se encontraba en internet, el cual podría haberse publicado por medio de una aplicación externa a la red.', '2012-10-02', '2012-10-02');
INSERT INTO `t_soporte` VALUES (329, 2, 'José', 'Reina', 86, 3, 2, 'HOLA BUEN DIA NO HAY SISTEMA SIGA', 'SE REVISA EL SERVIDOR DE CIDESA Y SE OBSERVA QUE EL MISMO NO RESPONDE SE PROCEDE AREINICIAR EL SERVIDOR Y EL MISMO QUEDA OPERATIVO', '2012-10-03', '2012-10-03');
INSERT INTO `t_soporte` VALUES (330, 2, 'José', 'Reina', 86, 3, 2, 'HOLA BUEN DIA EL SISTEMA NO ESTA GENERANDO LA ORDEN DE COMPRA NI DE SERVICIO CUANDO LE DOY LA OPCION DE FORMA PRE IMPRESA APARECE UNA PANTALLA EN BLANCO...GRACIAS', 'la falla fue resuelta por el personal de cidesa', '2012-10-04', '2012-10-10');
INSERT INTO `t_soporte` VALUES (331, 3, 'Alejandro', 'Perez', 5, 2, 2, 'Saludos Buenos Dias,por favor mucho les sabria agradecer realizar las coordinaciones pertinentas para la evaluacion de la utilizacion de paginas de internet, como Google en esta Direccion, y de esa forma determinar algunas acciones que constribuyan a elevar la calidad del trabajo que realizan los fu', 'Se actualizo archivo de supervisar el Internet  ', '2012-10-08', '2012-10-17');
INSERT INTO `t_soporte` VALUES (332, 4, 'Johnny', 'Gelvez', 56, 7, 2, 'Solicitud de actualización Java, Adobe Acrobat y Mozzilla Firefox.', 'actualizacion ejecutada', '2012-10-08', '2012-10-08');
INSERT INTO `t_soporte` VALUES (333, 4, 'Johnny', 'Gelvez', 58, 7, 2, 'mudanza de los equipos', 'debido a la falla estructural en laoficina de la consultoria juridica se procede a la reubicacion de los equipos a la sala situacional mientras se  solventa la problematica. quedando operativo y configurandole la impresora xerox N2125 para sus reportes.', '2012-10-10', '2012-10-10');
INSERT INTO `t_soporte` VALUES (334, 3, 'Alejandro', 'Perez', 51, 6, 2, 'se necesita que le creen usuario de Outlook a Radharani', 'Cambio de nombre y creacion de ususario', '2012-10-11', '2012-10-18');
INSERT INTO `t_soporte` VALUES (335, 2, 'José', 'Reina', 58, 3, 2, 'Problemas con la red. error de conexión', 'se reviso el CPU y las conexión de red, se reinicia el CPU y el equipo queda operatvo', '2012-10-15', '2012-10-15');
INSERT INTO `t_soporte` VALUES (336, 2, 'José', 'Reina', 14, 2, 2, 'Problema con la Impresora hp 9800', 'se revisa impresora, y se corrige la falla', '2012-10-15', '2012-10-16');
INSERT INTO `t_soporte` VALUES (337, 2, 'José', 'Reina', 70, 6, 2, 'LA IMPRESORAS NO FUNCIONAN, ES DECIR INTENTAMOS IMPRIMIR Y NO GENERA IMPRESIÓN', 'se verifica impresora, se reinicia la misma y se corrige falla', '2012-10-16', '2012-10-17');
INSERT INTO `t_soporte` VALUES (338, 2, 'José', 'Reina', 70, 6, 2, 'LA IMPRESORAS NO FUNCIONAN, ES DECIR INTENTAMOS IMPRIMIR Y NO GENERA IMPRESIÓN', 'caso duplicado', '2012-10-16', '2012-10-17');
INSERT INTO `t_soporte` VALUES (339, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buen día, la presente es para solicitar su colaboración con la impresión del mapa de zonificación ácustica del Municipio Chaco, y también queria solicitar un mapa de los puntos encologicos pero como una imagen de jpg. Gracias de ante mano', 'Buenos Días se emitieron dos planos de Zonificación de Ruido, ambos indican en revisión ya que no es un definitivo y la Dirección de Ambiente debe validar dicho plano.\r\n\r\nLo pueden mandar a buscar a 00, en la direcciónde informática', '2012-10-17', '2012-10-18');
INSERT INTO `t_soporte` VALUES (340, 3, 'Alejandro', 'Perez', 6, 6, 2, 'Mantenimiento preventivo ', 'Se activo Ccleaner y se activo aplicación para que windows mejore rendimiento ', '2012-10-17', '2012-10-17');
INSERT INTO `t_soporte` VALUES (341, 3, 'Alejandro', 'Perez', 5, 1, 2, 'Falla con el acroba', 'Reinstalación de Acroba', '2012-10-17', '2012-10-17');
INSERT INTO `t_soporte` VALUES (342, 3, 'Alejandro', 'Perez', 51, 2, 2, 'Se necesita la activación de Outlook a Daniel Lizcano', 'activado', '2012-10-17', '2012-10-29');
INSERT INTO `t_soporte` VALUES (343, 0, '', '', 0, 6, 1, 'Por favor, cambiar el nombre a mostrar del correo ipcapresidencia (Dice Ana Liz Flores) a Presidencia IPCA', '', '0000-00-00', '0000-00-00');
INSERT INTO `t_soporte` VALUES (344, 3, 'Alejandro', 'Perez', 86, 3, 2, 'Correo Institucional', 'Se creo correo Institucional y se configuro en equipo', '2012-10-18', '2012-10-18');
INSERT INTO `t_soporte` VALUES (345, 3, 'Alejandro', 'Perez', 72, 3, 2, 'Correo Institucional', 'se configuro correo en equipo', '2012-10-18', '2012-10-18');
INSERT INTO `t_soporte` VALUES (346, 3, 'Alejandro', 'Perez', 51, 7, 2, 'hola buenos dias, se necesita el cambio de toner de impresora Xerox Workcentre 3550 Ps\r\nya tenemos el tonner  gracias', 'se realizo cambio', '2012-10-19', '2012-10-22');
INSERT INTO `t_soporte` VALUES (347, 2, 'José', 'Reina', 77, 3, 2, 'no puedo imprimir archivos pdf', 'se revisa en archivo y se configura para que pueda imprimir\r\n', '2012-10-22', '2012-10-22');
INSERT INTO `t_soporte` VALUES (348, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, por favor podrían revisar mi correo institucional. Estoy tratando de enviar una invitación en jpg y no sale el mensaje. Le bajé resolución al arte. Intenté de nuevo y tampoco. Mil gracias de antemano. ', 'se configura correo, nuevamente ya que el conflicto era con el correo VPEREZ@IPCACHACAO.ORG.VE', '2012-10-22', '2012-10-22');
INSERT INTO `t_soporte` VALUES (349, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, por favor podrían revisar mi correo institucional. Estoy tratando de enviar una invitación en jpg y no sale el mensaje. Le bajé resolución al arte. Intenté de nuevo y tampoco. Mil gracias de antemano. ', 'caso repetido', '2012-10-22', '2012-10-22');
INSERT INTO `t_soporte` VALUES (350, 3, 'Alejandro', 'Perez', 51, 2, 2, 'Hola buenas tardes, se necesita el desbloqueo de Hotmail en el quipo utilizado por Daniel Lizcano ya se mandó el memorando haciendo la solicitud gracias', 'Ese caso fue resuelto el viernes', '2012-10-23', '2012-10-23');
INSERT INTO `t_soporte` VALUES (351, 3, 'Alejandro', 'Perez', 60, 1, 2, 'Buenas tardes, el ipcacomunicaciones tiene problemas nuevamente. Incluso la invitación el evento que aparece en enviados no fue recibida por el personal. Por favor agradezco su colaboración, porque es importante que todo el personal IPCA reciba esta invitación a la brevedad. Mil gracias de antemano.', 'Se realizo prueba de manera satisfactoria del correo y se reporto al servicio para que lo verificara de igual forma', '2012-10-23', '2012-10-29');
INSERT INTO `t_soporte` VALUES (352, 3, 'Alejandro', 'Perez', 53, 1, 2, 'Buenos días para solicitar la instalación de adobe professional en 03 equipos de computación adscritos a esta Oficina.', 'Se instalo adobe profesional\r\n', '2012-10-24', '2012-10-29');
INSERT INTO `t_soporte` VALUES (353, 3, 'Alejandro', 'Perez', 53, 2, 2, 'Buenos días, para solicitar la revisión de mi cpu ya que al encenderlo emite un sonido fuerte.', 'Se reviso equipo y esta funcionando correctamente ', '2012-10-24', '2012-11-08');
INSERT INTO `t_soporte` VALUES (354, 4, 'Johnny', 'Gelvez', 20, 2, 2, 'teclado dañado', 'debido al deterioro que presento el teclado de la pc opreciones IV se procede a cambiar el teclado por uno marca genius de conector pc2. quedando la misma operativa.', '2012-10-24', '2012-10-24');
INSERT INTO `t_soporte` VALUES (355, 3, 'Alejandro', 'Perez', 10, 1, 2, 'Buenas tardes la maquina de Rafael Moscoso Consultor de Educacion no arranca el windows ni el sistema operativo', 'Se reviso equipo y se dejo funcionando, se requiere realizar respaldo', '2012-10-24', '2012-10-26');
INSERT INTO `t_soporte` VALUES (356, 3, 'Alejandro', 'Perez', 52, 3, 2, 'Solicitud unidad de red publico web ', 'conexión de unidad de red publico web ', '2012-10-26', '2012-10-26');
INSERT INTO `t_soporte` VALUES (357, 4, 'Johnny', 'Gelvez', 13, 3, 2, 'El presente soporte es con la finalidad de solicitar la instalación de la carpeta Galerías del publico en mi equipo. Mil gracias.', 'publico galeria conectado.', '2012-10-26', '2012-10-26');
INSERT INTO `t_soporte` VALUES (358, 4, 'Johnny', 'Gelvez', 64, 1, 2, 'algunos plugins usados por la paginas (CIDESA) estan desactualizados', 'actualizado los paquetes de plugin para ver los reportes en pdf.', '2012-10-26', '2012-10-26');
INSERT INTO `t_soporte` VALUES (359, 2, 'José', 'Reina', 60, 2, 2, 'Buenos días, por medio de la presente solicito soporte para grabar video institucional en CD a fin de proyectarlo en el evento Champion Leader. Mil gracias. ', 'se graba video en CD y se le entrega a la funcionaria Ana Valera', '2012-10-29', '2012-10-29');
INSERT INTO `t_soporte` VALUES (360, 3, 'Alejandro', 'Perez', 52, 3, 2, 'Buenas tardes\r\nEspero se encuentren bien.\r\nEl jueves 01/11/12 comienza una persona nueva en la OACSA, por lo cual es necesario la creación de un usario con acceso al Público y a la Carpeta OACSA, así como el correo electrónico. Adicionalmente, es necesario que se le instale el programa Adobe Profess', 'Se configuro correo institucional y los demás requerimiento ya se realizaron', '2012-10-29', '2012-11-06');
INSERT INTO `t_soporte` VALUES (361, 4, 'Johnny', 'Gelvez', 13, 7, 2, 'Saludos cordiales; por medio de la presente soporte quisiera realizar solicitud de Instalación del programa ARGIS con la finalidad de dar inicio al mapeo de las denuncias y mantener actualizada la pagina web de la Institución. ', 'software instalado y funcionando.', '2012-10-29', '2012-10-31');
INSERT INTO `t_soporte` VALUES (362, 4, 'Johnny', 'Gelvez', 64, 1, 2, 'respaldo de la maquina Nº 4 la cual esta siendo utilizada por el funcionario Lucas Perez ', 'respaldo reralizado', '2012-10-31', '2012-11-06');
INSERT INTO `t_soporte` VALUES (363, 3, 'Alejandro', 'Perez', 82, 2, 2, 'buen dia necesito que un tecnico venga a revisar la impresora presenta problemas de fotocipida y scaner. gracias', 'Se reinstalo y se configuro de nuevo el equipo.', '2012-11-01', '2012-11-02');
INSERT INTO `t_soporte` VALUES (364, 3, 'Alejandro', 'Perez', 82, 3, 2, 'creacion de correo institucional para la ciudadana Rosangeles Diaz', 'Se configuro correo institucional a Rosangel Diaz', '2012-11-01', '2012-11-08');
INSERT INTO `t_soporte` VALUES (365, 4, 'Johnny', 'Gelvez', 20, 2, 2, 'MONITOR NO ENCIENDE', 'se evaluo el monitor y verificando la base del mismo se pudo lograr encender de nuevo. evidentemente si existe un detalle en la base que hace que presente dicha falla.', '2012-11-02', '2012-11-02');
INSERT INTO `t_soporte` VALUES (366, 4, 'Johnny', 'Gelvez', 60, 3, 2, 'Buenas tardes, les escribo para solicitarles su apoyo a fin de conectar mi computadora con la impresora de Consultoría Jurídica. Supongo que por las reparaciones realizadas allí se desconectó, porque mandé a imprimir y se quedó pensando unos 10 minutos y no imprimió, ni envío ningún mensaje. Mil gra', 'impresora conectada y funcionando.', '2012-11-06', '2012-11-06');
INSERT INTO `t_soporte` VALUES (367, 3, 'Alejandro', 'Perez', 52, 3, 2, 'Archivos abren solo lectura en unidad de red', 'Se establecieron nuevos permisos de red', '2012-11-08', '2012-11-08');
INSERT INTO `t_soporte` VALUES (368, 3, 'Alejandro', 'Perez', 59, 3, 2, 'Correo Institucional', 'Se creo y configuro correo institucional ', '2012-11-08', '2012-11-08');
INSERT INTO `t_soporte` VALUES (369, 3, 'Alejandro', 'Perez', 5, 3, 2, 'No se tiene servicio de internet', 'El cargador del transiver de la antena se encontraba desconectado', '2012-11-08', '2012-11-08');
INSERT INTO `t_soporte` VALUES (370, 4, 'Johnny', 'Gelvez', 26, 3, 2, 'Problebas para imprimir documento.', 'impresora conectada a la de operaciones.', '2012-11-08', '2012-11-09');
INSERT INTO `t_soporte` VALUES (371, 4, 'Johnny', 'Gelvez', 86, 3, 2, 'HOLA BUEN DIA NO PUEDO IMPRIMIR ', 'reinicio de la impresora y eliminar los doc que estaban en cola. impresora funcinando. queda acotar que la misma se esta quedando sin toner mensaje q es emitido de la impresora.', '2012-11-09', '2012-11-09');
INSERT INTO `t_soporte` VALUES (372, 4, 'Johnny', 'Gelvez', 82, 5, 2, 'necesito desbloquear archivos consignados por la direccion de administracion a solicitud nuestra con ocasion de un procedimiento de auditoria que actualmente ejecuta esta unidad', 'Equipo del Auditor Interno apagada, es neceario tenerla encendida para poder imprimir', '2012-11-13', '2012-11-15');
INSERT INTO `t_soporte` VALUES (373, 2, 'José', 'Reina', 53, 2, 2, 'Buenas tardes, para solicitar revisión de mi equipo ya que el mismo no enciende.', 'Se revisa CPU y se ajustan los cables tantos internos del Case como los perifericos de entradas y salidas, quedando operativo el mismo', '2012-11-13', '2012-11-14');
INSERT INTO `t_soporte` VALUES (374, 2, 'José', 'Reina', 53, 1, 2, 'Buenas tardes, para solicitar la configuración del soporte en mi equipo, ya que para ingresar al mismo debo colocar la dirección manualmente.', 'Se configura el Sistema de soporte ', '2012-11-13', '2012-11-14');
INSERT INTO `t_soporte` VALUES (375, 2, 'José', 'Reina', 53, 1, 2, 'Buenas tardes, para solicitar revisión en el equipo de Julissa  que presenta problemas con los archivos de excel.', 'el caso fue resuelto para la fecha', '2012-11-13', '2012-11-28');
INSERT INTO `t_soporte` VALUES (376, 2, 'José', 'Reina', 53, 3, 2, 'Buenas tardes, para solicitar la instalación de la impresora que se encuentra en la Oficina de Ambiente a los equipos adscritos a OACSA, para ser utilizada como segunda opción en el momento que falle la nuestra.', 'Se configura la impresora de Ambienda a todos los equipos de OACSA, para su uso, quedadno como seguda opción', '2012-11-13', '2012-11-14');
INSERT INTO `t_soporte` VALUES (377, 2, 'José', 'Reina', 53, 1, 2, 'Buenas tardes, para solicitar la instalación de un programa que nos permita grabar información en cd desde los equipos adscritos a OACSA, ya que constantemente se requiere enviar información.', 'se instala el programa en los equipos, quedando operativo', '2012-11-13', '2012-12-06');
INSERT INTO `t_soporte` VALUES (378, 85, 'Pablo', 'Mendoza', 53, 6, 2, 'Buenos días, para solicitar la sustitución del regulador de voltaje del equipo asignado a Julissa, en virtud que no enciende.', 'Se envió Regulador nuevo con Ramón de Administración, favro enviar el regulador con falla para revisión.', '2012-11-14', '2012-11-14');
INSERT INTO `t_soporte` VALUES (380, 85, 'Pablo', 'Mendoza', 60, 6, 2, 'Buenas tardes, por medio de la presente solicito grabar video institucional IPCA en tres CD. Mil gracias.  ', 'Se procede a grabar 3 DVD ya que el video esta en formato pelicula, El video es el de Champion Leader ONU, se entregó uno el día de ayer 14/11 y en la tarde de hoy se entregarán los otros 2, ya están quemados solo a la espera de que llegues a la oficina para hacer entrega.', '2012-11-14', '2012-11-15');
INSERT INTO `t_soporte` VALUES (387, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buen día, la presente es para solicitar de sus bienos oficios en cuanto a la revisión del CD que envió la Dirección de Catastro, para ver si hay parcelas con terrenos a vacios o construcciones paralizadas, para gererar la respectiva planilla de inspección. Gracioas. ', 'Se revisó la data y se emitió una planilla en PDF de la compración', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (382, 2, 'Jose', 'Reina', 64, 3, 2, 'La computadora RRHHIV que esta utilizando la funcionaria miriely caraballo no puede imprimir  ', 'Actualizacion del fire fox.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (383, 4, 'Johnny', 'Gelvez', 82, 2, 2, 'imposibilidad para imprimir en red', 'Equipo del auditor apagada, ews necesario mantener ese equipo encendido para poder imprimir. Feliz dia.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (384, 4, 'Johnny', 'Gelvez', 64, 1, 2, 'Verificacion del sistema del capta huella ya que no podemos conectarnos a la base de datos, asimismo verificar los nuevos ingresos  ', 'configuracion de la direccion ip para poder conectar el dispositivo', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (385, 4, 'Johnny', 'Gelvez', 70, 2, 2, 'IMPRESORA HP LASER  DE ADMINISTRACIÓN NO IMPRIME, POR FAVOR REVISAR FRACIAS', 'Reiniciado las impreciones en cola y la impresora como tal.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (386, 4, 'Johnny', 'Gelvez', 58, 3, 2, 'Problemas al solicitar impresion. cuadro de dialogo que señala problemas con la red', 'Impresora predeterminada, no era la configurada para imprimir. se conecta la impresora y se coloca predeterminada.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (389, 2, 'José', 'Reina', 87, 5, 2, 'Buenas tardes José Reina, te escribo para que por favor me ayudes a pasar un archivo de pdf a word.', 'caso resuelto', '2012-11-16', '2012-11-28');
INSERT INTO `t_soporte` VALUES (388, 4, 'Johnny', 'Gelvez', 33, 2, 2, 'Buenas tardes, la presente es para informar que el mouse que se utiliza en el cpu de Inspectores I, presenta problemas ya que no responde. Por lo antes expuesto solicitamos sus buenos oficios en cuanto a la revisión y reposición del mismo si es necesario ya que no podemos utilizarlo actualmente. Gra', 'Se envio el equipo para su sustitucion.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (390, 4, 'Johnny', 'Gelvez', 62, 1, 2, 'Mucho agradecerè actualizar la lista de Outlook en mi equipo, el de presidencia y degi.  Mil gracias.', 'libreta actualizada. cualquier duda nos avisa de nuevo.', '2012-11-19', '2012-11-20');
INSERT INTO `t_soporte` VALUES (391, 85, 'Pablo', 'Mendoza', 19, 6, 2, 'Necesito por favor imprimir en el ploter, 5 imagenes de tamaño 70X70. estas imagenes las colocaré en una carpeta llamada "imagenes fuego", en el servidor del publico. alli estan las 5 imagenes', 'Se buscaron imagenes acordes para el tamaña de impresión, se emitieron 5 impresiones en tamaño 70x70', '2012-11-20', '2012-11-20');
INSERT INTO `t_soporte` VALUES (392, 3, 'Alejandro', 'Perez', 13, 5, 2, 'La presente es con la finalidad de realizar solicitud de instalación de acceso directo en la PC de Recepción del link http://www.chacao.gov.ve/index.php?option=com_djcatalog&view=showitem&id=8&Itemid=111, el cual refiere al usuario en la pag. de la Alcaldía a la solicitud del número de catastro.', 'Se creo el acceso directo.', '2012-11-20', '2012-11-20');
INSERT INTO `t_soporte` VALUES (393, 85, 'Pablo', 'Mendoza', 21, 1, 2, 'Buenos días!! necesito de su ayuda, ya que tengo en el equipo unos archivos y videos que no puedo ver. ', 'Se procedió a instalar el software VLC Media Player', '2012-11-21', '2012-11-26');
INSERT INTO `t_soporte` VALUES (394, 2, 'José', 'Reina', 52, 1, 2, 'En el equipo de Maria Curbelo al querer ingresar al sistema administrativo (Cidesa) no puede bajar ningun reporte porque le sale un error: problemas con Adobe Acrobat/Reader, por favor revisar', 'Se actualizó el Adobe', '2012-11-22', '2012-12-06');
INSERT INTO `t_soporte` VALUES (395, 85, 'Pablo', 'Mendoza', 87, 6, 2, 'Buenos días Pablo, le escribo para que por favor actualices en la página del SIGAR el inventario de las inspecciones realizadas en este mes. Ver la siguiente ruta G:\\Sigar\\Inventario de inspecciones.', 'Se actualizó la capa inspecciones en SIGAR. En proximos soportes por favor colocar en tipo de soporte SIG, Gracias', '2012-11-26', '2012-11-26');
INSERT INTO `t_soporte` VALUES (396, 85, 'Pablo', 'Mendoza', 87, 7, 2, 'Buenos días, les escribo para que por favor instalen en el computador que actualmente utilizo la aplicación para ver videos en el formato .VOB, motivado a que necesito revisar unos videos para realizar unas actividades con el colegio Andrés Bello. Muchas gracias.', 'Buensos días se procedió a instalar el Software VLC Media Player quedando activo para visualizar dichos videos.\r\n', '2012-11-26', '2012-11-26');
INSERT INTO `t_soporte` VALUES (397, 85, 'Pablo', 'Mendoza', 87, 6, 2, 'Buenos días Pablo, le escribo para que por favor actualice el inventario de inspecciones realizadas desde febrero hasta el mes de octubre del presente año. Ver la ruta G:\\Sigar\\Inventario de inspecciones. Muchas gracias.', 'Buenos Días ya se encuentra en el SIGAR todas las inpsecciones correspondientes al año 2012 que fueron suministradas por la Dirección de Protección Civil.\r\n', '2012-11-26', '2012-12-04');
INSERT INTO `t_soporte` VALUES (398, 85, 'Pablo', 'Mendoza', 62, 3, 2, 'No se puede imprimir en la impresora de Administraciòn', 'Se revisó cola de impresión en servidor eliminandose trabajos pendientes, y se procedió a cancelar trabajos pendientes en la impreosra, quedando operativa la misma.', '2012-11-28', '2012-11-28');
INSERT INTO `t_soporte` VALUES (399, 85, 'Pablo', 'Mendoza', 22, 8, 2, 'Buenos dias, por medio de la presente les solicito de sus buenos oficios generar en formato PDF planos de cada urbanizacion de este municipio a fin de tenerlos como referencia para los conductores que laboran en esta institucion....', 'Se preparó archivo PPT con imagenes de planos por Urbanización extraidos de Infomapa, generados por catastro nov 2012, se copio en unidad compartida Galerias/Sigar.\r\n', '2012-11-29', '2012-11-29');
INSERT INTO `t_soporte` VALUES (400, 2, 'José', 'Reina', 33, 2, 2, 'Buenas tardes, la presente es para solicitar revisión del CPU de los inspectores I, debido aque la misma en horas de la mañana del día de hoy, según información de los Auxiliares Ambientales presente un olor a quemado y posteriormente se apago la maquina y la misma no enciende. agradecemos las gesti', 'se revisó equipo y se cambió fuente de poder el cual era donde se originó la falla. quedando operativo el equipo de los Impectores I', '2012-12-03', '2012-12-11');
INSERT INTO `t_soporte` VALUES (401, 4, 'Johnny', 'Gelvez', 70, 6, 2, 'LA IMPRESORA HP LASER NO IMPRIME DE ADMINISTRACION, GRACIAS', 'reinicio de las impreciones en cola', '2012-12-06', '2012-12-06');
INSERT INTO `t_soporte` VALUES (402, 4, 'Johnny', 'Gelvez', 5, 2, 2, 'Saludos, Buenos dias por fa necesitamos el apoyo para la colocacion del Toner en la maquina XEROX ya que cuando se hace el acmbio la impresora tiende a desconfigurarse por eso es preferible lo hagan ustedes. Por otro lado Nuevamente la maquina de Moscoso presentando fallas para que pr favor la chequ', 'instalada, la pc de rafael moscoso fue revisada el dia de las actualizaciones y se debe formatear pero haciendo un respaldo previo. ', '2012-12-07', '2012-12-11');
INSERT INTO `t_soporte` VALUES (403, 2, 'José', 'Reina', 25, 5, 2, 'Hola buenas tardes podrian revisar la impresora no quiere imprimer los documento y si le coloque los cartuchos correctamente gracias \r\n', 'se verifica impresora, se limpian los cartuchos, se calibran los mismo, se realiza prueba de impresiones y queda operativa.', '2012-12-10', '2012-12-11');
INSERT INTO `t_soporte` VALUES (404, 2, 'José', 'Reina', 7, 5, 2, 'Solicitud de asesoría en cuanto totalización de de campos de registros existentes en cuadro de Resumen de Estadísticas 2012, perteneciente a esta Dirección.', 'se atiende solicitud y se corrige fallas, quedando operativo', '2012-12-11', '2012-12-21');
INSERT INTO `t_soporte` VALUES (405, 4, 'Johnny', 'Gelvez', 21, 6, 2, 'Hola buenos días!!!!\r\nRequiero un resumen hasta la fecha de este año, del total de las Estadisticas, Referente a Inspecciónes de Riesgos, Desalojos, Activaciones Operativas, Monitoreos, Guardias de Prevención.\r\n\r\nAgradezco su colaboración , Y quedo a la espera de su pronta respuesta.\r\n\r\nGracias', 'muy buenos dias, en fecha del 11 del presente   mes fue enviada la informacion.', '2012-12-11', '2012-12-14');
INSERT INTO `t_soporte` VALUES (406, 3, 'Alejandro', 'Perez', 32, 1, 2, 'Un saludo coordial, quisiera solicitar la instalación del software adove reader con licencia libre en la laptop asignada a mi coordinación. Gracias', 'Se realizo instalación del programa adove.', '2012-12-12', '2012-12-19');
INSERT INTO `t_soporte` VALUES (407, 4, 'Johnny', 'Gelvez', 86, 3, 2, 'HOLA BUEN DIA..NO ARRANCA EL EQUIPO', 'reinicio del sistema y posterior encendido del mismo.', '2012-12-14', '2012-12-14');
INSERT INTO `t_soporte` VALUES (408, 1, 'Lillian', 'Chacon', 86, 3, 2, 'HOLA BUEN DIA..NO ARRANCA EL EQUIPO', 'El caso fue atentivo por Johnny Gelvez.', '2012-12-14', '2012-12-17');
INSERT INTO `t_soporte` VALUES (409, 85, 'Pablo', 'Mendoza', 84, 1, 2, 'buenas tardes el sistema argis esta presentando un error de licencia no permite abrirse por lo cual se me dificulta cargar las inspecciones... gracias por su atencion.', 'Buenas Tardes solventado el caso en las Pc´s de Katerin, Anggie y Roberto. Se eliminó la aparición de mensaje de licencias expiradas', '2012-12-17', '2013-01-07');
INSERT INTO `t_soporte` VALUES (410, 2, 'José', 'Reina', 53, 2, 2, 'Buenos días por favor para verificar el monitor de mi equipo, el cual no enciende. ', 'se revisa monitor, CPU, y se corrige la falla quedando el mismo operativo', '2012-12-21', '2012-12-21');
INSERT INTO `t_soporte` VALUES (411, 2, 'José', 'Reina', 52, 1, 2, 'En el equipo de Maria Curbelo, al querer ingresar al sistema administrativo (Cidesa), y solicitar un reporte, el sistema pide la actualización del ADOBE, por lo que no se puede bajar ningun reporte.\r\n', 'se realiza conexión remota, luego se actualiza adobe read, se le indica que genere nuevamente el reporte y el mismo se genera de forma correcta', '2013-01-07', '2013-01-07');
INSERT INTO `t_soporte` VALUES (412, 4, 'Johnny', 'Gelvez', 24, 6, 2, 'La computadora la sala se daño el cable de poder y se coloco de la computadora que usa victor ochoa. por lo cual se requiere por favor un cable de poder para la computadora de que usa victor ochoa.', 'cable de fuente entragado e instalado', '2013-01-08', '2013-01-09');
INSERT INTO `t_soporte` VALUES (413, 4, 'Johnny', 'Gelvez', 62, 1, 2, 'El outlook està muy lento.', 'Eliminacion de un mensaje en el buson de salida permitio que el sistema trabajara de manera mas rapida. sistema operando sin novedad', '2013-01-09', '2013-01-09');
INSERT INTO `t_soporte` VALUES (414, 2, 'José', 'Reina', 60, 1, 2, 'Buenos días, tal como conversamos necesito difundir por twitter los links directos a cada sección de nuestra nueva web. Con Mozilla carga la página pero no da el link directo, con Explorer obtengo el link directo pero no carga correctamente la página, por esta razón solicito la instalación del Googl', 'Se ajusta la pagina Web a los requerimientos solicitado por ana valera quedando la misma operativa', '2013-01-09', '2013-01-11');
INSERT INTO `t_soporte` VALUES (415, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buenas tardes, la presente es para solicitar de sus buenos oficios, para generar las planillas de inepección de terresnos que corresponden al IV trimestre del 2012, esto según la información remitida por la Dirección de Catastro de la Alcaldía correspondiente al censo de parcelas Oct-Dic 2012. Graci', 'Buenas Tardes se cruzó la información recibida y se emiten 5 planilas de inspección  en fomato PDF correspondientes al ultimo trimestre 2012', '2013-01-09', '2013-01-09');
INSERT INTO `t_soporte` VALUES (416, 3, 'Alejandro', 'Perez', 54, 3, 2, 'Lapto sin red', 'Se instalo y configuro red al equipo, impresora y volumen de red.', '2013-01-09', '2013-01-09');
INSERT INTO `t_soporte` VALUES (417, 85, 'Pablo', 'Mendoza', 21, 8, 2, 'Buenas, la presente tiene como finalidad solicitar el soporte del sistema SIGAR de las inspecciones de riesgos del año 2012. \r\nGracias', 'Buenas Tardes\r\n\r\nSegún lo conversado en la mañana de hoy se da respuesta a Solicitud via soporte de total de inspecciones 2012, el mismo contiene 276 registros.\r\n\r\nAnexo archivo Excel.\r\n', '2013-01-10', '2013-01-10');
INSERT INTO `t_soporte` VALUES (418, 3, 'Alejandro', 'Perez', 53, 3, 2, 'Buenas tardes, necesito abrir reportes en el sistema Cidesa y me dice que se deben actualizar los plugin. ', 'Se actualizo los plugin', '2013-01-10', '2013-01-11');
INSERT INTO `t_soporte` VALUES (419, 2, 'José', 'Reina', 70, 6, 2, 'SE NECESITA CAMBIAR EL TONER DE LA IMRESORA HP LASER DE ADMINISTRACIÓN, GRACIAS', 'Se Cambia Toner y se imprime una pagina de Prueba', '2013-01-15', '2013-01-15');
INSERT INTO `t_soporte` VALUES (420, 3, 'Alejandro', 'Perez', 72, 2, 2, 'MOUSE se encuentra dañado, se requiere uno nuevo  ', 'Se realizo cambio de mouse.', '2013-01-15', '2013-01-15');
INSERT INTO `t_soporte` VALUES (421, 3, 'Alejandro', 'Perez', 72, 1, 2, 'solicitud de revision de sistema por fallas en la aplicacion ', 'Se actualizo el Firefox.', '2013-01-15', '2013-01-15');
INSERT INTO `t_soporte` VALUES (422, 4, 'Johnny', 'Gelvez', 82, 7, 2, 'instalacion de toner', 'instalacion del toner a la impresora samgung, la misma operando sin novedad alguna', '2013-01-18', '2013-01-18');
INSERT INTO `t_soporte` VALUES (423, 4, 'Johnny', 'Gelvez', 25, 5, 2, 'Buenas tardes requiero una asesoría para efectuar unos gráficos gracias \r\n ', 'elaboracion de cuadro estadisticos sobre cantidad de lluvias caidas mensual. ', '2013-01-18', '2013-01-18');
INSERT INTO `t_soporte` VALUES (424, 4, 'Johnny', 'Gelvez', 56, 2, 2, 'La impresora configurada no se encuentra disponible según el cuadro de diálogo que aparece al momento de imprimir.', 'reinicio del sistema y reconfiguracion de la impresora.', '2013-01-21', '2013-01-21');
INSERT INTO `t_soporte` VALUES (425, 4, 'Johnny', 'Gelvez', 56, 2, 2, 'Persiste la falla de la impresora con las mismas características reportadas en soporte anterior.', 'reinicio del ruther ', '2013-01-21', '2013-01-21');
INSERT INTO `t_soporte` VALUES (426, 2, 'José', 'Reina', 56, 2, 2, 'Nuevamente la impresora presenta la misma falla.', 'caso resuelto por alejandro', '2013-01-21', '2013-01-28');
INSERT INTO `t_soporte` VALUES (427, 2, 'José', 'Reina', 70, 1, 2, 'BUENOS DIAS, EL SISTEMA NO ME PERMITE CONSULTAR LAS ORDENES DE PAGO DEL 2012, AL IGUAL QUE LAS ORD/COMP, SALE UN ERROR, GRACIAS. ENTRO CON MI USUARIO Y CLAVE NORMAL ', 'se configura archivo de cidesa para que José Manuel puega imprimir reporte', '2013-01-23', '2013-01-29');
INSERT INTO `t_soporte` VALUES (428, 4, 'Johnny', 'Gelvez', 5, 1, 2, 'Reporte del capta huella', 'Se reconecto la base de datos del capta huella y se elabora un reporte en formato de excel con los funcinarios que hacen vida en la direccion de educacion.  dicho reporte se encuentra en el escritorio del director de Educacion.', '2013-01-24', '2013-01-24');
INSERT INTO `t_soporte` VALUES (429, 85, 'Pablo', 'Mendoza', 21, 8, 2, 'Buenas tardes, escribo para solicitar el soporte del sistema SIGAR de las inspecciones de riesgos del año 2013, semanalmente. Ademas ver si es posible que yo pueda verificar de alguna manera el registro de todas las inspecciónes que realizan los analistas al sistema en el   equipo que me asignaron:G', 'Buenos Días, se grabó en Pc de solicitante la capa de Inspecciones 2012.', '2013-01-25', '2013-01-30');
INSERT INTO `t_soporte` VALUES (430, 85, 'Pablo', 'Mendoza', 20, 8, 2, 'Buenas Tardes la presente es para solicitar un Plano con la ruta maraton CAF que cruz por el municipio.', 'Buenas Tardes\r\n\r\nSe remite plano en medidas 60x60 cm , con la ruta que pasa por el Municipio, así como Asistenciales y Emergencias.\r\n\r\n', '2013-01-25', '2013-01-25');
INSERT INTO `t_soporte` VALUES (431, 4, 'Johnny', 'Gelvez', 6, 5, 2, 'Entrega de estadisticas', 'se evlua y corrigue de manera telefonica los parametros de las estadisticas correspondiente a la semana 4.', '2013-01-28', '2013-01-28');
INSERT INTO `t_soporte` VALUES (432, 2, 'José', 'Reina', 70, 1, 2, 'ERROR EN EL SISTEMA, A 3 USUARIOS NO PERMITE VISUALIZAR LAS ORDENES DE COMPRA PARA EL AÑO 2012, ESTOP ES EN SIGMA6, GRACIAS', 'Se actualiza el Sistema y queda operativo', '2013-01-28', '2013-01-30');
INSERT INTO `t_soporte` VALUES (433, 2, 'José', 'Reina', 87, 5, 2, 'Buenas tardes José Reina, te escribo para que por favor me ayudes a pasar un archivo de pdf a word. Muchas gracias.', 'se convierte archivo pdf a word quedando operativo', '2013-01-28', '2013-01-28');
INSERT INTO `t_soporte` VALUES (434, 3, 'Alejandro', 'Perez', 52, 7, 2, 'Buenos días, necesitamos que por favor se instale skype en la laptop asignada a la Dirección de Gestión Ambiental, así como preparar todo el equipo necesario para proyectar el día jueves 31 en la sala de reuniones de la Quinta en el marco del Evento Plataforma de Practicantes Comunitarias. También n', 'Se instalo vídeo bean, sonido, lapto y micrófono en sala de reuniones de Bella Vista.', '2013-01-29', '2013-02-05');
INSERT INTO `t_soporte` VALUES (435, 3, 'Alejandro', 'Perez', 7, 2, 2, 'Revisión urgente por favor no quiere iniciar el equipo.', 'Se formateo equipo y se instalo sistema operativo y servicios de red completos.', '2013-01-30', '2013-02-05');
INSERT INTO `t_soporte` VALUES (436, 4, 'Johnny', 'Gelvez', 82, 6, 2, 'NECESITO REVISION DE LA COMPUTADORA CREO QUE TIENE VIRUS', 'se reinstalo el avira anti Virus en español, se procede a ejecutar el analisis completo de ficheros en el disco, lo cual trae como resultado 2 virus y su posterior eliminacion. el mismo esta sin virus y operativo.', '2013-01-30', '2013-01-31');
INSERT INTO `t_soporte` VALUES (437, 2, 'José', 'Reina', 70, 1, 2, 'ERROR AL INTENTAR INGRESAR AL SISTEMA NACIONAL DE CONTRATISTAS, DICE LO SGTE: Este sitio web en compras.snc.gob.ve ha sido reportado como una web atacante y ha sido bloqueado basándose en sus preferencias de seguridad"', 'La falla la presentaba la pagina web en su momento.', '2013-02-01', '2013-02-04');
INSERT INTO `t_soporte` VALUES (438, 85, 'Pablo', 'Mendoza', 87, 8, 2, 'Buenos días Pablo, le escribo para pedirle el favor de revisar las licencias de Arcgis en todos los equipos, ya que indican que han espirado. Muchas gracias.', 'En la mañana de hoy se instaló ArcGis 10 en pc de los funiconarios Zulma Key, Peña Anggie, Perdomo  Roberto y Hernandez Katerin.', '2013-02-04', '2013-02-04');
INSERT INTO `t_soporte` VALUES (439, 4, 'Johnny', 'Gelvez', 58, 3, 2, 'Motivado a una reciente reasignación de bienes muebles, solicito un respaldo de la información recibida y enviada a través de mi cuenta de Outlook institucional Jfermin@ipcachacao.org.ve, información esta requerida para el ejercicio de mis funciones.', 'configurado correo en nueva pc', '2013-02-04', '2013-02-05');
INSERT INTO `t_soporte` VALUES (440, 85, 'Pablo', 'Mendoza', 21, 6, 2, 'Hola , buenas tardes!!!! Es para solicitar de sus buenos oficios la carpeta con la reseña fotografica del simulacro de Desalojo efectuado el dia de hoy en la empresa loreal de Venezuela, la misma fue enviada por rafael Moscoso. gracias', 'Buenos Días en la Unidad Galeria se encuentra la carpeta que indicas "simulacro Loreal", gracias', '2013-02-04', '2013-02-05');
INSERT INTO `t_soporte` VALUES (441, 2, 'José', 'Reina', 89, 1, 2, 'Buenas tardes, sigo sin poder acceder al sigar a algunas paginas de internet por no tener la ultima versión del Adobe Flash Player Error al tratar de entrar al SIGAR: "To view this page ensure that Adobe Flash Player version 10.2.0 or greater is installed". Gracias', 'Buenas tardes, se actualiza el adobe flasg player. y se Recomienda brir el Sigar con el navegador Mozilla Firefox o con el google crhome. ', '2013-02-04', '2013-02-05');
INSERT INTO `t_soporte` VALUES (442, 3, 'Alejandro', 'Perez', 65, 6, 2, 'Agradezco sea revisada mi computadora, ya que en el momento que requiero guardar el documento me arroja un mensaje: DISCO LLENO GUARDE EN OTRO LUGAR', 'Se movieron archivos a su disco local y se libero espacio. ', '2013-02-05', '2013-02-05');
INSERT INTO `t_soporte` VALUES (443, 4, 'Johnny', 'Gelvez', 91, 6, 3, 'Buenos dias la presente es para solicitar me sea nuevamente registrada mi huella dactilar en el capta huellas ya que no la reconoce. Muchas Gracias.', '', '2013-02-05', '0000-00-00');
INSERT INTO `t_soporte` VALUES (444, 4, 'Johnny', 'Gelvez', 75, 2, 2, 'El monitor no me prende por favor revisarlo', 'cambio de cable fuente poder, el que tenia se fractura y no estaba operativo..', '2013-02-05', '2013-02-05');
INSERT INTO `t_soporte` VALUES (445, 85, 'Pablo', 'Mendoza', 24, 1, 2, 'saludos no puedo abrir la herramienta argis , me indica el el arcinfo expiro su licencia. Ese es un mapa del municipio', 'Buenos Días se procedió a instalar la Versión 10 de ArcGis quedando funcionando la misma. Gracias estamos a la orden', '2013-02-06', '2013-02-07');
INSERT INTO `t_soporte` VALUES (446, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buenos Días por favor se requiere revisión de licencia ArcGis ya que la misma indica que expiró', 'Buenos Días se procedió a instalar la licencia arcgis 10 en las PC de los funcionarios, María Sanchez, Daniel Lizcano y Radharani Medina.\r\nGRacias', '2013-02-07', '2013-02-07');
INSERT INTO `t_soporte` VALUES (447, 2, 'José', 'Reina', 88, 1, 2, 'Problema al generar reportes con el Cidesa', 'se Actualiza navegador de Mozilla y se corrige la Falla', '2013-02-07', '2013-02-08');
INSERT INTO `t_soporte` VALUES (448, 2, 'José', 'Reina', 7, 1, 3, 'Solicitud de modificación de Resúmen Estadístico 2013.', '', '2013-02-08', '0000-00-00');
INSERT INTO `t_soporte` VALUES (449, 4, 'Johnny', 'Gelvez', 20, 6, 2, 'saludos, mucho sabria agradecer sus buenos oficios en pro de poder tener habilitado los puertos USB de la computadora que uso en virtud de poder bajar las fotografias que suelo tomar con el telefono BB en asuntos de la coordinacion de operaciones, de ante mano, gracias.', 'se procede a habilitar el puerto mediante el rgedit lokal_machine y configurando los parametros a hexadecimal y dandole el valor 3 se habilita y queda funcionando sin ningun inconveniente.', '2013-02-15', '2013-02-15');
INSERT INTO `t_soporte` VALUES (450, 2, 'José', 'Reina', 53, 2, 2, 'Buenas tardes\r\nEspero se encuentren bien.\r\nNecesito que porfa vengan a revisar la máquina de Julissa, que no prende.\r\nSaludos', 'se verifica conexión del cable de poder, quedadndo el equipo operativo', '2013-02-15', '2013-02-18');
INSERT INTO `t_soporte` VALUES (451, 4, 'Johnny', 'Gelvez', 92, 1, 2, 'Impresora no imprime', 'se hace la evaluacion de la impresora y se nota una falta de coneccion, se procede a desintalar la misma para posterior su re instalacion,bajo la cuenta de administrador cargar los driver y se manda a imprimir una pag de prubeba y un doc en la cuenta de presidenta. Lamisma funcionando para la hora.', '2013-02-18', '2013-02-18');
INSERT INTO `t_soporte` VALUES (452, 3, 'Alejandro', 'Perez', 5, 7, 2, 'Saludos Buenos dias, la impresora xerox presenta problemas al momento de la impresion, esta desconfigurada y necesita cambio de toner, le agradeceria su atencion.Gracias ', 'Se configuro el tamaño de papel en la impresora y también en los equipos de la Dirección.', '2013-02-19', '2013-02-20');
INSERT INTO `t_soporte` VALUES (453, 3, 'Alejandro', 'Perez', 60, 7, 2, 'Solicitud de winrar', 'Se instalo winrar', '2013-02-19', '2013-02-19');
INSERT INTO `t_soporte` VALUES (454, 4, 'Johnny', 'Gelvez', 33, 2, 2, 'Hola buenas tardes\r\n1.- No puedo imprimir\r\n2.- No puedo escanear\r\n3.- No tengo acceso al soporte tecnico\r\nGracias,  Norvelis', 'debido a un problema con el cable de red los funcionarios de la direccion de ambiente lograron solventar la situacion reconectando el cable, y ya para la hora esta operativo.', '2013-02-19', '2013-02-21');
INSERT INTO `t_soporte` VALUES (455, 2, 'José', 'Reina', 81, 1, 2, 'el sistema cide, s.a. para el año 2013 aparece en otro formato de presentación, necesito que por favor me lo coloquen como estaba anteriormente.gracias', 'se Actuliza mozilla firefox, y el sistema queda operativo', '2013-02-21', '2013-02-21');
INSERT INTO `t_soporte` VALUES (456, 4, 'Johnny', 'Gelvez', 54, 5, 2, 'Recuperación de clave al sistema', 'Se valido desde la base de datos My SQL y el usuario estaba bloqueado y se procedio a desbloquear el mismo para poder entrar al sistema de control de expediente.', '2013-02-21', '2013-02-21');
INSERT INTO `t_soporte` VALUES (457, 2, 'José', 'Reina', 82, 5, 2, 'atasco de papel en la impresora', 'Se Verifica impresora, se retira el papel atascado. Se realizan pruebas y la misma queda operativa..', '2013-02-21', '2013-02-22');
INSERT INTO `t_soporte` VALUES (458, 2, 'José', 'Reina', 81, 1, 2, 'presento nuevamente el formato de ayer', 'Se vuelve actualizar, el mozilla y se destilda la opción de actualizaciones automaticas', '2013-02-22', '2013-02-22');
INSERT INTO `t_soporte` VALUES (459, 0, '', '', 60, 3, 1, 'Buenos días, el correo ipcacomunicaciones tiene problemas para enviar la información. Tarda mucho tiempo y al final da error. Mil gracias.', '', '2013-02-25', '0000-00-00');
INSERT INTO `t_soporte` VALUES (460, 0, '', '', 60, 7, 1, 'Buenos días, les escribo para solicitarles la instalción del software "Solicitud de Soporte Técnico" en la computadora de Maru. Mil gracias ', '', '2013-02-25', '0000-00-00');
INSERT INTO `t_soporte` VALUES (461, 0, '', '', 91, 2, 1, 'saludos', '', '2013-02-26', '0000-00-00');
INSERT INTO `t_soporte` VALUES (462, 0, '', '', 91, 5, 1, 'áá fngdfpejd fiprjg rejgirjgfr', '', '2013-02-26', '0000-00-00');
INSERT INTO `t_soporte` VALUES (463, 0, '', '', 91, 5, 1, 'erererertytrt', '', '2013-02-27', '0000-00-00');
INSERT INTO `t_soporte` VALUES (464, 0, '', '', 91, 4, 1, '', '', '2013-02-27', '0000-00-00');
INSERT INTO `t_soporte` VALUES (465, 0, '', '', 91, 3, 1, '', '', '2013-02-27', '0000-00-00');
INSERT INTO `t_soporte` VALUES (466, 0, '', '', 91, 1, 1, 'eretrtretrtre', '', '2013-02-27', '0000-00-00');
INSERT INTO `t_soporte` VALUES (467, 0, '', '', 91, 0, 1, 'necesito Asesoría', '', '2013-02-28', '0000-00-00');
INSERT INTO `t_soporte` VALUES (468, 0, '', '', 91, 0, 1, '22', '', '2013-03-01', '0000-00-00');
INSERT INTO `t_soporte` VALUES (469, 0, '', '', 91, 5, 1, 'qwertyui', '', '2013-03-01', '0000-00-00');
INSERT INTO `t_soporte` VALUES (470, 0, '', '', 91, 5, 1, '111', '', '2013-03-01', '0000-00-00');
INSERT INTO `t_soporte` VALUES (471, 0, '', '', 91, 5, 1, 'á', '', '2013-03-01', '0000-00-00');
INSERT INTO `t_soporte` VALUES (472, 0, '', '', 91, 5, 1, 'ytre', '', '2013-03-01', '0000-00-00');
INSERT INTO `t_soporte` VALUES (473, 0, '', '', 91, 5, 1, '76543', '', '2013-03-01', '0000-00-00');
INSERT INTO `t_soporte` VALUES (474, 0, '', '', 91, 5, 1, 'ytrewq', '', '2013-03-01', '0000-00-00');
INSERT INTO `t_soporte` VALUES (475, 0, '', '', 91, 5, 1, '123á', '', '2013-03-01', '0000-00-00');
INSERT INTO `t_soporte` VALUES (476, 0, '', '', 91, 5, 1, '´´oiúy´tré´w', '', '2013-03-01', '0000-00-00');
INSERT INTO `t_soporte` VALUES (477, 2, 'José', 'Reina', 91, 2, 2, '´poiuytr', 'jhgfdsd', '2013-03-01', '2013-03-01');
INSERT INTO `t_soporte` VALUES (478, 2, 'José', 'Reina', 91, 5, 2, 'asesoría', 'se asesoró', '2013-03-04', '2013-03-04');
INSERT INTO `t_soporte` VALUES (479, 2, 'José', 'Reina', 91, 5, 1, 'Asesoria sobre documento en excel', 'áé', '2013-03-04', '0000-00-00');
INSERT INTO `t_soporte` VALUES (480, 2, 'José', 'Reina', 91, 5, 2, 'Asesoria sobre documento en excel', 'listin', '2013-03-04', '2013-03-04');
INSERT INTO `t_soporte` VALUES (481, 0, '', '', 91, 0, 1, '', '', '2013-03-05', '0000-00-00');
INSERT INTO `t_soporte` VALUES (482, 0, '', '', 91, 0, 1, '', '', '2013-03-05', '0000-00-00');
INSERT INTO `t_soporte` VALUES (483, 0, '', '', 91, 0, 1, '', '', '2013-03-05', '0000-00-00');
INSERT INTO `t_soporte` VALUES (484, 0, '', '', 91, 5, 1, '', '', '2013-03-05', '0000-00-00');
INSERT INTO `t_soporte` VALUES (485, 0, '', '', 91, 5, 1, '', '', '2013-03-05', '0000-00-00');
INSERT INTO `t_soporte` VALUES (486, 0, '', '', 54, 2, 1, 'problema con la pantalla', '', '2013-03-05', '0000-00-00');
INSERT INTO `t_soporte` VALUES (487, 0, '', '', 91, 5, 1, 'asesoría', '', '2013-03-11', '0000-00-00');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_status_empleado`
-- 

CREATE TABLE `t_status_empleado` (
  `cod_status_empleado` int(11) NOT NULL,
  `nombre_status_empleado` varchar(20) NOT NULL,
  PRIMARY KEY  (`cod_status_empleado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `t_status_empleado`
-- 

INSERT INTO `t_status_empleado` VALUES (1, 'Activo');
INSERT INTO `t_status_empleado` VALUES (2, 'Inactivo');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_status_soporte`
-- 

CREATE TABLE `t_status_soporte` (
  `cod_status_soporte` int(11) NOT NULL auto_increment,
  `nombre_status_soporte` varchar(10) NOT NULL,
  PRIMARY KEY  (`cod_status_soporte`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `t_status_soporte`
-- 

INSERT INTO `t_status_soporte` VALUES (1, 'Abierto');
INSERT INTO `t_status_soporte` VALUES (2, 'Cerrado');
INSERT INTO `t_status_soporte` VALUES (3, 'En Proceso');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_tipo_empleado`
-- 

CREATE TABLE `t_tipo_empleado` (
  `cod_tipo_empleado` int(11) NOT NULL auto_increment,
  `tipo_empleado` varchar(15) NOT NULL,
  PRIMARY KEY  (`cod_tipo_empleado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `t_tipo_empleado`
-- 

INSERT INTO `t_tipo_empleado` VALUES (1, 'Informática');
INSERT INTO `t_tipo_empleado` VALUES (2, 'Servicio');
INSERT INTO `t_tipo_empleado` VALUES (3, 'General');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_tipo_soporte`
-- 

CREATE TABLE `t_tipo_soporte` (
  `cod_tipo_soporte` int(11) NOT NULL auto_increment,
  `nombre_tipo_soporte` varchar(20) NOT NULL,
  PRIMARY KEY  (`cod_tipo_soporte`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `t_tipo_soporte`
-- 

INSERT INTO `t_tipo_soporte` VALUES (1, 'Software');
INSERT INTO `t_tipo_soporte` VALUES (2, 'Hardware');
INSERT INTO `t_tipo_soporte` VALUES (3, 'Red');
INSERT INTO `t_tipo_soporte` VALUES (5, 'Asesoría');
INSERT INTO `t_tipo_soporte` VALUES (6, 'Otros');
INSERT INTO `t_tipo_soporte` VALUES (7, 'Instalación');
INSERT INTO `t_tipo_soporte` VALUES (8, 'SIG');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_tipo_vehiculo`
-- 

CREATE TABLE `t_tipo_vehiculo` (
  `cod_tipo_vehiculo` int(11) NOT NULL,
  `tipo_vehiculo` varchar(15) NOT NULL,
  PRIMARY KEY  (`cod_tipo_vehiculo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `t_tipo_vehiculo`
-- 

INSERT INTO `t_tipo_vehiculo` VALUES (1, 'Moto');
INSERT INTO `t_tipo_vehiculo` VALUES (2, 'Carro');
INSERT INTO `t_tipo_vehiculo` VALUES (3, 'Camioneta');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_vehiculo`
-- 

CREATE TABLE `t_vehiculo` (
  `cod_vehiculo` int(11) NOT NULL,
  `cod_empleado` int(11) NOT NULL,
  `nombre_vehiculo` varchar(15) NOT NULL,
  `cod_tipo_vehiculo` int(11) NOT NULL,
  `placa` varchar(8) NOT NULL,
  `nro_bien` int(11) NOT NULL,
  `año` int(11) NOT NULL,
  PRIMARY KEY  (`cod_vehiculo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `t_vehiculo`
-- 

INSERT INTO `t_vehiculo` VALUES (1, 0, 'DR200', 1, 'AB9K72A', 2, 0);
