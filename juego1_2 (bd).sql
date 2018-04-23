-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-04-2018 a las 15:25:45
-- Versión del servidor: 5.6.33-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `juego1.2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulosEE`
--

CREATE TABLE IF NOT EXISTS `articulosEE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articulo` text CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `votos` int(11) DEFAULT '0',
  `urlImg` varchar(250) DEFAULT NULL,
  `titulo` varchar(250) NOT NULL,
  `autor` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `articulosEE`
--

INSERT INTO `articulosEE` (`id`, `articulo`, `votos`, `urlImg`, `titulo`, `autor`) VALUES
(1, '<p><p>La eficiencia energ&eacutetica en edificaciones puede ser analizada desde diferentes puntos de vista, partiendo del an&aacutelisis externo de la edificaci&oacuten, hasta el an&aacutelisis del comportamiento de las  cargas internos que entran en contacto con la misma, denominadas cargas t&eacutermicas. Dichas cargas pueden ser por ocupaci&oacuten, iluminaci&oacuten y por equipos.</p><p>\nLas cargas t&eacutermicas asociadas a la cocci&oacuten de alimentos incrementan la temperatura operativa de la edificaci&oacuten dependiendo del tipo de tecnolog&iacutea usada en la cocci&oacuten. Muchas investigaciones [1],[2],[3], muestran que la eficiencia de las cocinas de inducci&oacuten se encuentra entre el 92%, dicha eficiencia es mucho mayor a las eficiencias de otras tecnolog&iacuteas como la cocci&oacuten con GLP que se encuentra entre 40-50% y la de las cocinas el&eacutectricas que se encuentran en 40%.</p><p>\nLas cocinas de inducci&oacuten son equipos m&aacutes eficientes debido a que el calor generado mediante el campo magn&eacutetico se induce ?nicamente sobre la base de la olla, esta base est&aacute hecha de materiales ferromagn&eacuteticos los cuales maximizan la transferencia de calor hacia los alimentos mediante fen&oacutemenos de convecci&oacuten. Lo que es contrario en cocinas de GLP y el&eacutectricas, ya que en este tipo de tecnolog&iacuteas una parte del calor generado por la cocina se induce en la olla y el calor restante se pierde por radiaci&oacuten hacia el ambiente, lo cual hace importante el uso de estrategias ya sean activas o pasivas para ventilar los espacios ocupados dentro de la edificaci&oacuten.\nDesde el punto de vista del consumo de energ&iacutea el&eacutectrica esta tecnolog&iacutea presenta menores consumos en comparaci&oacuten a las dem&aacutes tecnolog&iacuteas lo cual se ve reflejado directamente en el costo de la energ&iacutea a pagar por los usuarios durante la cocci&oacuten de alimentos. Como muestra el equipo de cocinas de inducci&oacuten del INER, [4], en su estudio, en el cual  se compara la cocci&oacuten de cuatro platos t&iacutepicos de Ecuador al ser cocinados en cocinas de inducci&oacuten, GLP y el&eacutectricas, del cual se obtuvo que el tiempo de cocci&oacuten en la cocina de inducci&oacuten se reduce con respecto a la de GLP. Con la cocina de inducci&oacuten el tiempo se reduce entre 14 % y 45 %, dependiendo del plato. Esta disminuci&oacuten en el tiempo est&aacute relacionada en la mayor&iacutea de los casos con las etapas de calentamiento del agua o aceite. Para la cocina el&eacutectrica el tiempo de elaboraci&oacuten aumenta con respecto a la inducci&oacuten y la cocina de GLP. El tiempo aumenta entre 43 % y 162 % con respecto a la cocina de inducci&oacuten. El incremento en el tiempo est&aacute relacionado con la baja potencia activa de la cocina el&eacutectrica.</p><p>\nComo se observa en la Tabla 1 la cocina de inducci&oacuten es m&aacutes eficiente que las cocinas el&eacutectricas y de GLP, porque la cocina de inducci&oacuten reduce el tiempo de cocci&oacuten y consumo de energ&iacutea. El consumo de energ&iacutea se redujo en la cocina de inducci&oacuten entre 200 % y 500 % en comparaci&oacuten a las  cocinas de GLP 56 % y 76 % en la cocina el&eacutectrica.\nEn el caso de la electricidad, se reduce el costo para el usuario. En la Tabla 1 se observa c&oacutemo el coste para el usuario en cocinas de inducci&oacuten se redujo al m&iacutenimo entre 200% y 400% con la cocina de GLP y entre 50 y 52% con respecto a la cocina el&eacutectrica\n</p><p>\nTabla 1 Informaci&oacuten de tiempos, energ&iacuteas consumidas y costos al usuario de los platos elaborados<br/> </p><p>\n\n<table title="Tabla 1" class="table table-bordered table-responsive text-center">\n        <tr><th>Platos</th>\n            <th>Tiempo en cocina de inducci&oacuten[s]</th>\n            <th>Tiempo en cocina el&eacutectrica[s]</th>\n            <th>Tiempo en GLP [s]</th>\n            <th>Energ&iacutea en cocina de inducci&oacuten [kWh]</th>\n            <th>Energ&iacutea en cocina el&eacutectrica [kWh]</th>\n            <th>Energ&iacutea en GLP [kWh]</th>\n            <th>Costo cocina de Inducci&oacuten [$]</th>\n            <th>Costo cocina el&eacutectrica [$]</th>\n            <th>Costo cocina GLP [$]</th>\n        </tr>\n        <tr>\n            <td>Caldo de gallina</td>\n            <td>4875</td>\n            <td>-</td>\n            <td>5540</td>\n            <td>0.98</td>\n            <td>-</td>\n            <td>3.07</td>\n            <td>0.079</td>\n            <td>-</td>\n            <td>0.245</td>\n        </tr>\n        <tr>\n            <td>Sopa de queso y patatas</td>\n            <td>2845</td>\n            <td>3825</td>\n            <td>3475</td>\n            <td>0.83</td>\n            <td>1.3</td>\n            <td>3.20</td>\n            <td>0.066</td>\n            <td>0.101</td>\n            <td>0.256</td> </tr>\n        <tr>\n            <td>Sopa de quinua</td>\n            <td>2525</td>\n            <td>-</td>\n            <td>3230</td>\n            <td>0.59</td>\n            <td>-</td>\n            <td>2.95</td>\n            <td>0.047</td>\n            <td>-</td>\n            <td>0.236</td>\n        </tr>\n        <tr>\n            <td>Arroz de cebada</td>\n            <td>1820</td>\n            <td>4775</td>\n            <td>2645</td>\n            <td>0.68</td>\n            <td>1.02</td>\n            <td>3.01</td>\n            <td>0.054</td>\n            <td>0.082</td>\n            <td>0.241</td>\n        </tr>\n    </table>\n</p></p>', 0, 'img/placa-induccion-2.png', 'Eficiencia energética en edificación en relación al uso de cocinas de inducción', 'Juan Kastillo Estevez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE IF NOT EXISTS `comentario` (
  `preguntas_id` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `votos` int(11) NOT NULL DEFAULT '0',
  `ipCliente` varchar(20) DEFAULT NULL,
  `autor` varchar(250) DEFAULT NULL,
  `correo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL DEFAULT 'correo@iner.gob.ec',
  `cargo` varchar(250) DEFAULT 'Analista Tecnico',
  `empresa` varchar(250) DEFAULT 'INER_Ecuador',
  `bibliografia` text,
  `urlImg` varchar(250) DEFAULT NULL,
  `descripcionCorta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre`, `correo`, `cargo`, `empresa`, `bibliografia`, `urlImg`, `descripcionCorta`) VALUES
(1, 'ANDREA LOBATO', 'correo@iner.gob.ec', 'Analista Tecnico', 'INER_Ecuador', '<p><b>Cargo:</b> Experto Técnico<br/><br/><b>Formación:</b> Arquitecto / Master en Ecodiseño y Eficiencia Energética en Edificaciones<br/><br/><b>Principales Tareas:</b> Líder de proyectos de investigación en el área de eficiencia energética en edificaciones.<br/><br/><b>Resultados y experiencia:</b><br/>Investigación y mejoramiento del desempeño de edificaciones a través del uso de estrategias bioclimáticas.<br/><br/>Administración y desarrollo de proyectos de investigación.<br/></p>', 'img/cv/andrea_lobato.jpg', '<b>Cargo:</b> Experto Técnico<br/><b>Formación:</b> Arquitecto / Master en Ecodiseño y Eficiencia Energética en Edificaciones<br/>Líder de proyectos de investigación en el área de eficiencia energética en edificaciones.'),
(2, 'Manuel Almaguer Ochoa', 'manuel@iner.gob.ec', 'Analista Tecnico', 'INER_Ecuador', '<p><b>Cargo:</b> Analista técnico<br/><br/><b>Título de graduado:</b> Ingeniero en Sistemas<br/><br/><b>Principales Tareas:</b><br/><br/>    Desarrollo de sistemas informáticos para el equipo de edificaciones.<br/><br/>    Procesamiento y Almacenamiento de datos climáticos.<br/><br/>    Reportes y análisis de datos.<br/><br/>    Investigación científica<br/><br/><b>Resultados y experiencia</b>:<br/><br/>    Profesor Docente Universitario.<br/><br/>    Desarrollador de Sistemas Web para el INER y la Aduana de Cuba<br/><br/><b>Comida favorita:</b> Moros y Cristianos + Patacones + Bistec de Chancho<br/><br/><b>Hobby:</b> Deportes, Música, Internet, Bailar.<br/><br/><b>Texto Libre: </b> En Programación y en la vida me gusta seguir este frase, <i>“Be as simple as you can be; you will be astonished to see how uncomplicated and happy your life can become.”</i> <i><b>Paramahansa Yogananda</b></i></p>', 'img/cv/manuel_almaguer.jpg', '<b>Cargo:</b> Analista técnico<br/><b>Título de graduado:</b> Ingeniero en Sistemas<br/><b>Principales Tareas:</b><br/>    Desarrollo de Sistemas Informáticos para el equipo de edificaciones.<br/>    Procesamiento y Almacenamiento de datos climáticos.<br/>'),
(3, 'Gabriel Gaona Gaona', 'gabo', 'Analista Tecnico', 'INER_Ecuador', '<p><b>Cargo:</b> Analista técnico</p><p><b>Título de graduado:</b> Ingeniero Ambiental</p><p><b>Realiza:</b><br/>Programación en R</p><p>    Análisis de bases de datos <br/></p><p> Geoestadística</p><p><br/></p>', 'img/cv/gabriel_gaona.jpg', '<p><b>Cargo:</b> Analista técnico<br/><b>Título de graduado:</b> Ingeniero Ambiental<br/><b>Realiza:</b><br/>Programación en R<br/>    Análisis de bases de datos <br/> Geoestadística</p>'),
(4, 'Adriana Reyes Chacon', 'adriana', 'Analista Tecnico', 'INER_Ecuador', '<p><b>Cargo:</b> Analista técnico</p><p><b>Título de graduado:</b> Ingeniera Mecánica</p><p><b>Principales Tareas:</b><br/>    Ejecutar actividades de gestión para los proyectos de edificaciones.</p><p><b>Resultados y experiencia:</b><br/>Laboratorios de caracterización térmica de materiales implementados al 70%<br/><br/><b>Comida favorita:</b> Toda la comida ecuatoriana.<br/><br/><b>Hobby: </b>Ver películas antiguas y  leer literatura de ciencia ficción.<br/><br/><b>Texto Libre:</b> <i>“En los momentos de crisis solo la imaginación es más importante que el conocimiento”,</i>  <u><b>Albert Einstein</b></u><br/></p>', 'img/cv/adriana_reyes.jpg', '<p><b>Cargo:</b> Analista técnico<br/><b>Título de graduado:</b> Ingeniera Mecánica<br/><b>Principales Tareas:</b><br/>    Ejecutar actividades de gestión para los proyectos de edificaciones.<br/></p>'),
(5, 'Geovanna Villacreses', 'correo@iner.gob.ec', 'Analista Tecnico', 'INER_Ecuador', '<p><b>Cargo:</b> Analista técnico</p><p><b>Título de graduado:</b> Ingeniera Geógrafa y del Medio Ambiente</p><p><b>Principales Tareas:</b><br/>    Uso de sistemas de información geográfica aplicado a la eficiencia energética y energías renovables.</p><p>Análisis de bases de datos <br/></p><p>Geoestadística  <br/></p><p>Elaboración de cartografía temática</p><p>Evaluación multicriterio</p><p><b>Resultados y experiencia:</b><br/>Mapas preliminares de radiación solar para la provincia de Chimborazo.</p><p>Codirección de tesis: “Elaboración de un plan de manejo ambiental para el trasporte marítimo eléctrico modalidad taxi en puerto ayora, isla Santa Cruz – Galápagos”.    <br/></p><p>Modelo de asignación geográfica para localizar los sitios más apropiados para desarrollar plantas eólicas en Ecuador utilizando GIS y MCDM.<br/><br/><b>Texto Libre:</b> <i>“Dentro del entorno urbano el sector de la construcción normalmente representa alrededor de la mitad de la energía edificios es total utilizada. Una cuantificación y localización precisa de la demanda energética de los esencial para ayudar la gestión de la energía y las iniciativas de planificación urbana”. </i><u><b>Emanuela Giancola</b></u><br/></p>', 'img/cv/geovanna_villacreses.jpg', '<p><b>Cargo:</b> Analista técnico<br/><b>Título de graduado:</b> Ingeniera Geógrafa y del Medio Ambiente<br/><b>Realiza:</b><br/>    Uso de sistemas de información geográfica aplicado a la eficiencia energética y energías renovables.<br/> Análisis de bases de datos <br/> Geoestadística</p>'),
(6, 'Pablo Daniel Narváez Parra', 'correo@iner.gob.ec', 'Analista Tecnico', 'INER_Ecuador', '<p><b>Cargo: </b>Analista técnico<b><br/></b></p><p><b>Título de graduado:</b> Arquitecto/Egr. Máster en Tecnología Avanzada en la Arquitectura y Urbanismo<br/><b><br/>Principales Tareas:</b><br/>    Colaboración en proyectos de investigación relacionados con la eficiencia energética en edificios.<br/><br/>-Investigación y desarrollo de sistemas constructivos alternativos sostenibles y energeticamente eficientes.<br/><br/>-Modelización y análisis avanzado de proyectos arquitectónicos.<br/><br/><b>Texto Libre:</b> <i><br/>&#34;Lo que de verdad me interesa es hacer algo distinto. Me trae sin cuidado seguir o no seguir una corriente. Además,<br/>si observas la historia de la arquitectura, siempre que alguien desarrolla un nuevo tipo de estructura o material,<br/>nace un nuevo tipo de arquitectura. Me gusta desarrollar personalmente sistemas estructurales o materiales<br/>para hacer mío mi trabajo.&#34; </i><u><b>Shigeru Ban.</b></u></p>', 'img/cv/pablo_narvaez.jpg', '<p><b>Cargo: </b>Analista técnico<br/><b>Título de graduado:</b> Arquitecto/ Egr. Máster en Tecnología Avanzada en la Arquitectura y Urbanismo<br/><b>Realiza</b><br/>Colaboración en proyectos de investigación relacionados con la eficiencia energética en edificaciones.<br/></p>'),
(7, 'Andres Gallardo Ocampo', 'correo@iner.gob.ec', 'Analista Tecnico', 'INER_Ecuador', '<p><b>Título de graduado:</b> Ingeniero mecánico<br/><b><br/>Principales Tareas:<br/></b><br/>    Simulaciones térmicas y energéticas de edificaciones<br/><br/>    Investigación científica<br/><br/>    Estudio del diseño bioclimático sustentable de edificaciones<br/><br/>    Estudio de estrategias pasivas y activas de climatización para edificaciones<br/><br/><b>Resultados y experiencia:</b><br/>   Experiencia en investigación relacionada con eficiencia energética en edificaciones.<br/><br/>    Presentación de artículos científicos en conferencias internacionales<br/><b><br/>Comida favorita:</b> Toda la comida ecuatoriana<br/><br/><b>Hobby:</b> Deportes, video juegos, musica.<br/><br/><b>Texto Libre:</b>  &#34;What we need to do is really improve energy efficiency standards, develop in full scale renewable and alternative energy and use the one resource we have in abundance, our creativity&#34;<br/><br/><i>&#34;Lo que debemos hacer, es mejorar realmente los estandares de eficiencia energética, desarrollar a gran escala el uso de energías renovables y alternativas y usar el único recurso que poseemos en abundancia, nuestra creatividad&#34;</i>   <u><b>Lois Capps.</b></u></p>', 'img/cv/andres_gallardo.jpg', '<p><b>Cargo: </b>Analista técnico<br/><b>Título de graduado:</b> Ingeniero Mecánico / Master en Eficiencia Energética<br/><b>Realiza</b><br/> Análisis de consumo energético.<br/> Simulaciones.</p>'),
(8, 'David Beltran Correa', 'david@iner.gob.ec', 'Analista Tecnico', 'INER_Ecuador', '<p><b>Cargo: </b>Analista técnico<b><br/></b></p><p><b>Título de graduado:</b> Ingeniero mecánico<br/><b><br/>Principales Tareas:</b><br/>    Simulaciones térmicas y energéticas de edificaciones<br/><br/>    Investigación científica<br/><br/>    Estudio del diseño bioclimático sustentable de edificaciones<br/><br/>    Estudio de estrategias pasivas y activas de climatización para edificaciones<br/><br/><b>Resultados y experiencia:</b><br/>    Dos años de experiencia en investigación relacionada con eficiencia energética en edificaciones.<br/><br/>    Presentación de artículos científicos en conferencias internacionales<br/><b><br/>Comida favorita:</b> Toda la comida ecuatoriana<br/><br/><b>Hobby:</b> Deportes, video juegos, musica.<br/><br/><b>Texto Libre:</b>  &#34;What we need to do is really improve energy efficiency standards, develop in full scale renewable and alternative energy and use the one resource we have in abundance, our creativity&#34;<br/><br/><i>&#34;Lo que debemos hacer, es mejorar realmente los estandares de eficiencia energética, desarrollar a gran escala el uso de energías renovables y alternativas y usar el único recurso que poseemos en abundancia, nuestra creatividad&#34;</i>   <u><b>Lois Capps.</b></u></p>', 'img/cv/david_beltran.jpg', '<p><b>Cargo: </b>Analista técnico<br/><b>Título de graduado:</b> Ingeniero Mecánico<br/><b>Realiza</b><br/>Simulaciones térmicas y energéticas de edificaciones.<br/>Estudio de estrategias pasivas y activas de climatización para edificaciones.<br/></p>'),
(9, 'Juan Kastillo Estevez', 'correo@iner.gob.ec', 'Analista Tecnico', 'INER_Ecuador', '<p><b>Cargo: </b>Analista técnico</p><p><b>Título de graduado:</b> Ingeniero Mecánico</p><p><b>Realiza</b><br/>Simulaciones de Mecánica Computacional de Fluidos(CFD).</p><p>Realización de pruebas de eficiencia energética para el menaje en cocinas de inducción.</p><p>Presentación y realización de artículos científicos.</p><p>Colaboración en proyectos de investigación.</p><p><b>Resultados y experiencia:</b> <br/></p><p>Presentación y realización de artículos científicos, selección del proceso productivo para el menaje de cocinas de inducción, determinación de un modelo de utilidad para el menaje de cocinas de inducción. </p>', 'img/cv/juan_castillo.jpg', '<p><b>Cargo: </b>Analista técnico<br/><b>Título de graduado:</b> Ingeniero Mecánico<br/><b>Realiza</b><br/>Simulaciones de Mecánica Computacional de Fluidos(CFD).<br/>Realización de pruebas de eficiencia energética para el menaje en cocinas de inducción.</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticaSimulacion`
--

CREATE TABLE IF NOT EXISTS `estadisticaSimulacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `ocupacion` varchar(250) NOT NULL,
  `resultado_simulacion_id` int(11) NOT NULL,
  `ip` varchar(39) DEFAULT NULL,
  `tempConClima` varchar(6) DEFAULT NULL,
  `hora` varchar(18) NOT NULL,
  `consumoCC` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Volcado de datos para la tabla `estadisticaSimulacion`
--

INSERT INTO `estadisticaSimulacion` (`id`, `nombre`, `ocupacion`, `resultado_simulacion_id`, `ip`, `tempConClima`, `hora`, `consumoCC`) VALUES
(1, 'Manuel', 'ServidorPublico', 243, '127.0.0.1', '24.30', '2015-11-04 10:54:3', '1.35'),
(2, 'Manuel', 'TrabajorPrivado', 158, '127.0.0.1', '27.83', '2015-11-04 11:49:2', '4.65'),
(3, 'Maximo', 'Investigador', 89, '127.0.0.1', '31.54', '2015-11-04 11:50:2', '7.61'),
(4, 'Manuel', 'Estudiante', 158, '127.0.0.1', '27.83', '2015-11-04 11:52:1', '4.65'),
(5, 'Manuel', 'Estudiante', 155, '127.0.0.1', '28.33', '2015-11-04 11:52:4', '5.19'),
(6, 'Manuel', 'TrabajorPrivado', 155, '127.0.0.1', '28.33', '2015-11-04 11:55:5', '5.19'),
(7, 'Manuel', 'TrabajorPrivado', 158, '127.0.0.1', '27.83', '2015-11-04 12:01:1', '4.65'),
(8, 'Manuel', 'Otro', 122, '127.0.0.1', '28.40', '2015-11-04 13:09:3', '4.73'),
(9, 's', 'Estudiante', 126, '172.16.10.23', '25.54', '2015-11-04 14:00:5', '1.58'),
(10, 's', 'Estudiante', 126, '172.16.10.23', '25.54', '2015-11-04 14:01:0', '1.58'),
(11, 'Manuel', 'Estudiante', 135, '127.0.0.1', '24.62', '2015-11-04 14:03:5', '1.35'),
(12, 'z', 'Estudiante', 162, '172.16.10.23', '25.18', '2015-11-04 14:16:1', '1.56'),
(13, '`´', 'Estudiante', 243, '172.16.10.23', '24.30', '2015-11-05 09:55:3', '1.35'),
(14, '8', 'Estudiante', 104, '172.16.10.23', '29.79', '2015-11-05 09:56:2', '6.09'),
(15, 'Manuel', 'Estudiante', 243, '127.0.0.1', '24.30', '2015-11-05 09:57:4', '1.35'),
(16, 'ee', 'TrabajorPrivado', 52, '172.16.10.202', '15.62', '2015-11-05 10:14:3', '9.18'),
(17, 'ddd', 'TrabajorPrivado', 122, '172.16.10.23', '28.40', '2015-11-05 10:45:4', '4.73'),
(18, 'Manuel', 'ServidorPublico', 243, '127.0.0.1', '24.30', '2015-11-05 11:21:5', '1.35'),
(19, 'xx', 'Estudiante', 242, '172.16.10.23', '29.58', '2015-11-05 12:11:2', '6.11'),
(20, 'Manuel', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 12:24:5', '1.35'),
(21, 'Manuel', 'Estudiante', 243, '127.0.0.1', '24.30', '2015-11-05 12:25:3', '1.35'),
(22, 'Manuel', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 12:32:1', '1.35'),
(23, 'Manuel', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 12:34:0', '1.35'),
(24, 'Manuel', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 12:35:2', '1.35'),
(25, 'Manuel', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 12:36:0', '1.35'),
(26, 'Manuel', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 12:39:3', '1.35'),
(27, 'Manuel', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 12:42:0', '1.35'),
(28, 'Manuel', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 12:43:5', '1.35'),
(29, 'asd', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 13:32:2', '1.35'),
(30, 'asd', 'Estudiante', 243, '127.0.0.1', '24.30', '2015-11-05 13:33:3', '1.35'),
(31, 'asd', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 13:35:5', '1.35'),
(32, 'x', 'Estudiante', 241, '172.16.10.23', '23.11', '2015-11-05 13:59:0', '1.40'),
(33, 'asd', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 15:44:4', '1.35'),
(34, 'asd', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 15:45:3', '1.35'),
(35, 'Juanpi', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 15:49:4', '1.35'),
(36, 'asd', 'ServidorPublico', 243, '127.0.0.1', '24.30', '2015-11-05 15:52:5', '1.35'),
(37, 'Juan Pablo', 'SinOcupacion', 242, '172.16.10.202', '29.58', '2015-11-05 15:54:4', '6.11'),
(38, 'asd', 'ServidorPublico', 243, '127.0.0.1', '24.30', '2015-11-05 16:01:5', '1.35'),
(39, 'asd', 'Estudiante', 243, '127.0.0.1', '24.30', '2015-11-05 16:10:0', '1.35'),
(40, 'asd', 'Estudiante', 243, '127.0.0.1', '24.30', '2015-11-05 16:14:1', '1.35'),
(41, 'asd', 'TrabajorPrivado', 14, '127.0.0.1', '19.81', '2015-11-05 16:17:0', '3.23'),
(42, 'asd', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 16:19:0', '1.35'),
(43, 'asdf', 'TrabajorPrivado', 243, '127.0.0.1', '24.30', '2015-11-05 16:20:3', '1.35'),
(44, 's', 'Estudiante', 243, '172.16.10.23', '24.30', '2015-11-05 16:21:3', '1.35'),
(45, '1', 'Estudiante', 241, '172.16.10.23', '23.11', '2015-11-05 16:34:4', '1.40'),
(46, 'Maximo', 'Investigador', 171, '127.0.0.1', '21.56', '2015-11-06 08:50:0', '1.07'),
(47, 'Pablo', 'Investigador', 144, '172.16.10.219', '12.32', '2015-11-06 15:17:0', '39.72'),
(48, 'TT', 'Estudiante', 114, '172.16.10.219', '10.58', '2015-11-06 15:20:3', '49.96'),
(49, 'TG', 'Estudiante', 114, '172.16.10.219', '10.58', '2015-11-06 15:22:0', '49.96'),
(50, 'Daniel', 'ServidorPublico', 132, '172.16.10.219', '12.15', '2015-11-06 15:26:4', '40.77'),
(51, 'Pablo Daniel', 'Investigador', 130, '172.16.10.219', '13.63', '2015-11-06 15:31:0', '34.08'),
(52, 'bb', 'Estudiante', 150, '172.16.10.219', '11.79', '2015-11-06 15:32:3', '47.27'),
(53, '1', 'Estudiante', 112, '172.16.10.219', '12.13', '2015-11-06 15:36:4', '43.97'),
(54, '2', 'Estudiante', 114, '172.16.10.219', '10.58', '2015-11-06 15:38:1', '49.96'),
(55, '3', 'Estudiante', 128, '172.16.10.219', '13.40', '2015-11-06 15:41:5', '33.89'),
(56, '4', 'Estudiante', 140, '172.16.10.219', '13.57', '2015-11-06 15:44:5', '32.64'),
(57, '5', 'Estudiante', 134, '172.16.10.219', '13.48', '2015-11-06 15:47:3', '32.11'),
(58, '6', 'Estudiante', 146, '172.16.10.219', '12.85', '2015-11-06 15:49:2', '40.79'),
(59, '7', 'Estudiante', 130, '172.16.10.219', '13.63', '2015-11-06 15:50:3', '34.08'),
(60, '8', 'Estudiante', 138, '172.16.10.219', '12.10', '2015-11-06 15:54:0', '39.61'),
(61, 'asd', 'TrabajorPrivado', 261, '172.16.10.184', '28.60', '2015-11-09 08:24:2', '7.29'),
(62, 'asd', 'ServidorPublico', 216, '172.16.10.184', '24.50', '2015-11-09 10:11:5', '2.11'),
(63, 'asd', 'TrabajorPrivado', 135, '172.16.10.184', '17.29', '2015-11-09 17:51:3', '6.81'),
(64, 'Juanpi', 'TrabajorPrivado', 164, '172.16.10.184', '23.69', '2015-11-09 17:52:1', '2.13'),
(65, 'asd', 'TrabajorPrivado', 162, '127.0.0.1', '11.92', '2015-11-10 08:12:2', '46.30'),
(66, 'pepito perez', 'ServidorPublico', 270, '127.0.0.1', '23.13', '2015-11-10 10:54:1', '1.84'),
(67, 'Maximo', 'Investigador', 270, '127.0.0.1', '23.13', '2015-11-10 11:43:4', '1.84'),
(68, 'Juanpi', 'ServidorPublico', 197, '127.0.0.1', '27.34', '2015-11-10 16:01:1', '5.17'),
(69, 'Liannis', 'TrabajorPrivado', 157, '127.0.0.1', '16.94', '2016-02-06 21:34:1', '8.55'),
(70, 'mi ultimo juego', 'Otro', 157, '127.0.0.1', '16.94', '2016-03-15 12:32:3', '8.55'),
(71, 'ultimo juego', 'ServidorPublico', 258, '::1', '23.02', '2018-04-23 15:22:5', '1.82');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_paredes`
--

CREATE TABLE IF NOT EXISTS `juego_paredes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pared` varchar(15) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `juego_paredes`
--

INSERT INTO `juego_paredes` (`id`, `pared`, `foto`) VALUES
(4, 'Madera', 'img/juego/madera.jpg'),
(5, 'Ladrillo', 'img/juego/ladrillo.jpg'),
(6, 'Bloque', 'img/juego/bloque.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_piso`
--

CREATE TABLE IF NOT EXISTS `juego_piso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `piso` varchar(15) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `juego_piso`
--

INSERT INTO `juego_piso` (`id`, `piso`, `foto`) VALUES
(4, 'Madera', 'img/juego/madera.jpg'),
(5, 'Ladrillo', 'img/juego/ladrillo.jpg'),
(6, 'Cemento', 'img/juego/cemento.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_rangoHoras`
--

CREATE TABLE IF NOT EXISTS `juego_rangoHoras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rangoHoras` varchar(15) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `region_id` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `juego_rangoHoras`
--

INSERT INTO `juego_rangoHoras` (`id`, `rangoHoras`, `foto`, `region_id`) VALUES
(1, '08:00--18:59', 'img/juego/HORAS/r_08_00-18_00.jpg', 'Sierra'),
(2, '09:00--20:59', 'img/juego/HORAS/r_09_00-20_00.jpg', 'Oriente'),
(3, '11:00--20:59', 'img/juego/HORAS/r_11_00-20_00.jpg', 'Costa'),
(4, '19:00--07:59', 'img/juego/HORAS/r_19_00-07_00.jpg', 'Sierra'),
(5, '21:00--08:59', 'img/juego/HORAS/r_21_00-08_00.jpg', 'Oriente'),
(6, '21:00--10:59', 'img/juego/HORAS/r_09_00-10_00.jpg', 'Costa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_region`
--

CREATE TABLE IF NOT EXISTS `juego_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(20) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `juego_region`
--

INSERT INTO `juego_region` (`id`, `region`, `foto`) VALUES
(4, 'Sierra', 'img/juego/sierra.jpg'),
(5, 'Oriente', 'img/juego/oriente.jpg'),
(6, 'Costa', 'img/juego/costa.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_resultados`
--

CREATE TABLE IF NOT EXISTS `juego_resultados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paredes_id` int(11) NOT NULL,
  `piso_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `techo_id` int(11) NOT NULL,
  `rangoHoras_id` int(11) DEFAULT NULL,
  `temperaturaInterior` float(4,2) NOT NULL,
  `consumoSinClimatizacion` float(4,2) NOT NULL,
  `consumoConClimatizacion` float(4,2) NOT NULL,
  `temperaturaExterna` float(4,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=271 ;

--
-- Volcado de datos para la tabla `juego_resultados`
--

INSERT INTO `juego_resultados` (`id`, `paredes_id`, `piso_id`, `region_id`, `techo_id`, `rangoHoras_id`, `temperaturaInterior`, `consumoSinClimatizacion`, `consumoConClimatizacion`, `temperaturaExterna`) VALUES
(109, 4, 4, 4, 1, 1, 18.41, 2.64, 6.05, 15.41),
(110, 4, 4, 4, 1, 4, 11.67, 1.47, 44.62, 10.28),
(111, 4, 4, 4, 2, 1, 18.32, 2.64, 5.12, 15.41),
(112, 4, 4, 4, 2, 4, 12.13, 1.47, 43.97, 10.28),
(113, 4, 4, 4, 3, 1, 18.91, 2.64, 5.25, 15.41),
(114, 4, 4, 4, 3, 4, 10.58, 1.47, 49.96, 10.28),
(115, 4, 5, 4, 1, 1, 18.28, 2.64, 6.07, 15.41),
(116, 4, 5, 4, 1, 4, 11.62, 1.47, 42.85, 10.28),
(117, 4, 5, 4, 2, 1, 18.23, 2.64, 5.23, 15.41),
(118, 4, 5, 4, 2, 4, 11.98, 1.47, 44.48, 10.28),
(119, 4, 5, 4, 3, 1, 18.77, 2.64, 5.22, 15.41),
(120, 4, 5, 4, 3, 4, 10.36, 1.47, 49.42, 10.28),
(121, 4, 6, 4, 1, 1, 18.31, 2.64, 5.99, 15.41),
(122, 4, 6, 4, 1, 4, 11.87, 1.47, 42.74, 10.28),
(123, 4, 6, 4, 2, 1, 18.23, 2.64, 5.09, 15.41),
(124, 4, 6, 4, 2, 4, 12.25, 1.47, 43.13, 10.28),
(125, 4, 6, 4, 3, 1, 18.76, 2.64, 5.07, 15.41),
(126, 4, 6, 4, 3, 4, 10.74, 1.47, 48.97, 10.28),
(127, 5, 4, 4, 1, 1, 17.76, 2.64, 7.84, 15.41),
(128, 5, 4, 4, 1, 4, 13.40, 1.47, 33.89, 10.28),
(129, 5, 4, 4, 2, 1, 17.40, 2.64, 6.87, 15.41),
(130, 5, 4, 4, 2, 4, 13.63, 1.47, 34.08, 10.28),
(131, 5, 4, 4, 3, 1, 17.88, 2.64, 5.75, 15.41),
(132, 5, 4, 4, 3, 4, 12.15, 1.47, 40.77, 10.28),
(133, 5, 5, 4, 1, 1, 17.61, 2.64, 7.77, 15.41),
(134, 5, 5, 4, 1, 4, 13.48, 1.47, 32.11, 10.28),
(135, 5, 5, 4, 2, 1, 17.29, 2.64, 6.81, 15.41),
(136, 5, 5, 4, 2, 4, 13.65, 1.47, 32.93, 10.28),
(137, 5, 5, 4, 3, 1, 17.68, 2.64, 5.79, 15.41),
(138, 5, 5, 4, 3, 4, 12.10, 1.47, 39.61, 10.28),
(139, 5, 6, 4, 1, 1, 17.67, 2.64, 7.78, 15.41),
(140, 5, 6, 4, 1, 4, 13.57, 1.47, 32.64, 10.28),
(141, 5, 6, 4, 2, 1, 17.31, 2.64, 6.85, 15.41),
(142, 5, 6, 4, 2, 4, 13.74, 1.47, 33.37, 10.28),
(143, 5, 6, 4, 3, 1, 17.75, 2.64, 5.76, 15.41),
(144, 5, 6, 4, 3, 4, 12.32, 1.47, 39.72, 10.28),
(145, 6, 4, 4, 1, 1, 17.01, 2.64, 8.61, 15.41),
(146, 6, 4, 4, 1, 4, 12.85, 1.47, 40.79, 10.28),
(147, 6, 4, 4, 2, 1, 16.61, 2.64, 7.85, 15.41),
(148, 6, 4, 4, 2, 4, 13.09, 1.47, 42.52, 10.28),
(149, 6, 4, 4, 3, 1, 17.12, 2.64, 6.45, 15.41),
(150, 6, 4, 4, 3, 4, 11.79, 1.47, 47.27, 10.28),
(151, 6, 5, 4, 1, 1, 16.84, 2.64, 8.56, 15.41),
(152, 6, 5, 4, 1, 4, 12.84, 1.47, 39.47, 10.28),
(153, 6, 5, 4, 2, 1, 16.50, 2.64, 7.70, 15.41),
(154, 6, 5, 4, 2, 4, 13.05, 1.47, 40.79, 10.28),
(155, 6, 5, 4, 3, 1, 16.93, 2.64, 6.49, 15.41),
(156, 6, 5, 4, 3, 4, 11.66, 1.47, 46.48, 10.28),
(157, 6, 6, 4, 1, 1, 16.94, 2.64, 8.55, 15.41),
(158, 6, 6, 4, 1, 4, 12.99, 1.47, 39.64, 10.28),
(159, 6, 6, 4, 2, 1, 16.57, 2.64, 7.70, 15.41),
(160, 6, 6, 4, 2, 4, 13.20, 1.47, 40.82, 10.28),
(161, 6, 6, 4, 3, 1, 17.02, 2.64, 6.47, 15.41),
(162, 6, 6, 4, 3, 4, 11.92, 1.47, 46.30, 10.28),
(163, 4, 4, 5, 1, 2, 28.51, 2.64, 8.00, 29.11),
(164, 4, 4, 5, 1, 5, 23.69, 1.77, 2.13, 26.04),
(165, 4, 4, 5, 2, 2, 28.94, 2.64, 8.74, 29.11),
(166, 4, 4, 5, 2, 5, 24.23, 1.77, 2.44, 26.04),
(167, 4, 4, 5, 3, 2, 28.21, 2.64, 7.51, 29.11),
(168, 4, 4, 5, 3, 5, 23.21, 1.77, 2.42, 26.04),
(169, 4, 5, 5, 1, 2, 29.31, 2.64, 7.11, 29.11),
(170, 4, 5, 5, 1, 5, 24.53, 1.77, 2.28, 26.04),
(171, 4, 5, 5, 2, 2, 29.78, 2.64, 9.63, 29.11),
(172, 4, 5, 5, 2, 5, 25.17, 1.77, 2.85, 26.04),
(173, 4, 5, 5, 3, 2, 29.00, 2.64, 7.22, 29.11),
(174, 4, 5, 5, 3, 5, 23.87, 1.77, 2.41, 26.04),
(175, 4, 6, 5, 1, 2, 28.35, 2.64, 6.40, 29.11),
(176, 4, 6, 5, 1, 5, 23.72, 1.77, 1.99, 26.04),
(177, 4, 6, 5, 2, 2, 28.90, 2.64, 7.68, 29.11),
(178, 4, 6, 5, 2, 5, 24.33, 1.77, 2.31, 26.04),
(179, 4, 6, 5, 3, 2, 28.12, 2.64, 6.49, 29.11),
(180, 4, 6, 5, 3, 5, 23.22, 1.77, 2.23, 26.04),
(181, 5, 4, 5, 1, 2, 27.70, 2.64, 6.16, 29.11),
(182, 5, 4, 5, 1, 5, 24.58, 1.77, 2.16, 26.04),
(183, 5, 4, 5, 2, 2, 28.19, 2.64, 6.94, 29.11),
(184, 5, 4, 5, 2, 5, 25.21, 1.77, 2.39, 26.04),
(185, 5, 4, 5, 3, 2, 27.49, 2.64, 5.81, 29.11),
(186, 5, 4, 5, 3, 5, 23.96, 1.77, 1.98, 26.04),
(187, 5, 5, 5, 1, 2, 28.52, 2.64, 6.27, 29.11),
(188, 5, 5, 5, 1, 5, 25.61, 1.77, 2.45, 26.04),
(189, 5, 5, 5, 2, 2, 29.15, 2.64, 7.26, 29.11),
(190, 5, 5, 5, 2, 5, 26.34, 1.77, 3.02, 26.04),
(191, 5, 5, 5, 3, 2, 28.25, 2.64, 5.80, 29.11),
(192, 5, 5, 5, 3, 5, 24.81, 1.77, 2.25, 26.04),
(193, 5, 6, 5, 1, 2, 27.51, 2.64, 5.52, 29.11),
(194, 5, 6, 5, 1, 5, 24.66, 1.77, 2.16, 26.04),
(195, 5, 6, 5, 2, 2, 28.10, 2.64, 6.46, 29.11),
(196, 5, 6, 5, 2, 5, 25.32, 1.77, 2.39, 26.04),
(197, 5, 6, 5, 3, 2, 27.34, 2.64, 5.17, 29.11),
(198, 5, 6, 5, 3, 5, 24.01, 1.77, 1.92, 26.04),
(199, 6, 4, 5, 1, 2, 27.89, 2.64, 6.63, 29.11),
(200, 6, 4, 5, 1, 5, 25.00, 1.77, 2.33, 26.04),
(201, 6, 4, 5, 2, 2, 28.38, 2.64, 8.38, 29.11),
(202, 6, 4, 5, 2, 5, 25.60, 1.77, 2.84, 26.04),
(203, 6, 4, 5, 3, 2, 27.65, 2.64, 6.22, 29.11),
(204, 6, 4, 5, 3, 5, 24.45, 1.77, 2.18, 26.04),
(205, 6, 5, 5, 1, 2, 28.68, 2.64, 6.68, 29.11),
(206, 6, 5, 5, 1, 5, 25.92, 1.77, 2.74, 26.04),
(207, 6, 5, 5, 2, 2, 29.29, 2.64, 7.73, 29.11),
(208, 6, 5, 5, 2, 5, 26.61, 1.77, 3.49, 26.04),
(209, 6, 5, 5, 3, 2, 28.38, 2.64, 6.18, 29.11),
(210, 6, 5, 5, 3, 5, 25.24, 1.77, 2.47, 26.04),
(211, 6, 6, 5, 1, 2, 27.74, 2.64, 5.96, 29.11),
(212, 6, 6, 5, 1, 5, 25.07, 1.77, 2.32, 26.04),
(213, 6, 6, 5, 2, 2, 28.34, 2.64, 6.95, 29.11),
(214, 6, 6, 5, 2, 5, 25.69, 1.77, 2.72, 26.04),
(215, 6, 6, 5, 3, 2, 27.53, 2.64, 5.54, 29.11),
(216, 6, 6, 5, 3, 5, 24.50, 1.77, 2.11, 26.04),
(217, 4, 4, 6, 1, 3, 28.06, 2.64, 6.99, 27.54),
(218, 4, 4, 6, 1, 6, 22.17, 1.77, 1.80, 22.66),
(219, 4, 4, 6, 2, 3, 28.82, 2.64, 8.16, 27.54),
(220, 4, 4, 6, 2, 6, 22.35, 1.77, 1.79, 22.66),
(221, 4, 4, 6, 3, 3, 27.78, 2.64, 6.70, 27.54),
(222, 4, 4, 6, 3, 6, 21.18, 1.77, 1.77, 22.66),
(223, 4, 5, 6, 1, 3, 28.78, 2.64, 6.86, 27.54),
(224, 4, 5, 6, 1, 6, 23.08, 1.77, 1.92, 22.66),
(225, 4, 5, 6, 2, 3, 29.54, 2.64, 8.87, 27.54),
(226, 4, 5, 6, 2, 6, 23.25, 1.77, 1.93, 22.66),
(227, 4, 5, 6, 3, 3, 28.53, 2.64, 6.73, 27.54),
(228, 4, 5, 6, 3, 6, 21.85, 1.77, 1.77, 22.66),
(229, 4, 6, 6, 1, 3, 27.90, 2.64, 6.17, 27.54),
(230, 4, 6, 6, 1, 6, 22.36, 1.77, 1.81, 22.66),
(231, 4, 6, 6, 2, 3, 28.75, 2.64, 7.58, 27.54),
(232, 4, 6, 6, 2, 6, 22.56, 1.77, 1.80, 22.66),
(233, 4, 6, 6, 3, 3, 27.70, 2.64, 6.08, 27.54),
(234, 4, 6, 6, 3, 6, 21.31, 1.77, 1.77, 22.66),
(235, 5, 4, 6, 1, 3, 27.03, 2.64, 5.51, 27.54),
(236, 5, 4, 6, 1, 6, 23.65, 1.77, 2.12, 22.66),
(237, 5, 4, 6, 2, 3, 27.79, 2.64, 6.58, 27.54),
(238, 5, 4, 6, 2, 6, 23.99, 1.77, 2.18, 22.66),
(239, 5, 4, 6, 3, 3, 26.83, 2.64, 5.00, 27.54),
(240, 5, 4, 6, 3, 6, 22.58, 1.77, 1.79, 22.66),
(241, 5, 5, 6, 1, 3, 27.75, 2.64, 5.83, 27.54),
(242, 5, 5, 6, 1, 6, 24.66, 1.77, 2.38, 22.66),
(243, 5, 5, 6, 2, 3, 28.64, 2.64, 7.07, 27.54),
(244, 5, 5, 6, 2, 6, 25.07, 1.77, 2.49, 22.66),
(245, 5, 5, 6, 3, 3, 27.52, 2.64, 5.33, 27.54),
(246, 5, 5, 6, 3, 6, 23.41, 1.77, 1.93, 22.66),
(247, 5, 6, 6, 1, 3, 26.85, 2.64, 5.20, 27.54),
(248, 5, 6, 6, 1, 6, 23.80, 1.77, 2.13, 22.66),
(249, 5, 6, 6, 2, 3, 27.68, 2.64, 6.31, 27.54),
(250, 5, 6, 6, 2, 6, 24.16, 1.77, 2.20, 22.66),
(251, 5, 6, 6, 3, 3, 26.69, 2.64, 4.69, 27.54),
(252, 5, 6, 6, 3, 6, 22.70, 1.77, 1.80, 22.66),
(253, 6, 4, 6, 1, 3, 27.09, 2.64, 5.69, 27.54),
(254, 6, 4, 6, 1, 6, 23.96, 1.77, 2.20, 22.66),
(255, 6, 4, 6, 2, 3, 27.77, 2.64, 7.20, 27.54),
(256, 6, 4, 6, 2, 6, 24.25, 1.77, 2.30, 22.66),
(257, 6, 4, 6, 3, 3, 26.86, 2.64, 5.16, 27.54),
(258, 6, 4, 6, 3, 6, 23.02, 1.77, 1.82, 22.66),
(259, 6, 5, 6, 1, 3, 27.78, 2.64, 6.01, 27.54),
(260, 6, 5, 6, 1, 6, 24.86, 1.77, 2.50, 22.66),
(261, 6, 5, 6, 2, 3, 28.60, 2.64, 7.29, 27.54),
(262, 6, 5, 6, 2, 6, 25.24, 1.77, 2.64, 22.66),
(263, 6, 5, 6, 3, 3, 27.52, 2.64, 5.49, 27.54),
(264, 6, 5, 6, 3, 6, 23.78, 1.77, 1.99, 22.66),
(265, 6, 6, 6, 1, 3, 26.95, 2.64, 5.39, 27.54),
(266, 6, 6, 6, 1, 6, 24.09, 1.77, 2.21, 22.66),
(267, 6, 6, 6, 2, 3, 27.75, 2.64, 6.55, 27.54),
(268, 6, 6, 6, 2, 6, 24.45, 1.77, 2.30, 22.66),
(269, 6, 6, 6, 3, 3, 26.76, 2.64, 4.86, 27.54),
(270, 6, 6, 6, 3, 6, 23.13, 1.77, 1.84, 22.66);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_techo`
--

CREATE TABLE IF NOT EXISTS `juego_techo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `techo` varchar(15) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `juego_techo`
--

INSERT INTO `juego_techo` (`id`, `techo`, `foto`) VALUES
(1, 'Losa', 'img/juego/losa.jpg'),
(2, 'Zinc', 'img/juego/zinc.jpg'),
(3, 'Tejas', 'img/juego/tejas.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` text NOT NULL,
  `autor` varchar(250) NOT NULL,
  `votos` int(11) NOT NULL DEFAULT '0',
  `urlImg` varchar(250) DEFAULT NULL,
  `titulo` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `autor`, `votos`, `urlImg`, `titulo`) VALUES
(3, '<p>Redactar el Contenido Aqu&iacute!</p>', 'manuel', 0, '', 'Titulo'),
(4, '<p>Redactar el Contenido Aqu&iacute!</p>', 'manuel', 0, '', 'Titulo'),
(5, '<p>Redactar el Contenido Aqu&iacute!</p>', 'as', 0, '', 'asd');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
