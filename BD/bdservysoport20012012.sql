-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 20-01-2014 a las 18:38:34
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
  `cod_cargo` tinyint(2) NOT NULL auto_increment,
  `cargo` varchar(15) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_cargo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=20 ;

-- 
-- Volcar la base de datos para la tabla `t_cargo`
-- 

INSERT INTO `t_cargo` VALUES (1, 'Presidente');
INSERT INTO `t_cargo` VALUES (2, 'Coordinador');
INSERT INTO `t_cargo` VALUES (3, 'Analista');
INSERT INTO `t_cargo` VALUES (4, 'Inspector');
INSERT INTO `t_cargo` VALUES (5, 'Abogado');
INSERT INTO `t_cargo` VALUES (6, 'Asistente');
INSERT INTO `t_cargo` VALUES (7, 'Apoyo');
INSERT INTO `t_cargo` VALUES (8, 'Director');
INSERT INTO `t_cargo` VALUES (9, 'Consultor');
INSERT INTO `t_cargo` VALUES (10, 'Diseñador');
INSERT INTO `t_cargo` VALUES (12, 'Conductor');
INSERT INTO `t_cargo` VALUES (13, 'Recepción');
INSERT INTO `t_cargo` VALUES (14, 'Auditor Interno');
INSERT INTO `t_cargo` VALUES (15, 'Jefe');
INSERT INTO `t_cargo` VALUES (16, 'Secretaria');
INSERT INTO `t_cargo` VALUES (17, 'Administrador');
INSERT INTO `t_cargo` VALUES (18, 'Contador');
INSERT INTO `t_cargo` VALUES (19, 'Auxiliar');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_direccion`
-- 

CREATE TABLE `t_direccion` (
  `cod_direccion` int(2) NOT NULL auto_increment,
  `direccion` varchar(50) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_direccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `t_direccion`
-- 

INSERT INTO `t_direccion` VALUES (1, 'Presidencia');
INSERT INTO `t_direccion` VALUES (2, 'Dirección Ejecutiva de Protección Civil');
INSERT INTO `t_direccion` VALUES (3, 'Dirección Ejecutiva de Ambiente');
INSERT INTO `t_direccion` VALUES (4, 'Oficina Administrativa de Control y Saneamiento Am');
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
  `codigo` int(4) NOT NULL auto_increment,
  `pnombre` varchar(15) collate utf8_spanish_ci NOT NULL,
  `snombre` varchar(15) collate utf8_spanish_ci default NULL,
  `papellido` varchar(15) collate utf8_spanish_ci NOT NULL,
  `sapellido` varchar(15) collate utf8_spanish_ci default NULL,
  `cedula` int(9) NOT NULL,
  `cod_sexo` tinyint(2) NOT NULL,
  `correo` varchar(40) collate utf8_spanish_ci NOT NULL,
  `ext` int(12) NOT NULL,
  `cod_direccion` int(2) NOT NULL,
  `cod_cargo` tinyint(2) NOT NULL,
  `cod_tipo_empleado` tinyint(2) NOT NULL,
  `cod_status_empleado` tinyint(2) NOT NULL,
  `usuario` varchar(15) collate utf8_spanish_ci default NULL,
  `contrasena` varchar(20) collate utf8_spanish_ci default NULL,
  PRIMARY KEY  (`codigo`),
  UNIQUE KEY `cedula` (`cedula`),
  KEY `fk_sexo` (`cod_sexo`),
  KEY `fk_cargo` (`cod_cargo`),
  KEY `fk_tipo_empleado` (`cod_tipo_empleado`),
  KEY `fk_direccion` (`cod_direccion`),
  KEY `cod_status_emp` (`cod_status_empleado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=103 ;

-- 
-- Volcar la base de datos para la tabla `t_empleado`
-- 

INSERT INTO `t_empleado` VALUES (1, 'Lillian', NULL, 'Chacon', NULL, 11735689, 1, 'ipcainformacion@ipcachacao.org.ve', 111, 9, 8, 1, 1, 'lchacon', '123456');
INSERT INTO `t_empleado` VALUES (2, 'José', 'Alejandro', 'Reina', 'Morales', 17562051, 1, 'jreina@ipcachacao.org.ve', 110, 9, 3, 1, 1, 'josereina22', '220886');
INSERT INTO `t_empleado` VALUES (3, 'Alejandro', NULL, 'Perez', NULL, 9964666, 1, 'ipcainformatica@ipcachacao.org.ve', 110, 9, 3, 1, 1, 'alejandro', '9964666');
INSERT INTO `t_empleado` VALUES (4, 'Johnny', 'David', 'Gelvez', 'Noriega', 16116019, 1, 'ipcagraficas@ipcachacao.org.ve', 110, 9, 3, 1, 1, 'johnnygelvez', '123456');
INSERT INTO `t_empleado` VALUES (5, 'Braulio', NULL, 'Vasquez', NULL, 6492096, 1, 'ipcaeducacion@ipcachacao.org.ve', 2647807, 10, 8, 3, 1, 'bvasquez', '123456');
INSERT INTO `t_empleado` VALUES (6, 'Rafael', NULL, 'Moscoso', NULL, 10866743, 1, 'rmoscoso@ipcachacao.org.ve', 2647807, 10, 9, 3, 1, 'rmoscoso', '123456');
INSERT INTO `t_empleado` VALUES (7, 'Audrey', NULL, 'Hernandez', NULL, 6866581, 2, 'ahernandez@ipcachacao.org.ve', 2647807, 10, 9, 3, 1, 'ahernandez', '123456');
INSERT INTO `t_empleado` VALUES (8, 'Maria', 'Eugenia', 'Rondon', NULL, 17490953, 2, 'mrondon@ipcachacao.org.ve', 2647807, 6, 10, 3, 1, 'mrondon', '123456');
INSERT INTO `t_empleado` VALUES (9, 'Dagmar', NULL, 'Marquez', NULL, 6313654, 2, 'dmarque@ipcachacao.org.ve', 2647807, 10, 7, 3, 1, 'dmarquez', '123456');
INSERT INTO `t_empleado` VALUES (10, 'Gonzalo', NULL, 'Quintero', NULL, 10472642, 1, 'gquintero@ipcachacao.org.ve', 2647807, 10, 7, 3, 1, 'gquintero', '123456');
INSERT INTO `t_empleado` VALUES (11, 'Ana', 'Liz', 'FLores', NULL, 8670222, 2, 'ipcapresidencia@ipcachacao.org.ve', 109, 1, 1, 3, 1, 'analiz', '123456');
INSERT INTO `t_empleado` VALUES (12, 'Freddy', NULL, 'Mujica', NULL, 4814056, 1, 'fmujica@ipcachacao.org.ve', 131, 1, 9, 3, 1, 'fmujica', '123456');
INSERT INTO `t_empleado` VALUES (13, 'Vittorio', NULL, 'D''Ascenzo', NULL, 13126509, 1, 'vdascenzo@ipcachacao.org.ve', 125, 1, 2, 3, 1, 'vdascenzo', '123456');
INSERT INTO `t_empleado` VALUES (14, 'Jerry', NULL, 'Peralta', NULL, 14098796, 1, 'jperalta@ipcachacao.org.ve', 125, 1, 6, 3, 1, 'jperalta', '123456');
INSERT INTO `t_empleado` VALUES (15, 'Luis', NULL, 'Gonzalez', NULL, 14935943, 1, '', 125, 1, 12, 3, 1, NULL, NULL);
INSERT INTO `t_empleado` VALUES (16, 'Yuraima ', NULL, 'Infante', NULL, 1852535, 2, '', 125, 1, 7, 3, 1, NULL, NULL);
INSERT INTO `t_empleado` VALUES (17, 'Veronica ', NULL, 'Perez', NULL, 16462336, 2, 'vperez@ipcachacao.org.ve', 101, 1, 13, 3, 1, 'vperez', '123456');
INSERT INTO `t_empleado` VALUES (18, 'Victor', NULL, 'Hernandez', NULL, 5976821, 1, 'vhernandez@ipcachacao.org.ve', 128, 11, 14, 3, 1, 'vhernandez', '123456');
INSERT INTO `t_empleado` VALUES (19, 'Johan', '', 'Prieto', '', 13158624, 1, 'jprieto@ipcachacao.org.ve', 115, 2, 8, 3, 1, 'jprieto', '123456');
INSERT INTO `t_empleado` VALUES (20, 'Oswaldo', '', 'Martinez', '', 10203267, 1, 'ipcaoperaciones@ipcachacao.org.ve', 114, 2, 2, 3, 1, 'omartinez', '123456');
INSERT INTO `t_empleado` VALUES (21, 'Zulma', NULL, 'Key', NULL, 6683148, 2, 'zkey@ipcachacao.org.ve', 115, 2, 2, 3, 1, 'zkey', '123456');
INSERT INTO `t_empleado` VALUES (22, 'Roberto', '', 'Perdomo', '', 12387511, 1, 'rperdomo@ipcachacao.org.ve', 115, 2, 3, 3, 1, 'rperdomo', '123456');
INSERT INTO `t_empleado` VALUES (23, 'Wilmer', '', 'Valdiviezo', '', 13884575, 1, 'wvaldiviezo@ipcachacao.org.ve', 115, 2, 3, 2, 1, 'wvaldiviezo', '123456');
INSERT INTO `t_empleado` VALUES (24, 'Roberto', '', 'Ali', '', 10869794, 1, 'roperadores@ipcachacao.org.ve', 115, 2, 3, 3, 1, 'rali', '641595');
INSERT INTO `t_empleado` VALUES (25, 'Ebert', 'Jhon ', 'Sanchez', 'Ramirez', 11049596, 1, 'roperadores@ipcachacao.org.ve', 114, 2, 3, 3, 1, 'esanchez', '10051973');
INSERT INTO `t_empleado` VALUES (26, 'Yoszuth', '', 'Pacheco', '', 19513062, 1, 'roperadores@ipcachacao.org.ve', 115, 2, 3, 3, 1, 'ypacheco', '123456');
INSERT INTO `t_empleado` VALUES (27, 'Victor', '', 'Ochoa', '', 6815661, 1, 'vchoa@ipcachacao.org.ve', 115, 2, 3, 3, 1, 'vochoa', '123456');
INSERT INTO `t_empleado` VALUES (28, 'Xenia', '', 'Gomez', '', 17115885, 2, 'xgomez@ipcachacao.org.ve', 114, 2, 16, 3, 1, 'xgomez', '123456');
INSERT INTO `t_empleado` VALUES (29, 'Fidel', '', 'Reveron', '', 19395977, 1, 'roperadores@ipcachacao.org.ve', 114, 2, 7, 3, 1, 'freveron', '123456');
INSERT INTO `t_empleado` VALUES (30, 'Jimmy', '', 'Alvarado', '', 19452098, 1, '', 114, 2, 7, 3, 1, NULL, NULL);
INSERT INTO `t_empleado` VALUES (31, 'Julio', '', 'Cubas', '', 14156249, 1, 'ipcaambiente@ipcachacao.org.ve', 2633190, 3, 8, 3, 1, 'jcubas', '123456');
INSERT INTO `t_empleado` VALUES (32, 'Jesus', '', 'Ferrer', '', 12687047, 1, 'jferrer@ipcachacao.org.ve', 2633190, 3, 2, 3, 1, 'jferrer', '123456');
INSERT INTO `t_empleado` VALUES (33, 'Maria', '', 'Sanchez', '', 12483031, 2, 'ipcadega@ipcachacao.org.ve', 2633190, 3, 2, 3, 1, 'msanchez', '123456');
INSERT INTO `t_empleado` VALUES (34, 'Rosiret', '', 'Escalona', '', 15482564, 2, 'rescalona@ipcachacao.org.ve', 2633190, 3, 2, 3, 1, 'rescalona', '123456');
INSERT INTO `t_empleado` VALUES (35, 'Luis', '', 'Ladera', '', 3889038, 1, 'lladera@ipcachacao.org.ve', 129, 8, 17, 3, 1, 'lladera', '123456');
INSERT INTO `t_empleado` VALUES (37, 'Yanibel', '', 'Zapata', '', 12952771, 2, 'ipcacomunidad@ipcachacao.org.ve', 2633190, 3, 3, 3, 1, 'yzapata', '123456');
INSERT INTO `t_empleado` VALUES (38, 'Reinaldo', '', 'Borges', '', 11226103, 1, '', 2633190, 3, 6, 3, 1, NULL, '');
INSERT INTO `t_empleado` VALUES (39, 'Jhonny', NULL, 'Covarrubia', NULL, 16113825, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 6, 3, 1, 'jcovarrubia', '123456');
INSERT INTO `t_empleado` VALUES (40, 'Harol', NULL, 'Castro', NULL, 11673741, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 6, 3, 1, 'hcastro', '123456');
INSERT INTO `t_empleado` VALUES (41, 'Wilson', '', 'Perozo', '', 10115255, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 6, 3, 1, 'wperozo', '241101');
INSERT INTO `t_empleado` VALUES (42, 'Rafael', '', 'Morales', '', 14152389, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 4, 3, 1, 'rmorales', '123456');
INSERT INTO `t_empleado` VALUES (43, 'Donato', '', 'Sasso', '', 1470192, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 4, 3, 1, 'dsasso', '123456');
INSERT INTO `t_empleado` VALUES (44, 'Jesus', '', 'Quero', '', 15362740, 1, '', 2633190, 3, 4, 3, 1, '', '');
INSERT INTO `t_empleado` VALUES (45, 'Diogenes', '', 'Alvares', '', 14967029, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 4, 3, 1, 'dalvares', '123456');
INSERT INTO `t_empleado` VALUES (46, 'Douglas', '', 'Piñero', '', 6898252, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 4, 3, 1, 'dpinero', '123456');
INSERT INTO `t_empleado` VALUES (47, 'Cesar', 'Oswaldo', 'Clemente', 'Sol', 11925850, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 4, 3, 1, 'cclemente', 'cocs1276');
INSERT INTO `t_empleado` VALUES (49, 'Kenny', '', 'Gomez', '', 14015045, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 4, 3, 1, 'kgomez', '123456');
INSERT INTO `t_empleado` VALUES (50, 'Jhonathan', '', 'Alvarado', '', 12385392, 1, 'iambientales@ipcachacao.org.ve', 2633190, 3, 4, 3, 1, 'jalvarado', '123456');
INSERT INTO `t_empleado` VALUES (51, 'Norvelis', '', 'Castro', '', 6059084, 2, 'ncastro@ipcachacao.org.ve', 2633190, 3, 4, 3, 1, 'ncastro', '123456');
INSERT INTO `t_empleado` VALUES (52, 'Julissa', '', 'Lugo', '', 15385970, 2, 'jlugo@ipcachacao.org.ve', 2633190, 4, 8, 3, 1, 'jlugo', '123456');
INSERT INTO `t_empleado` VALUES (53, 'Nina', '', 'Rojas', '', 14535586, 2, 'nrojas@ipcachacao.org.ve', 2633190, 4, 7, 3, 1, 'nrojas', '123456');
INSERT INTO `t_empleado` VALUES (54, 'Eduardo', '', 'Martin', '', 13114362, 1, 'ipcacj@ipcachacao.org.ve', 2633190, 5, 9, 3, 1, 'emartin', '123456');
INSERT INTO `t_empleado` VALUES (55, 'Reynaldo', '', 'Martinez', '', 16247100, 1, 'rmartinez@ipcachacao.org.ve', 116, 5, 5, 3, 1, 'rmartinez', '123456');
INSERT INTO `t_empleado` VALUES (56, 'Daniel', '', 'Perez', '', 17440149, 1, 'dperez@ipcachacao.org.ve', 116, 5, 5, 3, 1, 'dperez', '123456');
INSERT INTO `t_empleado` VALUES (57, 'Humberto', '', 'Rodriguez', '', 14991944, 1, 'hrodriguez@ipcachacao.org.ve', 116, 5, 5, 3, 1, 'hrodriguez', '123456');
INSERT INTO `t_empleado` VALUES (58, 'Jennifer', '', 'Fermin', '', 16116404, 2, 'jfermin@ipcachacao.org.ve', 116, 5, 5, 3, 1, 'jfermin', '123456');
INSERT INTO `t_empleado` VALUES (59, 'Maria', 'A', 'Hares', '', 13735325, 2, 'mhares@ipcachacao.org.ve', 107, 6, 8, 3, 1, 'mhares', '123456');
INSERT INTO `t_empleado` VALUES (60, 'Ana', '', 'Varela', '', 12630722, 2, 'ipcacomunicaciones@ipcachacao.org.ve', 126, 6, 2, 3, 1, 'avarela', '123456');
INSERT INTO `t_empleado` VALUES (61, 'Lucas', '', 'Perez', '', 4276886, 1, 'lperez@ipcachacao.org.ve', 2633190, 6, 12, 3, 1, 'lperez', '123456');
INSERT INTO `t_empleado` VALUES (62, 'Nelly', '', 'Marrero', '', 5538123, 2, 'nmarrero@ipcachacao.org.ve', 130, 1, 16, 3, 1, 'nmarrero', '123456');
INSERT INTO `t_empleado` VALUES (63, 'Ana', 'Mercedes', 'Ugueto', '', 12640044, 2, 'augueto@ipcachacao.org.ve', 106, 7, 8, 3, 1, 'augueto', '123456');
INSERT INTO `t_empleado` VALUES (64, 'Milesky', '', 'Barrozo', '', 15342897, 2, 'mbarrozo@ipcachacao.org.ve', 112, 7, 3, 3, 1, 'mbarrozo', '123456');
INSERT INTO `t_empleado` VALUES (65, 'Miralia', '', 'Madriz', '', 6906910, 2, 'ipcabienestar@ipcachacao.org.ve', 112, 7, 6, 3, 1, 'mmadriz', '123456');
INSERT INTO `t_empleado` VALUES (66, 'Suahil', '', 'Duran', '', 11922474, 2, 'ipcarrhh@ipcachacao.org.ve', 112, 7, 3, 3, 1, 'sduran', '123456');
INSERT INTO `t_empleado` VALUES (67, 'Delvi', '', 'Santos', '', 9353616, 2, 'ipcagerencia@ipcachacao.org.ve', 109, 8, 8, 3, 1, 'dsantos', '123456');
INSERT INTO `t_empleado` VALUES (68, 'Marcia', '', 'Bastardo', '', 10199480, 2, 'mbastardo@ipcachacao.org.ve', 131, 8, 18, 3, 1, 'mbastardo', '123456');
INSERT INTO `t_empleado` VALUES (69, 'Jesus', '', 'Teran', '', 4418039, 1, '', 102, 8, 2, 3, 1, '', '');
INSERT INTO `t_empleado` VALUES (70, 'José', 'Manuel', 'Saez', '', 11705550, 1, 'ipcaadministracion@ipcachacao.org.ve', 102, 8, 3, 3, 1, 'jsaez', '654321');
INSERT INTO `t_empleado` VALUES (71, 'Delia', '', 'Gonzalez', '', 11025323, 2, '', 102, 8, 6, 3, 1, '', '');
INSERT INTO `t_empleado` VALUES (72, 'Yesika', '', 'Gonzalez', '', 15179790, 2, 'ygonzalez@ipcachacao.org.ve', 131, 8, 6, 3, 1, 'ygonzalez', '123456');
INSERT INTO `t_empleado` VALUES (73, 'Manuel', 'Enrique', 'Gil', '', 11204952, 1, 'egonzalez@ipcachacao.org.ve', 131, 8, 6, 3, 1, 'mgil', '123456');
INSERT INTO `t_empleado` VALUES (74, 'Dayis', '', 'Toloza', '', 14202048, 2, '', 131, 8, 6, 3, 1, '', '');
INSERT INTO `t_empleado` VALUES (75, 'Solanyeri', '', 'Arcia', '', 14645701, 2, 'asistentemant@ipcachacao.org.ve', 131, 8, 6, 3, 1, 'sarcia', '123456');
INSERT INTO `t_empleado` VALUES (76, 'Esperanza', '', 'Gonzalez', '', 6513647, 2, 'egonzalez@ipcachacao.org.ve', 102, 8, 19, 3, 1, 'egonzalez', '123456');
INSERT INTO `t_empleado` VALUES (77, 'Denvher', '', 'Bueno', '', 15421729, 1, 'vperez@ipcachacao.org.ve', 0, 1, 7, 3, 1, 'dbueno', '123456');
INSERT INTO `t_empleado` VALUES (78, 'Jean', '', 'Porras', '', 19505174, 1, '', 102, 8, 7, 3, 1, '', '');
INSERT INTO `t_empleado` VALUES (79, 'Ramon', '', 'Camacho', '', 16806591, 1, '', 16806591, 8, 7, 3, 1, '', '');
INSERT INTO `t_empleado` VALUES (81, 'Jessika', '', 'Osorio', '', 15508355, 2, 'josorio@ipcachacao.org.ve', 129, 8, 3, 3, 1, 'josorio', '123456');
INSERT INTO `t_empleado` VALUES (82, 'Ana', '', 'Cuenca', '', 8168483, 2, 'acuenca@ipcachacao.org.ve', 128, 11, 14, 3, 1, 'acuenca', '123456');
INSERT INTO `t_empleado` VALUES (83, 'Laila ', '', 'Amndan', '', 18465336, 2, 'ipcarrhh@ipcachacao.org.ve', 0, 7, 7, 3, 1, 'lamndan', '123456');
INSERT INTO `t_empleado` VALUES (84, 'Katerin', '', 'Hernandez', '', 17438233, 2, 'khernandez@ipcachacao.org.ve', 0, 2, 3, 3, 1, 'khernandez', '123456');
INSERT INTO `t_empleado` VALUES (85, 'Pablo', '', 'Mendoza', '', 11034651, 1, 'pmendoza@ipcachacao.org.ve', 110, 9, 2, 1, 1, 'pmendoza', '15643011');
INSERT INTO `t_empleado` VALUES (86, 'Johanabel', '', 'Simanca', '', 14935821, 2, 'ipcacompras@ipcachacao.org.ve', 109, 8, 3, 3, 1, 'jsimanca', '123456');
INSERT INTO `t_empleado` VALUES (87, 'Anggie', '', 'Peña', '', 16716390, 2, 'apena@ipcachacao.org.ve', 0, 2, 2, 3, 1, 'apena', '654321');
INSERT INTO `t_empleado` VALUES (88, 'Andrea', '', 'León', '', 14407690, 2, 'rrhh@ipcachacao.org.ve', 106, 7, 5, 3, 1, 'aleon', '123456');
INSERT INTO `t_empleado` VALUES (89, 'Radharani ', '', 'Medina', '', 0, 2, 'ipcaambiente@ipcachacao.org.ve', 0, 3, 8, 3, 1, 'rmedina', '123456');
INSERT INTO `t_empleado` VALUES (90, 'Daniel', '', 'Lizcano', '', 1, 1, 'dlizcano@ipcachacao.org.ve', 0, 3, 3, 3, 1, 'dlizcano', '123456');
INSERT INTO `t_empleado` VALUES (91, 'Miriely', NULL, 'Caraballo', NULL, 14744793, 2, 'ipcaseguridad@ipcachacao.org.ve', 112, 7, 3, 3, 1, 'mcaraballo', '123456');
INSERT INTO `t_empleado` VALUES (92, 'Grazia', '', 'Ferri', '', 14901439, 2, 'gferri@ipcachacao.org.ve', 107, 6, 8, 3, 1, 'gferri', '123456');
INSERT INTO `t_empleado` VALUES (93, 'Jorge', '', 'Hidalgo', '', 18023764, 1, 'Consultoria01@ipcachacao.org.ve', 116, 5, 5, 3, 1, 'jhidalgo', '123456');
INSERT INTO `t_empleado` VALUES (94, 'Ronald', '', 'Zerpa', '', 15124246, 1, 'roperadores@ipcachacao.org.ve', 112, 2, 3, 3, 1, 'rzerpa', '123456');
INSERT INTO `t_empleado` VALUES (95, 'Marian', '', 'Salazar', '', 19003351, 2, 'consultoria02@ipcachacao.org.ve', 103, 5, 5, 3, 1, 'msalazar', '123456');
INSERT INTO `t_empleado` VALUES (96, 'Damaris', '', 'Betancourt', '', 12517123, 2, 'contabilidad@ipcachacao.org.ve', 0, 8, 18, 3, 1, 'dbetancourt', '123456');
INSERT INTO `t_empleado` VALUES (97, 'Rosangeles', NULL, 'Diaz', NULL, 20443347, 2, 'rdiaz@ipcachacao.org.ve', 128, 11, 7, 3, 1, 'rdiaz', '123456');
INSERT INTO `t_empleado` VALUES (98, 'Carlos', '', 'Salazar', '', 15724759, 1, 'ipcagerencia@ipcachacao.org.ve', 109, 8, 12, 3, 1, '', '');
INSERT INTO `t_empleado` VALUES (99, 'Gustavo', '', 'Vargas', '', 16413167, 1, 'ipcagerencia@ipcachacao.org.ve', 109, 8, 12, 3, 1, '', '');
INSERT INTO `t_empleado` VALUES (100, 'Robert', '', 'Veliz', '', 17030727, 1, 'asistentesg@ipcachacao.org.ve', 0, 8, 6, 2, 1, 'rveliz', '15042011');
INSERT INTO `t_empleado` VALUES (101, 'Oliver', 'Miguel', 'Alvarado', 'Alvarado', 18473940, 1, 'oalvarado@ipcachacao.org.ve', 115, 10, 3, 3, 1, 'oalvarado', '123456');
INSERT INTO `t_empleado` VALUES (102, 'Fernando', '', 'Raybaudi', '', 5540887, 1, 'fraybaudi@ipcachacao.org.ve', 110, 9, 8, 1, 1, 'fraybaudi', '123456');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_modelo_vehiculo`
-- 

CREATE TABLE `t_modelo_vehiculo` (
  `cod_modelo_vehiculo` tinyint(2) NOT NULL auto_increment,
  `modelo_vehiculo` varchar(20) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_modelo_vehiculo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=15 ;

-- 
-- Volcar la base de datos para la tabla `t_modelo_vehiculo`
-- 

INSERT INTO `t_modelo_vehiculo` VALUES (1, 'DR200');
INSERT INTO `t_modelo_vehiculo` VALUES (2, 'GS500');
INSERT INTO `t_modelo_vehiculo` VALUES (3, 'ER500');
INSERT INTO `t_modelo_vehiculo` VALUES (4, 'XT225');
INSERT INTO `t_modelo_vehiculo` VALUES (5, 'TRAIL BLAZER');
INSERT INTO `t_modelo_vehiculo` VALUES (6, 'GRAN VITARA');
INSERT INTO `t_modelo_vehiculo` VALUES (7, 'WAGON R');
INSERT INTO `t_modelo_vehiculo` VALUES (8, 'CABINA SENCILLA');
INSERT INTO `t_modelo_vehiculo` VALUES (9, 'DOBLE CABINA');
INSERT INTO `t_modelo_vehiculo` VALUES (10, 'UNIDAD SOPORTE');
INSERT INTO `t_modelo_vehiculo` VALUES (11, 'FORD F-150');
INSERT INTO `t_modelo_vehiculo` VALUES (12, 'FORD F-350');
INSERT INTO `t_modelo_vehiculo` VALUES (13, 'FORD F-550');
INSERT INTO `t_modelo_vehiculo` VALUES (14, 'SILVERADO');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_sede`
-- 

