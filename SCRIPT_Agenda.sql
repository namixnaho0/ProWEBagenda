-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2025 a las 05:32:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--
CREATE DATABASE IF NOT EXISTS `agenda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agenda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--
-- Error leyendo la estructura de la tabla agenda.contactos: #1932 - Table &#039;agenda.contactos&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla agenda.contactos: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `agenda`.`contactos`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--
-- Error leyendo la estructura de la tabla agenda.roles: #1932 - Table &#039;agenda.roles&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla agenda.roles: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `agenda`.`roles`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--
-- Error leyendo la estructura de la tabla agenda.usuario: #1932 - Table &#039;agenda.usuario&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla agenda.usuario: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `agenda`.`usuario`&#039; en la linea 1
--
-- Base de datos: `agenda2`
--
CREATE DATABASE IF NOT EXISTS `agenda2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `agenda2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_contacto` smallint(6) NOT NULL,
  `apPaterno` varchar(20) NOT NULL,
  `apMaterno` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `clv_usu` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id_contacto`, `apPaterno`, `apMaterno`, `nombre`, `numero`, `direccion`, `email`, `clv_usu`) VALUES
(1, 'Flores', 'Vazquez', 'Danae', '23443221', 'Orizaba', 'yolandaqq@gmail.com', 2),
(11, 'aaaaa', 'aaaaaaaaa', 'aaaaa', 'aa2223', 'wwwwwwwwww', 'wwwwwwwwwww', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `clave_usuario` smallint(6) NOT NULL,
  `apPaterno` varchar(20) NOT NULL,
  `apMaterno` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `contrasena` varchar(16) NOT NULL,
  `tipo_usuario` smallint(6) NOT NULL COMMENT '0=Visualizador 1=Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`clave_usuario`, `apPaterno`, `apMaterno`, `nombre`, `contrasena`, `tipo_usuario`) VALUES
(1, 'Acosta', 'Peña', 'Nahomi', '1512', 1),
(2, 'Balatra', 'Maruchana', 'Gardenia', '123', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`clave_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contacto` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `clave_usuario` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `ejhospdb`
--
CREATE DATABASE IF NOT EXISTS `ejhospdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ejhospdb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `nCveArea` smallint(6) NOT NULL,
  `sDescripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`nCveArea`, `sDescripcion`) VALUES
(1, 'Pediatría'),
(2, 'Gineco-obstetricia'),
(3, 'Medicina Interna'),
(4, 'Oncología'),
(5, 'Neurología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episodiomedico`
--