CREATE TABLE `t_sede` (
  `cod_sede` tinyint(2) NOT NULL auto_increment,
  `sede` varchar(20) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_sede`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `t_sede`
-- 

INSERT INTO `t_sede` VALUES (1, '-00- Operativa');
INSERT INTO `t_sede` VALUES (2, '-01- Administrativa');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_servicio`
-- 

CREATE TABLE `t_servicio` (
  `cod_servicio` int(6) NOT NULL auto_increment,
  `cod_tec_servicio` int(4) NOT NULL,
  `cod_usu` int(4) NOT NULL,
  `cod_tipo_servicio` tinyint(2) NOT NULL,
  `cod_status_solicitud` tinyint(2) NOT NULL,
  `descripcion` varchar(300) collate utf8_spanish_ci NOT NULL,
  `solucion` varchar(300) collate utf8_spanish_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY  (`cod_servicio`),
  KEY `fk_usuario_servicio` (`cod_usu`),
  KEY `fk_tipo_servicio` (`cod_tipo_servicio`),
  KEY `fk_status_solicitud` (`cod_status_solicitud`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=53 ;

-- 
-- Volcar la base de datos para la tabla `t_servicio`
-- 

INSERT INTO `t_servicio` VALUES (1, 100, 20, 2, 2, '', '', '2013-08-08', '2013-08-16');
INSERT INTO `t_servicio` VALUES (2, 100, 55, 2, 2, ' Solicitud de revisión de las lamparas y bombillos de la oficina en general', 'se cambio 02 bombillos y se realizo ajuste en las lamparas', '2013-08-08', '2013-08-08');
INSERT INTO `t_servicio` VALUES (3, 100, 28, 2, 2, 'Buen dia la presente es para solicitar lo siguiente:\r\n\r\n1)Instalaciòn de Faros de Iluminaciòn en la Planta Baja de esta Sede.\r\n2)Instalaciòn Electrica del Compresor de a Cascada de aire ubicada en el Deposito de Operaciones. \r\n', 'se reparo el timbre y el conector de apertura de la puerta principal', '2013-08-12', '2013-08-16');
INSERT INTO `t_servicio` VALUES (4, 100, 28, 2, 2, 'Buen dia la presente es para solicitar lo siguiente;1) Revisiòn de trabajo realizado en el mesòn de la Sala Situacional, ya que le falta aun una capa de algùn aditivo que proteja la madera.\r\n2)Adquisiciòn de 4 pie de amigos para la instalaciòn del mesòn de trabajo en el deposito de Operaciones.\r\n', 'comprado\r\n', '2013-08-12', '2013-10-01');
INSERT INTO `t_servicio` VALUES (5, 100, 28, 1, 2, 'Buenos dias la presente es para solicitar lo siguiente:\r\n1) Revisiòn de crucetas, la misma presenta un sonido no habitual.\r\n2) Revisiòn y cambio de la correa del ventilador del motor.\r\n3) Revisiòn y cambio de la empacadura del tapa vàlvulas.', 'Reparada la unidad', '2013-08-12', '2013-09-27');
INSERT INTO `t_servicio` VALUES (6, 100, 28, 2, 2, 'Buen dia la presente es para solicitar se realicen las gestiones necesarias para la adquisiciòn de 08 tornillos con aro, para la adecuaciòn de las escaleras que se encuentran actualmente en el estacionamiento donde esta aparcado el camiòn 550.\r\nDicha solicitud la realizo en esta opciòn porque no hay', 'se compraron los tornillos', '2013-08-12', '2013-09-25');
INSERT INTO `t_servicio` VALUES (7, 23, 75, 2, 2, 'buenas tardes mi silla se le estan callendo los posa brazo  gracias', 'se realizo el cambio de tornillos ya que los que poseia no eran los originales, de igual forma se fijo con pegamento, actividad realizada por el asistente de logistica michael Dos Santos.', '2013-08-13', '2013-08-23');
INSERT INTO `t_servicio` VALUES (8, 23, 63, 2, 2, 'Buenos días, por favor Robert, solicitamos tu colaboración para colocar el botellón de agua en el filtro de los pisos 2 y 3 de "01" y el arreglo del escritorio de Miriely Caraballo. Gracias de Antemano', 'se instalo el botellon de ambos pisos, el escritorio no tiene problema, el suelo presenta desnivel, se esta elaborando un suplemento para estabilizar el mismo.', '2013-08-15', '2013-08-23');
INSERT INTO `t_servicio` VALUES (9, 23, 54, 2, 2, 'se requiere instalar 5 carteleras de 40*60 y una pizarra acrilica de las mismas medidas. Estas estan en la oficina.', 'fueron instaladas las 5 carteleras y la pizarra acrilica, por el asistente de logística Maikol', '2013-08-19', '2013-08-21');
INSERT INTO `t_servicio` VALUES (10, 23, 54, 2, 2, 'Colocar carteleras en ambas sedes, en el area del comedor.\r\n', 'fueron instaladas las carteleras', '2013-08-19', '2013-08-21');
INSERT INTO `t_servicio` VALUES (11, 23, 13, 2, 2, 'cambio del pistilo de la entrada, mantenimiento de los candados de la santamaria', 'se cambio el pistilo y se aceitaron los candados.', '2013-08-21', '2013-08-21');
INSERT INTO `t_servicio` VALUES (12, 100, 59, 2, 2, 'Ponganme las prsianas. Gracias!', 'no hay persianas', '2013-08-23', '2013-10-01');
INSERT INTO `t_servicio` VALUES (13, 100, 63, 2, 2, 'Buenos días,la Dir. de RRHH solicita la entrega de la copia de las llaves de un arturito gris, asignado a esta oficina, considerando que esa es la única llave que se posee y en la actualidad se encuentra deteriorada y a punto de romperse.Gracias de antemano.', 'se cambio el cilindro por uno nuevo', '2013-08-28', '2013-09-25');
INSERT INTO `t_servicio` VALUES (14, 100, 4, 2, 2, 'muy buenas tardes la misma es para solicitar de sus buenos oficios a fin de gestionar la instalacion de la cerradura a la puerta principal de la direccion de informatica ya que la misma el dia de ayer presento fracturas y la oficina se encuentra sin la seguridad de la puerta cerrada.', 'se instalo la cerradura nueva', '2013-08-30', '2013-09-23');
INSERT INTO `t_servicio` VALUES (15, 100, 1, 2, 2, 'Buenas tardes, el lavamanos del ba', 'se ajusto la llave', '2013-09-16', '2013-10-01');
INSERT INTO `t_servicio` VALUES (16, 100, 37, 2, 2, 'el arturito posee problemas de riel para cerrar y abrir', 'se reemplazo el riel ', '2013-09-17', '2013-09-23');
INSERT INTO `t_servicio` VALUES (17, 0, 32, 1, 1, 'me gustaria saber cuando le corresponde mantenimiento general a este vehiculo para anotarlo en el calendario, de igual forma el parachoques delantero del lado derecho se salio de su base y esta suelto, de igual forma le paso al tablero desde el radio hacia el chofer, tambien solicito que el radio de', '', '2013-10-02', '0000-00-00');
INSERT INTO `t_servicio` VALUES (18, 100, 32, 1, 2, 'revision de luces delanteras ya que el faro del lado del copiloto tiene el bombillo suelto y de igual forma el cocuyo de ese mismo lado', '', '2013-10-02', '2014-01-17');
INSERT INTO `t_servicio` VALUES (19, 23, 5, 2, 2, 'Saludos por favor necesito que armen 04 esqueletos de estantes los cuales van a ser utilizados en el archivo del instituto...Faltan tornillos y tuercas para realizar el trabajo tomen las medidas economicas', 'los estantes fueron armados y trasladados a la oficina de archivo, en el dia de hoy seran fijados a la pared', '2013-10-03', '2013-10-14');
INSERT INTO `t_servicio` VALUES (20, 23, 5, 2, 2, 'requerimiento de cinta doble fax para instalacion de planificador', 'se entrega la cinta doble fax', '2013-10-07', '2013-10-07');
INSERT INTO `t_servicio` VALUES (21, 100, 5, 2, 2, 'Se solicita instalacion para protector de pared.', 'Se instalaron en toda el area requerida el protector de pared. ', '2013-10-09', '2013-10-09');
INSERT INTO `t_servicio` VALUES (22, 100, 67, 2, 2, 'Instalacion de protector de pared.', 'Se realizo la instalacion del protector de pared en el area requerida.', '2013-10-09', '2013-10-09');
INSERT INTO `t_servicio` VALUES (23, 100, 1, 2, 2, 'Instalacion de protector de pared.', 'Se realizo la instalacion del protector de pared en el area requerida.', '2013-10-09', '2013-10-09');
INSERT INTO `t_servicio` VALUES (24, 100, 63, 2, 2, 'Instalacion de protector de pared.', 'Se realizo la instalacion del protector de pared en el area requerida.', '2013-10-09', '2013-10-09');
INSERT INTO `t_servicio` VALUES (25, 100, 59, 2, 2, 'Instalacion de protector de pared.', 'Se realizo la instalacion del protector de pared en el area requerida.', '2013-10-09', '2013-10-09');
INSERT INTO `t_servicio` VALUES (26, 100, 62, 2, 2, 'Instalacion de protector de pared.', 'Se realizo la instalacion del protector de pared en el area requerida.', '2013-10-09', '2013-10-09');
INSERT INTO `t_servicio` VALUES (27, 100, 5, 2, 2, 'Ajuste de lamparas, que se encuentran desajustadas.', 'Se realizo el ajuste de las lamparas, remplazando el ramplug y el tornillo debido donde se encontraba desajustado.', '2013-10-09', '2013-10-09');
INSERT INTO `t_servicio` VALUES (28, 100, 58, 2, 2, 'Se solicita la revisión del pomo de la cerradura de la puerta de la Consultoría Jurídica. ', 'se instalo cerradura nueva.', '2013-10-11', '2013-10-11');
INSERT INTO `t_servicio` VALUES (29, 23, 5, 2, 2, 'Luego de un cordial saludo es grato dirigirme a usted en la oportunidad de  solicitarle estudie la posibilidad de la compra de (02) dos, pipotes los cuales serán utilizados para la elaboración de una pileta,  el mencionado material será utilizado durante el mes de Octubre del año en curso en una pra', '', '2013-10-11', '2013-11-07');
INSERT INTO `t_servicio` VALUES (30, 23, 63, 2, 2, 'Hola Buenas tardes, escribo para solicitar su colaboración para gestionar la revisión y reparación del aire acondicionado de la oficina de RRHH en la que se encuentran las Analistas de esta Dirección, ya que el mismo gotea agua por las rendijas y no enfría como debería. Gracias de antemano, Ana Merc', 'se realizo mantenimiento al aire quedabdo el mismo en correcto funcionamiento.', '2013-10-14', '2013-10-16');
INSERT INTO `t_servicio` VALUES (31, 23, 28, 2, 2, 'Buenas Tardes, la presnete es para solicitar a traves de sus buenos oficios sea gestionada la compra de 2,5MTS de platina la cual sera utilizada para la instalaciòn del meson de la Sala Situacional.Agradeciendo su atencion ', 'buenas tardes, le fue suministrada ya el tapa canto al funcionario ronal zerpa', '2013-10-16', '2013-10-16');
INSERT INTO `t_servicio` VALUES (32, 23, 28, 1, 2, 'Buenas Tardes la presente es para solicitar a traves de sus buenos oficios sea gestionada la compra de una (01) mica para las luces laterales de dicha unidad. Agradeciendo su atenciòn al respecto.', 'por motivos administrativos no se podra adquirir los repuestos para este año quedando entre las reparaciones para el año entrante', '2013-10-16', '2013-10-31');
INSERT INTO `t_servicio` VALUES (33, 23, 97, 2, 2, 'por favor colocar la cartelera acrilica en la ofica del auditor urgente gracias', 'ya se instalo la cartelera', '2013-10-22', '2013-11-07');
INSERT INTO `t_servicio` VALUES (34, 23, 5, 2, 2, 'Buenas tardes por favor necesitamos coordinen una unidad transporte para el dia 6 de noviembre a las 13:00 con la finalidad de trasladar material necesario para realizar una practica de extincion  de incendio con la empresa CAF - Altamira....', 'se canalizara con la direccion de ambiente ya que a la fecha el taller proveedor de servicios no a culminado las reparaciones de las unidades 150', '2013-10-22', '2013-10-31');
INSERT INTO `t_servicio` VALUES (35, 100, 32, 1, 3, 'estatus de la falla de corriente', '', '2013-10-24', '0000-00-00');
INSERT INTO `t_servicio` VALUES (36, 23, 91, 2, 2, 'Buenos dias el presente soporte es para solicitar revisión de una toma de electricidad perteneciente a la Dirección de Recursos Humanos. Gracias', 'buenas tarde se verifico la toma de corriente, la cual no presnta sulfato ni corto alguno, se cambio la linea energizada y la falla persiste por lo cual se presume sea el equipo el caul presenta desgaste o falla.', '2013-10-25', '2013-10-25');
INSERT INTO `t_servicio` VALUES (37, 23, 33, 2, 2, 'Buen dia, se requiere de sus buenos oficios para reparar escritorio del puesto de trabajo de los auxiliares ambientales,ya que se daño y esta propenso a caerse', 'buenoas tardes se realiza instalacion de dos angulos metalicos con tornillos la fijacion de las partes de madera.', '2013-10-25', '2013-10-25');
INSERT INTO `t_servicio` VALUES (38, 23, 33, 2, 2, 'Buen dia, la presente tiene como finalidad informar que cada vez que llueve, el area de descanso de los inspectores (cuarto) se moja, debidoa que cae gotera del techo mojando una de las literas.', 'Se reparo el area afectada', '2013-10-25', '2013-11-07');
INSERT INTO `t_servicio` VALUES (39, 100, 32, 1, 2, 'buenas tardes indicar cual es la fecha de servicio de esta unidad', '', '2013-11-20', '2014-01-02');
INSERT INTO `t_servicio` VALUES (40, 23, 32, 1, 2, 'soliciti estatus del cambio de croche de esta unidad. gracias', 'el croche fue cambiado, y reparado el arranque, resta reparar el arranque', '2013-11-20', '2013-12-20');
INSERT INTO `t_servicio` VALUES (41, 23, 32, 1, 2, 'solicito informacion del los repuestos para esta unidad', 'Aun a la espera del respuesto del kit de rodamiento ', '2013-11-20', '2013-12-16');
INSERT INTO `t_servicio` VALUES (42, 23, 32, 1, 2, 'solicito informacion sobre la reparacion de la falla electrica de esta unidad, gracias', 'aun se trabaja en la repacion de la misma ya que para el momento no se ha conseguido el facho electrico', '2013-11-20', '2013-12-16');
INSERT INTO `t_servicio` VALUES (43, 100, 18, 2, 2, 'Agradezco la adquisición e instalación de cerradura para empotrar en puerta entamborada, de dos pases; para la Oficina de Auditores y Abogados de esta Unidad.', 'se le inmstalo cerradura\r\n', '2013-11-21', '2014-01-02');
INSERT INTO `t_servicio` VALUES (44, 23, 32, 1, 2, 'STATUS DE LA REPARACION DE ESTA UNIDAD', 'se le hizo la instalacion de kit de embrague y se le retifico el plato de presion, se reparo el arranque ,quedando pendiente para el proximo año la reparacion del regulador del alternador y la limpieza del carter que se encuentra obstruido', '2013-11-22', '2013-12-16');
INSERT INTO `t_servicio` VALUES (45, 23, 95, 2, 2, 'Buen día, necesitamos por favor se apersone alguno de los compañeros a fin de hacer revisión de una extensión eléctrica que no funciona bien, Gracias.', 'Se verrifico y era el equipo que estaba recalentado', '2013-12-10', '2013-12-16');
INSERT INTO `t_servicio` VALUES (46, 23, 58, 2, 2, 'Se solicita el retiro de la bandeja corrediza para el teclado de la oficina del consultor jurídico.', 'Se retiro la bandeja el 16/12/13 ', '2013-12-13', '2013-12-16');
INSERT INTO `t_servicio` VALUES (47, 100, 33, 2, 2, 'La presente es para salicitar de sus buenos oficios en cuanto a las gestiones para remplar bombillos los cuales estan quemados, esto es en la oficina de los inspectores ambientales.', 'cambio de bombillos e interruptor \r\n', '2013-12-19', '2014-01-02');
INSERT INTO `t_servicio` VALUES (48, 23, 58, 2, 2, 'Se solicita apoyo para el desecho de pendones que sirvieron para sustanciar procedimientos administrativos.', '', '2013-12-20', '2013-12-20');
INSERT INTO `t_servicio` VALUES (49, 100, 33, 2, 2, 'Buen dia. La presente es para solicitar de sus buenos oficios en cunto a reparacion de interruptor de encendido de luz, el cual esta en la oficina de los Inspectores Ambientales, Ya que el mismo esta averiado y no se puede encender la Luz.', '', '2014-01-02', '2014-01-02');
INSERT INTO `t_servicio` VALUES (50, 100, 58, 2, 3, 'Buen día. Se solicita el retiro y reparo (en caso que lo tenga)de un silla partida en la oficina de Consultoría.', '', '2014-01-13', '0000-00-00');
INSERT INTO `t_servicio` VALUES (51, 0, 101, 2, 1, 'llave del lavamanos del baño de planta baja defectuosa, favor reemplazar', '', '2014-01-17', '0000-00-00');
INSERT INTO `t_servicio` VALUES (52, 0, 101, 2, 1, 'cerradura del baño de planta baja defectuosa, favor reemplazar. Gracias', '', '2014-01-17', '0000-00-00');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_serv_sede`
-- 

CREATE TABLE `t_serv_sede` (
  `cod_serv_sede` tinyint(2) NOT NULL auto_increment,
  `cod_servicio` int(6) NOT NULL,
  `cod_sede` tinyint(2) NOT NULL,
  `cod_solic_serv_sede` tinyint(2) NOT NULL,
  PRIMARY KEY  (`cod_serv_sede`),
  KEY `fk_servicio_sede` (`cod_servicio`),
  KEY `fk_sede` (`cod_sede`),
  KEY `fk_soliserv_sede` (`cod_solic_serv_sede`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=43 ;

-- 
-- Volcar la base de datos para la tabla `t_serv_sede`
-- 

INSERT INTO `t_serv_sede` VALUES (1, 1, 1, 1);
INSERT INTO `t_serv_sede` VALUES (2, 2, 1, 1);
INSERT INTO `t_serv_sede` VALUES (3, 3, 1, 1);
INSERT INTO `t_serv_sede` VALUES (4, 4, 1, 5);
INSERT INTO `t_serv_sede` VALUES (5, 6, 1, 5);
INSERT INTO `t_serv_sede` VALUES (6, 7, 2, 5);
INSERT INTO `t_serv_sede` VALUES (7, 8, 2, 5);
INSERT INTO `t_serv_sede` VALUES (8, 9, 2, 5);
INSERT INTO `t_serv_sede` VALUES (9, 10, 2, 5);
INSERT INTO `t_serv_sede` VALUES (10, 11, 2, 3);
INSERT INTO `t_serv_sede` VALUES (11, 12, 2, 5);
INSERT INTO `t_serv_sede` VALUES (12, 13, 2, 3);
INSERT INTO `t_serv_sede` VALUES (13, 14, 2, 3);
INSERT INTO `t_serv_sede` VALUES (14, 15, 2, 2);
INSERT INTO `t_serv_sede` VALUES (15, 16, 2, 3);
INSERT INTO `t_serv_sede` VALUES (16, 19, 2, 5);
INSERT INTO `t_serv_sede` VALUES (17, 20, 2, 5);
INSERT INTO `t_serv_sede` VALUES (18, 21, 2, 4);
INSERT INTO `t_serv_sede` VALUES (19, 22, 2, 4);
INSERT INTO `t_serv_sede` VALUES (20, 23, 2, 4);
INSERT INTO `t_serv_sede` VALUES (21, 24, 2, 4);
INSERT INTO `t_serv_sede` VALUES (22, 25, 2, 4);
INSERT INTO `t_serv_sede` VALUES (23, 26, 2, 4);
INSERT INTO `t_serv_sede` VALUES (24, 27, 2, 1);
INSERT INTO `t_serv_sede` VALUES (25, 28, 2, 3);
INSERT INTO `t_serv_sede` VALUES (26, 29, 2, 6);
INSERT INTO `t_serv_sede` VALUES (27, 30, 2, 1);
INSERT INTO `t_serv_sede` VALUES (28, 31, 1, 5);
INSERT INTO `t_serv_sede` VALUES (29, 33, 2, 5);
INSERT INTO `t_serv_sede` VALUES (30, 34, 2, 6);
INSERT INTO `t_serv_sede` VALUES (31, 36, 2, 1);
INSERT INTO `t_serv_sede` VALUES (32, 37, 1, 5);
INSERT INTO `t_serv_sede` VALUES (33, 38, 1, 6);
INSERT INTO `t_serv_sede` VALUES (34, 43, 2, 3);
INSERT INTO `t_serv_sede` VALUES (35, 45, 2, 1);
INSERT INTO `t_serv_sede` VALUES (36, 46, 2, 5);
INSERT INTO `t_serv_sede` VALUES (37, 47, 1, 1);
INSERT INTO `t_serv_sede` VALUES (38, 48, 2, 5);
INSERT INTO `t_serv_sede` VALUES (39, 49, 1, 1);
INSERT INTO `t_serv_sede` VALUES (40, 50, 2, 5);
INSERT INTO `t_serv_sede` VALUES (41, 51, 2, 2);
INSERT INTO `t_serv_sede` VALUES (42, 52, 2, 3);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_serv_vehiculo`
-- 

CREATE TABLE `t_serv_vehiculo` (
  `cod_serv_vehiculo` tinyint(2) NOT NULL auto_increment,
  `cod_servicio` int(6) NOT NULL,
  `cod_vehiculo` tinyint(2) NOT NULL,
  `cod_solic_serv_vehiculo` tinyint(2) NOT NULL,
  PRIMARY KEY  (`cod_serv_vehiculo`),
  KEY `fk_servicio` (`cod_servicio`),
  KEY `fk_soliserv_vehiculo` (`cod_solic_serv_vehiculo`),
  KEY `fk_cod_vehiculo` (`cod_vehiculo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `t_serv_vehiculo`
-- 

INSERT INTO `t_serv_vehiculo` VALUES (1, 5, 106, 1);
INSERT INTO `t_serv_vehiculo` VALUES (2, 17, 104, 2);
INSERT INTO `t_serv_vehiculo` VALUES (3, 18, 104, 1);
INSERT INTO `t_serv_vehiculo` VALUES (4, 32, 107, 1);
INSERT INTO `t_serv_vehiculo` VALUES (5, 35, 10, 1);
INSERT INTO `t_serv_vehiculo` VALUES (6, 39, 104, 2);
INSERT INTO `t_serv_vehiculo` VALUES (7, 40, 105, 1);
INSERT INTO `t_serv_vehiculo` VALUES (8, 41, 24, 1);
INSERT INTO `t_serv_vehiculo` VALUES (9, 42, 10, 1);
INSERT INTO `t_serv_vehiculo` VALUES (10, 44, 105, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_sexo`
-- 

CREATE TABLE `t_sexo` (
  `cod_sexo` tinyint(2) NOT NULL auto_increment,
  `sexo` varchar(10) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_sexo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `t_sexo`
-- 

INSERT INTO `t_sexo` VALUES (1, 'Masculino');
INSERT INTO `t_sexo` VALUES (2, 'Femenino');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_solic_serv_sede`
-- 

CREATE TABLE `t_solic_serv_sede` (
  `cod_solic_serv_sede` tinyint(2) NOT NULL auto_increment,
  `solic_serv_sede` varchar(15) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_solic_serv_sede`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `t_solic_serv_sede`
-- 

INSERT INTO `t_solic_serv_sede` VALUES (1, 'Electrica');
INSERT INTO `t_solic_serv_sede` VALUES (2, 'Plomería');
INSERT INTO `t_solic_serv_sede` VALUES (3, 'Cerradura');
INSERT INTO `t_solic_serv_sede` VALUES (4, 'Tabiquería');
INSERT INTO `t_solic_serv_sede` VALUES (5, 'Mobiliario');
INSERT INTO `t_solic_serv_sede` VALUES (6, 'Seguridad');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_solic_serv_vehiculo`
-- 

CREATE TABLE `t_solic_serv_vehiculo` (
  `cod_solic_serv_vehiculo` tinyint(2) NOT NULL auto_increment,
  `solic_serv_vehiculo` varchar(15) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_solic_serv_vehiculo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `t_solic_serv_vehiculo`
-- 

INSERT INTO `t_solic_serv_vehiculo` VALUES (1, 'Falla');
INSERT INTO `t_solic_serv_vehiculo` VALUES (2, 'Mantenimiento');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_soporte`
-- 

CREATE TABLE `t_soporte` (
  `cod_soporte` int(6) NOT NULL auto_increment,
  `cod_tec` int(4) NOT NULL,
  `nombre_tecnico` varchar(15) collate utf8_spanish_ci NOT NULL,
  `apellido_tecnico` varchar(15) collate utf8_spanish_ci NOT NULL,
  `cod_usu` int(4) NOT NULL,
  `cod_tipo_soporte` tinyint(2) NOT NULL,
  `cod_status_solicitud` tinyint(2) NOT NULL,
  `descripcion` varchar(300) collate utf8_spanish_ci NOT NULL,
  `solucion` varchar(300) collate utf8_spanish_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY  (`cod_soporte`),
  KEY `fk_usuario_soporte` (`cod_usu`),
  KEY `fk_tipo_soporte` (`cod_tipo_soporte`),
  KEY `fk_status_soporte` (`cod_status_solicitud`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=859 ;

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
INSERT INTO `t_soporte` VALUES (27, 4, 'Johnny', 'Gelvez', 31, 2, 2, 'instalacion de memorias ram a la pc de la sra norvelis, y las de los 2 inpectores', 'listo', '2012-03-06', '2012-03-06');
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
INSERT INTO `t_soporte` VALUES (55, 4, 'Johnny', 'Gelvez', 31, 6, 2, 'sin equipo', 'se le instala el equipo y el programa argis, luego se le configura correo ', '2012-03-20', '2012-03-20');
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
INSERT INTO `t_soporte` VALUES (95, 4, 'Johnny', 'Gelvez', 60, 6, 2, 'falta de archivos al programa de oficce', '', '2012-04-11', '2012-04-11');
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
INSERT INTO `t_soporte` VALUES (119, 85, 'Pablo', 'Mendoza', 24, 6, 2, 'saludos si esposible requerimos las capas del municipio par argis. gracias', 'Se grabó Data y se creó Proyecto Base de Capas llamado Operaciones Chacao. ', '2012-04-30', '2012-04-30');
INSERT INTO `t_soporte` VALUES (120, 3, 'Alejandro', 'Perez', 22, 1, 2, 'Se requiere realizar dos copias de un material almacenado en dos cd´s. ( copiar dos cd)', 'Se copiaron dos DVD de datos', '2012-04-30', '2012-05-02');
INSERT INTO `t_soporte` VALUES (121, 4, 'Johnny', 'Gelvez', 22, 6, 2, 'Se requiere la elaboracion del carnet de la funcionaria anggie Peña ya que la misma esta realizando inspecciones de campo y no posee identificacion que la identifique como funcionaria del IPCA.', 'informacion pasada por correo explicando el procedimiento.', '2012-04-30', '2012-05-02');
INSERT INTO `t_soporte` VALUES (122, 3, 'Alejandro', 'Perez', 60, 5, 2, 'Hola.. es maru.. no tengo soporte en la computadora. creo que tengo un virus en la maquina para que porfa vengan a solventarlo.. gracias!!', 'En el momento que estés en disposición para resolver el problema del equipo nos envías un nuevo correo gracias.', '2012-04-30', '2012-05-03');
INSERT INTO `t_soporte` VALUES (123, 4, 'Johnny', 'Gelvez', 31, 6, 2, 'instalacion de impresora', 'instalación de impresora xerox en la quinta configurada y compartida', '2012-04-30', '2012-04-30');
INSERT INTO `t_soporte` VALUES (124, 4, 'Johnny', 'Gelvez', 34, 6, 2, 'instalacion de unidad de cd', 'se procedio a instalar unidad de CD a la PC asignada a la funcionaria Rosiret Escalona (quedando pendiente la solicitud por escrito)', '2012-04-30', '2012-04-30');
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
INSERT INTO `t_soporte` VALUES (145, 3, 'Alejandro', 'Perez', 60, 6, 2, 'Buenos tardes, la única impresora que estaba conectada a mi máquina es la de Consultoría Jurídica. Entiendo que informática realizó una actualización de redes hoy y ahora no tengo conexión con la impresora. Agradezco de antemano su colaboración. Mil gracias ', 'se reinstalo impresora de red, no tiene nada que ver con la actualizaciones del sistema SIDESA. ', '2012-05-11', '2012-05-11');
INSERT INTO `t_soporte` VALUES (146, 4, 'Johnny', 'Gelvez', 23, 6, 2, 'instalacion de nero', 'nero instalado y funcinado feliz tarde', '2012-05-11', '2012-05-14');
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
INSERT INTO `t_soporte` VALUES (170, 3, 'Alejandro', 'Perez', 56, 6, 2, 'Solicitud instalación Mozilla Firefox', 'Se instalo Mozilla.', '2012-05-25', '2012-05-25');
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
INSERT INTO `t_soporte` VALUES (214, 4, 'Johnny', 'Gelvez', 28, 6, 2, 'Buen día la presente es para solicitar se realicen las gestiones necesaria para la coneccion de mi computador hacia la impresora de informática, esto motivado a que se están realizando trabajos en la computadora principal que esta conectada a la impresora de esta dirección por lo que no se puede imp', 'impresora conectada temporalmente', '2012-06-15', '2012-06-18');
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
INSERT INTO `t_soporte` VALUES (231, 85, 'Pablo', 'Mendoza', 56, 6, 2, 'Instalación del equipo asignado al funcionario Reynaldo Martínez en el puesto donde está instalada la computadora Compaq que estaba asignada a la funcionaria Mairuby Casanova, la cual no está operativa. La solicitud obedece a que en el puesto del funcionario Reynaldo Martinez se van a realizar labor', 'Buenos Días se traslado el equipo a CJ y se procedió a la instalación del mismo en lugar indicado por Humberto. Gracias', '2012-06-28', '2012-06-29');
INSERT INTO `t_soporte` VALUES (232, 85, 'Pablo', 'Mendoza', 86, 1, 2, 'HOLA BUEN DIA EL CIDESA NO RESPONDE YA HE REINICIADO LA MAQUINA Y NADA ADICIONALMENTE ESTA MUY LENTA PARA TRABAJAR EN WORD', 'Se revisó la PC y se probó el usuario desde otra maquina, verificando que es el módulo que está fallando. Se solicitó a la usuaria reporte de falla especifico para remitirlo a CIDESA.', '2012-06-29', '2012-06-29');
INSERT INTO `t_soporte` VALUES (233, 85, 'Pablo', 'Mendoza', 86, 1, 2, 'HOLA BUEN DIA EL CIDESA NO RESPONDE YA HE REINICIADO LA MAQUINA Y NADA ADICIONALMENTE ESTA MUY LENTA PARA TRABAJAR EN WORD', 'Se revisó la PC y se probó el usuario desde otra maquina, verificando que es el módulo que está fallando. Se solicitó a la usuaria reporte de falla especifico para remitirlo a CIDESA.', '2012-06-29', '2012-06-29');
INSERT INTO `t_soporte` VALUES (234, 2, 'José', 'Reina', 23, 1, 2, 'intento imprimir un documento PDF que enviaron por correo y no se ve', 'se actualiza el adobe PDF', '2012-07-02', '2012-07-02');
INSERT INTO `t_soporte` VALUES (235, 3, 'Alejandro', 'Perez', 23, 6, 2, 'habilitar otra impresora', 'Ya se realizo el cambio de toner a la impresora', '2012-07-02', '2012-07-02');
INSERT INTO `t_soporte` VALUES (236, 2, 'José', 'Reina', 70, 6, 2, 'EL ARCHIVO QUE LE INDIQUE TE LO ESTOY ENVIANDO, GRACIAS', 'se actuacliza archivo, y se convierte a PDF', '2012-07-02', '2012-07-02');
INSERT INTO `t_soporte` VALUES (237, 3, 'Alejandro', 'Perez', 86, 6, 2, 'No puedo imprimir por impresora HP laser', 'Se cambio toner a la impresora HP de Administración ', '2012-07-02', '2012-07-02');
INSERT INTO `t_soporte` VALUES (238, 4, 'Johnny', 'Gelvez', 19, 6, 2, 'no puede quemar cd ni dvd', 'se le instalo el programa cd burner, para poder quemar los dc y dvd de igual forma en la computadora riesgosII asignada a la funcionaria Zulma Key  tambien se elaboro el mismo soporte y tambien queda operativa para realizar dicho trabajo.', '2012-07-03', '2012-07-03');
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
INSERT INTO `t_soporte` VALUES (252, 4, 'Johnny', 'Gelvez', 7, 6, 2, 'Primero: mi equipo no prende desde el  día miércoles 11, la cual fue reportada verbalmente a informática, acudió a esta Dirección el funcionario Gelvez y se percató que el disco duro no respondía, procedió a llevarse el cpu para revisión externa.\r\nEn tal sentido, y debido a la magnitud de la labor q', 'equipo cambiado, se ingrso al dominio del servidor de la quinta, se le configuro el correo se le coloco el respaldo. pc operativa', '2012-07-16', '2012-07-18');
INSERT INTO `t_soporte` VALUES (253, 4, 'Johnny', 'Gelvez', 83, 5, 2, 'capta huella', 'verificacion para descargar y actualizar los eventos.', '2012-07-16', '2012-07-16');
INSERT INTO `t_soporte` VALUES (254, 4, 'Johnny', 'Gelvez', 82, 6, 2, 'imposible imprimir archivos pdf', 'instalacion del adobe y actualizacion del acroba 10.0 ya impriminendo sin novedad', '2012-07-17', '2012-07-17');
INSERT INTO `t_soporte` VALUES (255, 4, 'Johnny', 'Gelvez', 75, 5, 2, 'solicito aclaratoria para la realizacion de las estadisticas.', 'veridficacion de los datos por semana y aclaratoria de dudas.', '2012-07-17', '2012-07-17');
INSERT INTO `t_soporte` VALUES (256, 3, 'Alejandro', 'Perez', 34, 3, 2, 'Hola. Buen día! El día de hoy la Oficina de ODRAXA donde trabaja Julissa, tiene nula o escasa conexión a Internet, por lo que se requiere soporte técnico. Muchas gracias!', 'Se reinicio Switch', '2012-07-20', '2012-07-30');
INSERT INTO `t_soporte` VALUES (257, 85, 'Pablo', 'Mendoza', 23, 2, 2, 'la pantalla del computador tiene dos tonos, se ve como si estuviera dividida', 'Buenos Días se solucionó con los Menús del Monitor, se recomendó cambiar de lugar los radios y cargadores que se encuentran detrás del monitor.\r\n', '2012-07-23', '2012-07-23');
INSERT INTO `t_soporte` VALUES (258, 3, 'Alejandro', 'Perez', 24, 2, 2, 'saludos la computadora de la sala que esta conectada a una pantalla tiene un sonido raro. por favor para que la revisen. gracias', 'se ajusto la fuente de poder que estaba un poco floja', '2012-07-23', '2012-07-23');
INSERT INTO `t_soporte` VALUES (259, 3, 'Alejandro', 'Perez', 5, 6, 2, 'Amigos buenas tardes la impresora XEROX NECESITA CAMBIO DE TONNER NUEVAMENTE MUCHO LE SABRIA AGRADECER SU COLABORACIÓN..........', 'Se realizo cambio de tres toner', '2012-07-23', '2012-07-26');
INSERT INTO `t_soporte` VALUES (260, 2, 'José', 'Reina', 5, 6, 2, 'Saludos buenas tardes por favorde ser posible hay que configurar correo institucional al funcionario Oliver Alvarado nuevo Consultor de Educacion. Gracias', 'Se configuro el correo al usuario solicitado', '2012-07-23', '2012-07-26');
INSERT INTO `t_soporte` VALUES (261, 3, 'Alejandro', 'Perez', 86, 1, 2, 'HOLA BUENOS DIAS NECESITO QUE REVISEN MI PC ESTA MUY LENTA Y SE GUINDA A CADA RATO ', 'Se realizo mantenimiento y cambio de conector RJ45', '2012-07-30', '2012-07-30');
INSERT INTO `t_soporte` VALUES (262, 2, 'José', 'Reina', 53, 3, 2, 'Buenas tardes, se ha hecho imposible la visualización de los reportes en el Sistema Cidesa, ya  que ingresamos pero cuando vamos a pedir el reporte sale error de página en la parte inferior izquierda de la pantalla.\r\nSe está ingresando por un acceso directo que esta predeterminado en el escritorio d', 'el caso fue resuelto por alejandro perez cualquier incoveniente abrir otro soporte gracias', '2012-07-30', '2012-08-10');
INSERT INTO `t_soporte` VALUES (263, 2, 'José', 'Reina', 53, 3, 2, 'Buenas tardes, se ha hecho imposible la visualización de los reportes en el Sistema Cidesa, ya  que ingresamos pero cuando vamos a pedir el reporte sale error de página en la parte inferior izquierda de la pantalla.\r\nSe está ingresando por un acceso directo que esta predeterminado en el escritorio d', 'el caso fue resuelto por alejandro perez cualquier incoveniente abrir otro soporte gracias', '2012-07-30', '2012-08-10');
INSERT INTO `t_soporte` VALUES (264, 85, 'Pablo', 'Mendoza', 5, 2, 2, 'amigos buenos dias necesito por fa revisen la impresora XEROX, creo que esta desconfigurada................Gracias', 'Buenas Tardes\r\nEl reporte fué realizado a la compañía Xerox de Venezuela, estiman pasar mañana en cualquier momento del día, el número de reporte es el 748860.', '2012-07-31', '2012-08-01');
INSERT INTO `t_soporte` VALUES (265, 2, 'José', 'Reina', 62, 6, 2, 'Favor instalar Galeria Pùblico en mi PC.  Mil gracias', 'se instalo publico', '2012-07-31', '2012-07-31');
INSERT INTO `t_soporte` VALUES (266, 2, 'José', 'Reina', 64, 1, 2, 'REALIZAR SOPORTE A LA MAQUINA QUE SE ENCUENTA DE LADO DERECHO DE LA OFICINA CERCA DE LA PUERTA DE ENTRADA A LA DIRECCION ', 'Se realiza RESPALDO a dicho equipo, quedando operativo', '2012-08-01', '2012-08-02');
INSERT INTO `t_soporte` VALUES (267, 85, 'Pablo', 'Mendoza', 5, 6, 2, 'Saludos Buenos dias,Sola para comentarles que el personal tecnico de XEROX,no se apersono por la Qta el dia de ayer mucho les sabria agradecer reportar el caso de la impresora nuevamente ya que no contamos con mas impresora a color...........y es para los certifidos por curso realizado..........', 'Buenas Tardes, se cierra el caso ya que el personal de Xerox acudió a la quinta el día de hoy viernes 3 de agosto de 2012 en horas de la mañana, quiero aclarar que cuando el reporte es directo a alguna empresa escapa de nuestras manos, ya que ellos llevarán su programación de soporte. GRacias y espe', '2012-08-03', '2012-08-03');
INSERT INTO `t_soporte` VALUES (268, 4, 'Johnny', 'Gelvez', 86, 3, 2, 'BUENAS TARDES, NO PUEDO IMPRIMIR', 'configuracion de envio en cola y solventado desde el martes.', '2012-08-06', '2012-08-10');
INSERT INTO `t_soporte` VALUES (269, 4, 'Johnny', 'Gelvez', 25, 6, 2, 'Hola Buemas tardes el monitor de la computadora de Oswaldo Martines no enciende ', 'estaba desconectado la fuente q alimenta de corriente al monitor', '2012-08-06', '2012-08-06');
INSERT INTO `t_soporte` VALUES (270, 4, 'Johnny', 'Gelvez', 70, 6, 2, 'LA PRESENTE ES PARA SOLICITAR DE SUS BUENOS OFICIOS PARA QUE REVICEN LA IMPRESORA HP 4250 LA CUAL NO IMPRIME, GRACIAS', 'recpnfiguracions desde el servidor, y ya funcionando.', '2012-08-06', '2012-08-06');
INSERT INTO `t_soporte` VALUES (271, 4, 'Johnny', 'Gelvez', 10, 2, 2, 'Buenos dias, por favor necesito sea revisado mi monitor ya que en ocaciones cambia de color y se dificulta su uso.', 'Muy buenas Tardes, la misma es para notificar que lamentablemente para el momento no tenemos algún monitor paras su reemplazo', '2012-08-07', '2013-10-04');
INSERT INTO `t_soporte` VALUES (272, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, por favor verificar por qué la impresora ubicada en Consultoría Jurídica no imprime los documentos enviados desde mi máquina, a pesar de que aparece contectada en red. Dentro de Consultoría si imprime. Pero los documentos que envío a imprimir desde mi máquina no se imprimen. Mil graci', 'el caso fue resuelto, la impresora de consultaria estaba con otro nombre de conexion.', '2012-08-07', '2012-08-10');
INSERT INTO `t_soporte` VALUES (273, 2, 'José', 'Reina', 13, 5, 2, 'Solicitud de desbloqueo del Twitter', 'para el dia 07/08/2012 se realizo desbloqueo', '2012-08-07', '2012-08-10');
INSERT INTO `t_soporte` VALUES (274, 2, 'José', 'Reina', 25, 6, 2, 'Buenos dias solicito de sus buenos oficios estudie la posibilidad de revisar los documentos Word y Exel ya que no se le puede cambiar los nombres ', 'se revisan los documentos y se resuelve el caso', '2012-08-09', '2012-08-10');
INSERT INTO `t_soporte` VALUES (275, 2, 'José', 'Reina', 60, 1, 2, 'Buenos días, por medio de la presente les solicito instalar el software necesario para bajar las fotos del blackberry', 'se instala dispositivo', '2012-08-10', '2012-08-10');
INSERT INTO `t_soporte` VALUES (276, 2, 'José', 'Reina', 13, 3, 2, 'Problemas de Impresión con el equipo HP laserjet 4250 de Consultoria Jurídica conectada a través de la red con este equipo. ', 'impresora operativa', '2012-08-10', '2012-08-23');
INSERT INTO `t_soporte` VALUES (277, 4, 'Johnny', 'Gelvez', 13, 3, 2, 'Problemas de Impresión con el equipo HP laserjet 4250 de Consultoria Jurídica conectada a través de la red con este equipo. ', 'configuracion del nuevo software para impresion en red.', '2012-08-10', '2012-08-15');
INSERT INTO `t_soporte` VALUES (278, 4, 'Johnny', 'Gelvez', 5, 1, 2, 'Saludos buenos dias les envio la Lapto marca DELL, la cual la pantalla se pone de color azul despues de encendida, se presume de algun virus o el WINDOWS necesita actualizacion, requiero saber de ser posible el status del video - bean en reaparcion..Gracias', 'laptop entregada', '2012-08-13', '2012-08-16');
INSERT INTO `t_soporte` VALUES (279, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buen día, la presente es para solicitar apoyo con la revisión del CD que envió la Dirección de Catastro correspondiente  a la segunda entrega del Censo de Parcelas Julio 2012. lo que se quiere es verificar si hay incorporación de parcelas nievas y de ser así generar las planillas para las inspeccion', 'Buenas Tardes, se verificó la data, se generó listado para comparar registros con el 1er trimestre se genera 3 planillas que son los nuevos registros para el segundo trimestre, se remiten en formato PDF.', '2012-08-14', '2012-08-14');
INSERT INTO `t_soporte` VALUES (280, 2, 'José', 'Reina', 87, 6, 2, 'Buenas tardes, les escribo para solicitarles que por favor me instalen en el computador (asignado por el Instituto)los siguientes programas: Adobe Flash Player y Java Sun, motivado a que actualmente estoy realizando un trabajo y requiero tener los mismos para culminarlo.', 'caso resuelto', '2012-08-14', '2012-08-23');
INSERT INTO `t_soporte` VALUES (281, 2, 'José', 'Reina', 87, 6, 2, 'Buenas tardes, les escribo para solicitarles que por favor me instalen en el computador (asignado por el Instituto)los siguientes programas: Adobe Flash Player y Java Sun, motivado a que actualmente estoy realizando un trabajo y requiero tener los mismos para culminarlo.', 'listo caso repetido', '2012-08-14', '2012-08-23');
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
INSERT INTO `t_soporte` VALUES (293, 4, 'Johnny', 'Gelvez', 57, 6, 2, 'Solicitud de ampliación de la memoria, instalación de google crome y actualización de hora', 'cambio de horario, instalacion del google crome y ampliacion de memoria ram quedadno en 2 gb el equipo.', '2012-08-29', '2012-08-29');
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
INSERT INTO `t_soporte` VALUES (332, 4, 'Johnny', 'Gelvez', 56, 6, 2, 'Solicitud de actualización Java, Adobe Acrobat y Mozzilla Firefox.', 'actualizacion ejecutada', '2012-10-08', '2012-10-08');
INSERT INTO `t_soporte` VALUES (333, 4, 'Johnny', 'Gelvez', 58, 6, 2, 'mudanza de los equipos', 'debido a la falla estructural en laoficina de la consultoria juridica se procede a la reubicacion de los equipos a la sala situacional mientras se  solventa la problematica. quedando operativo y configurandole la impresora xerox N2125 para sus reportes.', '2012-10-10', '2012-10-10');
INSERT INTO `t_soporte` VALUES (334, 3, 'Alejandro', 'Perez', 51, 6, 2, 'se necesita que le creen usuario de Outlook a Radharani', 'Cambio de nombre y creacion de ususario', '2012-10-11', '2012-10-18');
INSERT INTO `t_soporte` VALUES (335, 2, 'José', 'Reina', 58, 3, 2, 'Problemas con la red. error de conexión', 'se reviso el CPU y las conexión de red, se reinicia el CPU y el equipo queda operatvo', '2012-10-15', '2012-10-15');
INSERT INTO `t_soporte` VALUES (336, 2, 'José', 'Reina', 14, 2, 2, 'Problema con la Impresora hp 9800', 'se revisa impresora, y se corrige la falla', '2012-10-15', '2012-10-16');
INSERT INTO `t_soporte` VALUES (337, 2, 'José', 'Reina', 70, 6, 2, 'LA IMPRESORAS NO FUNCIONAN, ES DECIR INTENTAMOS IMPRIMIR Y NO GENERA IMPRESIÓN', 'se verifica impresora, se reinicia la misma y se corrige falla', '2012-10-16', '2012-10-17');
INSERT INTO `t_soporte` VALUES (338, 2, 'José', 'Reina', 70, 6, 2, 'LA IMPRESORAS NO FUNCIONAN, ES DECIR INTENTAMOS IMPRIMIR Y NO GENERA IMPRESIÓN', 'caso duplicado', '2012-10-16', '2012-10-17');
INSERT INTO `t_soporte` VALUES (339, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buen día, la presente es para solicitar su colaboración con la impresión del mapa de zonificación ácustica del Municipio Chaco, y también queria solicitar un mapa de los puntos encologicos pero como una imagen de jpg. Gracias de ante mano', 'Buenos Días se emitieron dos planos de Zonificación de Ruido, ambos indican en revisión ya que no es un definitivo y la Dirección de Ambiente debe validar dicho plano.\r\n\r\nLo pueden mandar a buscar a 00, en la direcciónde informática', '2012-10-17', '2012-10-18');
INSERT INTO `t_soporte` VALUES (340, 3, 'Alejandro', 'Perez', 6, 6, 2, 'Mantenimiento preventivo ', 'Se activo Ccleaner y se activo aplicación para que windows mejore rendimiento ', '2012-10-17', '2012-10-17');
INSERT INTO `t_soporte` VALUES (341, 3, 'Alejandro', 'Perez', 5, 1, 2, 'Falla con el acroba', 'Reinstalación de Acroba', '2012-10-17', '2012-10-17');
INSERT INTO `t_soporte` VALUES (342, 3, 'Alejandro', 'Perez', 51, 2, 2, 'Se necesita la activación de Outlook a Daniel Lizcano', 'activado', '2012-10-17', '2012-10-29');
INSERT INTO `t_soporte` VALUES (343, 2, 'José', 'Reina', 2, 6, 2, 'Por favor, cambiar el nombre a mostrar del correo ipcapresidencia (Dice Ana Liz Flores) a Presidencia IPCA', 'resuelto', '2012-07-13', '2012-07-13');
INSERT INTO `t_soporte` VALUES (344, 3, 'Alejandro', 'Perez', 86, 3, 2, 'Correo Institucional', 'Se creo correo Institucional y se configuro en equipo', '2012-10-18', '2012-10-18');
INSERT INTO `t_soporte` VALUES (345, 3, 'Alejandro', 'Perez', 72, 3, 2, 'Correo Institucional', 'se configuro correo en equipo', '2012-10-18', '2012-10-18');
INSERT INTO `t_soporte` VALUES (346, 3, 'Alejandro', 'Perez', 51, 6, 2, 'hola buenos dias, se necesita el cambio de toner de impresora Xerox Workcentre 3550 Ps\r\nya tenemos el tonner  gracias', 'se realizo cambio', '2012-10-19', '2012-10-22');
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
INSERT INTO `t_soporte` VALUES (361, 4, 'Johnny', 'Gelvez', 13, 6, 2, 'Saludos cordiales; por medio de la presente soporte quisiera realizar solicitud de Instalación del programa ARGIS con la finalidad de dar inicio al mapeo de las denuncias y mantener actualizada la pagina web de la Institución. ', 'software instalado y funcionando.', '2012-10-29', '2012-10-31');
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
INSERT INTO `t_soporte` VALUES (382, 2, 'Jose', 'Reina', 64, 3, 2, 'La computadora RRHHIV que esta utilizando la funcionaria miriely caraballo no puede imprimir  ', 'Actualizacion del fire fox.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (383, 4, 'Johnny', 'Gelvez', 82, 2, 2, 'imposibilidad para imprimir en red', 'Equipo del auditor apagada, ews necesario mantener ese equipo encendido para poder imprimir. Feliz dia.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (384, 4, 'Johnny', 'Gelvez', 64, 1, 2, 'Verificacion del sistema del capta huella ya que no podemos conectarnos a la base de datos, asimismo verificar los nuevos ingresos  ', 'configuracion de la direccion ip para poder conectar el dispositivo', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (385, 4, 'Johnny', 'Gelvez', 70, 2, 2, 'IMPRESORA HP LASER  DE ADMINISTRACIÓN NO IMPRIME, POR FAVOR REVISAR FRACIAS', 'Reiniciado las impreciones en cola y la impresora como tal.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (386, 4, 'Johnny', 'Gelvez', 58, 3, 2, 'Problemas al solicitar impresion. cuadro de dialogo que señala problemas con la red', 'Impresora predeterminada, no era la configurada para imprimir. se conecta la impresora y se coloca predeterminada.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (387, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buen día, la presente es para solicitar de sus bienos oficios en cuanto a la revisión del CD que envió la Dirección de Catastro, para ver si hay parcelas con terrenos a vacios o construcciones paralizadas, para gererar la respectiva planilla de inspección. Gracioas. ', 'Se revisó la data y se emitió una planilla en PDF de la compración', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (388, 4, 'Johnny', 'Gelvez', 33, 2, 2, 'Buenas tardes, la presente es para informar que el mouse que se utiliza en el cpu de Inspectores I, presenta problemas ya que no responde. Por lo antes expuesto solicitamos sus buenos oficios en cuanto a la revisión y reposición del mismo si es necesario ya que no podemos utilizarlo actualmente. Gra', 'Se envio el equipo para su sustitucion.', '2012-11-15', '2012-11-15');
INSERT INTO `t_soporte` VALUES (389, 2, 'José', 'Reina', 87, 5, 2, 'Buenas tardes José Reina, te escribo para que por favor me ayudes a pasar un archivo de pdf a word.', 'caso resuelto', '2012-11-16', '2012-11-28');
INSERT INTO `t_soporte` VALUES (390, 4, 'Johnny', 'Gelvez', 62, 1, 2, 'Mucho agradecerè actualizar la lista de Outlook en mi equipo, el de presidencia y degi.  Mil gracias.', 'libreta actualizada. cualquier duda nos avisa de nuevo.', '2012-11-19', '2012-11-20');
INSERT INTO `t_soporte` VALUES (391, 85, 'Pablo', 'Mendoza', 19, 6, 2, 'Necesito por favor imprimir en el ploter, 5 imagenes de tamaño 70X70. estas imagenes las colocaré en una carpeta llamada "imagenes fuego", en el servidor del publico. alli estan las 5 imagenes', 'Se buscaron imagenes acordes para el tamaña de impresión, se emitieron 5 impresiones en tamaño 70x70', '2012-11-20', '2012-11-20');
INSERT INTO `t_soporte` VALUES (392, 3, 'Alejandro', 'Perez', 13, 5, 2, 'La presente es con la finalidad de realizar solicitud de instalación de acceso directo en la PC de Recepción del link http://www.chacao.gov.ve/index.php?option=com_djcatalog&view=showitem&id=8&Itemid=111, el cual refiere al usuario en la pag. de la Alcaldía a la solicitud del número de catastro.', 'Se creo el acceso directo.', '2012-11-20', '2012-11-20');
INSERT INTO `t_soporte` VALUES (393, 85, 'Pablo', 'Mendoza', 21, 1, 2, 'Buenos días!! necesito de su ayuda, ya que tengo en el equipo unos archivos y videos que no puedo ver. ', 'Se procedió a instalar el software VLC Media Player', '2012-11-21', '2012-11-26');
INSERT INTO `t_soporte` VALUES (394, 2, 'José', 'Reina', 52, 1, 2, 'En el equipo de Maria Curbelo al querer ingresar al sistema administrativo (Cidesa) no puede bajar ningun reporte porque le sale un error: problemas con Adobe Acrobat/Reader, por favor revisar', 'Se actualizó el Adobe', '2012-11-22', '2012-12-06');
INSERT INTO `t_soporte` VALUES (395, 85, 'Pablo', 'Mendoza', 87, 6, 2, 'Buenos días Pablo, le escribo para que por favor actualices en la página del SIGAR el inventario de las inspecciones realizadas en este mes. Ver la siguiente ruta G:\\Sigar\\Inventario de inspecciones.', 'Se actualizó la capa inspecciones en SIGAR. En proximos soportes por favor colocar en tipo de soporte SIG, Gracias', '2012-11-26', '2012-11-26');
INSERT INTO `t_soporte` VALUES (396, 85, 'Pablo', 'Mendoza', 87, 6, 2, 'Buenos días, les escribo para que por favor instalen en el computador que actualmente utilizo la aplicación para ver videos en el formato .VOB, motivado a que necesito revisar unos videos para realizar unas actividades con el colegio Andrés Bello. Muchas gracias.', 'Buensos días se procedió a instalar el Software VLC Media Player quedando activo para visualizar dichos videos.\r\n', '2012-11-26', '2012-11-26');
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
INSERT INTO `t_soporte` VALUES (422, 4, 'Johnny', 'Gelvez', 82, 6, 2, 'instalacion de toner', 'instalacion del toner a la impresora samgung, la misma operando sin novedad alguna', '2013-01-18', '2013-01-18');
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
INSERT INTO `t_soporte` VALUES (434, 3, 'Alejandro', 'Perez', 52, 6, 2, 'Buenos días, necesitamos que por favor se instale skype en la laptop asignada a la Dirección de Gestión Ambiental, así como preparar todo el equipo necesario para proyectar el día jueves 31 en la sala de reuniones de la Quinta en el marco del Evento Plataforma de Practicantes Comunitarias. También n', 'Se instalo vídeo bean, sonido, lapto y micrófono en sala de reuniones de Bella Vista.', '2013-01-29', '2013-02-05');
INSERT INTO `t_soporte` VALUES (435, 3, 'Alejandro', 'Perez', 7, 2, 2, 'Revisión urgente por favor no quiere iniciar el equipo.', 'Se formateo equipo y se instalo sistema operativo y servicios de red completos.', '2013-01-30', '2013-02-05');
INSERT INTO `t_soporte` VALUES (436, 4, 'Johnny', 'Gelvez', 82, 6, 2, 'NECESITO REVISION DE LA COMPUTADORA CREO QUE TIENE VIRUS', 'se reinstalo el avira anti Virus en español, se procede a ejecutar el analisis completo de ficheros en el disco, lo cual trae como resultado 2 virus y su posterior eliminacion. el mismo esta sin virus y operativo.', '2013-01-30', '2013-01-31');
INSERT INTO `t_soporte` VALUES (437, 2, 'José', 'Reina', 70, 1, 2, 'ERROR AL INTENTAR INGRESAR AL SISTEMA NACIONAL DE CONTRATISTAS, DICE LO SGTE: Este sitio web en compras.snc.gob.ve ha sido reportado como una web atacante y ha sido bloqueado basándose en sus preferencias de seguridad"', 'La falla la presentaba la pagina web en su momento.', '2013-02-01', '2013-02-04');
INSERT INTO `t_soporte` VALUES (438, 85, 'Pablo', 'Mendoza', 87, 8, 2, 'Buenos días Pablo, le escribo para pedirle el favor de revisar las licencias de Arcgis en todos los equipos, ya que indican que han espirado. Muchas gracias.', 'En la mañana de hoy se instaló ArcGis 10 en pc de los funiconarios Zulma Key, Peña Anggie, Perdomo  Roberto y Hernandez Katerin.', '2013-02-04', '2013-02-04');
INSERT INTO `t_soporte` VALUES (439, 4, 'Johnny', 'Gelvez', 58, 3, 2, 'Motivado a una reciente reasignación de bienes muebles, solicito un respaldo de la información recibida y enviada a través de mi cuenta de Outlook institucional Jfermin@ipcachacao.org.ve, información esta requerida para el ejercicio de mis funciones.', 'configurado correo en nueva pc', '2013-02-04', '2013-02-05');
INSERT INTO `t_soporte` VALUES (440, 85, 'Pablo', 'Mendoza', 21, 6, 2, 'Hola , buenas tardes!!!! Es para solicitar de sus buenos oficios la carpeta con la reseña fotografica del simulacro de Desalojo efectuado el dia de hoy en la empresa loreal de Venezuela, la misma fue enviada por rafael Moscoso. gracias', 'Buenos Días en la Unidad Galeria se encuentra la carpeta que indicas "simulacro Loreal", gracias', '2013-02-04', '2013-02-05');
INSERT INTO `t_soporte` VALUES (441, 2, 'José', 'Reina', 89, 1, 2, 'Buenas tardes, sigo sin poder acceder al sigar a algunas paginas de internet por no tener la ultima versión del Adobe Flash Player Error al tratar de entrar al SIGAR: "To view this page ensure that Adobe Flash Player version 10.2.0 or greater is installed". Gracias', 'Buenas tardes, se actualiza el adobe flasg player. y se Recomienda brir el Sigar con el navegador Mozilla Firefox o con el google crhome. ', '2013-02-04', '2013-02-05');
INSERT INTO `t_soporte` VALUES (442, 3, 'Alejandro', 'Perez', 65, 6, 2, 'Agradezco sea revisada mi computadora, ya que en el momento que requiero guardar el documento me arroja un mensaje: DISCO LLENO GUARDE EN OTRO LUGAR', 'Se movieron archivos a su disco local y se libero espacio. ', '2013-02-05', '2013-02-05');
INSERT INTO `t_soporte` VALUES (443, 4, 'Johnny', 'Gelvez', 91, 6, 2, 'Buenos dias la presente es para solicitar me sea nuevamente registrada mi huella dactilar en el capta huellas ya que no la reconoce. Muchas Gracias.', 'reconocimiento de huella\r\n', '2013-02-05', '2013-04-23');
INSERT INTO `t_soporte` VALUES (444, 4, 'Johnny', 'Gelvez', 75, 2, 2, 'El monitor no me prende por favor revisarlo', 'cambio de cable fuente poder, el que tenia se fractura y no estaba operativo..', '2013-02-05', '2013-02-05');
INSERT INTO `t_soporte` VALUES (445, 85, 'Pablo', 'Mendoza', 24, 1, 2, 'saludos no puedo abrir la herramienta argis , me indica el el arcinfo expiro su licencia. Ese es un mapa del municipio', 'Buenos Días se procedió a instalar la Versión 10 de ArcGis quedando funcionando la misma. Gracias estamos a la orden', '2013-02-06', '2013-02-07');
INSERT INTO `t_soporte` VALUES (446, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buenos Días por favor se requiere revisión de licencia ArcGis ya que la misma indica que expiró', 'Buenos Días se procedió a instalar la licencia arcgis 10 en las PC de los funcionarios, María Sanchez, Daniel Lizcano y Radharani Medina.\r\nGRacias', '2013-02-07', '2013-02-07');
INSERT INTO `t_soporte` VALUES (447, 2, 'José', 'Reina', 88, 1, 2, 'Problema al generar reportes con el Cidesa', 'se Actualiza navegador de Mozilla y se corrige la Falla', '2013-02-07', '2013-02-08');
INSERT INTO `t_soporte` VALUES (448, 2, 'José', 'Reina', 7, 1, 2, 'Solicitud de modificación de Resúmen Estadístico 2013.', 'se le explica a la funcionaria, el proceso para modificar el resumen estadisticos', '2013-02-08', '2013-03-21');
INSERT INTO `t_soporte` VALUES (449, 4, 'Johnny', 'Gelvez', 20, 6, 2, 'saludos, mucho sabria agradecer sus buenos oficios en pro de poder tener habilitado los puertos USB de la computadora que uso en virtud de poder bajar las fotografias que suelo tomar con el telefono BB en asuntos de la coordinacion de operaciones, de ante mano, gracias.', 'se procede a habilitar el puerto mediante el rgedit lokal_machine y configurando los parametros a hexadecimal y dandole el valor 3 se habilita y queda funcionando sin ningun inconveniente.', '2013-02-15', '2013-02-15');
INSERT INTO `t_soporte` VALUES (450, 2, 'José', 'Reina', 53, 2, 2, 'Buenas tardes\r\nEspero se encuentren bien.\r\nNecesito que porfa vengan a revisar la máquina de Julissa, que no prende.\r\nSaludos', 'se verifica conexión del cable de poder, quedadndo el equipo operativo', '2013-02-15', '2013-02-18');
INSERT INTO `t_soporte` VALUES (451, 4, 'Johnny', 'Gelvez', 92, 1, 2, 'Impresora no imprime', 'se hace la evaluacion de la impresora y se nota una falta de coneccion, se procede a desintalar la misma para posterior su re instalacion,bajo la cuenta de administrador cargar los driver y se manda a imprimir una pag de prubeba y un doc en la cuenta de presidenta. Lamisma funcionando para la hora.', '2013-02-18', '2013-02-18');
INSERT INTO `t_soporte` VALUES (452, 3, 'Alejandro', 'Perez', 5, 6, 2, 'Saludos Buenos dias, la impresora xerox presenta problemas al momento de la impresion, esta desconfigurada y necesita cambio de toner, le agradeceria su atencion.Gracias ', 'Se configuro el tamaño de papel en la impresora y también en los equipos de la Dirección.', '2013-02-19', '2013-02-20');
INSERT INTO `t_soporte` VALUES (453, 3, 'Alejandro', 'Perez', 60, 6, 2, 'Solicitud de winrar', 'Se instalo winrar', '2013-02-19', '2013-02-19');
INSERT INTO `t_soporte` VALUES (454, 4, 'Johnny', 'Gelvez', 33, 2, 2, 'Hola buenas tardes\r\n1.- No puedo imprimir\r\n2.- No puedo escanear\r\n3.- No tengo acceso al soporte tecnico\r\nGracias,  Norvelis', 'debido a un problema con el cable de red los funcionarios de la direccion de ambiente lograron solventar la situacion reconectando el cable, y ya para la hora esta operativo.', '2013-02-19', '2013-02-21');
INSERT INTO `t_soporte` VALUES (455, 2, 'José', 'Reina', 81, 1, 2, 'el sistema cide, s.a. para el año 2013 aparece en otro formato de presentación, necesito que por favor me lo coloquen como estaba anteriormente.gracias', 'se Actuliza mozilla firefox, y el sistema queda operativo', '2013-02-21', '2013-02-21');
INSERT INTO `t_soporte` VALUES (456, 4, 'Johnny', 'Gelvez', 54, 5, 2, 'Recuperación de clave al sistema', 'Se valido desde la base de datos My SQL y el usuario estaba bloqueado y se procedio a desbloquear el mismo para poder entrar al sistema de control de expediente.', '2013-02-21', '2013-02-21');
INSERT INTO `t_soporte` VALUES (457, 2, 'José', 'Reina', 82, 5, 2, 'atasco de papel en la impresora', 'Se Verifica impresora, se retira el papel atascado. Se realizan pruebas y la misma queda operativa..', '2013-02-21', '2013-02-22');
INSERT INTO `t_soporte` VALUES (458, 2, 'José', 'Reina', 81, 1, 2, 'presento nuevamente el formato de ayer', 'Se vuelve actualizar, el mozilla y se destilda la opción de actualizaciones automaticas', '2013-02-22', '2013-02-22');
INSERT INTO `t_soporte` VALUES (459, 4, 'Johnny', 'Gelvez', 60, 3, 2, 'Buenos días, el correo ipcacomunicaciones tiene problemas para enviar la información. Tarda mucho tiempo y al final da error. Mil gracias.', 'eliminacion de cuentas de funcionarios que no laboran en el instituto queda para la hora funcionando.\r\n', '2013-02-25', '2013-02-26');
INSERT INTO `t_soporte` VALUES (460, 2, 'José', 'Reina', 60, 6, 2, 'Buenos días, les escribo para solicitarles la instalción del software "Solicitud de Soporte Técnico" en la computadora de Maru. Mil gracias ', 'SE LE COLOCA EL ACCESO DEL SISTEMA DE SOLICITUD Y SOPORTE TÉCNICO A LA FUNCIONARIA MARIA RONDON Y SE LE INDICA SU USUARIO Y CONTRASEÑA PARA EL USU DEL MISMO', '2013-02-25', '2013-02-27');
INSERT INTO `t_soporte` VALUES (461, 4, 'Johnny', 'Gelvez', 25, 6, 2, 'Buenos dias requiero por favor creart una cuenta al funcionario Ronald Zerpa ya que el mismo comenzara a realizar trabajos en las novedades gracias espero su respuesta ', 'buenos dias john, hermano en referencia a tu solicitud la misma debe ser solicitada por el jefe de operaciones o director de proteccion civil, tambien por parte de rrhh debe ser solicitada la elaboracion de al credencial del compañero para asi poderle asignar una nombre en el dominio y posterior ela', '2013-02-26', '2013-02-28');
INSERT INTO `t_soporte` VALUES (462, 4, 'Johnny', 'Gelvez', 92, 1, 2, 'desactualizacion del mozilla', 'debido a que no se realizo las actualizaciones en el mes de diciembre por el funcionario que trabajo en esa computadora la misma presento fallas de plugin y otras desactualizaciones para esta fecha. la misma se descargaron e instalaron. Para la hora funcionando sin novedad.', '2013-02-26', '2013-02-26');
INSERT INTO `t_soporte` VALUES (463, 3, 'Alejandro', 'Perez', 5, 6, 2, 'saludos amigos por fa se necesita cambiarle el Toner K a la impresora XEROX, lo mas pronto posible motivado a que es lu unica que esta opertiva en esta Direccion  .Gracias', 'Se realizo el cambio', '2013-02-26', '2013-02-27');
INSERT INTO `t_soporte` VALUES (464, 3, 'Alejandro', 'Perez', 19, 1, 2, 'Buenos Días, por medio de la presente se requiere la eliminación de usuarios que ya no laboran en nuestra institución en el sistema de Novedades', 'se eliminan usuarios que ya no laboran en la institucion', '2013-02-28', '2013-03-01');
INSERT INTO `t_soporte` VALUES (465, 85, 'Pablo', 'Mendoza', 87, 5, 2, 'Buenas tardes Pablo, la presente es para solicitarle la capa de árboles del Municipio Chacao. Muchas gracias.', 'Buenas Tardes, se copia localmente en las maquinas de Roberto Perdomo, Katerin Hernandez y Anggie Peña.', '2013-02-28', '2013-02-28');
INSERT INTO `t_soporte` VALUES (466, 85, 'Pablo', 'Mendoza', 25, 6, 2, 'Hola buenos días mil gracias por depurar el listado del sistema integrado informacion pero aun hay funcionarios en dicho sistema que no tienen que ver con la dirección así si esta en su posibilidad borrar a a LOS MISMOS GRACIAS ', 'Buenos Días Ebert, aunque se ven otros funcionarios en el sistema, tegno entendido que es un sistema integrado, aunque se vean las personas allí es por permisología que solo pueden accesar a ciertas pantallas. Gracias por tu observación verificaremos de igual forma', '2013-03-01', '2013-03-01');
INSERT INTO `t_soporte` VALUES (467, 2, 'José', 'Reina', 70, 2, 2, 'imoresora no imprime, no se muestra ningun error', 'Se reinicia impresora y se revisa el servidor donde esta instalada la misma, se corrige falla quedando operativa', '2013-03-04', '2013-03-04');
INSERT INTO `t_soporte` VALUES (468, 2, 'José', 'Reina', 72, 2, 2, 'la impresora samsung no imprime eh reiniciado el eeuipo ya dos veces, indica imposible inciar impresion ', 'Se reinicia impresora y se revisa el servidor donde esta instalada la misma, se corrige falla quedando operativa', '2013-03-04', '2013-03-05');
INSERT INTO `t_soporte` VALUES (469, 4, 'Johnny', 'Gelvez', 60, 3, 2, 'Buenos días, les escribo nuevamente para reportar el mismo error en el ipcacomunicacines. Al enviar un correo se queda pegado en el buzón de salida y no sale. Jhonny Gelvez cuando atendió el soporte me indicó que tal vez existen correos de personas que ya no están en el instituto y por eso el mensaj', 'Feliz tarde ana, debido a los 6 correos que aparecian en cola con contacto hrodriguez@ipcachacao.org.ve no se permitia el envio de los demas mensajes, efectivamente ese correo no existe puesto que el funcionario no labora mas en el ipca. Una vez eliminado estos correos del buson de salida los mismo ', '2013-03-04', '2013-03-04');
INSERT INTO `t_soporte` VALUES (470, 4, 'Johnny', 'Gelvez', 25, 6, 2, 'Buenas tardes Por instrucciones del Coordinador de Operaciones T.S.U Oswaldo Martinez, se requiere revisión de la impresora HP que se encuentra en la sala de radio ya que tienes unos ruidos extraños gracias  ', 'se verifico y la misma no presento ruido para el momento de la inspeccion. ', '2013-03-04', '2013-03-12');
INSERT INTO `t_soporte` VALUES (471, 2, 'José', 'Reina', 88, 1, 2, 'Problemas con el navegador Mozilla Firefoz que no me permite generar los reportes de cidesa.', 'se actualizan algunos plugin que solicitaba el navegador', '2013-03-05', '2013-03-05');
INSERT INTO `t_soporte` VALUES (472, 2, 'José', 'Reina', 58, 6, 2, 'Recientemente tengo inconveniente para acceder al Sistema de Administración de Expediente llevado por la Consultoría Jurídica. Al intentar abrir el programa reaparece un cuadro donde expresa un error al acceder. Solicito una revisión de mi cuenta para verificar y sea corregido ese error y con ello p', 'se corrigue la falla para la fecha', '2013-03-05', '2013-03-06');
INSERT INTO `t_soporte` VALUES (473, 2, 'José', 'Reina', 60, 1, 2, 'Buenos días, por favor agilizar la velocidad de aparición de misión, visión, valores y objetivos de la web. Mil gracias', 'Se Modifica animación para que sean mas rápidas las apariciones', '2013-03-12', '2013-03-12');
INSERT INTO `t_soporte` VALUES (474, 2, 'José', 'Reina', 23, 3, 2, 'No Puedo imprimir con la impresora que se encuentra en Administracion Gracias', 'se configura nuevamente la impresora de administración, quedando la misma operativa', '2013-03-12', '2013-03-12');
INSERT INTO `t_soporte` VALUES (475, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, favor publicar en la web el nuevo contenido sobre "Punto Ecológico Móvil". Ya les envié arte del contenido y la foto correspondiente. Cualquier duda estoy a su orden. Mil gracias. ', 'se realiza la publicacion en la pagina del ipca', '2013-03-12', '2013-03-13');
INSERT INTO `t_soporte` VALUES (476, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, envié nota de prensa y foto para su publicación en nuestra nueva web. Mil gracias', 'se publica nota de prensa, en la página del IPCA', '2013-03-12', '2013-03-13');
INSERT INTO `t_soporte` VALUES (477, 4, 'Johnny', 'Gelvez', 62, 6, 2, 'Equipo de Presidencia està "colgado"', 'se procedio a realizar un apagado forzoso para terminar el cilo repetitivo donde no permitia apagar el equipo. para la hora funciona correctamente.\r\n', '2013-03-13', '2013-03-13');
INSERT INTO `t_soporte` VALUES (478, 4, 'Johnny', 'Gelvez', 72, 5, 2, 'Firma personal del correo express', 'se asesoro a la funcionaria para configurar su firma personal en el correo express... enrutandola x la herramienta opciones, firmas y desp texto y alli configurar su firma personalizada.', '2013-03-13', '2013-03-13');
INSERT INTO `t_soporte` VALUES (479, 4, 'Johnny', 'Gelvez', 77, 2, 2, 'El mouse esta presentando fallas ', 'verifico y funciona', '2013-03-19', '2013-04-01');
INSERT INTO `t_soporte` VALUES (480, 2, 'José', 'Reina', 60, 1, 2, 'Buenos días, por favor necesito publicar con bitly el link de la campaña mundial que tenemos en nuestra web y con ambos exploradores no me da el link directo. Mil gracias. ', 'se corrigue link para su fecha', '2013-03-19', '2013-03-26');
INSERT INTO `t_soporte` VALUES (481, 85, 'Pablo', 'Mendoza', 20, 8, 2, 'Buenas Tardes se requiere de su colaboración para la generación de Plano Recorrido Palmeros.', 'Buenas Tardes se generó plano 80x60 cm y se realiza entrega del mismo', '2013-03-19', '2013-03-19');
INSERT INTO `t_soporte` VALUES (482, 85, 'Pablo', 'Mendoza', 32, 8, 2, 'Buenas Tardes por meedio de la presente solicito un plano del Municipio chacao 60x60 para organizar operativo Semana Santa', 'Se imprime un ejemplar de Plano Municipio Chacao, con Manzanas, Vialidad y Urbanizaciones en 60x60', '2013-03-19', '2013-03-19');
INSERT INTO `t_soporte` VALUES (483, 4, 'Johnny', 'Gelvez', 60, 1, 2, 'Buenos dias, mi computadora se reinicio y ahora da un mensaje "Falta NTLDR CTRL + Alt +Supr para reiniciar". Por favor podrían revisarla a la brevedad. Mil gracias.', 'BUENAS TARDES, DEBIDO A UN PROBLEMA DE BUTEO POR PARTE DEL DISCO DURO EXTRA DE 80 GB SE PROCEDIO A RESPALDAR LA DATA DE 50 GB Y FORMATEAR EL MISMO, LUEGO SE PROCEDE A COPIAR EL RESPALDO Y A INSTALAR EL DISCO Y PARA LA HORA QUEDA FUNCIONANDO EL EQUIPO CON LA DATA RECUPERADA Y RESPALDADA. ', '2013-03-21', '2013-03-21');
INSERT INTO `t_soporte` VALUES (484, 4, 'Johnny', 'Gelvez', 82, 6, 2, 'necesito cambio de tonner de impresora', 'instalacion del nuevo toner. Queda funcionando para el momento.', '2013-03-22', '2013-03-22');
INSERT INTO `t_soporte` VALUES (485, 85, 'Pablo', 'Mendoza', 20, 8, 2, 'Buenos Días se requiere de un plano con caracter de urgencia de evento que se llevará a cabo en la noche de hoy en el Municipio, se entregan puntos de control para ser plasmados en el mapa\r\n', 'Buenos Días se generan y entregan dos copias de plano solicitado en medidas 90x45 cm sobre el eje de la Av. Francisco de Miranda, donde se plasman 9 puntos de control con servicios asistenciales cercanos al eje de la Av. \r\n', '2013-04-01', '2013-04-01');
INSERT INTO `t_soporte` VALUES (486, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Hola buen día, la presente es para solicitar apoyo con la generación de las planillas para inspección de terrenos correspondientes al 1er trimestre del año 2013, según la información que remite la Dirección de catastro de la Alcaldía. Gracias de ante mano por el apoyo.', 'Buenos Días se genera archivo PDF con 58 planillas de inspección, se graba directamente en PC de María Sanches via TeamViewer, por fallas en servicio de correo.', '2013-04-02', '2013-04-02');
INSERT INTO `t_soporte` VALUES (487, 2, 'José', 'Reina', 60, 6, 2, 'Buenas tardes, por favor publicar la noticia en nuestra web sobre el Curso BREC. En la carpeta público/programas está el texto de la noticia y la foto está en Galería carpeta José. Mil gracias', 'se carga informacion a la pagina web', '2013-04-02', '2013-04-04');
INSERT INTO `t_soporte` VALUES (488, 85, 'Pablo', 'Mendoza', 62, 6, 2, 'Buenos Días por medio de la presente se requiere copia de CD entregado a Pablo Mendoza', 'Buenos Días se realiza copia de CD y se entrega a la persona solicitante.', '2013-04-04', '2013-04-04');
INSERT INTO `t_soporte` VALUES (489, 4, 'Johnny', 'Gelvez', 89, 1, 2, 'Buenos días necesito su apoyo para la actualización del Programa Office, ya que actualmente tengo instalada una versión antigua, gracias ', 'muy buanas tardes ya el prgrama actulizado y la instalacion del antivirus 2013 que tambien estaba pendiente, mil disculpa por la demora en responder.', '2013-04-04', '2013-04-22');
INSERT INTO `t_soporte` VALUES (490, 1, 'Lillian', 'Chacon', 23, 2, 2, 'solicitud de cornetas para la computadora', 'Entregadas ...', '2013-04-06', '2013-04-18');
INSERT INTO `t_soporte` VALUES (491, 3, 'Alejandro', 'Perez', 22, 3, 2, 'hola buenos dias, el presente reporte es para notificarles que mi correo institucional le llegan los correos pero no los envia, espero de su pronta  gestion para solventar dicho inconveniente.', 'Se resolvió la falla', '2013-04-08', '2013-04-22');
INSERT INTO `t_soporte` VALUES (492, 2, 'José', 'Reina', 58, 1, 2, 'El compañero de trabajo Jorge Hidalgo, tiene inconveniente con la configuración de Outlook por cuando no tiene recepción y envio en su cuenta asignada Consultoria01. Asi mismo no cuenta con usuario para la solicitud de soporte al departamento de informatica. En espera de respuesta! ', 'jorge hidalgo no ha reportado mas el inconveniente del correo, por tal motivo se cierra la llamada, si posteriormente vuelve la falla, avisar a informatica. Gracias', '2013-04-08', '2013-04-26');
INSERT INTO `t_soporte` VALUES (493, 2, 'José', 'Reina', 75, 6, 2, 'Buenas tardes les informo que la impresora no quiere imprimir gracias', 'Se reinicia impresora y la misma queda operativa', '2013-04-08', '2013-04-09');
INSERT INTO `t_soporte` VALUES (494, 2, 'José', 'Reina', 70, 1, 2, 'EL CORREO OUTLOOK EXPRESS NO ENVIA MENSAJES SALEN DOS ERRORES', 'se revisa el correo y se determina que existia conflicto con correo que ya no existen.', '2013-04-16', '2013-04-16');
INSERT INTO `t_soporte` VALUES (495, 2, 'José', 'Reina', 58, 1, 2, 'El inconveniente con la dirección de correo "Consultoria01" persiste, tanto para el uso del Outlook como para el uso del correo por el internet. Se requiere inmediata asesoría y solución del problema.', 'soporte repetido al soporte 492, se resuelve caso con el programa Microsoft Outlook.', '2013-04-17', '2013-04-17');
INSERT INTO `t_soporte` VALUES (496, 85, 'Pablo', 'Mendoza', 21, 8, 2, 'Hola buenas tarde , requiero anexar todas las capa de riesgos 2009, a fin de poder asceder a la capa de educación.', 'Buenas Tardes se copia la capa Escuelas y seagrega al proyecto mxd', '2013-04-23', '2013-04-23');
INSERT INTO `t_soporte` VALUES (497, 4, 'Johnny', 'Gelvez', 72, 1, 2, 'EL SISTEMA CIDESA NO ME MUESTRA LOS REPORTES DE NINGUN REQUERIMIENTO REALIZADO ', 'se procede a entrar como administrador y descargar una actualizacion del mozilla firefox y la misma queda funcionando sin novedad.', '2013-04-25', '2013-04-25');
INSERT INTO `t_soporte` VALUES (498, 3, 'Alejandro', 'Perez', 70, 2, 2, 'IMPRESORA HP LASER DE ADMINISTRACION NO IMPRIME', 'Se elimino cola de impresión.', '2013-04-25', '2013-04-26');
INSERT INTO `t_soporte` VALUES (499, 2, 'José', 'Reina', 60, 1, 2, 'Buenos días, por favor publicar en nuestra web la nota de prensa y fotos remitida sobre Lanzamiento nuevas unidades 32 yardas', 'publicado. saludos', '2013-04-29', '2013-04-29');
INSERT INTO `t_soporte` VALUES (500, 4, 'Johnny', 'Gelvez', 4, 3, 2, 'Pc no conecta a la red', 'reinicio del ruther y la misma queda conectada..', '2013-04-29', '2013-04-29');
INSERT INTO `t_soporte` VALUES (501, 3, 'Alejandro', 'Perez', 81, 1, 2, 'Buenos días,en la pantalla aparece constantemente una ventana no sé si es un error y cada vez que le doy aceptar para que desaparezca aparece nuevamente, gracias', 'Se cerro y se abrió de nuevo sesión. ', '2013-04-29', '2013-04-29');
INSERT INTO `t_soporte` VALUES (502, 3, 'Alejandro', 'Perez', 82, 5, 2, 'Cambio de formato de archivo.', 'Se cambio archivo PDF en archivo de Excel.', '2013-04-29', '2013-04-29');
INSERT INTO `t_soporte` VALUES (503, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, por favor publicar en nuestra web el destacado enviado y agregar el link para que al darle click donde dice "Más información aquí" vaya directo a la nota de prensa publicada sobre los nuevos camiones de 32 yardas. Mil gracias. ', 'se publica destacado, no se le puede colocar link, aún sigue su investigación', '2013-04-30', '2013-05-03');
INSERT INTO `t_soporte` VALUES (504, 4, 'Johnny', 'Gelvez', 75, 6, 2, 'No se puede imprimir por la impresora hp laser jet', 'SE REINICIO LA MISMA Y SE IMPRIMIERON LOS TRABAJOS QUE ESTABAN PENDIENTE EN EL SISTEMA.', '2013-05-03', '2013-05-03');
INSERT INTO `t_soporte` VALUES (505, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, favor publicar nuevo contenido web enviado sobre la forma correcta de reciclar, dentro de la sección de Ambiente en la web. Mil gracias.  ', 'El contenido ya se encuentra públicado en la Web', '2013-05-03', '2013-05-07');
INSERT INTO `t_soporte` VALUES (506, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, favor publicar nota de prensa enviada: Cero afectación por lluvias', 'Se publica nota de prensa Solicitada', '2013-05-03', '2013-05-03');
INSERT INTO `t_soporte` VALUES (507, 2, 'José', 'Reina', 25, 1, 2, 'Hola buenas tardes la presente es para que anexes a al funcionario Ronald Zerpa ya que el mismo YA PERTENECE A LA DIRECCION DE OPRECIONES SIN QUE SOLICITAR Y ESPERANDO SU PRONTA RESPUESTA ', 'Buenos Dias, para anexar el funcionario para los sistemas de nuestro instituto, se debe realizar un Memorando mediante el Director.', '2013-05-03', '2013-05-07');
INSERT INTO `t_soporte` VALUES (508, 85, 'Pablo', 'Mendoza', 20, 8, 2, 'Por favor se requiere la impresión de 4 planos PDF en formato grande para colocar en la de conferencia de 00, los planos se encuentran en publico CAPAS A IMPRIMIR PARA RUEDA DE PRENSA CON ALCALDE', 'Se emiten 4 planos en medidas 90 x 1,20 mts.', '2013-05-06', '2013-05-06');
INSERT INTO `t_soporte` VALUES (509, 2, 'José', 'Reina', 25, 6, 2, 'Hola buenos dias la siguiente es para informarle que la computadora de los analistas de operaciones presenta fallas la misma se apaga sola se enciende y luego un rato mientras estas trabajando se apaga nuevamente gracias ', 'se consulta y la misma no ha vuelto a presentar la falla. Gracias', '2013-05-07', '2013-05-28');
INSERT INTO `t_soporte` VALUES (510, 2, 'José', 'Reina', 65, 6, 2, 'Se solicita la revisión de la impresora de esta Dirección, ya que desde ayer se encuentra papel atascado, gracias ', 'se Procede a retirar el papel atascado, se realizan pruebas de conexión con la impresora quedano la misma operativa', '2013-05-07', '2013-05-07');
INSERT INTO `t_soporte` VALUES (511, 2, 'José', 'Reina', 21, 6, 2, 'Mudar el equipo de un lugar a otro.', 'Se Realiza mudanza del equipo de un lugar, se enciende el equipo, se realizan pruebas de conexión quedando operativo..', '2013-05-07', '2013-05-07');
INSERT INTO `t_soporte` VALUES (512, 2, 'José', 'Reina', 60, 1, 2, 'Buenas tardes, favor publicar en nuestra web nota de prensa enviada sobre  \r\nEmilio Graterón: modelo preventivo de gestión de riesgos ha permitido superar con éxito inicio de las lluvias. Mil gracias. ', 'la nota de prensa se encuentra publicada', '2013-05-07', '2013-05-10');
INSERT INTO `t_soporte` VALUES (513, 3, 'Alejandro', 'Perez', 70, 6, 2, 'BUENOS DIAS EL PRESENTE ES PARA NOTIFICAR EL CAMBIO DE ACCESO A LA SOLICITUD DE SOPORTE EN LA MAQUINA ASIGNADA A LA NVA CONTADORA, ASI COMO EL CAMBIO EN EL OUTLOOK, GRACIAS', 'Se configuro correo al equipo', '2013-05-14', '2013-06-19');
INSERT INTO `t_soporte` VALUES (514, 85, 'Pablo', 'Mendoza', 19, 1, 2, 'Buenos días, por favor necesito que me instalen en mi computador el programa arcgis. Gracias', 'En la mañana de hoy 30-05-13, se procedió a la instalación de ArcGis, qeudando operativo el mismo', '2013-05-28', '2013-05-30');
INSERT INTO `t_soporte` VALUES (515, 4, 'Johnny', 'Gelvez', 51, 5, 2, 'buen dia, el equipo de los auxiliares ambientales se reinicia a cada ratico', 'el equipo presenta fallas de tarjeta madre y de disco duro. el mismo quedara para su desincorporación.', '2013-05-30', '2013-07-03');
INSERT INTO `t_soporte` VALUES (516, 2, 'José', 'Reina', 94, 1, 2, 'crear usuario de soporte', 'usuario creado', '2013-05-30', '2013-05-31');
INSERT INTO `t_soporte` VALUES (517, 2, 'José', 'Reina', 51, 2, 2, 'Hola buenos dias, No puedo ingresar al internet sale una leyenda que el administzrador ha bloqueado las paginas\r\ngracias', 'indicar las paginas que le aparecen bloqueadas.', '2013-05-30', '2013-05-30');
INSERT INTO `t_soporte` VALUES (518, 85, 'Pablo', 'Mendoza', 22, 8, 2, 'Buenas Tardes por medio de la presente se requiere la impresión de 10 planos correspondientes al Teatro Municipal en doble carta', 'Buenas Tardes, se imprimen 10 planos según cd provisto, se entregan los mismos.', '2013-05-30', '2013-05-30');
INSERT INTO `t_soporte` VALUES (519, 2, 'José', 'Reina', 89, 1, 2, 'Buenos días necesito por favor de sus buenos oficios para que revisen mi maquina, ya que no abren algunos archivos de excel, gracias', 'Se revizó equipo, y los archivos funcionan, cualquier inconveniente favor avisar, gracias', '2013-05-31', '2013-06-05');
INSERT INTO `t_soporte` VALUES (520, 2, 'José', 'Reina', 51, 3, 2, 'Configuración Varios', 'Se configura Sistema de Soporte y Archivo de Internet', '2013-05-31', '2013-05-31');
INSERT INTO `t_soporte` VALUES (521, 2, 'José', 'Reina', 90, 3, 2, 'Configuración Varios', 'Se Configura la impresora en Red HP Deskjet 9800, \r\nSe Elimina Impresora de Educación,\r\nSe Verifica Archivo de Internet', '2013-05-31', '2013-05-31');
INSERT INTO `t_soporte` VALUES (522, 2, 'José', 'Reina', 33, 3, 2, 'Configuración Varios', 'Se Configura la impresora en Red HP Deskjet 9800, \r\nSe Instala Driver del Scaner Xero 3550, \r\nSe Verifica Sistema de Soporte.', '2013-05-31', '2013-05-31');
INSERT INTO `t_soporte` VALUES (523, 2, 'José', 'Reina', 29, 3, 2, 'Configuración Varios', 'Equipo Auxiliar Operaciones: \r\nSe configura Sistema de Soporte,\r\nSe conectan las unidades de Red (publico, operaciones, galería),\r\nSe Configura archivo de Internet.', '2013-05-31', '2013-05-31');
INSERT INTO `t_soporte` VALUES (524, 2, 'José', 'Reina', 27, 3, 2, 'Configuración Varios', 'Equipo de Victor ochoa: \r\nSe configura Sistema de Soporte,\r\nSe conectan las unidades de Red (publico, operaciones, galería),\r\nSe Configura archivo de Internet.', '2013-05-31', '2013-05-31');
INSERT INTO `t_soporte` VALUES (525, 2, 'José', 'Reina', 27, 3, 2, 'Configuración Varios', 'Equipo Victor Ochoa: \r\nSe configura Sistema de Soporte,\r\nSe conectan las unidades de Red (publico, operaciones, galería),\r\nSe Configura archivo de Internet.', '2013-05-31', '2013-05-31');
INSERT INTO `t_soporte` VALUES (526, 2, 'José', 'Reina', 25, 3, 2, 'Configuración Varios', 'Equipo de Radio Operadores: \r\nSe configura Sistema de Soporte,\r\nSe Configura archivo de Internet.', '2013-05-31', '2013-05-31');
INSERT INTO `t_soporte` VALUES (527, 2, 'José', 'Reina', 19, 3, 2, 'Configuración Varios', 'Buen Dia se configuran los siguientes equipo Roberto, Angie, Katherine y Zulma: \r\nSe configura Sistema de Soporte,\r\nSe conectan las unidades de Red(galería),\r\nSe Configura archivo de Internet.', '2013-05-31', '2013-05-31');
INSERT INTO `t_soporte` VALUES (528, 2, 'José', 'Reina', 60, 1, 2, 'Buenos días, favor publicar nota de prensa y foto enviada sobre participación del Alcalde en Ginebra. Mil gracias. ', 'se publican notas de prensas', '2013-06-04', '2013-06-07');
INSERT INTO `t_soporte` VALUES (529, 85, 'Pablo', 'Mendoza', 87, 6, 2, 'Buenas tardes Pablo, la presente es para que por favor me envie el registro de las inspecciones de riesgos realizadas en el  2012 y 2013. Gracias', 'Buenas Tardes se remite via correo institucional inspecciones año 2012 y 2013\r\n\r\n', '2013-06-10', '2013-06-10');
INSERT INTO `t_soporte` VALUES (530, 85, 'Pablo', 'Mendoza', 87, 6, 2, 'Pablo disculpe no me ha llegado la informacion', 'Buenas Tardes Anggie la infromación fué enviada con Ud. Acá en nuestra oficina, por favor acerquese con un pendrive o pasela buscando que la queme en CD', '2013-06-10', '2013-06-10');
INSERT INTO `t_soporte` VALUES (531, 2, 'José', 'Reina', 89, 3, 2, 'Buenos días, solicito sus buenos oficios a los fines de que se me coloque en red con la impresora ubicada en la oficina de los inspectores ambientales, gracias', 'Se instala en red la impresora ubicada en el equipo de los inspectores ambientales', '2013-06-17', '2013-06-17');
INSERT INTO `t_soporte` VALUES (532, 2, 'José', 'Reina', 51, 3, 2, 'buenas tardes, me aparece un error al intentar escanear, desde mi PC', 'Se reinicia escaner y equipo, se verifican la conexiones y se realiza prueba de escaneo', '2013-06-17', '2013-06-17');
INSERT INTO `t_soporte` VALUES (533, 4, 'Johnny', 'Gelvez', 59, 1, 2, 'Solicito instalación urgente de office 2007', 'instalacion del oficce 2007, actualñizacion del avira anti virus y instalacion del internet explorer 8, configurando el mismo.', '2013-06-17', '2013-06-18');
INSERT INTO `t_soporte` VALUES (534, 2, 'José', 'Reina', 53, 3, 2, 'Problema al enviar Correo especificamente a Radharani', 'Se verifica el equipo de nina y maria el cual aparecia el correo con otra identificacion, se corrige quedando operativo', '2013-06-18', '2013-06-18');
INSERT INTO `t_soporte` VALUES (535, 3, 'Alejandro', 'Perez', 20, 2, 2, 'Equipo no enciende', 'Se realizo revisión al equipo el mismo presenta falla en la tarjeta madre, no se tiene este tipo de repuesto en la dirección, recomendamos solicitar equipo nuevo ya que este de no podrá ser usado para la función que requiere.', '2013-06-19', '2013-06-19');
INSERT INTO `t_soporte` VALUES (536, 3, 'Alejandro', 'Perez', 28, 6, 2, 'Instalación de equipo', 'Se configuro equipo con sistema operativo completo y demás software a la estación de trabajo, también se creo usuario y se le dieron permisos a los volúmenes de red.', '2013-06-19', '2013-06-19');
INSERT INTO `t_soporte` VALUES (537, 85, 'Pablo', 'Mendoza', 67, 2, 2, 'Buenos Días por medio de la presente se requiere de su colaboración , para la instalación de monitores (2)  asignados a nuetsra dirección  ', 'Buenos Días, se procedió a la instalación de dos monitores a las funcionarias Jessica Osorio y Solanyeri Arcia.', '2013-06-19', '2013-06-19');
INSERT INTO `t_soporte` VALUES (538, 4, 'Johnny', 'Gelvez', 32, 6, 2, 'no lee los archivos adobe', 'ejecución desde el administrador el programa adobe reader y posterior, dentro del usuario solicitante la visualización del documento en PDF. ', '2013-06-19', '2013-06-20');
INSERT INTO `t_soporte` VALUES (539, 4, 'Johnny', 'Gelvez', 51, 2, 2, 'Buenos dias, tengo problemas para abrir paginas de internet, sale la leyenda que ha sido bloqueda por el administrador', 'Muy buenas tardes, la misma es el control de acceso a la red por lo tanto invitamos a verificar el tipo de pagina a la cual desea acceder.', '2013-06-20', '2013-06-20');
INSERT INTO `t_soporte` VALUES (540, 4, 'Johnny', 'Gelvez', 51, 2, 2, 'Hola buenas tardes no puedo imprimir por la impresora 1018 la unica que hay auxilio!!!!!', 'Muy buenas tardes, se procede a actualizar el adobe reader para que pueda hacer la conexión con la impresora, también se modifica el nombre de la directora de ambiente ya que en la lista de direcciones estaba des actualizado, la misma es IPCAAMBIENTE@IPCACHACAO.ORG.VE', '2013-06-20', '2013-06-20');
INSERT INTO `t_soporte` VALUES (541, 85, 'Pablo', 'Mendoza', 13, 2, 2, 'Buenos Días, por medio de la presente se requiere apoyo para le cambio de monitor en la recpción de 01 por asignación de monitor plano', 'Buenos Días se realizó cambio de monitor, subiendo el antiguo a la oficina de Directora de Admnistración, pendiente de su parte para su respectiva desincorporación administrativa', '2013-06-21', '2013-06-21');
INSERT INTO `t_soporte` VALUES (542, 95, 'Marian', 'Salazar', 96, 3, 2, 'Problema con el Correo', 'se verifica y se configura nuevamente el correo', '2013-06-21', '2013-06-21');
INSERT INTO `t_soporte` VALUES (543, 4, 'Johnny', 'Gelvez', 32, 6, 2, 'buenas tardes, se vea la posibilidad de mover el cable de red de lugar. Gracias', 'cable re ubicado ', '2013-06-21', '2013-06-26');
INSERT INTO `t_soporte` VALUES (544, 85, 'Pablo', 'Mendoza', 87, 6, 2, 'Buenos días Pablo, le escribo para que por favor me imprima dos planos de 45x45 de las manzanas próximas al colegio Andrés Bello. Muchas gracias.', 'Buenos Días, se hace entrega de dos planos 45x45, con lo solicitado. ', '2013-06-26', '2013-06-26');
INSERT INTO `t_soporte` VALUES (545, 4, 'Johnny', 'Gelvez', 62, 6, 2, 'No se me permite imprimir.  Gracias anticipadas', 'la misma se verifico mandando a imprimir una documento en blanco y posterior a la prueba de conexión siendo satisfactoria se procede a imprimir el documento solicitado. Para la hora sin novedad de conexión ', '2013-06-26', '2013-06-26');
INSERT INTO `t_soporte` VALUES (546, 4, 'Johnny', 'Gelvez', 19, 6, 2, 'por favor incluir la libreta de direcciones institucional en el manejador de correo', 'directorio actualizado', '2013-06-27', '2013-06-27');
INSERT INTO `t_soporte` VALUES (547, 4, 'Johnny', 'Gelvez', 19, 6, 2, 'Buen día por favor liberar el acceso a carpetas con data de trabajo en directorio C, ya que indica cceso denegado ', 'carpetas agregadas a su usuario y así no tener problemas de permiso. ', '2013-06-27', '2013-07-02');
INSERT INTO `t_soporte` VALUES (548, 4, 'Johnny', 'Gelvez', 53, 3, 2, 'Necesitamos que por revisen la computadora de Julissa, pues presenta mucha lentitud y en el teclado no funcionan varias teclas. Gracias', 'el equipo fue revisado por alejandro perez y se tomo el caso.', '2013-06-27', '2013-08-07');
INSERT INTO `t_soporte` VALUES (549, 4, 'Johnny', 'Gelvez', 32, 1, 2, 'buenas tardes, se solicita el cambio de clave de ingreso a la laptop compaq presario F562LA asignada a mi persona, la actual es whitesox04, la nueva la colocan ustedes y me la indican via correo, gracias de antemano.', 'contraseña restablecida la misma es:\r\n123456\r\n ', '2013-06-27', '2013-06-27');
INSERT INTO `t_soporte` VALUES (550, 2, 'José', 'Reina', 23, 6, 2, 'instalar mozila, y correo institucional en el celular corporativo', 'se instalo mizilla en la PC y se configura correo institucional en celular operativo', '2013-06-28', '2013-07-02');
INSERT INTO `t_soporte` VALUES (551, 3, 'Alejandro', 'Perez', 21, 2, 2, 'Hola, buenas tardes!!!!! En reunión de directores se acordo que el personal de riesgo se debe mudar hoy en la tarde a la sede O1, Es para saber si nos autorizan a desintalar e instalar los equipos,por ser esta su competencia?   ', 'Si pueden trasladar los equipo a 01 que informática los instala', '2013-07-01', '2013-07-02');
INSERT INTO `t_soporte` VALUES (552, 4, 'Johnny', 'Gelvez', 89, 2, 2, 'Buenas tardes!, solicito sus buenos oficios para que se me preste un disco duro externo, gracias', 'buenas tardes el disco en calidad de préstamo es el numero 1 asignado a esta dirección.', '2013-07-01', '2013-07-02');
INSERT INTO `t_soporte` VALUES (553, 3, 'Alejandro', 'Perez', 89, 2, 2, 'Buenos dias, solicito su colaboración para que se habilite la entrada USB de la máquina que utiliza la funcionaria Norvelis Castro, gracias', 'Norvelis imprimirá por la maquina de informática Alejandro Perez.', '2013-07-02', '2013-07-02');
INSERT INTO `t_soporte` VALUES (554, 85, 'Pablo', 'Mendoza', 89, 5, 2, 'Buenos días solicito su apoyo para que se me asesore como ingresar vía internet al Outlook Institucional, gracias', 'Se indicó forma de entrada al correo institucional vía WEB así como se suministró la clave del mismo.', '2013-07-02', '2013-07-03');
INSERT INTO `t_soporte` VALUES (555, 4, 'Johnny', 'Gelvez', 84, 1, 2, 'Buenas Tardes, por favor requiero la aplicación Winrar para comprimir archivos', 'Programa instalado.. ', '2013-07-02', '2013-07-03');
INSERT INTO `t_soporte` VALUES (556, 4, 'Johnny', 'Gelvez', 86, 2, 2, 'HOLA BUEN DIA LA IMPRESORA HP 4250 NO FUNCIONA', 'reinicio la conexión de la impresora y para la hora conectada sin detalles.', '2013-07-03', '2013-07-03');
INSERT INTO `t_soporte` VALUES (557, 85, 'Pablo', 'Mendoza', 21, 8, 2, 'Buenas, escribo para solicitar el soporte del sistema las inspecciones de riesgos del año 2013 realizadas hasta  el 28 de junio.', 'Se envía por correo Institucional archivo excel con las inspecciones del primer semestre 2013.', '2013-07-03', '2013-07-03');
INSERT INTO `t_soporte` VALUES (558, 4, 'Johnny', 'Gelvez', 23, 1, 2, 'instalación de programa para programación de radios', 'programa instalado.', '2013-07-08', '2013-07-09');
INSERT INTO `t_soporte` VALUES (559, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Buenas tardes, la presente es para solicitar de sus buenos oficios en la actualización de capas de parcelas, ya que tengo es del 2011. Gracias.', 'Se graba data arcgis actualizada julio 2103 en equipo, y se actualiza proyecto apuntando parcela y subparcela a nueva data.', '2013-07-09', '2013-07-09');
INSERT INTO `t_soporte` VALUES (560, 4, 'Johnny', 'Gelvez', 13, 5, 2, 'no envia correo', 'se actualizo el directorios con correos que ya no existen', '2013-07-10', '2013-07-10');
INSERT INTO `t_soporte` VALUES (561, 4, 'Johnny', 'Gelvez', 59, 2, 2, 'La impresora local hp deskjet D1360 no permite imprimir', 'solución del caso hecho por el mismo usuario.', '2013-07-10', '2013-07-12');
INSERT INTO `t_soporte` VALUES (562, 4, 'Johnny', 'Gelvez', 70, 1, 2, 'Buenos días el presente es para solicitar actualización del Mozilla Frefox de la verción 20.0 al 3.6 gracias', 'actualización ejecutada.', '2013-07-12', '2013-08-06');
INSERT INTO `t_soporte` VALUES (563, 3, 'Alejandro', 'Perez', 62, 6, 2, 'No puedo imprimir en la impresora de Administraciòn', 'Se elimino cola de impresión\r\n', '2013-07-15', '2013-07-15');
INSERT INTO `t_soporte` VALUES (564, 3, 'Alejandro', 'Perez', 67, 6, 2, 'Equipos para instalar', 'Se instalaron equipos de Ladera, Arsia y Simanca.', '2013-07-15', '2013-07-15');
INSERT INTO `t_soporte` VALUES (565, 3, 'Alejandro', 'Perez', 67, 6, 2, 'Equipos para instalar', 'Se instalaron equipos de Ladera, Arsia y Simanca.', '2013-07-15', '2013-07-15');
INSERT INTO `t_soporte` VALUES (566, 3, 'Alejandro', 'Perez', 72, 1, 2, 'HOLA BUEN DIA HAY FALLAS PARA IMPRIMIR', 'La impresora se encontraba en pausa.', '2013-07-15', '2013-07-16');
INSERT INTO `t_soporte` VALUES (567, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar en nuestra nueva web la nota de prensa sobre II Fase Chacao Recicla con foto remitida. Mil gracias.', 'la nota de prensa ha sido publicada.', '2013-07-15', '2013-07-16');
INSERT INTO `t_soporte` VALUES (568, 85, 'Pablo', 'Mendoza', 21, 8, 2, 'Buenas tardes, La coord de riesgo requiere actualizar el campo de inspecciones para incorporar las insp de los puestos de perro calientes.Especificamente el campo de las acciones,colocar formato para puestos de perros calientes. ', 'Buenas Tardes se procedió a incluir en los dominios de la geodatabase de 4 PC en las cuales se cargan las inspeccionesa de riesgo, así como en la capa publicada en SIGAR', '2013-07-16', '2013-07-17');
INSERT INTO `t_soporte` VALUES (569, 85, 'Pablo', 'Mendoza', 35, 2, 2, 'Buenos días, por medio de la presente se requiere de su apoyo para sustituir el cable Paralelo/USB ya que el mismo se daño al movilizar los equipos', 'Buenas Tardes, se procedió a ubicar el cable para su adquisición, y se colocó el día lunes 15 en horas de la tarde, probando el equipo quedando operativo', '2013-07-17', '2013-07-17');
INSERT INTO `t_soporte` VALUES (570, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, favor publicar en nuestra web dos contenidos nuevos remitidos a su correo. Uno es sobre evite formular denuncias por twitter para la sección atención a la comunidad. El otro es sobre sismo para la sección de Educación. Mil gracias ', 'denuncia publicada', '2013-07-17', '2013-07-17');
INSERT INTO `t_soporte` VALUES (571, 3, 'Alejandro', 'Perez', 58, 3, 2, 'Inconvenientes con la impresora de consultoría, aparece cuadro de información sobre error al seleccionar la impresora.', 'Se configuro nueva dirección IP.', '2013-07-18', '2013-07-18');
INSERT INTO `t_soporte` VALUES (572, 3, 'Alejandro', 'Perez', 95, 3, 2, 'Hola! Tenemos problemas con la impresora, cada vez que envío un documento a imprimir indica que no está disponible en la red. Espero su pronta ayuda... Gracias :)', 'Se configuro nueva dirección IP.', '2013-07-18', '2013-07-18');
INSERT INTO `t_soporte` VALUES (573, 3, 'Alejandro', 'Perez', 55, 3, 2, 'Solicitud de correo Institucional', 'Se creo y se configuro correo al usuario Carlota Segovia.', '2013-07-18', '2013-07-18');
INSERT INTO `t_soporte` VALUES (574, 85, 'Pablo', 'Mendoza', 33, 8, 2, 'Hola buen día, la presente es para solicitar apoyo con la generación de las planillas para inspección de terrenos correspondientes al 1er trimestre del año 2013, según la información que remite la Dirección de catastro de la Alcaldía. Gracias de ante mano por el apoyo.', 'Buenas Tardes se genera archivo PDF con 5 planillas de inspección, se envía vía Outlook.', '2013-07-18', '2013-07-18');
INSERT INTO `t_soporte` VALUES (575, 4, 'Johnny', 'Gelvez', 54, 6, 2, 'instalacion de equipo', 'la misma es para notificarle que evaluando y reinstalando el equipo entregado por la dirección de consultoría, la misma presento fallas en el bios por lo que no permitió instalar algunos archivos con la extensión .dll y la cual son criticas para la instalación del S.O Windows xp profesional. por tal', '2013-07-23', '2013-07-23');
INSERT INTO `t_soporte` VALUES (576, 2, 'José', 'Reina', 97, 3, 2, 'reubicacion del punto de red para el auditor interno.', 'se coloca canaleta y se conecta la computadora hacia un nuevo lugar', '2013-07-25', '2013-07-26');
INSERT INTO `t_soporte` VALUES (577, 4, 'Johnny', 'Gelvez', 89, 6, 2, 'Buenas tardes, solicito de sus buenos oficios para que el día 26-07-13 se proceda a tomar la foto para el carnet del funcionario Jorman González, el cual estará de guardia como inspector ambiental el día de mañana, gracias', 'foto tomada.', '2013-07-25', '2013-07-29');
INSERT INTO `t_soporte` VALUES (578, 3, 'Alejandro', 'Perez', 27, 6, 2, 'Unidad Compartidad de la estadisticas operaciones y Riesgo', 'Se conecto unidad de estadistica ', '2013-07-25', '2013-07-26');
INSERT INTO `t_soporte` VALUES (579, 3, 'Alejandro', 'Perez', 27, 6, 2, 'Soporte Tecnico,en la computadora de los Analista de operaciones-radio op', 'conexion de volumen de estadisticas en el equipo', '2013-07-25', '2013-07-26');
INSERT INTO `t_soporte` VALUES (580, 2, 'José', 'Reina', 27, 6, 2, 'Reporte de novedades a la computadora de victor ochoa-Sinf.', 'Se configura y se deja operativo el sistema de novedades al equipo de Victor Ochoa', '2013-07-25', '2013-09-03');
INSERT INTO `t_soporte` VALUES (581, 3, 'Alejandro', 'Perez', 27, 6, 2, 'Outlook en la computadora de victor Ochoa', 'Configuracion de correo institucional en el equipo', '2013-07-25', '2013-07-26');
INSERT INTO `t_soporte` VALUES (582, 3, 'Alejandro', 'Perez', 27, 6, 2, 'Outlook en lacomputadora de los Analista de operaciones-radio op.\r\n', 'Se configuro correo institucional en el equipo', '2013-07-25', '2013-07-26');
INSERT INTO `t_soporte` VALUES (583, 3, 'Alejandro', 'Perez', 27, 6, 2, 'Soporte Tecnico,en la computadora de victor Ochoa.', 'Se configuro acceso de soporte tecnico', '2013-07-25', '2013-07-26');
INSERT INTO `t_soporte` VALUES (584, 3, 'Alejandro', 'Perez', 27, 2, 2, 'Configuraciòn del equipo sala situacional a la red.', 'Se configuro equipo en la red con su nuevo usuario y volúmenes de red. ', '2013-07-26', '2013-07-29');
INSERT INTO `t_soporte` VALUES (585, 4, 'Johnny', 'Gelvez', 87, 6, 2, 'Buenas tardes José Reina, le escribo para que por favor revise mi computador, ya que creo que tiene un virus. Muchas gracias.', 'se procede a ejecutar el comando, de analizar el disco encontrado 4 virus. cabe destacar que también se procedió a limpiar los pendrives y teléfonos celulares para así no dejar resto de virus en algún dispositivo  de almacenamiento masivo.', '2013-07-26', '2013-07-29');
INSERT INTO `t_soporte` VALUES (586, 4, 'Johnny', 'Gelvez', 19, 6, 2, 'Buenas tardes, necesito que por favor revisen mi computador, creo que tiene un virus. Gracias.', 'se procede a configurar el sistema anti virus avira para que al detectar archivos maliciosos los elimine y no los coloque en el baúl de cuarentena. Una vez configurado se procede a ejecutar el comando de escanear pistas del disco duro y se detectan 7 virus y 40 en el baúl de cuarentena.', '2013-07-26', '2013-07-29');
INSERT INTO `t_soporte` VALUES (587, 3, 'Alejandro', 'Perez', 51, 2, 2, 'Buenas tardes, Radharani necesita que le conecten a la red y le instalen el internet en la oficina que ocupaba antiguamente la lic. ana ugueto.\r\ngracias', 'Se instalo cable de red con sus conectores y canaleta.', '2013-07-26', '2013-07-29');
INSERT INTO `t_soporte` VALUES (588, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, favor publicar en la sección Gestión Ambiental el contenido web enviado sobre Conoce la ubicacion de tus 24 puntos ecológicos. Mil gracias.  ', 'publicado', '2013-07-31', '2013-08-08');
INSERT INTO `t_soporte` VALUES (589, 4, 'Johnny', 'Gelvez', 89, 2, 2, 'Buenas tardes, quería solicitar si esta dentro de sus posibilidades, la asignación de unas cornetas para la computadora asiganada al Director o Directora, ya que en ocasiones se hace necesario escuchar audios de videos de problemáticas ambientales y de residuos sólidos. Gracias', 'se le asigna corneta dando las especificaciones en la nota de entrega.', '2013-07-31', '2013-07-31');
INSERT INTO `t_soporte` VALUES (590, 2, 'José', 'Reina', 86, 3, 2, 'HOLA BUEN DIA NO PUEDO IMPRIMIR, GRACIAS!!', 'Se revisa conexción de cable de red y la misma aparece bien conectada, se realiza una prueba de impresion quedando operativa', '2013-08-02', '2013-08-05');
INSERT INTO `t_soporte` VALUES (591, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar en la sección "Gestión Ambiental" los 6 contenidos remitidos sobre ¿Sabes cómo reciclar?. Mil gracias ', 'publicado los 6 contenidos WEB', '2013-08-02', '2013-08-08');
INSERT INTO `t_soporte` VALUES (592, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar Destacado Web remitido a su correo sobre "24 puntos Ecológicos" y crear el link con el contenido web ya publicado "Conoce la ubicación de tus puntos ecológicos", de manera que al darle click al destacado te lleve a este nuevo contenido web ya publicado. Mil gracias', 'se publica destacado web en la pagina, la misma no lleva link por cuestiones de plantilla, sin embargo se notificará a tecnología de la alcaldia', '2013-08-02', '2013-08-05');
INSERT INTO `t_soporte` VALUES (593, 2, 'José', 'Reina', 60, 3, 2, 'Favor publicar en Noticias, la nota de prensa y foto remitida sobre Conmemoracion de los 46 años del sismo de Caracas. Mil gracias ', 'publicado ', '2013-08-02', '2013-08-08');
INSERT INTO `t_soporte` VALUES (594, 4, 'Johnny', 'Gelvez', 27, 5, 2, 'soporteno funciona', 'conexión funcionando ', '2013-08-06', '2013-08-06');
INSERT INTO `t_soporte` VALUES (595, 4, 'Johnny', 'Gelvez', 26, 5, 2, 'no funciona', 'conexión funciona', '2013-08-06', '2013-08-06');
INSERT INTO `t_soporte` VALUES (596, 4, 'Johnny', 'Gelvez', 70, 1, 2, 'IMPRESORA HP NO IMPRIME,', 'restablecimiento al cambiar el nombre de la impresora por su nombre original en el servidor.', '2013-08-07', '2013-08-07');
INSERT INTO `t_soporte` VALUES (597, 4, 'Johnny', 'Gelvez', 81, 2, 2, 'presento un problema con la impresora no quiere imprimir y nos urgue por favor', 'reinicio del equipo y para la hora conexión con la impresora. queda funcionado la impresión ', '2013-08-07', '2013-08-07');
INSERT INTO `t_soporte` VALUES (598, 4, 'Johnny', 'Gelvez', 27, 5, 2, 'lista de correos', 'La misma para solicitar mi agenda de correo sea actualizada, para la fecha fue ejecutado la actualización y el respectivo correo ante todo el ipca para estar notificado que el correo corresponde a victor ochoa.', '2013-08-07', '2013-08-07');
INSERT INTO `t_soporte` VALUES (599, 2, 'José', 'Reina', 86, 3, 2, 'BUEN DIA NO PUEDO IMPRIMIR MOTIVADO QUE LA IMPRESORA SE APAGO Y LUEGO FUNCIONO MAS', 'se revisa conexion con impresora y se borran impresiones en cola', '2013-08-08', '2013-08-08');
INSERT INTO `t_soporte` VALUES (600, 4, 'Johnny', 'Gelvez', 97, 1, 2, 'La impresora necesita ser revisada, desde que se le coloco el toner nuevo sale un indicativo en la pantalla que no tiene toner y el dia de hoy indica error lsu.', 'instalación de toner original samsung y el código se elimina y queda la impresora funcionando para la hora, se recomienda recibir solo toner original para así evitar futuros problemas.', '2013-08-08', '2013-08-08');
INSERT INTO `t_soporte` VALUES (601, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, favor publicar en nuestra web la nota de prensa y foto remitida hoy sobre el evento con motido 46 años sismo de Caracas. Mil gracias.  ', 'publicada', '2013-08-08', '2013-08-08');
INSERT INTO `t_soporte` VALUES (602, 4, 'Johnny', 'Gelvez', 20, 1, 2, 'saludos, por medio de la presente desearia saber la factibilidad de impresion de nuevos carnet para el personal de la UNDAI Chacao.', 'muy buenas tardes, ya queda de parte de la dirección de rrhh junto a protección civil y junto a un nuevo soporte para la elaboración de las credenciales', '2013-08-09', '2013-10-04');
INSERT INTO `t_soporte` VALUES (603, 1, 'Lilliam', 'Chacon', 19, 6, 2, 'Buenos días, para que por favor se instale en las dos computadoras adquiridas recientemente por esta dirección el Sistema Operativo Windows 7', 'Buenas tardes Johan, el IPCA no tiene licencia de Windows 7, por lo cual sugiero se revise la solicitud de forma que te podamos apoyar de otra manera. \r\n\r\nGracias,\r\nLilliam Chacon', '2013-08-09', '2013-08-09');
INSERT INTO `t_soporte` VALUES (604, 2, 'José', 'Reina', 19, 3, 2, 'Buenos días, por favor se necesita instalen este sistema de soporte en la computadora de la funcionaria Xenia Gómez. Gracias.', 'Se instala Sistema de Soporte', '2013-08-09', '2013-08-09');
INSERT INTO `t_soporte` VALUES (605, 4, 'Johnny', 'Gelvez', 19, 6, 2, 'Buenas tardes, el requerimiento realizado en la mañana de del día de hoy tiene una correción no es Windows 7, es Windows 2003.Gracias.', 'equipos formateados e instalados con el S.O solicitado, esperando por su traslado.', '2013-08-09', '2013-08-14');
INSERT INTO `t_soporte` VALUES (606, 4, 'Johnny', 'Gelvez', 60, 3, 2, 'Buenas tardes, por favor quemar en DVD el arte editable que está en Galería, carpeta "Gigantografía para quemar en CD". Mil gracias. ', 'información quemada y a la espera por su retiro acá en la dirección de informática.', '2013-08-09', '2013-08-19');
INSERT INTO `t_soporte` VALUES (607, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar en nuestra web la nota de prensa y foto remitida a su correo sobre el curso Sistema Comando de Incidente impartido a PC Miranda. Mil gracias', 'Noticia, publicada', '2013-08-12', '2013-08-19');
INSERT INTO `t_soporte` VALUES (608, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor eliminar las palabras "naturales" y "una" del titular de esta noticia que está publicada en nuestra web. En Chacao la prevención de desastres naturales es una prioridad. Debe decir: En Chacao la prevención de desastres es prioridad. Mil gracias. \r\n\r\nhttp://www.chacao.gov.ve/ipca', 'Actualizacion Realizada', '2013-08-12', '2013-08-19');
INSERT INTO `t_soporte` VALUES (609, 4, 'Johnny', 'Gelvez', 24, 1, 2, 'saludos el sistema donde llevo las novedades se bloqueo, ya que se queda guindado. al no tener la tecla habilitada de administrador de tareas se tiene que apagar la computadora. cuando la prendi la clave se copio mal y se bloqueo.\r\n', 'usuario desbloqueado desde el manejador de base de dato My SQL', '2013-08-14', '2013-08-14');
INSERT INTO `t_soporte` VALUES (610, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, Favor publicar el miércoles 21 de agosto el destacado web Eduriesgo Chacao y realizar el vínculo para que al darle click al destacado te lleve a la página Eduriesgo Chacao. Ya les envié por correo el arte respectivo. Cualquier duda estoy a su orden. Mil gracias. ', 'la misma fue cambiada para septiembre', '2013-08-14', '2013-08-22');
INSERT INTO `t_soporte` VALUES (611, 4, 'Johnny', 'Gelvez', 20, 5, 2, 'guardar documento en formato editable', 'se procede a trasformar 2 documentos que originalmente esta en PDF a word.doc y así poder insertar información ', '2013-08-14', '2013-08-14');
INSERT INTO `t_soporte` VALUES (612, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar en la sección Protección Civil de nuestra web el nuevo contenido enviado a su correo sobre "Plan de Emergencia Familiar". Cualquier duda estoy a su orden. Mil gracias. ', 'contenido publicado, en módulo de Protección civil', '2013-08-14', '2013-09-03');
INSERT INTO `t_soporte` VALUES (613, 2, 'José', 'Reina', 91, 1, 2, 'Revisión y Actualización de Mozilla y Programa para descargas Acrobat Reader', 'se revisa y se configura el mozilla para abrir PDF en ventanas nuevas al equipo de Milesky', '2013-08-15', '2013-08-20');
INSERT INTO `t_soporte` VALUES (614, 3, 'Alejandro', 'Perez', 20, 6, 2, 'saludos, mucho sabria agradecerles si pudiesen estudiar la fcatibilidad de ayudarnos con la reconexion y relocalizacion del cableado de la computadora que se encuentra en la sala situacional, de manera que vuelva a su estatus operativo y se vea con mayor estetetica, de ante mil gracias por el intere', 'Se espera por ustedes para realizar la conexión del equipo. ', '2013-08-15', '2013-10-11');
INSERT INTO `t_soporte` VALUES (615, 4, 'Johnny', 'Gelvez', 62, 1, 2, 'Problemas de impresiòn equipo de Presidencia.', 'se verifica el equipo y se observa que el cable de vídeo que conecta al monitor estaba debilmente conectado, la impresora se reinicia y al reiniciar el sistema operativo esta vuelve a conectar y queda funcionando para la hora.', '2013-08-16', '2013-08-16');
INSERT INTO `t_soporte` VALUES (616, 4, 'Johnny', 'Gelvez', 55, 1, 2, '  Solicito sea transferida la información que remití vía correo electrónico institucional a una unidad de CD. Gracias', 'cd. quemado.. podrá pasarlo buscando a la dirección de informática ', '2013-08-16', '2013-08-16');
INSERT INTO `t_soporte` VALUES (617, 4, 'Johnny', 'Gelvez', 67, 3, 2, 'Por favor para que el quiten la restricción de intrenet al usuario de Compras, por ser necesario para la solicitud de presupuestos, muchas gracias ', 'restricción desestabilizada con el caso del facebook esta pagina queda bloqueada por petición de la misma funcionara y así evitar problemas de virus o manejo del su equipo sin permiso de la misma. ', '2013-08-19', '2013-08-19');
INSERT INTO `t_soporte` VALUES (618, 4, 'Johnny', 'Gelvez', 20, 1, 2, 'saludos muchachos, por favor mucho sabria agradecerles si pueden pasar por mi puesto de trabajo con la finalidad de revisar el internet explorer, ya que esta presentando algunos inconvenientes, de ante mano gracias.', 'cambiar el acceso directo del Internet explore, y actualización de la agenda de contactos al oulok express', '2013-08-19', '2013-08-21');
INSERT INTO `t_soporte` VALUES (619, 2, 'José', 'Reina', 81, 2, 2, 'Problemas con la impresora hp', 'Se revisa impresora, y se resuelve el conflicto de RED', '2013-08-20', '2013-08-20');
INSERT INTO `t_soporte` VALUES (620, 4, 'Johnny', 'Gelvez', 18, 2, 2, 'La impresora desconoce el cartucho de toner, se atasca el papel, indica error LSU.', 'buenos días, una vez que se evaluó la impresora se determina que la misma deberá ser evaluada por un técnico de la casa samsung. se deberá hacer los tramites con la dirección de administración para la búsqueda del técnico y el respectivo pago.', '2013-08-20', '2013-08-23');
INSERT INTO `t_soporte` VALUES (621, 2, 'José', 'Reina', 23, 1, 2, 'actualizacion de mozilla', 'se realizo actualizacion del Mozilla y de Internet Explorer', '2013-08-20', '2013-08-26');
INSERT INTO `t_soporte` VALUES (622, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar nota de prensa y foto enviada sobre avanzan obras de mitigación de riesgos en Chacao: Mil gracias.  ', 'Ya fue Actualizada la Nota de Prensa', '2013-08-21', '2013-08-22');
INSERT INTO `t_soporte` VALUES (623, 4, 'Johnny', 'Gelvez', 20, 1, 2, 'saludos buenos dias muchachos, mucho sabria agradecerles el hecho de que me ayuden con el suministro de las estadisticas semanales o mensuales de la DEPC desde Enero hasta julio del año en curso, de ser factible y si poseen esa informacion tambien necesito las del año 2012', 'información enviada.', '2013-08-22', '2013-08-23');
INSERT INTO `t_soporte` VALUES (624, 2, 'José', 'Reina', 62, 2, 2, 'Impresora asignada a presidencia no imprime.  Gracias', 'se reinicia impresora, y se borra documentos que habian quedados en memorias', '2013-08-22', '2013-08-23');
INSERT INTO `t_soporte` VALUES (625, 2, 'José', 'Reina', 62, 1, 2, 'Impresora de presidencia no imprime', 'se reinicia impresora, y se borra documentos que habian quedados en memorias', '2013-08-22', '2013-08-23');
INSERT INTO `t_soporte` VALUES (626, 2, 'José', 'Reina', 95, 3, 2, 'Hola Chicos! Buen día!!!\r\nNecesitamos ayuda, la impresora no quiere funcionar... ;)', 'se verifico impresora y se dejo operativa', '2013-08-26', '2013-08-26');
INSERT INTO `t_soporte` VALUES (627, 2, 'José', 'Reina', 55, 5, 2, 'Buenas tardes, necesito ayuda con un documento que estoy trabajando en word, requiero la presencia de algún funcionario de informática para asesoría. Saludos.', 'Se Indica y se da asesoria sobre el documento WORD', '2013-08-26', '2013-08-26');
INSERT INTO `t_soporte` VALUES (628, 2, 'José', 'Reina', 5, 3, 2, 'Saludos; colcocar en red la impresora Samsung con el PC, de la funcionaria Dagmar Marquez motivado a la racionalizacion de tintas para la impresora XEROX, que se encuentran en esta Direccion....', 'se instala la PC con la impresora Sansung que pertenece a la direccion de educacion', '2013-08-26', '2013-08-26');
INSERT INTO `t_soporte` VALUES (629, 4, 'Johnny', 'Gelvez', 63, 2, 2, 'Buenos días,se requiere la revisión de la PC asignada a la funcionaria Miriely Caraballo, debido a fallas que presenta que impiden el inicio del Sistema Operativo de la misma y existen problemas con el teclado, desde el 26/08/2013 motivado a una baja de luz en el piso 2 de esta sede. Gracias de ante', 'una vez hecha la evaluación del disco se puede verificar que el mismo presento una falla fatal en unos de los sectores o pistas, esto produjo su deterioro del mismo, se procede a instalar un disco duro nuevo a instalar sistema operativo, drivers, aplicaciones administrativas, office 2007, sistema de', '2013-08-28', '2013-08-28');
INSERT INTO `t_soporte` VALUES (630, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, Favor publicar nuevo contenido web sobre horario de disposición de desechos, remitido a su correo. Mil gracias. ', 'ya se publico en el módulo ambiente', '2013-08-29', '2013-09-02');
INSERT INTO `t_soporte` VALUES (631, 2, 'José', 'Reina', 92, 3, 2, 'Buenas tardes el presente es para solicitar que se configueren de forma provisional en las PCs de RRHH la impresora de Informatica, mientras se gestiona la compra de la tinta necesaria para poner operativa la impresora de la mencionada direcciòn', 'se configuran las 4 maquinas de RRHH para que puedan imprimir hacia la dirección de Informática', '2013-08-30', '2013-08-30');
INSERT INTO `t_soporte` VALUES (632, 4, 'Johnny', 'Gelvez', 58, 6, 2, 'Se solicita instalación de equipo a la secretaria de consultoria, Carmen Valbuena y su configuración a la impresora interna del departamento.', 'impresora instalada.', '2013-09-02', '2013-09-02');
INSERT INTO `t_soporte` VALUES (633, 4, 'Johnny', 'Gelvez', 58, 1, 2, 'Buen día. se solicita la configuración de las cuentas Outlook Express de los funcionarios de la Consultoría Jurídica, para que dichas cuentas sean abiertas con el sistema operativo de Windows al iniciar sesión.', 'requerimiento hecho', '2013-09-02', '2013-09-02');
INSERT INTO `t_soporte` VALUES (634, 2, 'José', 'Reina', 54, 6, 2, 'Se solicita la instalacion del Sistema de Seguimineto de expedientes en el puesto de la asistente, así ccomo la configuracion del coorreo electronico', 'se instala sistema y se configura correo', '2013-09-02', '2013-09-16');
INSERT INTO `t_soporte` VALUES (635, 4, 'Johnny', 'Gelvez', 65, 2, 2, 'Solicitud revisión de Teclado, ya que no funcionan algunas teclas del mismo', 'teclado cambiado por uno marca genius sereal YB9A11010057', '2013-09-02', '2013-09-02');
INSERT INTO `t_soporte` VALUES (636, 4, 'Johnny', 'Gelvez', 91, 3, 2, 'Buenas tardes la presente solicitud, es para instalar el público de RR.HH, en el equipo de la funcionaria Carmen Elisa Valbuena. Gracias', 'debido a la información que maneja la dirección de rrhh no es conveniente que se le instale el acceso publico de rrhh.. en tal sentido ya la solicitud fue discutida por el consultor jurídico el Dr eduardo martín. para solucionar el problema de conexión con la funcionaria se invita a realizar una car', '2013-09-02', '2013-09-05');
INSERT INTO `t_soporte` VALUES (637, 4, 'Johnny', 'Gelvez', 89, 1, 2, 'Buenos días. El presente es para solicitar la revisión del equipo asignado a los auxiliares ambientales(IPCA Nº1947), debido a que no arranca el sistema operativo. Gracias por su atención.\r\n\r\nSaludos!', 'muy buenos dias, la misma es para notificarle que una vez que se hizo el levantamiento de informacion del equipo, el mismo presento fallas en archivos criticos del windows, en tal sentido se formateo la computadora y posterior se instalo los programas administrativos para el uso de los auxiliares.', '2013-09-04', '2013-09-17');
INSERT INTO `t_soporte` VALUES (638, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Buenos días, por favor quemar en un CD la información que está en la carpeta "Manuales definitivos 2012", ubícada en "Público- Ana Varela". Mil gracias. ', 'Se copia en Cd contenido de la carpeta Manuales Definitivos 2012, 1 copia', '2013-09-04', '2013-09-04');
INSERT INTO `t_soporte` VALUES (639, 2, 'José', 'Reina', 89, 3, 2, 'Saludos. Mediante el presente solicito revisión del equipo asignado a los Inspectores Ambientales, visto que no tiene conexión al servidor, según mensaje que se visualiza al intentar conectarse a la web. Gracias por su atención.', 'se revisa equipo se configura, y se deja con conexión al internet', '2013-09-04', '2013-09-04');
INSERT INTO `t_soporte` VALUES (640, 4, 'Johnny', 'Gelvez', 61, 5, 2, 'Uso de Microsoft Word 2003', 'la solicitud era modificar un documento en formato doc. el mismo se verifico y siendo esto una imagen se le explica que debera realizar nuevamente la imagen y poder modificar lo solicitado para colocarlo de nuevo en el documento word. (manuales)', '2013-09-05', '2013-09-06');
INSERT INTO `t_soporte` VALUES (641, 4, 'Johnny', 'Gelvez', 90, 2, 2, 'Buenos dias.... por medio del presente solicito cambio de regular de voltaje de la computadora asignada a los auxiliares ambientales ya que el mismo no permite el encendido de la computadora.', 'muy buenas tardes, en días anteriores se le entrego información sobre el modelo del fusible del regulador y así poder reemplazarlo y que el mismo quede funcionando de nuevo.', '2013-09-05', '2013-10-04');
INSERT INTO `t_soporte` VALUES (642, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar en nuestra web la noticias y foto enviada por correo. Mil gracias ', 'se publica noticia de prensa,', '2013-09-05', '2013-09-06');
INSERT INTO `t_soporte` VALUES (643, 4, 'Johnny', 'Gelvez', 9, 1, 2, 'buenos dias se requiere actualizar la aplicacion Flash player en mozilla en el PC del Director de Edcaion Lic. Braulio Vasquez.\r\nSaludos', 'sistema actualizado.', '2013-09-06', '2013-09-09');
INSERT INTO `t_soporte` VALUES (644, 2, 'José', 'Reina', 9, 1, 2, 'Buenos dias se requiere se coloque el icono del Soporte en la maquina asignada a la secretaria de educacion.\r\n\r\nSaludos \r\nDagmar ', 'se coloca icono para el ingreso al sistema de soporte y Servicio', '2013-09-06', '2013-09-06');
INSERT INTO `t_soporte` VALUES (645, 2, 'José', 'Reina', 13, 5, 2, 'inclusión de iconos ', 'se incluye icono solicitado', '2013-09-06', '2013-09-06');
INSERT INTO `t_soporte` VALUES (646, 2, 'José', 'Reina', 60, 6, 2, 'Buenas tardes, favor instalar windows movie maker en mi computadora para la creación de una presentación animada evento jueves 12 de septiembre: ciudades sostenibles. Mil gracias', 'el windows movie maker se encontraba instalado, se ubica la direccion y se le indica a la directora', '2013-09-09', '2013-09-09');
INSERT INTO `t_soporte` VALUES (647, 4, 'Johnny', 'Gelvez', 60, 1, 2, 'Buenas tardes, favor quemar en CD entregado el arte "Pendón Ecoescuelas 2" ubicado en el Público, carpeta "Ana Varela" y el documento de word "Especificaciones de impresión". Mil gracias.  ', 'disco quemado y entregado', '2013-09-09', '2013-09-09');
INSERT INTO `t_soporte` VALUES (648, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Buenas tardes, favor quemar en CD entregado el video institucional ubicado en Galería. Mil gracias', 'Buenas Tardes se grabó en 2 CD´s video institucional ', '2013-09-10', '2013-09-10');
INSERT INTO `t_soporte` VALUES (649, 3, 'Alejandro', 'Perez', 60, 1, 2, 'Buenos días, por favor quemar en CD entregado la info ubicada en Público, Carpeta Ana Varela, sub-carpeta "Pendón Chacao Recicla para imprenta". Mil gracias ', 'Se realizo copia de CD', '2013-09-12', '2013-09-16');
INSERT INTO `t_soporte` VALUES (650, 3, 'Alejandro', 'Perez', 62, 3, 2, 'No puedo imprimir.  Gracias', 'Instalaci', '2013-09-17', '2013-09-17');
INSERT INTO `t_soporte` VALUES (651, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Buenos días, favor actualizar la lista de 58 planteles de Eduriesgo Chacao. La info en PPS está en Galería, carpeta "Planteles Eduriesgo Chacao en PPS". Mil Gracias', 'Buenos días, se recomienda colocar los mismos nombres a los archivos PPS que se utilizaron en fecha 12/07/2013, para que queden los mismos links que estaban con anterioridad.', '2013-09-17', '2013-09-18');
INSERT INTO `t_soporte` VALUES (652, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, por favor actualizar en la web el contenido sobre horarios de disposición enviado a su correo. Va en la sección "Gestión Ambiental". Mil gracias', 'se modifica el contenido Web solicitado', '2013-09-17', '2013-09-17');
INSERT INTO `t_soporte` VALUES (653, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar noticia y foto enviada a su correo. Mil gracias. ', 'publicada para su momento', '2013-09-18', '2013-09-24');
INSERT INTO `t_soporte` VALUES (654, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Buenos días, por favor actualizar en Eduriesgo Chacao los 58 PPS de la sección "Planteles". La info está en Galería en carpeta "Planteles con nombres de ruta anteriores sin acentos, puntos, etc. 19 sep 2013". Ya les modifiqué los nombres a los 58 archivos como lo solicitó Pablo. Ya están sin acentos', 'Buenos Días, por medio de la presente se informa que los PPS fueron actualizados en Dayco con la misma dirección que se vienen manejando desde el 12/07/2013, ahora bien según su conversación con mis compañeros se evidenció que la PPS del Instituto Lerner no estaba en las plantillas anteriores, el li', '2013-09-19', '2013-09-19');
INSERT INTO `t_soporte` VALUES (655, 4, 'Johnny', 'Gelvez', 54, 5, 2, 'fotos ', 'se descargan fotos desde el celular de la funcionaria jailyn para su correo institucional ', '2013-09-19', '2013-09-19');
INSERT INTO `t_soporte` VALUES (656, 85, 'Pablo', 'Mendoza', 20, 4, 2, 'Por medio de la presente se solicita Plano de la Av. Francisco de Miranda entre centro lido y parque cristal, con las edificaciones que dan frente a la Francisco de MIranda', 'Buen dia se emite plkano 90x50 cm con especificaciones solicitadas', '2013-09-20', '2013-09-20');
INSERT INTO `t_soporte` VALUES (657, 85, 'Pablo', 'Mendoza', 19, 4, 2, 'Buenas tardes, para que por favor me impriman 15 mapas a color de 90*90 cm. Gracias', 'Buenas Tardes se imprimen 15 Planos en medida 90x90 y una leyenda en 70x50. Se entregan a Anggie Peña', '2013-09-20', '2013-09-20');
INSERT INTO `t_soporte` VALUES (658, 2, 'José', 'Reina', 20, 1, 2, 'Crear usuario de la Funcionaria Milanggela Parucho', 'Se crea el usuario de la funcionaria Milanggela Satisfactoriamente ', '2013-09-23', '2013-09-23');
INSERT INTO `t_soporte` VALUES (659, 85, 'Pablo', 'Mendoza', 60, 4, 2, 'Buenas tardes, favor agregar entre paréntesis las siglas "Ideprocop" después del Colegio de Contadores Públicos. En la sección "Planteles" de Eduriesgo Chacao. Mil gracias', 'Buenas Tardes ya se anexó la palabra Ideprocop al Colegio de Contadores Públicos', '2013-09-23', '2013-09-23');
INSERT INTO `t_soporte` VALUES (660, 2, 'José', 'Reina', 23, 1, 2, 'problema con la impresora, no permite imprimir', 'se configura la impresora a la direccion de informatica', '2013-09-24', '2013-09-26');
INSERT INTO `t_soporte` VALUES (661, 85, 'Pablo', 'Mendoza', 89, 4, 2, 'Buenas Tardes por medio de la presenrte se requier eun plano tipo borrador de el sector el pedregal', 'Buenas Tardes se imprimen 2 ejemplares de plano solicitado en tamaño carta', '2013-09-24', '2013-09-24');
INSERT INTO `t_soporte` VALUES (662, 4, 'Johnny', 'Gelvez', 89, 1, 2, 'Buenos dias, necesito con urgencia la actualización del software adobe acrobat, ya que no me permite abrir archivos derivados de proyectos que se hacen imprescindibles para la gestión de la Dirección, gracias de antemano', 'actualización instalada', '2013-09-25', '2013-10-01');
INSERT INTO `t_soporte` VALUES (663, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buenas tardes, la presente es para solicitar de sus buenos oficios en cuanto a la impreción de mapas por sectores o urbanizaciones del municipio en tamaño tabloide, con la finalidad de que sean utilizados en campo para actualizar capa de papeleras de poste', 'Buenas Tardes se imprimen en diferentes tamaños 15 planos correspondientes a diferentes Urbanizaciones del Municipio', '2013-09-25', '2013-09-25');
INSERT INTO `t_soporte` VALUES (664, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Buenas tardes. Les envié a sus correos tres plantillas para la sección "Planteles" de Eduriesgo Chacao. La del Instituto Lerner es sustituye la que está actualmente publicada. La de Unidad Educativa Instituto Lander y Preescolar Candy Las Terrezas, son dos nuevas para incluirlas. Mil gracias. ', 'Buenos Días ya se encuntra actualizadas las plantillas y agregadas las nuevas según lo solicitado', '2013-09-25', '2013-09-26');
INSERT INTO `t_soporte` VALUES (665, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buenas tardes, la presente es para solicitar de sus buenos oficios en cuanto a la impresión de un mapa de 50 x 50 de la zonificación acustica del Municipio Chacao. Gracias.', 'Buen Día se emitió plano zonificación ruido la tarde ayer 25-09-13, según lo solicitado', '2013-09-25', '2013-09-26');
INSERT INTO `t_soporte` VALUES (666, 85, 'Pablo', 'Mendoza', 19, 4, 2, 'Buenas tardes, para que por favor me impriman 4 mapas a color de 90*90 cm. Muchas gracias.', 'Buenas tardes se imprimen 4 planos de 90x90 según lo solicitado', '2013-09-26', '2013-09-26');
INSERT INTO `t_soporte` VALUES (667, 85, 'Pablo', 'Mendoza', 95, 4, 2, 'Buenos días! Les solicitamos por favor nos provean de una mapa donde se halle la zonificación en materia de Ruido, Gracias.', 'Buen Día se emite plano de Zonificación de Ruido en medidas 50x50.', '2013-09-27', '2013-09-27');
INSERT INTO `t_soporte` VALUES (668, 4, 'Johnny', 'Gelvez', 60, 1, 2, 'Buenos días, por favor quemar en CD entregado arte pendón Eduriesgo ubicado en Galería. Mil gracias ', 'buenos días, DVD quemado y entregado.', '2013-09-27', '2013-09-27');
INSERT INTO `t_soporte` VALUES (669, 85, 'Pablo', 'Mendoza', 5, 5, 2, 'Elaboracion de 3 planificadores segun modelo que se encuentran en la Direccion de Educación', 'Se imprimen 3 Planificadores en medidas 90x123 cm', '2013-09-30', '2013-09-30');
INSERT INTO `t_soporte` VALUES (670, 4, 'Johnny', 'Gelvez', 21, 5, 2, 'Buenos días!!!! la DEPC se encuentra en estos momentos acualizando el mapeo de los eventos por lluvias, motivo por el cual, se requiere todas las estadisticas de los siguientes años:2009,2012,2013.   \r\n\r\nSe agradece de antemano la colaboración y pronta respuesta.', 'INFORMACIÓN ENVIADA Y EN EL CORREO DE REDACTO UNA INCOGNITA REFERENTE A LO SOLICITADO.', '2013-09-30', '2013-09-30');
INSERT INTO `t_soporte` VALUES (671, 4, 'Johnny', 'Gelvez', 51, 2, 2, 'Hola buenos dias, \r\n1.- Mi equipo esta desconfigurado\r\n2.- El equipo de Radha esta desconfigurado\r\n\r\ngracias', 'se configura de nuevo para que aparecieran las herramientas en el escritorio, lo referido a rada era que desde el día de ayer se estaba haciendo un trabajo y se dejo en el usuario de administrador. ', '2013-10-01', '2013-10-01');
INSERT INTO `t_soporte` VALUES (672, 4, 'Johnny', 'Gelvez', 91, 1, 2, 'Mi maquina no arranca, intenta reparar archivos y  se apaga!!! Gracias', 'el equipo se formateo y se vuelve a instalar el sistema operativo. previo a esto se evalúa y se verifica que unos de los archivos de arranque quedo defectuoso por algún problema de conexión eléctrica y toco montar el S.O de nuevo para poder arrancar.', '2013-10-01', '2013-10-02');
INSERT INTO `t_soporte` VALUES (673, 2, 'José', 'Reina', 35, 2, 2, 'problema con la impresora de los cheque. no imprime.', 'Se Revisa impresora y de deja operativa', '2013-10-01', '2013-10-02');
INSERT INTO `t_soporte` VALUES (674, 2, 'José', 'Reina', 27, 6, 2, 'Muy buenos dias,Se requiere poner operativa el cpu de la sala situacional,para realizar trabajo que deben ser entregado urgente mente mucho sabria agradeserle su colaboracion muchas gracias.\r\n', 'la solicitud ya esta realizada por Oswaldo Martinez', '0000-00-00', '2013-10-10');
INSERT INTO `t_soporte` VALUES (675, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Buenos días, favor imprimir en plotter la "Franja Cartelera Recepción" que está en Galería. Medidas 195 por 17 cm. Mil gracias ', 'Se imprime franja para cartelera según medidas solicitadas', '2013-10-02', '2013-10-03');
INSERT INTO `t_soporte` VALUES (676, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, por favor publicar el destacado web Eduriesgo Chacao, remitido con anterioridad. Mil gracias. ', 'Se publica contenido en la WEB', '2013-10-02', '2013-10-02');
INSERT INTO `t_soporte` VALUES (677, 2, 'José', 'Reina', 75, 3, 2, 'problemas con el Outlook', 'Se configura nuevamente el correo quedando operativo', '2013-10-02', '2013-10-02');
INSERT INTO `t_soporte` VALUES (678, 3, 'Alejandro', 'Perez', 20, 3, 2, 'saludos buenos dias, por medio de la presente solicito su colaboracion para lograr obtener el reporte de las paginas y sitios wed accesadas desde la computadora usada por los operadores de comunicaciones de la coordinacion de operaciones durante el mes de agosto, de ante mano mil gracias por su cola', 'Se envió, por correo archivo TXT con la información. ', '2013-10-03', '2013-10-03');
INSERT INTO `t_soporte` VALUES (679, 3, 'Alejandro', 'Perez', 13, 1, 2, 'Saludos cordiales a través del siguiente soporte quisiera realizar solicitud de Cambio de Clave de mi equipo, así como también el bloqueo automático a través del protector de pantalla cada vez que se encuentre inactivo el equipo, mil gracias por la atención.... ', 'Se realizo cambio de clave', '2013-10-03', '2013-10-03');
INSERT INTO `t_soporte` VALUES (680, 85, 'Pablo', 'Mendoza', 60, 6, 2, 'Buenas tardes, favor revisar la máquina de Maru. A partir del bloqueo de páginas tiene una ventana abierta permanentemente indicando que "la página ha sido bloqueada por el administrdor IPCA". Mil gracias. ', 'Buenas Tardes solventado el mensaje en pantalla', '2013-10-03', '2013-10-03');
INSERT INTO `t_soporte` VALUES (681, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, por favor publicar nota de prensa y foto enviada a su correo en la sección "Noticias". Mil gracias. ', 'se publica nota de prensa, solicitada', '2013-10-03', '2013-10-03');
INSERT INTO `t_soporte` VALUES (682, 3, 'Alejandro', 'Perez', 86, 6, 2, 'Buenas tardes, soy Flor Villavona, Asistente de Bienes Publicos de Administración, la presente tiene para solicitar de sus buenos oficios para la instalación de un equipo de computación que me fue asignado el día de hoy y del mismo modo hago solicitud del traslado del equipo que estoy utilizando act', 'Se configuro el equipo con todos sus programas y se instalo en su puesto de trabajo.', '2013-10-03', '2013-10-09');
INSERT INTO `t_soporte` VALUES (683, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buenas Tardes por medio de la presente se requiere de su colaboración para generar las planillas de Inspecciones de terrenos, según información remitida en CD por Catastro Municipal el día 02/10/13', 'Buenas Tardes se cruza la información según solicitud y registros de 1er y 2do Censo el mismo genera como resultado 1 planilla remitida por correo institucional', '2013-10-03', '2013-10-03');
INSERT INTO `t_soporte` VALUES (684, 3, 'Alejandro', 'Perez', 67, 6, 2, 'Instalar el equipo nuevo del área de Bienes, gracias', 'Se realizo la instalación del equipo.', '2013-10-03', '2013-10-09');
INSERT INTO `t_soporte` VALUES (685, 3, 'Alejandro', 'Perez', 27, 6, 2, 'Buenas tardes por favor se requiere sea chequiado la instalacion del programa de novedades SINF-IPCA CHACAO ya queprecenta problemas,en mi computadora gracias.', 'La cuenta ya se desbloqueo.', '2013-10-03', '2013-10-04');
INSERT INTO `t_soporte` VALUES (686, 3, 'Alejandro', 'Perez', 33, 6, 2, 'Buen día, la presente es para solicitar de sus buenos oficios en cuanto a una  instalación de una computadora en la DEGA.', 'Se realizo la instalación del equipo.', '2013-10-04', '2013-10-09');
INSERT INTO `t_soporte` VALUES (687, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buen día\r\nRequiero de su valiosa colaboración para generar un mapa de papeleras de postes en el municipio Chacao. Gracias de ante mano por las gestiones.\r\n', 'Buenas Tardes la información levantada entregada el día de hoy ya fué digitalizada, en total 467 puntos de Papeleras (postes, propuestas, malas e inexistente).\r\n', '2013-10-04', '2013-10-04');
INSERT INTO `t_soporte` VALUES (688, 1, 'Lillian', 'Chacon', 60, 3, 2, 'Buenas tardes, por favor desbloquear en la computadora de Maru el correo gmail, ya que es una herramienta indispensable para realizar su trabajo. Mil gracias. ', 'Buenas tardes Ana, por favor enviar la solicitud de desbloqueo por comunicación escrita. Gracias', '2013-10-04', '2013-10-04');
INSERT INTO `t_soporte` VALUES (689, 1, 'Lillian', 'Chacon', 37, 6, 2, 'impresora HP 9800 (perteneciente Coordinación OAC)o bien la que dispongan para los equipos (PC). Gracias', 'Buenos dias Yanibel, no entendi lo que requieres en el soporte, por favor me podrias detallar un poco, para solventar lo mejor posible. Gracias', '2013-10-08', '2013-10-08');
INSERT INTO `t_soporte` VALUES (690, 3, 'Alejandro', 'Perez', 33, 6, 2, 'Buen día la presente es para solicitar de sus buenos oficios para instalar Impresora hp oficejet 7110 wide format, La misma va ha estar conectada  a las computadoras usuarios  Director A y ambiente 1, utilizadas po Radharani Medina y Daniel Lizcano.', 'Se realizo la instalación de la impresora y se compartió.', '2013-10-08', '2013-10-09');
INSERT INTO `t_soporte` VALUES (691, 2, 'José', 'Reina', 13, 1, 2, 'Solicitud de Instalación de Impresora HP Deskjet 9800 (Cordinador AC), mediante red al usuario de la maquina de Yanibel Zapata.', 'se instala la impresora en el maquina de Yanibel Zapata y se aprovecha la ocacion para instalar en la maquina de Jerry', '2013-10-08', '2013-10-09');
INSERT INTO `t_soporte` VALUES (692, 2, 'José', 'Reina', 60, 5, 2, 'Favor quemar en DVD entregado la carpeta "Para imprenta 08 de octubre de 2013" que está en Galería. Mil gracias', 'se graba y se entega', '2013-10-08', '2013-10-09');
INSERT INTO `t_soporte` VALUES (693, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buen dia Pablo,  la presente es para solicitar tus buenos oficios en cuanto a la instalacion de ARGIS en la maquina que se me instalo el dia de ayer. ', 'Buenos Días se instaló y verificó el funcionamiento del ARCGIS en la maquina para la cual se requirió soporte', '2013-10-09', '2013-10-09');
INSERT INTO `t_soporte` VALUES (694, 3, 'Alejandro', 'Perez', 5, 1, 2, 'Saludos por favor se necesitan las actualizaciones y mantenimiento  en las laptop que posee esta Direccion ', 'Se realizo mantenimiento y actualización del equipo.', '2013-10-09', '2013-10-15');
INSERT INTO `t_soporte` VALUES (695, 3, 'Alejandro', 'Perez', 67, 2, 2, 'La impresora que está asignada al área de Auditoría presenta problemas técnicos, por favor si la pueden revisar para que se haga un solo presupuesto junto a la de Consultoría, muchas gracias', 'Se reviso la impresora y para el momento no presenta falla.', '2013-10-09', '2013-10-09');
INSERT INTO `t_soporte` VALUES (696, 85, 'Pablo', 'Mendoza', 60, 1, 2, 'Buenos Días por medio de la presente se requiere en WEB eduriesgo quitar comillas, en el texto de Modulos, Planteles , Unidades Educativas', 'Se editó el texto enla programación para quitar las comillas que indica', '2013-10-09', '2013-10-09');
INSERT INTO `t_soporte` VALUES (697, 85, 'Pablo', 'Mendoza', 60, 1, 2, 'Buenos Días por medio de la presente se requiere ver la posibilidad de reslatar en la sección Interes de Eduriesgo los links a las paginas mencionadas\r\n', 'Buen Día se modificó la programación para que se resaltaran los links', '2013-10-09', '2013-10-09');
INSERT INTO `t_soporte` VALUES (698, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, por favor publicar nota de prensa y foto en la sección "Noticias". La info ya fue remitida a su correo. Mil gracias. ', 'nota de prensa publicada', '2013-10-09', '2013-10-09');
INSERT INTO `t_soporte` VALUES (699, 2, 'José', 'Reina', 60, 2, 2, 'Buenos días, favor revisar la conexión entre las computadoras de Comunicaciones y la impresora, porque no está imprimiendo lo enviado desde aquí. Mil gracias.', 'se deja operatica', '2013-10-10', '2013-10-11');
INSERT INTO `t_soporte` VALUES (700, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar en la sección "Protección Civil" el contenido web y foto enviada a su correo. Mil gracias  ', 'contenido web publicado', '2013-10-10', '2013-10-14');
INSERT INTO `t_soporte` VALUES (701, 2, 'José', 'Reina', 54, 3, 2, 'Por favor habilitar el Público "Galeria" en la computadora del Consultor Jurídico. ', 'se habilita publico galeria al consultor', '2013-10-14', '2013-10-14');
INSERT INTO `t_soporte` VALUES (702, 85, 'Pablo', 'Mendoza', 32, 4, 2, 'buenas tardes, solicito por esta la elaboracion de un mapa con la ubicacion de las papeleras artisticas y luego debe ser enviado a mi correo en digital y avisarme para buscar una impresion en su oficina, gracias', 'Buenas tardes se digitaliza los puntos en Capa, se imprime plano doble carta y se envía en formato JPG', '2013-10-14', '2013-10-14');
INSERT INTO `t_soporte` VALUES (703, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buenos Días se realiza entrega de ultimos puntos levantados de Papeleras.', 'Buenos días, se terminó la digitalización de papeleras levantadas por el personal de Ambiente en total 691 puntos fueron plasmados en plano', '2013-10-15', '2013-10-15');
INSERT INTO `t_soporte` VALUES (704, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Favor generar un plano con los puntos de las papeleras digitalizados por la Dirección de Informática', 'Buenos Días, pueden pasar retirando el plano 90x90 con los 691 puntos de papeleras plasmado en todo el municipio', '2013-10-15', '2013-10-15');
INSERT INTO `t_soporte` VALUES (705, 2, 'José', 'Reina', 60, 3, 2, 'Por favor publicar en la pagina del IPCA la nota de prensa del nuevo esquema de tarifas. Es vital que sea publicada el dia de hoy con su respectiva foto que estare enviado en los proximos minutos a tarves del correo institucional.', 'se publica la noticia en la página Web', '2013-10-15', '2013-10-15');
INSERT INTO `t_soporte` VALUES (706, 2, 'José', 'Reina', 60, 3, 2, 'Por favor sustituir los destacados de: "Nuevos camiones de 32 yardas" y "24 puntos ecologicos" por unos que serán enviados en los proximos minutos por el correo institucional.', 'Publicado el destacado 24puntos ecológicos. el otro destacado no sufrió cambios', '2013-10-15', '2013-10-15');
INSERT INTO `t_soporte` VALUES (707, 2, 'José', 'Reina', 60, 3, 2, 'Por favor publicar en la pagina web del IPCA el destacado de Chacao Resiliente y actualizar el destacado de Eduriesgo.', 'SE REALIZA 2 ACTUALIZACIONES SOBRE DESTACADOS CHACAO RESILIENTE Y EDURIESGO', '2013-10-16', '2013-10-16');
INSERT INTO `t_soporte` VALUES (708, 3, 'Alejandro', 'Perez', 18, 3, 2, 'Asignar usuario a nueva empleada:\r\nMaría de Los Ángeles Osorio Herrera\r\nC.I. 14.782.488', 'Se creo usuario y se asigno al equipo.\r\n', '2013-10-16', '2013-10-17');
INSERT INTO `t_soporte` VALUES (709, 2, 'José', 'Reina', 8, 3, 2, 'Por favor publicar la nota de prensa con su respectiva foto (la que envie despues)de las 20 papeleras artísticas.\r\n\r\nAdemás cambiar la foto de la noticia del nuevo esquema de tarifas por la de los camiones que pase por el correo institucional.\r\n', 'nota de prensa publicada', '2013-10-16', '2013-10-17');
INSERT INTO `t_soporte` VALUES (710, 85, 'Pablo', 'Mendoza', 20, 4, 2, 'Buenas Tardes por medio de la presente se requiere un plano según la presentación de Cultura Chacao, en marco del evento Por el medio de la calle', 'Buenas Tardes se imprime plano en medidas 60x60 en el cual se plasman 4 puntos que no existen en el plano de la presentación.', '2013-10-16', '2013-10-16');
INSERT INTO `t_soporte` VALUES (711, 85, 'Pablo', 'Mendoza', 20, 4, 2, 'Buen Día se requieren 3 copias de planos de Por el medio de la calle\r\n', 'Buenos Días\r\n\r\nSe imprimieron 3 planos uno se entregó a tu persona, uno a Hares y acá hay otro si lo requieres lo puedes mandar a buscar', '2013-10-17', '2013-10-18');
INSERT INTO `t_soporte` VALUES (712, 3, 'Alejandro', 'Perez', 18, 1, 2, 'Buen dia. Agradezco evaluar PC, presenta lentitud extrema. \r\nIgualmente, actualizar programas Office.', 'Se realizo mantenimiento correctivo y se instalo office 2007', '2013-10-22', '2013-10-28');
INSERT INTO `t_soporte` VALUES (713, 85, 'Pablo', 'Mendoza', 63, 7, 2, 'Buen día por medio de la presente se requiere del apoyo de informatica para la impresión de informes y manuales de Sanitas.', 'Se realiza la impresión de lo requerido, el total de paginas impresas fueron 302.', '2013-10-23', '2013-10-23');
INSERT INTO `t_soporte` VALUES (714, 3, 'Alejandro', 'Perez', 5, 7, 2, 'Saludos necesitamos a la brevedad configurar la impresora que utiliza atencion al cuidadano a una de nuestras laptos para imprimir material del curso SCI que se dictará 26 Y 27 de octubre 2013 y tenemos que realizar dicha actividad en el salon de clase de esta sede 01.', 'Se instalo impresora a lapto de educación en salón.', '2013-10-24', '2013-10-24');
INSERT INTO `t_soporte` VALUES (715, 2, 'José', 'Reina', 58, 1, 2, 'Buen día. Se solicita la creación de nuevos usuarios al Sistema de Administración de Expedientes llevado por la Consultoría Jurídica del IPCA, para el acceso de nuevos funcionarios adscritos, a saber:\r\nMarian Salazar\r\nJorge Hidalgo\r\nJailyn Mendez\r\nCarmen Valbuena.\r\nEstos usuario serán utilizados par', 'se crean los usuarios mencionados para el SISTEMA de Administración de Expedientes', '2013-10-24', '2013-10-24');
INSERT INTO `t_soporte` VALUES (716, 3, 'Alejandro', 'Perez', 91, 1, 2, 'Buenas tardes mi computador volvio a presentar problemas se apago y no vuelve a arrancar el sistema operativo.- Gracias', 'Se instalo un equipo provisional.', '2013-10-24', '2013-10-25');
INSERT INTO `t_soporte` VALUES (717, 3, 'Alejandro', 'Perez', 32, 1, 2, 'buenas tardes, en la maquina de daniel lizcano aparece un mensaje constante de aviso de pagina que intenta entrar es prohibida, aparte no sabemos cual es el usuario de esa maquina y un 3ro es que al entrar con otro usuario y abrir algo de internet inmediatamente sale un mensaje de cerrar las pestaña', 'En el equipo se intento entrar con varios usuarios que no son el correcto y bloqueo el equipo, ya se resolvió.', '2013-10-24', '2013-10-25');
INSERT INTO `t_soporte` VALUES (718, 3, 'Alejandro', 'Perez', 21, 1, 2, 'Buenas tardes!!! La DEPC solicita de sus buenos oficios,todo el respaldos de las novedades durante el periodo 2009. Se agradece de antemano la colaboración y pronta respuesta. ', 'Buenas tardes especifique que novedades solicita', '2013-10-24', '2013-10-24');
INSERT INTO `t_soporte` VALUES (719, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Hola Pablo Buenas tardes, la presente es para solicitar de tus buenos oficios con la impresion del plano de las papeleras de poste que se realizo hace poco. Gracias de antemano', 'Buenos Días pueden pasar retirando el plano y fué impreso en medidas 90x90', '2013-10-24', '2013-10-25');
INSERT INTO `t_soporte` VALUES (720, 1, 'Lillian', 'Chacon', 5, 2, 2, 'Saludos por favor se require revision del monitor del Funcionario Gonzalo Quintero por presentar fallas , ya le envie un memo a Grazia donde indico la problematica un poco para que se orientara la solucion al problema.', 'Buenas tardes, la falla que presenta el monitor es recurrente y el mismo no podrá ser reparado por el personal de informática ni empresas externas, lamentablemente la dirección de Informática no posee monitores para reemplazar, por lo cual se sugiere consultarle a Consultoría Jurídica, quienes tiene', '2013-10-29', '2013-10-29');
INSERT INTO `t_soporte` VALUES (721, 85, 'Pablo', 'Mendoza', 5, 2, 2, 'Saludos en fechas pasadas envie a ADMINISTRACION un video bean el cual presentaba fallas al momento del encendido, Delvis indico que lo enviaria a la Direccion de informatica  para su revision o reparacion.', 'Buenos Días la dirección de informática solo recibió la consulta, mas la Dirección de Administración se encargaría de envíar el equipo a revisión y posterior reparación. Por ende elequipo nunca llegó a esta Dirección', '2013-10-29', '2013-10-29');
INSERT INTO `t_soporte` VALUES (722, 2, 'José', 'Reina', 70, 1, 2, 'AL QUERER GENERAR UN REPORTE EL SISTEMA NO LO PERMITE. NOTA ESTO SOLO OCURRE PARA LA MAQUINA ASIGNADA A JOHANABEL, ASUMO QUE SE A EL ADOBE GRACIAS', 'se revisa la comptadora y se observa que la configuraciòn del mozilla no es la correcta para visualizar los archivos PDF, se configura y de deja operativo', '2013-10-30', '2013-10-30');
INSERT INTO `t_soporte` VALUES (723, 85, 'Pablo', 'Mendoza', 20, 4, 2, 'Buenos Dias se requiere un plano con la capa espesor de sedimento medidas 90x100 cm.', 'Buenas Tardes se imprime plano según solicitud, puede pasar a retirarlo', '2013-11-05', '2013-11-05');
INSERT INTO `t_soporte` VALUES (724, 85, 'Pablo', 'Mendoza', 20, 4, 2, 'Buenos Dias se requiere un plano con la capa amenazas inundación medidas 90x100 cm.', 'Buenas Tardes se imprime plano según solicitud, puede pasar a retirarlo', '2013-11-05', '2013-11-05');
INSERT INTO `t_soporte` VALUES (725, 85, 'Pablo', 'Mendoza', 20, 4, 2, 'Buenos Dias se requiere un plano base del Municipio 90x100 cm.', 'Buenas Tardes se imprime plano según solicitud, puede pasar a retirarlo', '2013-11-05', '2013-11-05');
INSERT INTO `t_soporte` VALUES (726, 3, 'Alejandro', 'Perez', 20, 1, 2, 'Buenos días se requiere chequeo de pc debido a que mozilla presenta un error ', 'Se soluciono la conexion.', '2013-11-05', '2013-11-07');
INSERT INTO `t_soporte` VALUES (727, 3, 'Alejandro', 'Perez', 20, 6, 2, 'buenos días quisiera contar con su apoyo para terminar de acomodar los cables de la computadora de la sala situacional', 'Se ordeno el cableado y se colocaron canales.', '2013-11-05', '2013-11-06');
INSERT INTO `t_soporte` VALUES (728, 85, 'Pablo', 'Mendoza', 89, 4, 2, 'Buenos Días por medio de la presente se reuqieren planos con estructura parcelaria de El Pedregal, El Tartago y La Manguera', 'Buenas Tardes pueden pasar retirando la solicitud realizada, se imprimieron 4 ejemplares con los 3 sectores que solicitó', '2013-11-05', '2013-11-05');
INSERT INTO `t_soporte` VALUES (729, 3, 'Alejandro', 'Perez', 55, 3, 2, 'Buenas tardes, les escribo a fin de informar que la computadora de la funcionaria Maria Curbelo no puede ingresar al sistema administrativo SIGA, herramiento necesaria para sus funciones. Gracias por su atención.', 'Se restableció la conexión.', '2013-11-06', '2013-11-07');
INSERT INTO `t_soporte` VALUES (730, 3, 'Alejandro', 'Perez', 24, 5, 2, 'saludos esta e la otra compu si tiene este servicios, gracias péro operaciones 3 no tienes esta opcion.', 'Resuelto', '2013-11-06', '2013-11-07');
INSERT INTO `t_soporte` VALUES (731, 85, 'Pablo', 'Mendoza', 20, 4, 2, 'Buen día se requiere plano base donde se muestren las instituciones educativas del Municipio', 'Buenos días pueden pasar retirando el plano de instituciones educativas ya está listo.', '2013-11-07', '2013-11-07');
INSERT INTO `t_soporte` VALUES (732, 3, 'Alejandro', 'Perez', 23, 3, 2, 'solicitu cambio de clave', 'cambio de clave realizado ', '2013-11-08', '2013-11-12');
INSERT INTO `t_soporte` VALUES (733, 4, 'Johnny', 'Gelvez', 60, 3, 2, 'Buenas tardes, favor quemar en los 2 DVD entregados las carpetas "Evento con Reanissance" y "Evento sin Renaissance" ubicadas en Galería "Favor quemar 2 DVD". Mil gracias', 'dvd quemados y entregados', '2013-11-11', '2013-11-12');
INSERT INTO `t_soporte` VALUES (734, 4, 'Johnny', 'Gelvez', 24, 1, 2, 'buenos dias debido a los aconteciminetos acaecidos en el pais. por lo cual considero que debemos monitorear de manera de estar prevenidos. por lo cual solicito la apertura de las redes sociales. ya que por alli es que se esta manejando la informacion sobre los eventos.', 'Muy buenos días roberto ali, debido a que la máxima autoridad del ipca no a dado alguna directrices para la apertura de redes sociales esta dirección no podrá aperturar dicha paginas. ', '2013-11-12', '2013-11-12');
INSERT INTO `t_soporte` VALUES (735, 3, 'Alejandro', 'Perez', 24, 1, 2, 'La computadora de operaciones 3 no tiene el soporte este. ademas el navegador se queda pegado. no abre el yahoo. gracias', 'se configuro el acceso al soporte.', '2013-11-12', '2013-11-13');
INSERT INTO `t_soporte` VALUES (736, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buenas tardes Pablo, solicito de tus buenos oficios en cuanto a la generacion de un plano referente a Areas y Zonas de supervicion referente al servicio de aseo Urbano Domiciliario y Comercial.', 'Buenos Días en proceso de creación de 2 capas con la información recibida en físico, por favor abre un nuevo soporte para que me indiques cuantos planos necesitas de esta capa en creación', '2013-11-13', '2013-11-14');
INSERT INTO `t_soporte` VALUES (737, 3, 'Alejandro', 'Perez', 75, 3, 2, 'Buenos dias el siguiente soporte es para informales que el dia de ayer mi correo presento problemas hoy nuevamente presenta problemas ', 'Se realizo nueva configuración.', '2013-11-14', '2013-11-18');
INSERT INTO `t_soporte` VALUES (738, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buenas tardes Pablo, la presente es para solicitar la imprecion de tres planos correspondientes a la digitalizacion de la capa sobre zonas y areas de supervicion del servicio de aseo domiciliario y comercial en el Municipio Chacao.', 'Buenos Días se imprimen dos planos uno de auxiliares y uno de inspectores, a la espera de que lo retiren para clarificar un poco el tercero ya que se hace ilegible ambas capas juntas', '2013-11-14', '2013-11-15');
INSERT INTO `t_soporte` VALUES (739, 85, 'Pablo', 'Mendoza', 63, 8, 2, 'Buenas tardes, me dirijo a ustedes en la oportunidad de solicitar su colaboración para publicar en el portal web del IPCA el Cartel de Apertura de Concurso para Cargos de carrera de este instituto.El mismo debe estar colgado en nuestra web desde el 15 hasta el 19 de noviembre de 2013. Gracias de ant', 'Buenas Tardes se publicó en la pagina WEB del IPCA el Cartel de Apertura de Concurso para Cargos de carrera de este instituto.El mismo debe estar colgado en nuestra web desde el 15 hasta el 19 de noviembre de 2013.', '2013-11-15', '2013-11-15');
INSERT INTO `t_soporte` VALUES (740, 85, 'Pablo', 'Mendoza', 89, 4, 2, 'Buenas tardes, solicito de sus buenos oficios a los fines de que se elabore un mapa en digital del municipio Chacao con la ubicación del sector popular El Pedregal, gracias', 'Buenas tardes se envía por correo institucional plano JPG del Municipio con resaltado de Sector Popular el Pedregal.\r\n\r\n', '2013-11-18', '2013-11-18');
INSERT INTO `t_soporte` VALUES (741, 3, 'Alejandro', 'Perez', 5, 1, 2, 'Saludos por favor el correo institucional de los consultores a ninguno le funciona por favor si pueden revisar cual es la falla. Gracias', 'Se configuro de nuevo la cuenta rmoscoso.\r\nSe elimino correo entrante con problema gquintero.\r\n', '2013-11-19', '2013-11-19');
INSERT INTO `t_soporte` VALUES (742, 4, 'Johnny', 'Gelvez', 75, 1, 2, 'Buenos dias le escribo para informarles que el mouse presenta problemas se queda pegado agradesco mucho en lo que me puedan ayudar ', 'mouse cambiado con su memo de entrega. ', '2013-11-19', '2013-11-20');
INSERT INTO `t_soporte` VALUES (743, 4, 'Johnny', 'Gelvez', 20, 1, 2, 'saludos buenos tardes, mucho sabria agradecerles su colaboracion para con nosotros, en pro de realizar reinicio automatico del sistema operativo, en la computadora asignada a la sala situacional, de ante mano mil gracias. ', 'muy buenas tardes, ya para la hora la computadora de la sala situacional se encuentra operativa y funcionando con todas sus herramientas y sistema de seguridad web. ', '2013-11-19', '2013-11-20');
INSERT INTO `t_soporte` VALUES (744, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Buenas tardes, favor publicar nota de prensa y afiche, enviado a su correo, sobre el evento Chacao resiliente en nuestra web. Mil gracias. ', 'Buenas Tardes ya se encuentra la Nota de Prensa sobre evento del día Jueves publicada en la WEB del I.P.C.A.', '2013-11-19', '2013-11-19');
INSERT INTO `t_soporte` VALUES (745, 85, 'Pablo', 'Mendoza', 32, 4, 2, 'buenas tardes, solicito informacion del mapa de rutas de recoleccion', 'Buenas Tardes debido a diferentes actividades de diario no se ha digitalizado la información entregada en excel, se sugiere plasmar la misma en planos tipo dibujo para ser mas detallado en recorrido, tal como otras solicitudes de Ambiente, en tu persona y María Sanchez', '2013-11-20', '2013-11-21');
INSERT INTO `t_soporte` VALUES (746, 1, 'Lillian', 'Chacon', 32, 5, 2, 'buenas tardes en la hoja de servicios sin atender, cuando se realiza una solicitud, la unica placa de vehiculo que se observa es ACH-520, no se si es una falla del sistema o un codigo, seria importante revisar, saludos', 'Buenas tardes Jesus, por favor genera nuevamente este soporte, puesto que por lo que leo es referente a Servicios Generales. Gracias', '2013-11-20', '2013-11-22');
INSERT INTO `t_soporte` VALUES (747, 85, 'Pablo', 'Mendoza', 91, 7, 2, 'Solicitud de Impresión de (8) Copias del Formato de Evaluación para el Concurso de Cargos Noviembre 2013', 'Buenas Tardes se imprimen 8 copias de formato remitido, tamaño oficio', '2013-11-20', '2013-11-21');
INSERT INTO `t_soporte` VALUES (748, 1, 'Lillian', 'Chacon', 18, 7, 2, 'Falta de toner', ' Buenas tardes, la solicitud de tóner se debe realizarla a la Dirección de Administración, la Dirección de Informática no posee consumibles de este tipo, de igual manera si no existe en el mercado el tóner que solicita, debe dirigir una comunicación a la Dirección Ejecutiva de Gestión interna de man', '2013-11-21', '2013-11-21');
INSERT INTO `t_soporte` VALUES (749, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Buenas tardes, favor publicar en nuestr web nota de prensa y foto remitida a su correo. Mil gracias. ', 'Buen Día se publica la nota de prensa con la foto reajustada por Personal de Informática, se remite correo con medidas de fotografías para la WEB por ser plantilla predeterminada por normativa de la Alcaldía de Chacao', '2013-11-21', '2013-11-22');
INSERT INTO `t_soporte` VALUES (750, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Buenos días, por favor colocar el antetítulo de la nota de prensa del acuerdo tal cual como aparece en el documento que les envié. Mil gracias. ', 'Buenos Días realizada solicitud.', '2013-11-25', '2013-11-25');
INSERT INTO `t_soporte` VALUES (751, 3, 'Alejandro', 'Perez', 9, 5, 2, 'Favor ayuda para recuperar un archivo dañado.', 'Se recupero el archivo.', '2013-11-26', '2013-11-26');
INSERT INTO `t_soporte` VALUES (752, 3, 'Alejandro', 'Perez', 18, 2, 2, 'Buen dia. Agradezco evaluar la posibilidad de mejorar el rendimiento del PC asignado al Auditor Interno, en razón de su lentitud en operar. Ya se ha hecho la solicitud de sustitución, lo cual probablemente trascienda el ejercicio fiscal a finalizar.\r\nGracias.\r\nVíctor Hernández', 'se amplio la memoria a 1Gb.', '2013-11-26', '2013-11-27');
INSERT INTO `t_soporte` VALUES (753, 85, 'Pablo', 'Mendoza', 20, 4, 2, 'Buenos Días se requiere la capa que indica daños en el municipio, para terremoto igual al 1967 y 1810', 'Buenos Días se remite en formato Shape, comprimido en formato zip las capas de probabilidad de daño 1812 y 1967', '2013-11-28', '2013-11-28');
INSERT INTO `t_soporte` VALUES (754, 3, 'Alejandro', 'Perez', 70, 1, 2, 'NO ABRE LA PAGINA PRINCIPAL DEL SISTEMA SIGA, NOTA: SE LE COLOCA LA RUTA http://192.168.101.65/ Y GENERA UN ERROR', 'Se reinicio el mozilla.', '2013-12-02', '2013-12-02');
INSERT INTO `t_soporte` VALUES (755, 85, 'Pablo', 'Mendoza', 91, 8, 2, 'Solicitud de publicación de los resultados del Concurso Público de Cargos Noviembre 2013, en la página web del instituto', 'Buenas Tardes Ya se encuentra en pagina WEB del IPCA resultado de concurso de cargos.\r\n\r\n', '2013-12-02', '2013-12-02');
INSERT INTO `t_soporte` VALUES (756, 85, 'Pablo', 'Mendoza', 60, 2, 2, 'Buenos días, favor quemar en los CD y DVD entregados la info ubicada en Galería "Favor quemar CD" y la info consignada, cuatro de cada uno. Mil gracias ', 'quemado 4 discos', '2013-12-04', '2013-12-05');
INSERT INTO `t_soporte` VALUES (757, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Buenos días, favor quemar en los DVD entregados las 2 carpetas (una en cada DVD) ubicadas en Galería "Registro Fotográfico 2013". Mil gracias', 'Buenos Días en proceso el grabado de la carpeta Agosto-Diciembre 2013, por favor la otra carpeta reducir su tamaño ya que pasa de 5 GB', '2013-12-04', '2013-12-05');
INSERT INTO `t_soporte` VALUES (758, 85, 'Pablo', 'Mendoza', 60, 2, 2, 'Buenos días, favor quemar en los 4 DVD entregados la subcarpeta "Agosto - Diciembre 2013" que está en Galería carpeta "Registro Fotográfico 2013". ', 'quemado 4 discos', '2013-12-05', '2013-12-05');
INSERT INTO `t_soporte` VALUES (759, 4, 'Johnny', 'Gelvez', 60, 2, 2, 'Buenas días, favor quemar en los 4 DVD entregadas la subcarpeta "Enero-Julio 2013" ubicada en Galería carpeta "Registro fotográfico 2013". Mil gracias', 'quemados y entregados ', '2013-12-05', '2013-12-05');
INSERT INTO `t_soporte` VALUES (760, 4, 'Johnny', 'Gelvez', 60, 2, 2, 'Buenos días, favor quemar en 4 CD entregados la carpeta "Artes definitivos 2013" ubicada en Galería. Mil gracias', 'quemados y entregados', '2013-12-05', '2013-12-05');
INSERT INTO `t_soporte` VALUES (761, 4, 'Johnny', 'Gelvez', 60, 2, 2, 'Buenos días, favor quemar en los 4 CD entregados la carpeta "Notas de prensa 2013" ubicada en Galería. Mil gracias.', 'quemados y entregados ', '2013-12-05', '2013-12-05');
INSERT INTO `t_soporte` VALUES (762, 4, 'Johnny', 'Gelvez', 60, 2, 2, 'Buenos días, favor quemar en los 4 CD entregados el video institucional consignado. Mil gracias. ', 'quemados y entregados', '2013-12-05', '2013-12-05');
INSERT INTO `t_soporte` VALUES (763, 4, 'Johnny', 'Gelvez', 60, 2, 2, 'Buenos días, favor quemar en los 4 CD entregados los Archivos editables Eduriesgo Chacao consignados. Mil gracias.', 'quemados y entregados', '2013-12-05', '2013-12-05');
INSERT INTO `t_soporte` VALUES (764, 85, 'Pablo', 'Mendoza', 63, 2, 2, 'Buen día por medio de la presente se requiere del apoyo de informatica para el grabado de 4 Cd´s con información remitida', 'Buenas Tardes se grabaron los 4 Cd´s y se entregan los mismos al solicitante', '2013-12-05', '2013-12-05');
INSERT INTO `t_soporte` VALUES (765, 85, 'Pablo', 'Mendoza', 59, 1, 2, 'Buenas Tardes por medio de la presente se requeire armar un PDF desde varios archivos en word', 'Buenas Tardes se genera un PDF de 101 paginas desde 42 archivos word, se entrega en CD', '2013-12-05', '2013-12-05');
INSERT INTO `t_soporte` VALUES (766, 85, 'Pablo', 'Mendoza', 32, 4, 2, 'buenos dias, entendiendo que anteriormente habia mucho trabajo y no podian hacerme el mapa, entendiendo que hoy es el dia de la entrega, solicito por 3ra vez el mapa de la informacion que se entrego a el sr pablo mendoza y no tengo la posibilidad de hacer el dibujo del mapa, ya que mis labores opera', 'Buenos días, el trabajo de la Dirección no termina, así que por favor ser mas coherente en la redacción de sus soportes, ya que se está en otras actividades tanto de cierre como de mapas. ', '2013-12-06', '2013-12-06');
INSERT INTO `t_soporte` VALUES (767, 85, 'Pablo', 'Mendoza', 19, 5, 2, 'Buenos Días se requiere copia de Manual de Normas y Procedimientos que posee Informatica de PC en 4 copias.', 'Grabado y entregado', '2013-12-06', '2013-12-06');
INSERT INTO `t_soporte` VALUES (768, 85, 'Pablo', 'Mendoza', 33, 5, 2, 'Buenos Días se requieren 4 CD´s de Manual de Normas y Procedimientos que posee Informatica de DEGA', 'Grabado y entregado', '2013-12-06', '2013-12-06');
INSERT INTO `t_soporte` VALUES (769, 85, 'Pablo', 'Mendoza', 55, 5, 2, 'Buenos Días se requieren 4 CD´s de Manual de Normas y Procedimientos que posee Informatica de OACSA', 'Grabado y entregado', '2013-12-06', '2013-12-06');
INSERT INTO `t_soporte` VALUES (770, 85, 'Pablo', 'Mendoza', 61, 5, 2, 'Buenos Días se requieren 4 CD´s de Manual de Normas y Procedimientos que posee Informatica de ARCHIVO', 'Grabado y entregado', '2013-12-06', '2013-12-06');
INSERT INTO `t_soporte` VALUES (771, 85, 'Pablo', 'Mendoza', 63, 5, 2, 'Buen día por medio de la presente se requiere del apoyo de informatica para el grabado de 8 Cd´s con información remitida y Manual de Normas y Procedimientos\r\n', 'grabados y entregados', '2013-12-06', '2013-12-06');
INSERT INTO `t_soporte` VALUES (772, 4, 'Johnny', 'Gelvez', 95, 7, 2, 'Buenas tardes, por favor necesitamos su presencia para verificar la impresora, ya que no podemos imprimir desde ninguna de las computadoras. Agradecemos su pronta ayuda, Gracias.', 'la misma se encontraba desconectada, para la hora funcionando.', '2013-12-09', '2013-12-11');
INSERT INTO `t_soporte` VALUES (773, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buenos Días por medio de la presente se requiere generar capa de Inspecciones Terrenos 2013, enviada por correo institucional en formato excel', 'Buen día se revisaron los datos y se adaptaron para realizar la capa, puede pasar buscando el plano por la Dirección de Informática', '2013-12-10', '2013-12-10');
INSERT INTO `t_soporte` VALUES (774, 2, 'José', 'Reina', 60, 1, 2, 'Buenos días, favor publicar nota de prensa y foto enviada, en la sección "Noticias". Mil gracias. ', 'noticia publicada', '2013-12-10', '2013-12-11');
INSERT INTO `t_soporte` VALUES (775, 4, 'Johnny', 'Gelvez', 58, 1, 2, 'Actualización de Software del Office de la Computadora tipolaptop asignada a Carmen Valbuena.', 'Soporte atendido instalando le el oficie 2007 ', '2013-12-11', '2013-12-11');
INSERT INTO `t_soporte` VALUES (776, 2, 'José', 'Reina', 60, 3, 2, 'Favor publicar nota de prensa y foto sobre certifiación ISO 14001, remitida a su correo. Mil gracias. ', 'publicada', '2013-12-11', '2013-12-17');
INSERT INTO `t_soporte` VALUES (777, 4, 'Johnny', 'Gelvez', 58, 5, 2, 'Se solicita el respaldo de correo electronico institucional y adecuación del outlook de Jennifer Fermin en la oficina del Consultor Jurídico.', 'se procede a configurar el correo jfermin al equipo del consultor ahora quedando los dos correos configurados en un mismo equipo con el respaldo solicitado.. de igual manera exhortamos a realizar la invitacion del nuevo correo a todos sus contactos de la agenda, para esto dispondremos de un lapso a ', '2013-12-12', '2014-01-08');
INSERT INTO `t_soporte` VALUES (778, 2, 'José', 'Reina', 21, 3, 2, 'Buenas tardes! la presente es para solicitar la verificación del sistema, ya que las inspecciones que remite Atención al Ciudadano, llegan fuera de tiempo,hoy 12 en la mañana llegaron insp que se remitieron ayer 11.', 'el mismo no contuo con la falla reportada', '2013-12-12', '2013-12-13');
INSERT INTO `t_soporte` VALUES (779, 2, 'José', 'Reina', 60, 1, 2, 'Buenos días, por favor adaptar el tipo de le letra de la última noticia publicada a la utilizada en las noticias anteriores para evitar que el texto se vea apiñado e ilegible. Mil gracias.  ', 'actualizada', '2013-12-18', '2013-12-20');
INSERT INTO `t_soporte` VALUES (780, 4, 'Johnny', 'Gelvez', 97, 7, 2, 'no imprime', 'se re conecto la impresora a la funcionaria maria ya que para el momento no tenia conexión en la impresora del contralor interno.. para la hora quede restablecido el servicio de impresión  ', '2013-12-19', '2013-12-19');
INSERT INTO `t_soporte` VALUES (781, 85, 'Pablo', 'Mendoza', 58, 1, 2, 'Buenas tardes, por esta via solicito se actualice la clave en el sistema CIDESA a Carmen Valbuena. Usuario cvalbuena\r\nGracias', 'Buenas Tardes se verificó con Jose Manuel la clave de la funcionaria en el sistema y se le indicó la misma', '2013-12-19', '2013-12-19');
INSERT INTO `t_soporte` VALUES (782, 2, 'José', 'Reina', 97, 1, 2, 'buenos dias agradezco revisar la maquina del auditor interno ya que se quedo guindada.. muchas gracias, urgente.', 'SE CIERRA EL CASO, YA QUE EXISTEN DOS LLAMAS DIFERENTE PARA EL MISMO PROBLEMA, QUEDA ACTIVA LA LLAMADA 783 DE VICTOR HERNANDEZ.', '2013-12-23', '2014-01-06');
INSERT INTO `t_soporte` VALUES (783, 4, 'Johnny', 'Gelvez', 18, 2, 3, 'Buenas tardes. Agradezco la reposiciòn del pc asignado al Auditor Interno, dado que el mismo fue evaluado por la Dirección de Informática en virtud de que no arrancaba, resultando que el mismo se dañó.', 'la misma se evalúa su cambio una vez que tengamos algún equipo disponible', '2013-12-23', '0000-00-00');
INSERT INTO `t_soporte` VALUES (784, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Buenas tardes, favor corregir la palabra "Coordicación" en los títulos de los manuales de normas y procedimientos publicados y "Júridica", lo correcto es "Jurídica". Mil gracias   ', 'Corregidas las palabras', '2013-12-26', '2013-12-27');
INSERT INTO `t_soporte` VALUES (785, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Favor publicar en la web la nota de prensa y foto enviada a su correo Ramón Muchacho: "Chacao recibirá el año como el municipio más limpio de toda Venezuela". Mil gracias', 'Buenas Tardes, publicada nota de prensa con foto.', '2013-12-26', '2013-12-27');
INSERT INTO `t_soporte` VALUES (786, 85, 'Pablo', 'Mendoza', 60, 8, 2, 'Buenas tardes, le envié al correo 4 destacadas web favor sustituir los que están actualmente publicados. Mil gracias. ', 'Buenas Tardes actualizados los DEstacados en la WEB', '2013-12-26', '2013-12-27');
INSERT INTO `t_soporte` VALUES (787, 2, 'José', 'Reina', 33, 3, 2, 'Buen Dia, Tengo problemas con la salida de correo, Gracias', 'se revisa correo, se borran los correos que aparecen en buzon de salida y le explica a Maria como reducir imagenes para que no presente problema mas adelante', '2014-01-02', '2014-01-02');
INSERT INTO `t_soporte` VALUES (788, 2, 'José', 'Reina', 9, 3, 2, 'Falla al imprimir', 'se verifica impersora, se observa que el cable de datos esta desajustado, se procede a conectar el cable de manera correcta quedando operativa la impresora Xerox', '2014-01-06', '2014-01-06');
INSERT INTO `t_soporte` VALUES (789, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, favor publicar en la sección noticias la nota de prensa y foto enviada a su correo. Mil gracias. Feliz año. ', 'Nota de Prensa Publicada, Saludos', '2014-01-06', '2014-01-06');
INSERT INTO `t_soporte` VALUES (790, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, favor reemplezar el arte publicado en la sección "Aseo Urbano" por el remitido a su correo. Mil gracias por su colaboración. Saluditos', 'se reemplaza el contenido de aseo urbano por el nuevo diseño', '2014-01-06', '2014-01-06');
INSERT INTO `t_soporte` VALUES (791, 2, 'José', 'Reina', 10, 2, 2, 'El equipo no enciende', 'Se Revisa el equipo y se puede observar que la fuente de corriente presenta falla en algunos conectores. el equipo se deja operativo', '2014-01-06', '2014-01-06');
INSERT INTO `t_soporte` VALUES (792, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, les remití a su correo 5 fotos para reemplazar las que están publicadas en la sección "Gestión Ambiental" y "Protección Civil" de nuestra web. Mil gracias.', '5 fotos reemplazadas.', '2014-01-06', '2014-01-07');
INSERT INTO `t_soporte` VALUES (793, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor reemplazar arte de la sección "Aseo Urbano" por el enviado en este momento a su correo. Mil gracias. ', 'Diseño actualizado', '2014-01-06', '2014-01-06');
INSERT INTO `t_soporte` VALUES (794, 4, 'Johnny', 'Gelvez', 8, 6, 2, 'Problemas con el monitor. No prende la pantalla. ', 'se verifica el caso y se observa el cable de vídeo un tanto flojo se precede al reinicio del equipo y para la hora funcionando perfecto', '2014-01-07', '2014-01-07');
INSERT INTO `t_soporte` VALUES (795, 4, 'Johnny', 'Gelvez', 97, 6, 2, 'buen dia agradezco se nos coloque la impresora a funcionar con cualquiera de las otras computadoras que posee esta Unidad,ya que con la que funcionaba habitualmente se encuentra dañada y por ese motivvo no podemos imprimir gracias.', 'impresora cambiada y configurada bajo el estatus compartida para imprimir locamente dentro de la direccion', '2014-01-07', '2014-01-07');
INSERT INTO `t_soporte` VALUES (796, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor reemplazar arte publicado en Instituto, Historia "Breve historia". Mil gracias. ', 'Historia Actualizada', '2014-01-07', '2014-01-07');
INSERT INTO `t_soporte` VALUES (797, 2, 'José', 'Reina', 60, 3, 2, 'Favor reemplazar el Header con nuevo slogan remitido a su correo. Mil gracias ', 'Header (encabezado) reemplazado', '2014-01-07', '2014-01-07');
INSERT INTO `t_soporte` VALUES (798, 2, 'José', 'Reina', 60, 3, 2, 'Favor reemplazar arte "Ubicación 24 puntos ecológicos" enviado. Mil gracias ', 'Arte de 24 puntos Actualizado', '2014-01-07', '2014-01-07');
INSERT INTO `t_soporte` VALUES (799, 2, 'José', 'Reina', 60, 3, 2, 'Por favor reemplazar 3 artes enviados (aseo urbano, horario de disposición y Breve Historia). Mil gracias. ', 'los 3 artes Reemplazados', '2014-01-07', '2014-01-07');
INSERT INTO `t_soporte` VALUES (800, 85, 'Pablo', 'Mendoza', 21, 4, 2, 'Buenas, la presente tiene como finalidad solicitar el soporte del sistema SIGAR de las inspecciones definitivas de riesgos del año 2013. Gracias', 'Buenos días, se envía por correo institucional formato excel con 484 registros, se llevará en formato shape para visualización en ArcGis Local.', '2014-01-08', '2014-01-08');
INSERT INTO `t_soporte` VALUES (801, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, favor reemplazar en "Gestión Ambiental" los 5 artes remitidos a su correo. Mil gracias ', 'Se reemplaza los 5 artes de Gestión Ambiental', '2014-01-08', '2014-01-08');
INSERT INTO `t_soporte` VALUES (802, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, favor reemplazar artes en "Educación" qué hacer en caso de sismo. Y en "Gestión Ambiental" 24 puntos ecológicos. Mil gracias', 'Artes Reemplazados', '2014-01-08', '2014-01-08');
INSERT INTO `t_soporte` VALUES (803, 2, 'José', 'Reina', 70, 1, 2, 'Cambiar nombre de presidente que aparece en el reporte de orden de pago', 'Se revisa el reporte y se cambia el nombre del actual presidente del IPCA', '2014-01-08', '2014-01-08');
INSERT INTO `t_soporte` VALUES (804, 2, 'José', 'Reina', 60, 3, 2, 'Favor reemplazar contenidos web Punto Móvil, Sigar y destacado Ecoescuelas. Mil gracias ', 'Reemplazado los 3 contenidos', '2014-01-08', '2014-01-08');
INSERT INTO `t_soporte` VALUES (805, 2, 'José', 'Reina', 7, 5, 2, 'Modificación del Programa de resumen estadístico', 'Se realiza revisión de la hoja de exel  y se de asesoría para el buen uso del mismo.', '2014-01-08', '2014-01-08');
INSERT INTO `t_soporte` VALUES (806, 85, 'Pablo', 'Mendoza', 21, 4, 2, 'BUENAS TARDES!!!! SE REQUIERE UNA REVISIÓN DEL SISTEMA, NO PERMITE REALIZAR EL REGISTRO DE LAS INSP, NO SE VISUALIZAN LOS CAMPOS.  ', 'Buenas Tardes se verificó la capa en las 4 Pc´s y se solventó para que pueda registrar las inspecciones. Gracias', '2014-01-08', '2014-01-08');
INSERT INTO `t_soporte` VALUES (807, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar arte enviado con perfil de Presidente del IPCA. Mil gracias. ', 'perfil del presidente Actualizado', '2014-01-08', '2014-01-09');
INSERT INTO `t_soporte` VALUES (808, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días, favor reemplazar los 7 artes de Autoprotección Escolar, enviados a su correo. Mil gracias', '7 artes reemplazados Autoprotección Escolar', '2014-01-09', '2014-01-10');
INSERT INTO `t_soporte` VALUES (809, 2, 'José', 'Reina', 60, 3, 2, 'Favor reemplazar 7 artes de Autoprotección Comunitaria en la sección Educación. Mil gracias', 'Reemplazados los 7 artes.', '2014-01-09', '2014-01-09');
INSERT INTO `t_soporte` VALUES (810, 2, 'José', 'Reina', 60, 3, 2, 'Favor reemplazar el destacado web sobre las funciones del IPCA, remitido a su correo. Mil gracias', 'el destacado ha sido reemplazado', '2014-01-09', '2014-01-10');
INSERT INTO `t_soporte` VALUES (811, 2, 'José', 'Reina', 60, 3, 2, 'Favor reemplazar los 7 artes sobre Conformación de Brigadas, sección Educación.  Mil gracias ', 'Conformación de brigada, lista', '2014-01-09', '2014-01-10');
INSERT INTO `t_soporte` VALUES (812, 2, 'José', 'Reina', 60, 3, 2, 'Por favor agregar la frase "Para ver el contenido haga click sobre cada inducción" en cada programa de Educación que tenga desplegables. Mil gracias \r\n', 'se realizó dicho cambio', '2014-01-09', '2014-01-10');
INSERT INTO `t_soporte` VALUES (813, 2, 'José', 'Reina', 60, 3, 2, 'Favor reemplazar artes sobre "Capacitación para Reducir Riesgos y Aumentar la Resilencia". Sección Educación. Mil gracias. ', 'Este Diseño será reeplazado por otro. se cierra este caso, se abrirá otro en su debido momento.', '2014-01-09', '2014-01-10');
INSERT INTO `t_soporte` VALUES (814, 2, 'José', 'Reina', 60, 3, 3, 'Favor publicar en la sección Ordenanzas de nuestra web. La Ordenanza sobre Desechos y Residuos Sólidos que aparece en este link\r\nhttp://www.google.co.ve/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&ved=0CDIQFjAB&url=http%3A%2F%2Fwww.concejochacao.gob.ve%2FOrdenanzas_Vigentes%2FOrdenanzasUrbanisticasyAfi', '', '2014-01-09', '0000-00-00');
INSERT INTO `t_soporte` VALUES (815, 2, 'José', 'Reina', 60, 3, 2, 'Favor reemplazar 14 artes en Educación sobre Capacitación de funcionarios y voluntarios. Mil gracias. ', 'Este Diseño será reeplazado por otro. se cierra este caso, se abrirá otro en su debido momento.', '2014-01-09', '2014-01-10');
INSERT INTO `t_soporte` VALUES (816, 2, 'José', 'Reina', 60, 3, 2, 'Favor reemplazar arte horario de disposición de desechos remitido a su correo. Mil gracias ', 'Este Diseño será reeplazado por otro. se cierra este caso, se abrirá otro en su debido momento.', '2014-01-09', '2014-01-10');
INSERT INTO `t_soporte` VALUES (817, 2, 'José', 'Reina', 60, 3, 2, 'Favor publicar los 7 artes de Autoprotección Corporativa. Mil gracias. ', 'Este Diseño será reeplazado por otro. se cierra este caso, se abrirá otro en su debido momento.', '2014-01-09', '2014-01-10');
INSERT INTO `t_soporte` VALUES (818, 3, 'Alejandro', 'Perez', 75, 2, 2, 'Buenas tardes la impresora esta presentando problemas con la impresion gracias ', 'Se retiro papel atascado.', '2014-01-09', '2014-01-09');
INSERT INTO `t_soporte` VALUES (819, 3, 'Alejandro', 'Perez', 81, 2, 2, 'PROBLEMAS CON IMPRESIONES.', 'Se elimino cola de impresión ', '2014-01-09', '2014-01-09');
INSERT INTO `t_soporte` VALUES (820, 85, 'Pablo', 'Mendoza', 87, 4, 2, 'Buenos días para que por favor me impriman un mapa a color de 50*50 centimetros. Gracias.', 'Buenos Días se realiza impresión de plano en plotter, 50x50 cms, se entrega a Anggie Peña.', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (821, 2, 'José', 'Reina', 8, 5, 2, 'Por Favor publicar en la Web el diseño de reciclaje de vidrio que se acaba de enviar por correo en el area de Gestion Ambiental', 'Este Diseño será reeplazado por otro. se cierra este caso, se abrirá otro en su debido momento.', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (822, 2, 'José', 'Reina', 8, 3, 2, 'Por favor publicar el diseño de "Modelo de Gestion sostenible de residuos solidos reciclables" que acabo de pasar por correo en el area de Gestion Ambiental', 'Este Diseño será reeplazado por otro. se cierra este caso, se abrirá otro en su debido momento.', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (823, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buen dia, la presente es para solicitar de sus buenos oficios en cuanto al area de una subparcela codigo catastral 21316020 y datos del propietario si lo tienen.    Saludos y gracias de anticipadamente.', 'Buenas Tardes se realizaron las consultas requeridas, se suminstra la información y no posee NOmbre Propietario.', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (825, 85, 'Pablo', 'Mendoza', 62, 5, 2, 'Favor copiar CD Censo segùn Ordenanza No. 001-07 sobre limpieza y conservaciòn de terrenos y parcelas sin edificaciones o con edificaciones paralizadas o abandonadas IV trimestre 2013 para Ing. Johan Prieto.  Gracias', 'Buenas Tardes se genera copia de CD según descripción y se realzia entrega del mismo.\r\n', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (826, 2, 'José', 'Reina', 8, 3, 2, 'obviar artes anteriores y publicar en Gestion ambiental.. diseño de Plan de Gestion con nuevo logo. Ya se envio por correo', 'actualizado', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (827, 2, 'José', 'Reina', 8, 3, 2, 'Ya se envio los artes de "Modelo de gestion" y "Vidrio" para sustituitr los anteriores. Ambos con nuevo logo y en el area de Gestion Ambiental', 'Actualizado', '2014-01-10', '2014-01-16');
INSERT INTO `t_soporte` VALUES (828, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buenas tardes Pablo, La presente es para solicitarte dos croquis uno de la parcela 21315010 y otro de la parcela 21316020. Gracias de antemano.', 'Buenas Tardes remitido vía correo croquis en formato JPG.', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (829, 85, 'Pablo', 'Mendoza', 33, 4, 2, 'Buenas tardes Pablo,La presente es para solicitar la generacion de Planillas de Inspeccion de terreno segun la informacion que remite catastro del IV trimestre. Gracias.', 'Buenas tardes María recibida la data de terrenos, y comparada con los 3 trimestres anteriores no presenta registros nuevos para inspección.', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (830, 2, 'José', 'Reina', 8, 3, 2, 'Favor sustituir la imagen actual de ecoescuela por la que se envio hoy por correo con nuevo logo. Además sustituir los telefonos de los diseños de educacion con el nuevo logo que esta en el correo de Autoproteccion corporativa (se acaba de enviar). sin embargo se paso un correo con todas las partes ', 'Actualizado', '2014-01-10', '2014-01-16');
INSERT INTO `t_soporte` VALUES (831, 85, 'Pablo', 'Mendoza', 87, 4, 2, 'Buenas tardes, la presente es para que por favor me ayuden a adecuar un plano en mi PC para luego imprimirlo. Gracias.', 'Buenas Tardes se adecúa plano de trabajo de Probabilidad de daño y se imprime en gran formato 90x90 cm', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (832, 85, 'Pablo', 'Mendoza', 87, 4, 2, 'Buenas tardes, la presente es para que por favor me impriman dos mapas a color de 90*90. Muchas gracias.', 'Buenas Tardes, se imprimen dos planos en medidas solicitadas y realiza la entrega de los mismos', '2014-01-10', '2014-01-10');
INSERT INTO `t_soporte` VALUES (833, 2, 'José', 'Reina', 60, 3, 2, 'Buenas días, favor publicar en la sección "Noticias" la nota y foto enviada. Este cambio sí es urgente, porque necesitamos difundir el link por twitter hoy. Mil gracias    ', 'Noticia publicada', '2014-01-13', '2014-01-13');
INSERT INTO `t_soporte` VALUES (834, 4, 'Johnny', 'Gelvez', 81, 5, 2, 'BUEN DÍA, TENGO UN INCONVENIENTE CON UN DOCUMENTO.GRACIAS', 'información enviada desde la alcaldía con formato protegido, la misma se deberá recibir de nuevo con los permisos de edición ', '2014-01-13', '2014-01-13');
INSERT INTO `t_soporte` VALUES (835, 3, 'Alejandro', 'Perez', 13, 3, 2, 'Habilitar Twitter a la Coordinación de Atención Ciudadano', 'Se ha habilito el twitter a la coordinación.', '2014-01-13', '2014-01-13');
INSERT INTO `t_soporte` VALUES (836, 4, 'Johnny', 'Gelvez', 18, 6, 2, 'Agradezco reubicar equipo de computación, en virtud de que el equipo asignado al auditor interno se dañó.', 'el equipo re ubicado perteneciente a la funcionaria rosangeles .. para la hora instalado y configurado.', '2014-01-13', '2014-01-13');
INSERT INTO `t_soporte` VALUES (837, 2, 'José', 'Reina', 60, 3, 2, 'Buenas tardes, favor publicar nota de prensa y foto sobre remoción de obstáculos en las aceras. Mil gracias. ', 'noticia publicada', '2014-01-13', '2014-01-13');
INSERT INTO `t_soporte` VALUES (838, 2, 'José', 'Reina', 70, 1, 2, 'AL REALIZAR LA APERTURA SE GENERA EL SIGUIENTE ERROR: pg_dump --username postgres -h localhost --format custom --verbose --file "/var/www/cidesa/siga/web/uploads/sima_migracion_sima008.backup" --schema SIMA008 SIMA.....POR FAVOR VERIFICAR GRACIAS', 'caso resuelto, por el mismo funcionario', '2014-01-13', '2014-01-14');
INSERT INTO `t_soporte` VALUES (839, 3, 'Alejandro', 'Perez', 13, 1, 2, 'Saludos cordiales por medio de la presente me dirijo a ustedes a fin de solicitar la habilitación de gmail y hotmail en los usuarios de Vittorio, Yanibel y Jerry motivado a que existe un correo ipcacomunidad@gmail.com y a su vez cuando se accede a una denuncia recibida por estos medios se bloquea el', 'se realizo el desbloqueo', '2014-01-14', '2014-01-16');
INSERT INTO `t_soporte` VALUES (840, 2, 'José', 'Reina', 88, 1, 2, 'Apertura de Nomina, primero de Enero 2014.', 'se Apertura nuevamente la nómina. la misma habia sido cerrada', '2014-01-14', '2014-01-14');
INSERT INTO `t_soporte` VALUES (841, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Buenos días, favor reemplazar 5 artes remitidos con nuevo logo y slogan. Mil gracias. ', 'Buenas Tardes, fueron reemplazadas las 5 imágenes en la WEB, favor revisar y en caso de duda u observación hacerla llegar.', '2014-01-15', '2014-01-15');
INSERT INTO `t_soporte` VALUES (842, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Buenas tardes, favor reemplazar 8 artes enviados, en la sección Educación. Mil gracias. ', 'Buenas Tardes, reemplazados 8 artes sección Educación en la WEB, favor revisar y en caso de duda u observación hacerla llegar.', '2014-01-15', '2014-01-15');
INSERT INTO `t_soporte` VALUES (843, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Buenas tardes favor reemplazar los 7 artes remitidos sobre Autoprotección Corporativa  módulo de Educación. Mil gracias ', 'Buenas Tardes, reemplazados 7 artes sección Educación auto protección corporativa en la WEB, favor revisar y en caso de duda u observación hacerla llegar.', '2014-01-15', '2014-01-15');
INSERT INTO `t_soporte` VALUES (844, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Favor reemplazar 7 contenidos de Autoprotección Comunitaria en Educación. Mil gracias ', 'Buenas Tardes, reemplazados 7 contenidos sección Educación auto protección comunitaria en la WEB, favor revisar y en caso de duda u observación hacerla llegar.', '2014-01-15', '2014-01-15');
INSERT INTO `t_soporte` VALUES (845, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Buenas tardes, favor reemplazar 7 contenidos de Autoprotección Escolar en sección Educación. Mil gracias. ', 'Buenas Tardes, reemplazados 7 contenidos sección Educación auto protección escolar en la WEB, favor revisar y en caso de observación hacerla llegar.', '2014-01-15', '2014-01-15');
INSERT INTO `t_soporte` VALUES (846, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Buenas tardes,\r\n\r\nFavor reemplazar 14 artes de capacitación de funcionarios en Educación. Mil gracias. ', 'Buenas Tardes, reemplazados artes de Capacitación de funcionarios y voluntarios en la WEB, favor revisar y en caso de observación hacerla llegar.', '2014-01-15', '2014-01-15');
INSERT INTO `t_soporte` VALUES (847, 85, 'Pablo', 'Mendoza', 60, 3, 2, 'Favor reemplazar los 6 destacados. Mil gracias. ', 'Buenas Tardes, reemplazados 6 destacados en la WEB, favor revisar y en caso de observación hacerla llegar.', '2014-01-15', '2014-01-15');
INSERT INTO `t_soporte` VALUES (848, 4, 'Johnny', 'Gelvez', 33, 2, 2, 'Buen dia, la presente es para solicitar revision del equipo (CPU y Monitor) asignado a Sr. Norvelis, debido a que el mismo no enciende. ', 'al hacerse la evaluación se observo que el cable de fuente de poder que alimentaba el monitor se encontraba desconectado. Para el momento funcionando (se recomienda una vez que suceda algo parecido el usuario verifique algunas conexiones básicas del equipo y si pereciste el problema con mucho gusto ', '2014-01-16', '2014-01-16');
INSERT INTO `t_soporte` VALUES (849, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días. Favor reemplazar 17 artes de la sección Gestión Ambiental. Mil gracias\r\n', 'Artes Actualizados', '2014-01-16', '2014-01-16');
INSERT INTO `t_soporte` VALUES (850, 4, 'Johnny', 'Gelvez', 97, 5, 2, 'libreta de direcciones', 'importación de contactos de la libreta del correo..', '2014-01-16', '2014-01-16');
INSERT INTO `t_soporte` VALUES (851, 4, 'Johnny', 'Gelvez', 97, 5, 2, 'libreta de direcciones', 'importación de contactos de la libreta del correo..', '2014-01-16', '2014-01-16');
INSERT INTO `t_soporte` VALUES (852, 4, 'Johnny', 'Gelvez', 70, 2, 2, 'IMPRESORA EPSON FX-2190, NO IMPRIME, ES URGENTE SOLUCINAR ESTE INCONVENIENTE', 'verificar el modelo a elegir al momento de imprimir.. ', '2014-01-17', '2014-01-17');
INSERT INTO `t_soporte` VALUES (853, 2, 'José', 'Reina', 8, 3, 2, 'Buenas Tardes!! Por favor cambiar los archivos de la web de Proteccion Civil por lo que estoy enviando por correo.. Son 8!! Muchas Gracias!! ', '8 artes Actualizados', '2014-01-17', '2014-01-17');
INSERT INTO `t_soporte` VALUES (854, 3, 'Alejandro', 'Perez', 101, 1, 2, 'la pagina del soporte me solicita instalacion de adobe flash player para visualizar la opcion de mapa, al hacerlo me indica que no tengo suficientes privilegios para instalar el adobe flash player 12, por favor quisiera que revisaran mi maquina para instalar esta actualizacion, gracias', 'Se actualizo el software adobe flash.', '2014-01-17', '2014-01-20');
INSERT INTO `t_soporte` VALUES (855, 2, 'José', 'Reina', 8, 3, 2, 'Buenos Dias por favor cambiar las imagenes de Plan de Gestion y Ecoescuela, que fueron enviadas en correos anteriores, ademas de revisar algunos artes como "horario de disposicion de desechos y Ubicacion de 24 puntos" que estan deformados en el area de Gestion ambiental.', 'Imagenes Cambiadas', '2014-01-20', '2014-01-20');
INSERT INTO `t_soporte` VALUES (856, 85, 'Pablo', 'Mendoza', 8, 3, 2, 'Por favor sustituir el arte de "Quienes Somos" por uno que se acaba de enviar por correo.', 'Actividad realizada.', '2014-01-20', '2014-01-20');
INSERT INTO `t_soporte` VALUES (857, 2, 'José', 'Reina', 60, 3, 2, 'Buenos días,favor revisar en la web algunos contenidos que aparecen distorsionados. Envíe los links a su correo. Maru les envió  soporte unas fotos que también aparecen distorsionadas. Mil gracias. \r\n', 'Listo', '2014-01-20', '2014-01-20');
INSERT INTO `t_soporte` VALUES (858, 85, 'Pablo', 'Mendoza', 8, 3, 2, 'Por favor cambiar los artes de Ecoecuela y Circuito Ecologico por los que se acaban de enviar por correo. Gracias!', 'Realizados los cambios de ambos diseños', '2014-01-20', '2014-01-20');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_status_empleado`
-- 

CREATE TABLE `t_status_empleado` (
  `cod_status_empleado` tinyint(2) NOT NULL auto_increment,
  `status_empleado` varchar(10) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_status_empleado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `t_status_empleado`
-- 

INSERT INTO `t_status_empleado` VALUES (1, 'Activo');
INSERT INTO `t_status_empleado` VALUES (2, 'Inactivo');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_status_solicitud`
-- 

CREATE TABLE `t_status_solicitud` (
  `cod_status_solicitud` tinyint(2) NOT NULL auto_increment,
  `status_solicitud` varchar(10) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_status_solicitud`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `t_status_solicitud`
-- 

INSERT INTO `t_status_solicitud` VALUES (1, 'Abierto');
INSERT INTO `t_status_solicitud` VALUES (2, 'Cerrado');
INSERT INTO `t_status_solicitud` VALUES (3, 'En Proceso');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_tipo_empleado`
-- 

CREATE TABLE `t_tipo_empleado` (
  `cod_tipo_empleado` tinyint(2) NOT NULL auto_increment,
  `tipo_empleado` varchar(15) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_tipo_empleado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `t_tipo_empleado`
-- 

INSERT INTO `t_tipo_empleado` VALUES (1, 'Informática');
INSERT INTO `t_tipo_empleado` VALUES (2, 'Servicio');
INSERT INTO `t_tipo_empleado` VALUES (3, 'General');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_tipo_servicio`
-- 

CREATE TABLE `t_tipo_servicio` (
  `cod_tipo_servicio` tinyint(2) NOT NULL auto_increment,
  `tipo_servicio` varchar(15) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_tipo_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `t_tipo_servicio`
-- 

INSERT INTO `t_tipo_servicio` VALUES (1, 'Vehículo');
INSERT INTO `t_tipo_servicio` VALUES (2, 'Sede');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_tipo_soporte`
-- 

CREATE TABLE `t_tipo_soporte` (
  `cod_tipo_soporte` tinyint(2) NOT NULL auto_increment,
  `tipo_soporte` varchar(15) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_tipo_soporte`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `t_tipo_soporte`
-- 

INSERT INTO `t_tipo_soporte` VALUES (1, 'Software');
INSERT INTO `t_tipo_soporte` VALUES (2, 'Hardware');
INSERT INTO `t_tipo_soporte` VALUES (3, 'Red');
INSERT INTO `t_tipo_soporte` VALUES (4, 'SIG');
INSERT INTO `t_tipo_soporte` VALUES (5, 'Asesoría');
INSERT INTO `t_tipo_soporte` VALUES (6, 'Instalación');
INSERT INTO `t_tipo_soporte` VALUES (7, 'Impresiones');
INSERT INTO `t_tipo_soporte` VALUES (8, 'otros');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `t_tipo_vehiculo`
-- 

CREATE TABLE `t_tipo_vehiculo` (
  `cod_tipo_vehiculo` tinyint(2) NOT NULL auto_increment,
  `tipo_vehiculo` varchar(15) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`cod_tipo_vehiculo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4 ;

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
  `cod_vehiculo` tinyint(2) NOT NULL,
  `cod_tipo_vehiculo` tinyint(2) NOT NULL,
  `cod_modelo_vehiculo` tinyint(2) NOT NULL,
  `cod_empleado` int(4) NOT NULL,
  `placa` varchar(7) collate utf8_spanish_ci NOT NULL,
  `ano` year(4) NOT NULL,
  `nro_bien` int(5) NOT NULL,
  PRIMARY KEY  (`cod_vehiculo`),
  UNIQUE KEY `placa` (`placa`),
  KEY `fk_modelo_vehiculo` (`cod_modelo_vehiculo`),
  KEY `fk_tipo_vehiculo` (`cod_tipo_vehiculo`),
  KEY `fk_empleado_vehiculo` (`cod_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `t_vehiculo`
-- 

INSERT INTO `t_vehiculo` VALUES (1, 1, 1, 22, 'AB9K72A', 0000, 1674);
INSERT INTO `t_vehiculo` VALUES (2, 1, 1, 19, 'AB9K73A', 0000, 1675);
INSERT INTO `t_vehiculo` VALUES (3, 1, 2, 19, 'AAX-406', 0000, 0);
INSERT INTO `t_vehiculo` VALUES (4, 1, 2, 15, 'AAX-407', 0000, 0);
INSERT INTO `t_vehiculo` VALUES (8, 1, 1, 89, 'ADP587', 0000, 1385);
INSERT INTO `t_vehiculo` VALUES (10, 1, 1, 89, 'AA4S33A', 0000, 1634);
INSERT INTO `t_vehiculo` VALUES (11, 1, 1, 89, 'AAS441A', 0000, 1644);
INSERT INTO `t_vehiculo` VALUES (12, 1, 1, 89, 'ACH520', 0000, 1216);
INSERT INTO `t_vehiculo` VALUES (15, 1, 1, 89, 'AA4S37A', 0000, 1638);
INSERT INTO `t_vehiculo` VALUES (16, 1, 1, 19, 'ACH521', 0000, 1217);
INSERT INTO `t_vehiculo` VALUES (17, 1, 1, 23, 'ADP-585', 0000, 1384);
INSERT INTO `t_vehiculo` VALUES (18, 1, 1, 19, 'ADP586', 0000, 1384);
INSERT INTO `t_vehiculo` VALUES (19, 1, 1, 89, 'AA4S38A', 0000, 1639);
INSERT INTO `t_vehiculo` VALUES (20, 1, 1, 98, 'AA4S40A', 0000, 1641);
INSERT INTO `t_vehiculo` VALUES (21, 1, 1, 99, 'AA4S39A', 0000, 1640);
INSERT INTO `t_vehiculo` VALUES (23, 1, 1, 19, 'AB8L97A', 0000, 1747);
INSERT INTO `t_vehiculo` VALUES (24, 1, 1, 89, 'AB8L95A', 0000, 1746);
INSERT INTO `t_vehiculo` VALUES (25, 1, 1, 5, 'AB8L96A', 0000, 1745);
INSERT INTO `t_vehiculo` VALUES (101, 3, 5, 59, 'AF49T', 2006, 0);
INSERT INTO `t_vehiculo` VALUES (102, 3, 6, 59, 'AEJ-36L', 2003, 0);
INSERT INTO `t_vehiculo` VALUES (103, 3, 7, 5, 'BDS-23J', 2004, 912);
INSERT INTO `t_vehiculo` VALUES (104, 3, 8, 89, '32H-ABE', 2002, 196);
INSERT INTO `t_vehiculo` VALUES (105, 3, 9, 89, '09J-MAJ', 2000, 0);
INSERT INTO `t_vehiculo` VALUES (106, 3, 10, 19, '23H-ABE', 2002, 0);
INSERT INTO `t_vehiculo` VALUES (107, 3, 13, 19, '17U-KAT', 2006, 0);
INSERT INTO `t_vehiculo` VALUES (108, 3, 14, 59, 'A78AY4A', 0000, 1848);
INSERT INTO `t_vehiculo` VALUES (111, 3, 11, 92, '54KKAF', 2002, 0);
INSERT INTO `t_vehiculo` VALUES (112, 3, 11, 92, '971-KAJ', 2002, 0);