CREATE TABLE `episodiomedico` (
  `nIdEpisodio` int(11) NOT NULL,
  `nIdPac` int(11) NOT NULL,
  `nIdPersonal` smallint(6) NOT NULL,
  `dIngreso` date NOT NULL,
  `dEgreso` date DEFAULT NULL,
  `sDiagnostico` varchar(100) NOT NULL,
  `nNumHab` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `episodiomedico`
--

INSERT INTO `episodiomedico` (`nIdEpisodio`, `nIdPac`, `nIdPersonal`, `dIngreso`, `dEgreso`, `sDiagnostico`, `nNumHab`) VALUES
(1, 4, 2, '2017-12-20', '2017-12-22', 'Dolor de espalda', 8),
(2, 4, 2, '2018-02-10', '2018-02-13', 'Dolor de cabeza', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `nNumHab` smallint(6) NOT NULL,
  `sCaracteristicas` varchar(100) NOT NULL,
  `nOcupada` smallint(6) NOT NULL DEFAULT 0 COMMENT '0 = No, 1 = Sí',
  `nPrecio` decimal(10,2) NOT NULL,
  `nCveArea` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`nNumHab`, `sCaracteristicas`, `nOcupada`, `nPrecio`, `nCveArea`) VALUES
(1, 'Cama hospitalaria, sofá para acompañante, balcón, aire acondicionado, tv', 0, 980.00, 1),
(2, 'Cama hospitalaria, sofá para acompañante, ventilador, tv', 0, 700.00, 1),
(3, 'Cama hospitalaria, sofá para acompañante, balcón, aire acondicionado, tv', 1, 980.00, 2),
(4, 'Cama hospitalaria, sofá para acompañante, balcón, aire acondicionado, tv', 0, 980.00, 2),
(5, 'Cama hospitalaria, sofá para acompañante, balcón, aire acondicionado, tv', 0, 980.00, 2),
(6, 'Cama hospitalaria, sofá para acompañante, ventilador, tv', 1, 700.00, 2),
(7, 'Cama hospitalaria, sofá para acompañante, ventilador, tv', 0, 700.00, 2),
(8, 'Cama hospitalaria, sofá para acompañante, balcón, aire acondicionado, tv', 1, 980.00, 3),
(9, 'Cama hospitalaria, sofá para acompañante, ventilador, tv', 0, 700.00, 3),
(10, 'Cama hospitalaria, sofá para acompañante, balcón, aire acondicionado, tv', 0, 980.00, 4),
(11, 'Cama hospitalaria, sofá para acompañante, ventilador, tv', 0, 700.00, 4),
(12, 'Cama hospitalaria, sofá para acompañante, balcón, aire acondicionado, tv', 0, 980.00, 5),
(13, 'Cama hospitalaria, sofá para acompañante, ventilador, tv', 0, 700.00, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `nIdPac` int(11) NOT NULL,
  `sNombre` varchar(20) NOT NULL,
  `sApePat` varchar(20) NOT NULL,
  `sApeMat` varchar(20) DEFAULT NULL,
  `dFecNacim` date NOT NULL,
  `sSexo` char(1) NOT NULL COMMENT 'F o M',
  `sAlergias` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`nIdPac`, `sNombre`, `sApePat`, `sApeMat`, `dFecNacim`, `sSexo`, `sAlergias`) VALUES
(1, 'Susan', 'Richards', 'Lee', '1989-06-30', 'F', 'Ninguna'),
(2, 'Mickey', 'Mouse', 'Disney', '1950-03-30', 'M', 'A los gatos'),
(3, 'Loise', 'Lane', 'Kent', '1995-04-19', 'F', 'A la penicilina'),
(4, 'Clark', 'Kent', 'Lee', '1990-02-22', 'M', 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalhospitalario`
--

CREATE TABLE `personalhospitalario` (
  `nIdPersonal` smallint(6) NOT NULL,
  `sNombre` varchar(20) NOT NULL,
  `sApePat` varchar(20) NOT NULL,
  `sApeMat` varchar(20) DEFAULT NULL,
  `dFecNacim` date DEFAULT NULL,
  `sSexo` char(1) NOT NULL DEFAULT 'F' COMMENT 'F o M',
  `nTipo` smallint(6) NOT NULL COMMENT '1=Médico\r\n2=Admisiones\r\n3=Administrador Sistema'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `personalhospitalario`
--

INSERT INTO `personalhospitalario` (`nIdPersonal`, `sNombre`, `sApePat`, `sApeMat`, `dFecNacim`, `sSexo`, `nTipo`) VALUES
(1, 'Peter', 'Par', 'Ker', '1970-11-17', 'M', 3),
(2, 'Bruce', 'Barner', 'Smith', '1980-09-22', 'M', 1),
(3, 'Minnie', 'Mouse', 'Disney', '1995-01-01', 'F', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nCveUsu` smallint(6) NOT NULL,
  `sContrasenia` varchar(16) NOT NULL,
  `nIdPersonal` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nCveUsu`, `sContrasenia`, `nIdPersonal`) VALUES
(1, 'abc123', 1),
(2, 'abc124', 2),
(3, 'abc125', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`nCveArea`);

--
-- Indices de la tabla `episodiomedico`
--
ALTER TABLE `episodiomedico`
  ADD PRIMARY KEY (`nIdEpisodio`),
  ADD KEY `habitacion_episodiomedico_fk` (`nNumHab`),
  ADD KEY `paciente_episodiomedico_fk` (`nIdPac`),
  ADD KEY `personalhospitalario_episodiomedico_fk` (`nIdPersonal`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`nNumHab`),
  ADD KEY `area_habitacion_fk` (`nCveArea`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`nIdPac`);

--
-- Indices de la tabla `personalhospitalario`
--
ALTER TABLE `personalhospitalario`
  ADD PRIMARY KEY (`nIdPersonal`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nCveUsu`),
  ADD UNIQUE KEY `usuario_idx` (`nIdPersonal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `nCveArea` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `episodiomedico`
--
ALTER TABLE `episodiomedico`
  MODIFY `nIdEpisodio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `nIdPac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personalhospitalario`
--
ALTER TABLE `personalhospitalario`
  MODIFY `nIdPersonal` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `nCveUsu` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `episodiomedico`
--
ALTER TABLE `episodiomedico`
  ADD CONSTRAINT `habitacion_episodiomedico_fk` FOREIGN KEY (`nNumHab`) REFERENCES `habitacion` (`nNumHab`),
  ADD CONSTRAINT `paciente_episodiomedico_fk` FOREIGN KEY (`nIdPac`) REFERENCES `paciente` (`nIdPac`),
  ADD CONSTRAINT `personalhospitalario_episodiomedico_fk` FOREIGN KEY (`nIdPersonal`) REFERENCES `personalhospitalario` (`nIdPersonal`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `area_habitacion_fk` FOREIGN KEY (`nCveArea`) REFERENCES `area` (`nCveArea`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `personalhospitalario_usuario_fk` FOREIGN KEY (`nIdPersonal`) REFERENCES `personalhospitalario` (`nIdPersonal`);
--
-- Base de datos: `hospitalbd`
--
CREATE DATABASE IF NOT EXISTS `hospitalbd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hospitalbd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--
-- Error leyendo la estructura de la tabla hospitalbd.area: #1932 - Table &#039;hospitalbd.area&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalbd.area: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalbd`.`area`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episodiomedico`
--
-- Error leyendo la estructura de la tabla hospitalbd.episodiomedico: #1932 - Table &#039;hospitalbd.episodiomedico&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalbd.episodiomedico: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalbd`.`episodiomedico`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--
-- Error leyendo la estructura de la tabla hospitalbd.habitacion: #1932 - Table &#039;hospitalbd.habitacion&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalbd.habitacion: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalbd`.`habitacion`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--
-- Error leyendo la estructura de la tabla hospitalbd.paciente: #1932 - Table &#039;hospitalbd.paciente&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalbd.paciente: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalbd`.`paciente`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalhospitalario`
--
-- Error leyendo la estructura de la tabla hospitalbd.personalhospitalario: #1932 - Table &#039;hospitalbd.personalhospitalario&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalbd.personalhospitalario: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalbd`.`personalhospitalario`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--
-- Error leyendo la estructura de la tabla hospitalbd.usuario: #1932 - Table &#039;hospitalbd.usuario&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalbd.usuario: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalbd`.`usuario`&#039; en la linea 1
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'ScriptAgenda', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"agenda\",\"agenda2\",\"ejhospdb\",\"hospitalbd\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"agenda2\",\"table\":\"contactos\"},{\"db\":\"agenda2\",\"table\":\"usuarios\"},{\"db\":\"ejhospdb\",\"table\":\"usuario\"},{\"db\":\"ejhospdb\",\"table\":\"area\"},{\"db\":\"ejhospdb\",\"table\":\"habitacion\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'agenda2', 'usuarios', '{\"sorted_col\":\"`usuarios`.`tipo_usuario` DESC\"}', '2025-05-07 18:53:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-05-17 03:30:21', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"ThemeDefault\":\"original\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
