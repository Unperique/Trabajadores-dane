-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2024 a las 23:02:20
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
-- Base de datos: `rol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `10year_adelante_mujeres`
--

CREATE TABLE `10year_adelante_mujeres` (
  `id_persona` int(50) NOT NULL,
  `hijos_nacidos_vivos` varchar(50) DEFAULT NULL,
  `hombres` int(50) NOT NULL,
  `mujeres` int(50) NOT NULL,
  `hijos_fuera_colombia` int(11) NOT NULL,
  `hijas_fuera_colombia` int(11) NOT NULL,
  `mes_ultimo_hijo` int(11) NOT NULL,
  `year_ultimo_hijo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `10year_adelante_mujeres`
--

INSERT INTO `10year_adelante_mujeres` (`id_persona`, `hijos_nacidos_vivos`, `hombres`, `mujeres`, `hijos_fuera_colombia`, `hijas_fuera_colombia`, `mes_ultimo_hijo`, `year_ultimo_hijo`) VALUES
(1, '1', 1, 0, 0, 0, 6, 2012),
(2, NULL, 0, 0, 0, 0, 0, 0),
(3, '2', 1, 1, 0, 0, 8, 2022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(50) NOT NULL,
  `actividad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `actividad`) VALUES
(1, 'oir la voz o el sonido'),
(2, 'hablar o conversar'),
(3, 'ver de cerca, de lejos o alrededor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agua_alimentos`
--

CREATE TABLE `agua_alimentos` (
  `id` int(50) NOT NULL,
  `lugar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agua_alimentos`
--

INSERT INTO `agua_alimentos` (`id`, `lugar`) VALUES
(1, 'acueducto publico'),
(2, 'acueducto vederal'),
(3, 'red de distribucion comunitaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_protegida`
--

CREATE TABLE `area_protegida` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `area_protegida`
--

INSERT INTO `area_protegida` (`id`, `nombre`) VALUES
(1, 'Serranía de los Yariguíes'),
(2, 'Sierra Nevada de Santa Marta'),
(3, 'Sierra de la Macarena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `id_barrio` int(50) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `barrio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`id_barrio`, `id_municipio`, `barrio`) VALUES
(1, 3, 'Popular'),
(2, 3, 'Manrique'),
(3, 3, 'Castilla'),
(4, 7, 'Altagracia'),
(5, 7, 'Arabia'),
(6, 7, 'Cerritos'),
(7, 1, 'Las Acacias'),
(8, 1, 'Candelaria La Nueva'),
(9, 1, 'Gibraltar'),
(10, 4, 'Encalichada'),
(11, 4, 'Murrapal'),
(12, 4, 'Travesías'),
(13, 5, 'París'),
(14, 5, 'Suárez'),
(15, 5, 'Santa ana'),
(16, 6, 'Jaime rendon'),
(17, 6, 'Bermeza'),
(18, 6, 'Centenario'),
(19, 8, 'Altamira'),
(20, 8, 'Caracas'),
(21, 8, 'Buenavista'),
(22, 9, 'El balso'),
(23, 9, 'La pradera'),
(24, 9, 'Otun'),
(25, 10, 'Balsillas'),
(26, 10, 'Buenos Aires'),
(27, 10, 'Bavaria'),
(28, 2, 'El valle'),
(29, 2, 'El brugo'),
(30, 2, 'Buenavista'),
(31, 11, 'Bellisca'),
(32, 11, 'El lago'),
(33, 11, 'El porvenir'),
(34, 12, 'El placer'),
(35, 12, 'Palacios'),
(36, 12, 'Guayabal'),
(37, 13, 'San fernando'),
(38, 13, 'Rosablanca'),
(39, 13, 'Parque central');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `descripcion`) VALUES
(1, 'administrador'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `id` int(50) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`id`, `nombre`) VALUES
(1, 'dato 1'),
(2, 'dato 2'),
(3, 'dato 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `como_trato_poblema`
--

CREATE TABLE `como_trato_poblema` (
  `id` int(50) NOT NULL,
  `solucion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `como_trato_poblema`
--

INSERT INTO `como_trato_poblema` (`id`, `solucion`) VALUES
(1, 'no hizo nada'),
(2, 'se autorreceto'),
(3, 'uso remedios caseros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicion_ocupacion`
--

CREATE TABLE `condicion_ocupacion` (
  `id_condicion_ocupacion` int(50) NOT NULL,
  `condicion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `condicion_ocupacion`
--

INSERT INTO `condicion_ocupacion` (`id_condicion_ocupacion`, `condicion`) VALUES
(1, 'Ocupada con personas presentes'),
(2, 'Ocupada con todas las personas ausentes'),
(3, 'Vivienda temporal (para vacaciones, trabajo, etc.)'),
(4, 'Desocupada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionarios`
--

CREATE TABLE `cuestionarios` (
  `id` int(50) NOT NULL,
  `id_trabajadores` int(50) NOT NULL,
  `id_vivienda` int(50) NOT NULL,
  `identificador` varchar(50) NOT NULL,
  `comentarios` varchar(100) NOT NULL,
  `numero_certificado` varchar(50) NOT NULL,
  `codigo_supervisor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuestionarios`
--

INSERT INTO `cuestionarios` (`id`, `id_trabajadores`, `id_vivienda`, `identificador`, `comentarios`, `numero_certificado`, `codigo_supervisor`) VALUES
(1, 1, 1, '1', 'Ninguno', 'CF000001', 1),
(2, 2, 2, '2', 'Muy buen servicio, me gusto la atencion', 'CF000002', 1),
(3, 3, 3, '3', 'Deberian de recortar las preguntas, muy complicadas', 'CF000003', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dane`
--

CREATE TABLE `dane` (
  `id` int(50) NOT NULL,
  `nit` varchar(50) NOT NULL,
  `nombre_legal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dane`
--

INSERT INTO `dane` (`id`, `nit`, `nombre_legal`) VALUES
(1, 'a234234242', 'dane');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `departamento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `departamento`) VALUES
(1, 'Antioquia'),
(2, 'Risaralda'),
(3, 'Cundinamarca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `codigo` int(50) NOT NULL,
  `departamento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`codigo`, `departamento`) VALUES
(5, 'ANTIOQUIA'),
(8, 'ATLÁNTICO'),
(11, 'BOGOTÁ, D.C.'),
(13, 'BOLÍVAR'),
(15, 'BOYACÁ'),
(17, 'CALDAS'),
(18, 'CAQUETÁ'),
(19, 'CAUCA'),
(20, 'CESAR'),
(23, 'CÓRDOBA'),
(25, 'CUNDINAMARCA'),
(27, 'CHOCÓ'),
(41, 'HUILA'),
(44, 'LA GUAJIRA'),
(47, 'MAGDALENA'),
(50, 'META'),
(52, 'NARIÑO'),
(54, 'NORTE DE SANTANDER'),
(63, 'QUINDIO'),
(66, 'RISARALDA'),
(68, 'SANTANDER'),
(70, 'SUCRE'),
(73, 'TOLIMA'),
(76, 'VALLE DEL CAUCA'),
(81, 'ARAUCA'),
(85, 'CASANARE'),
(86, 'PUTUMAYO'),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CA'),
(91, 'AMAZONAS'),
(94, 'GUAINÍA'),
(95, 'GUAVIARE'),
(97, 'VAUPÉS'),
(99, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id` int(50) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id`, `tipo`) VALUES
(1, 'Barrio'),
(2, 'Corregimiento'),
(3, 'Vereda'),
(4, 'Rancheria'),
(5, 'Comunidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id_documento` int(50) NOT NULL,
  `tipo_documento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_documento`, `tipo_documento`) VALUES
(1, 'Registro civil de nacimiento'),
(2, 'Tarjeta de identidad'),
(3, 'Cedula de ciudadania'),
(4, 'Cedula de extranjeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_convenios`
--

CREATE TABLE `empresa_convenios` (
  `id` int(50) NOT NULL,
  `nit` varchar(50) NOT NULL,
  `nombre_legal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa_convenios`
--

INSERT INTO `empresa_convenios` (`id`, `nit`, `nombre_legal`) VALUES
(1, '986169863', 'Viva colombia'),
(2, '987654328', 'Encuestas ya'),
(3, '3455678902', 'Una mejor colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `estado`) VALUES
(0, 'Inactivo'),
(1, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id` int(50) NOT NULL,
  `estado_civil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_civil`
--

INSERT INTO `estado_civil` (`id`, `estado_civil`) VALUES
(1, 'Union libre'),
(2, 'Casad@?'),
(3, 'Divorciado@?'),
(4, 'Separad@ de union libre?'),
(5, 'Separad@ de matrimonio?'),
(6, 'Viud@?'),
(7, 'Solter@? (Nunca se ha casado no ha vivido en union libre)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etnias`
--

CREATE TABLE `etnias` (
  `id` int(50) NOT NULL,
  `etnia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `etnias`
--

INSERT INTO `etnias` (`id`, `etnia`) VALUES
(1, 'indigena'),
(2, 'gitano(a) o Rrom'),
(3, 'ningun grupo etnico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id_grado` int(50) NOT NULL,
  `grado` varchar(50) NOT NULL,
  `id_nivel_educativo` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id_grado`, `grado`, `id_nivel_educativo`) VALUES
(1, 'Preescolar', 1),
(2, 'Basico primaria', 1),
(3, 'Basico secundaria', 1),
(4, 'Media academica o clasica', 1),
(5, 'Media tecnica', 1),
(6, 'Normalista', 1),
(7, 'Tecnica Profesiona', 2),
(8, 'Tecnologica', 2),
(9, 'Universitario', 2),
(10, 'Especializacion', 3),
(11, 'Maestria', 3),
(12, 'Doctorado', 3),
(13, 'Ninguno', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marial_piso`
--

CREATE TABLE `marial_piso` (
  `id_piso` int(50) NOT NULL,
  `tipo_piso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marial_piso`
--

INSERT INTO `marial_piso` (`id_piso`, `tipo_piso`) VALUES
(1, 'marmol, parque, madera pulida y lacada'),
(2, 'bolsa vinilo, tableta, ladrillo, laminado'),
(3, 'Alfombra'),
(4, 'Cemento, gravillo'),
(5, 'Madera burda, tabla, tablon, otro vegetal'),
(6, 'tierra, arena, barro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_paredes`
--

CREATE TABLE `material_paredes` (
  `id_paredes` int(50) NOT NULL,
  `tipo_pared` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `material_paredes`
--

INSERT INTO `material_paredes` (`id_paredes`, `tipo_pared`) VALUES
(1, 'bloque, ladrillo, pierda, madera pulida'),
(2, 'concreto vaciado'),
(3, 'Material prefabricado'),
(4, 'Guadua'),
(5, 'Tapia pisada, bahareque, adobe'),
(6, 'madera burda, tabla, tablon'),
(7, 'caña, estrillo, otros vegetales'),
(8, 'Materiales de desecho (zinc, tela, carton, latas, '),
(9, 'no tiene paredes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menor_5anos`
--

CREATE TABLE `menor_5anos` (
  `id_persona` int(50) NOT NULL,
  `id_parmanece` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menor_5anos`
--

INSERT INTO `menor_5anos` (`id_persona`, `id_parmanece`) VALUES
(3, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id_municipio` int(50) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `municipio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id_municipio`, `id_departamento`, `municipio`) VALUES
(1, 1, 'Ciudad bolivar'),
(2, 1, 'Toledo'),
(3, 1, 'Medellin'),
(4, 1, 'Uramita'),
(5, 1, 'Bello'),
(6, 2, 'Apia'),
(7, 2, 'Pereira'),
(8, 2, 'Marsella'),
(9, 2, 'Dosquebradas'),
(10, 2, 'La virginia'),
(11, 3, 'Funza'),
(12, 3, 'Fusagasuga'),
(13, 3, 'Girardot');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(50) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `id_departamento` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `municipio`, `id_departamento`) VALUES
(1, 'Abriaquí', 5),
(2, 'Acacías', 50),
(3, 'Acandí', 27),
(4, 'Acevedo', 41),
(5, 'Achí', 13),
(6, 'Agrado', 41),
(7, 'Agua de Dios', 25),
(8, 'Aguachica', 20),
(9, 'Aguada', 68),
(10, 'Aguadas', 17),
(11, 'Aguazul', 85),
(12, 'Agustín Codazzi', 20),
(13, 'Aipe', 41),
(14, 'Albania', 18),
(15, 'Albania', 44),
(16, 'Albania', 68),
(17, 'Albán', 25),
(18, 'Albán (San José)', 52),
(19, 'Alcalá', 76),
(20, 'Alejandria', 5),
(21, 'Algarrobo', 47),
(22, 'Algeciras', 41),
(23, 'Almaguer', 19),
(24, 'Almeida', 15),
(25, 'Alpujarra', 73),
(26, 'Altamira', 41),
(27, 'Alto Baudó (Pie de Pato)', 27),
(28, 'Altos del Rosario', 13),
(29, 'Alvarado', 73),
(30, 'Amagá', 5),
(31, 'Amalfi', 5),
(32, 'Ambalema', 73),
(33, 'Anapoima', 25),
(34, 'Ancuya', 52),
(35, 'Andalucía', 76),
(36, 'Andes', 5),
(37, 'Angelópolis', 5),
(38, 'Angostura', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_educativo`
--

CREATE TABLE `nivel_educativo` (
  `id_nivel_educativo` int(50) NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nivel_educativo`
--

INSERT INTO `nivel_educativo` (`id_nivel_educativo`, `nivel`) VALUES
(1, 'BASICO'),
(2, 'SUPERIOR'),
(3, 'POSGRADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocasionado`
--

CREATE TABLE `ocasionado` (
  `id` int(50) NOT NULL,
  `situacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ocasionado`
--

INSERT INTO `ocasionado` (`id`, `situacion`) VALUES
(1, 'porque nacio asi'),
(2, 'por enfermedad'),
(3, 'por accidente laboral o enfermedad profesional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentesco`
--

CREATE TABLE `parentesco` (
  `id_parentesco` int(50) NOT NULL,
  `tipo_parentesco` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parentesco`
--

INSERT INTO `parentesco` (`id_parentesco`, `tipo_parentesco`) VALUES
(1, 'jefe(a) de hogar'),
(2, 'parteja (conyuge, compañero(a), esposo(a))'),
(3, 'hijo(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permanece`
--

CREATE TABLE `permanece` (
  `id` int(50) NOT NULL,
  `pregunta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permanece`
--

INSERT INTO `permanece` (`id`, `pregunta`) VALUES
(14, 'con su padre o madre en la vivienda'),
(15, 'con su padre o madre en el trabajo'),
(16, 'en la vivienda, solo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `genero` char(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_tipo_documento` int(50) NOT NULL,
  `documento` varchar(15) NOT NULL,
  `id_parentesco` int(50) NOT NULL,
  `id_etnia` int(50) DEFAULT NULL,
  `id_pueblo_vitsa` int(50) DEFAULT NULL,
  `id_clan_kumpania` int(50) DEFAULT NULL,
  `lengua_nativa` varchar(50) NOT NULL,
  `op_entiende_lengua:nativa` int(50) NOT NULL,
  `numero_lengua_nativa` int(50) NOT NULL,
  `id_lugar_nacimiento` int(50) NOT NULL,
  `id_vivienda` int(50) NOT NULL,
  `id_estado_civil` int(50) DEFAULT NULL,
  `id_situacion` int(50) DEFAULT NULL,
  `sabe_leer` int(50) DEFAULT NULL,
  `id_grado` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `genero`, `fecha_nacimiento`, `id_tipo_documento`, `documento`, `id_parentesco`, `id_etnia`, `id_pueblo_vitsa`, `id_clan_kumpania`, `lengua_nativa`, `op_entiende_lengua:nativa`, `numero_lengua_nativa`, `id_lugar_nacimiento`, `id_vivienda`, `id_estado_civil`, `id_situacion`, `sabe_leer`, `id_grado`) VALUES
(1, 'Alison', 'Rodrigues', 'F', '1999-11-11', 3, '1099765491', 2, 1, NULL, NULL, 'Espanol', 1, 1, 9, 2, 1, 4, 1, 9),
(2, 'Vanessa ', 'Lopez', 'F', '1996-07-09', 3, '1007654383', 1, 1, NULL, NULL, 'Espanol', 1, 1, 7, 1, 2, 2, NULL, 9),
(3, 'Fernanda', 'Incapie', 'F', '2020-05-12', 2, '1000675370', 2, 1, NULL, NULL, 'Espanol', 1, 1, 7, 1, NULL, 6, 2, 2),
(4, 'sofia', 'giraldo', 'F', '2024-05-08', 3, '123213', 3, 1, 1, 1, 'sd', 1, 1, 6, 4, 2, 4, 1, 2),
(5, 'hugo', 'porras', 'M', '1964-02-13', 3, '564648', 3, NULL, NULL, NULL, '1', 1, 2, 12, 4, 3, 9, 1, 12),
(6, 'daniela', 'porras', 'F', '1964-02-13', 3, '234', 1, 2, NULL, NULL, '1', 1, 1, 12, 4, NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_muertas`
--

CREATE TABLE `personas_muertas` (
  `id` int(50) NOT NULL,
  `orden` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `edad` varchar(50) NOT NULL,
  `certificado_difuncion` varchar(50) NOT NULL,
  `id_vivienda` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas_muertas`
--

INSERT INTO `personas_muertas` (`id`, `orden`, `sexo`, `edad`, `certificado_difuncion`, `id_vivienda`) VALUES
(5, '000001', 'Hombre', '98', 'CD000001', 1),
(6, '000002', 'Mujer', '87', 'CD000002', 2),
(7, '000003', 'Hombre', '55', 'CD000003', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparar_alimentos`
--

CREATE TABLE `preparar_alimentos` (
  `id` int(11) NOT NULL,
  `lugar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preparar_alimentos`
--

INSERT INTO `preparar_alimentos` (`id`, `lugar`) VALUES
(1, 'en un cuarto usado solo para cocina'),
(2, 'en un cuarto usado tambien para dormir'),
(3, 'en una sala-comedor con lavaplatos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `problema_salud_hace_30dias`
--

CREATE TABLE `problema_salud_hace_30dias` (
  `id_persona` int(50) NOT NULL,
  `id_como_trato_problema` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `problema_salud_hace_30dias`
--

INSERT INTO `problema_salud_hace_30dias` (`id_persona`, `id_como_trato_problema`) VALUES
(2, 3),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_user`
--

CREATE TABLE `reg_user` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` int(50) NOT NULL,
  `departamento` int(50) NOT NULL,
  `municipio` int(50) NOT NULL,
  `barrio` int(50) NOT NULL,
  `id_dane` int(50) DEFAULT NULL,
  `id_empresa` int(50) DEFAULT NULL,
  `estado` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reg_user`
--

INSERT INTO `reg_user` (`id`, `nombre`, `apellido`, `edad`, `sexo`, `correo`, `telefono`, `departamento`, `municipio`, `barrio`, `id_dane`, `id_empresa`, `estado`) VALUES
(19, 'prueba', 'prueba', 45, 'Hombre', 'prueba@gmail.com', 2147483647, 2, 6, 16, NULL, NULL, 1),
(20, 'sebas', 'bedoya', 25, 'Hombre', 'se@gmail.com', 2147483647, 3, 13, 39, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_actividades`
--

CREATE TABLE `respuestas_actividades` (
  `id_respuestas_actividades` int(50) NOT NULL,
  `id_personas` int(50) NOT NULL,
  `id_actividad` int(50) NOT NULL,
  `id_respuestas` int(50) NOT NULL,
  `afecta_mas` int(50) DEFAULT NULL,
  `id_osacionado` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuestas_actividades`
--

INSERT INTO `respuestas_actividades` (`id_respuestas_actividades`, `id_personas`, `id_actividad`, `id_respuestas`, `afecta_mas`, `id_osacionado`) VALUES
(1, 1, 2, 1, 0, 1),
(2, 2, 3, 2, 0, 2),
(3, 3, 1, 3, 0, 3),
(4, 6, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_encuestas`
--

CREATE TABLE `resultado_encuestas` (
  `id` int(50) NOT NULL,
  `resultado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `resultado_encuestas`
--

INSERT INTO `resultado_encuestas` (`id`, `resultado`) VALUES
(1, 'Completa'),
(2, 'Incompleta'),
(3, 'Rechazo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sanitario`
--

CREATE TABLE `sanitario` (
  `id_sanitario` int(50) NOT NULL,
  `tipo_sanitario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sanitario`
--

INSERT INTO `sanitario` (`id_sanitario`, `tipo_sanitario`) VALUES
(1, 'Inodoro conectado al alcantarillado'),
(2, 'Inodoro conectado a pozo septico'),
(3, 'Inodoro sin conexion'),
(4, 'Letrina'),
(5, 'Inodoro con descarga directa a fuente de agua?'),
(6, 'Esta vivienda no tiene servicio sanitario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion`
--

CREATE TABLE `situacion` (
  `id_situacion` int(50) NOT NULL,
  `pregunta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `situacion`
--

INSERT INTO `situacion` (`id_situacion`, `pregunta`) VALUES
(1, 'Trabajo por lo menos una hora en una actividad que'),
(2, 'Trabajo o ayudo en un negocio por lo menos una hor'),
(3, 'No trabajo, pero tenia un empleo, trabajo o negoci'),
(4, 'Busco empleo?'),
(5, 'VIvo de jubilacion, pension o renta?'),
(6, 'Estudio?'),
(7, 'Realizo oficios del hogar?'),
(8, 'Es incapacitad@ permanentemente para trabajar?'),
(9, 'Estuvo en otra situacion?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `territorio_etnico`
--

CREATE TABLE `territorio_etnico` (
  `id` int(50) NOT NULL,
  `nombre` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `territorio_etnico`
--

INSERT INTO `territorio_etnico` (`id`, `nombre`) VALUES
(1, 'Resguardos '),
(2, 'Kumpanias'),
(3, 'Conceso com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_respuesta`
--

CREATE TABLE `tipo_respuesta` (
  `Id_tipo_respuesta` int(50) NOT NULL,
  `respuestas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_respuesta`
--

INSERT INTO `tipo_respuesta` (`Id_tipo_respuesta`, `respuestas`) VALUES
(1, 'no puedo hacerlo'),
(2, 'si, con alguna dificultad'),
(3, 'puedo hacerlo sin dificultades');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vivienda`
--

CREATE TABLE `tipo_vivienda` (
  `id_tipo` int(50) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_vivienda`
--

INSERT INTO `tipo_vivienda` (`id_tipo`, `tipo`) VALUES
(1, 'Casa'),
(2, 'Apartamento'),
(3, 'Tipo cuarto'),
(4, 'Vivienda tradicional indigena'),
(5, 'Vivienda tradicional etnica (afrocolombiana, Rrom)'),
(6, 'Otro (contenedor, carpa, embarcacion, vagon, etc.)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `id_empresa` int(50) NOT NULL,
  `id_dane` int(50) NOT NULL,
  `estado_laboral` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`id`, `nombre`, `genero`, `id_empresa`, `id_dane`, `estado_laboral`) VALUES
(1, 'Sebastian', 'Masculino', 1, 1, 1),
(2, 'Juana', 'Femenino', 2, 2, 2),
(3, 'Andres', 'Masculino', 3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id` int(50) NOT NULL,
  `id_municipio` int(50) NOT NULL,
  `id_clase` int(50) DEFAULT NULL,
  `id_territorio_etnico` int(50) DEFAULT NULL,
  `id_area_protegida` int(50) DEFAULT NULL,
  `area_operativa` int(50) NOT NULL,
  `unidad_cobertura` int(50) NOT NULL,
  `numero_unidad_edificacion` int(50) NOT NULL,
  `id_direccion` int(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `id_uso_unidad` int(50) NOT NULL,
  `territorio_etnico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id`, `id_municipio`, `id_clase`, `id_territorio_etnico`, `id_area_protegida`, `area_operativa`, `unidad_cobertura`, `numero_unidad_edificacion`, `id_direccion`, `direccion`, `id_uso_unidad`, `territorio_etnico`) VALUES
(1, 7, 1, 2, NULL, 1, 1, 10, 1, 'KR 5 #10-5', 1, '1'),
(2, 5, 2, 1, NULL, 0, 2, 2, 2, 'CLL 6 #20-6', 1, ''),
(3, 4, 3, 1, NULL, 0, 0, 13, 5, 'AV 5 #4-9', 1, '3'),
(6, 6, 1, NULL, NULL, 1233, 12312, 123, 1, 'cra 23', 1, 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uso`
--

CREATE TABLE `uso` (
  `id_uso` int(50) NOT NULL,
  `opcion` varchar(50) NOT NULL,
  `id_uso_unidad` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `uso`
--

INSERT INTO `uso` (`id_uso`, `opcion`, `id_uso_unidad`) VALUES
(1, 'Vivienda', 1),
(2, 'Industria', 2),
(3, 'Comercio', 2),
(4, 'Servicio', 2),
(5, 'Agropecuario, agroindustrial, forestal', 2),
(6, 'Industria', 3),
(7, 'Comercio', 3),
(8, 'Servicio', 3),
(9, 'Institucional', 3),
(10, 'Lote (Unidad sin construccion)', 3),
(11, 'parque o zona verde', 3),
(12, 'minero - energetico', 3),
(13, 'Proteccion o conservacion ambiental', 3),
(14, 'Agropecuario, agroindustrial, forestal', 3),
(15, 'En construccion', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uso_unidad`
--

CREATE TABLE `uso_unidad` (
  `id` int(50) NOT NULL,
  `uso_unidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `uso_unidad`
--

INSERT INTO `uso_unidad` (`id`, `uso_unidad`) VALUES
(1, 'Vivienda'),
(2, 'Mixto'),
(3, 'Unidad no residencial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `contraseña`, `id_cargo`) VALUES
(1, 'Andres Morales', 'Morales', '123', 1),
(2, 'Sebastian', 'Sebastian', '321', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `id_cuestionario` int(50) NOT NULL,
  `id_resultado_entrevista` int(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`id_cuestionario`, `id_resultado_entrevista`, `fecha`) VALUES
(1, 1, '2024-01-18'),
(2, 2, '2024-04-09');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_indigenas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_indigenas` (
`etnia` varchar(100)
,`total_indigenas` bigint(21)
,`indigenas_fuera_territorio` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_personas_mayores_sin_problemas_de_salud`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_personas_mayores_sin_problemas_de_salud` (
`id` int(50)
,`nombre` varchar(50)
,`apellido` varchar(50)
,`genero` char(1)
,`fecha_nacimiento` date
,`id_tipo_documento` int(50)
,`documento` varchar(15)
,`id_parentesco` int(50)
,`id_etnia` int(50)
,`id_pueblo_vitsa` int(50)
,`id_clan_kumpania` int(50)
,`lengua_nativa` varchar(50)
,`op_entiende_lengua:nativa` int(50)
,`numero_lengua_nativa` int(50)
,`id_lugar_nacimiento` int(50)
,`id_vivienda` int(50)
,`id_estado_civil` int(50)
,`id_situacion` int(50)
,`sabe_leer` int(50)
,`id_grado` int(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_persona_mayor_dificultades__mas_personas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_persona_mayor_dificultades__mas_personas` (
`nombre` varchar(50)
,`cantidad` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vivienda`
--

CREATE TABLE `vivienda` (
  `id` int(50) NOT NULL,
  `id_tipo_vivienda` int(50) NOT NULL,
  `id_condicion` int(50) NOT NULL,
  `id_material_paredes` int(50) NOT NULL,
  `id_material_piso` int(50) NOT NULL,
  `energia_electrica` varchar(50) NOT NULL,
  `acueducto` varchar(50) NOT NULL,
  `alcantarillado` varchar(50) NOT NULL,
  `gas_red` varchar(50) NOT NULL,
  `recoleccion_basura` varchar(50) NOT NULL,
  `internet` varchar(50) NOT NULL,
  `id_ubicacion` int(50) NOT NULL,
  `cuartos` varchar(50) NOT NULL,
  `cuartos_dormir` varchar(50) NOT NULL,
  `id_preparan_alimentos` int(50) NOT NULL,
  `id_obtener_agua` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vivienda`
--

INSERT INTO `vivienda` (`id`, `id_tipo_vivienda`, `id_condicion`, `id_material_paredes`, `id_material_piso`, `energia_electrica`, `acueducto`, `alcantarillado`, `gas_red`, `recoleccion_basura`, `internet`, `id_ubicacion`, `cuartos`, `cuartos_dormir`, `id_preparan_alimentos`, `id_obtener_agua`) VALUES
(1, 1, 1, 1, 1, 'Si', 'Si', 'Si', 'Si', 'Si', 'Si', 1, 'Si', 'Si', 1, 1),
(2, 2, 2, 2, 2, 'Si', 'No', 'No', 'Si', 'No', 'No', 2, '4', '3', 2, 2),
(3, 3, 3, 3, 3, 'Si', 'Si', 'Si', 'No', 'No', 'Si', 3, '3', '2', 3, 3),
(4, 2, 1, 1, 3, 'si', 'si', 'si', 'si', 'si', 'si', 6, '4', '1', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `id_trabajador` int(50) NOT NULL,
  `id_municipio` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zona`
--

INSERT INTO `zona` (`id_trabajador`, `id_municipio`) VALUES
(1, 1),
(2, 7),
(3, 9);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_indigenas`
--
DROP TABLE IF EXISTS `vista_indigenas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_indigenas`  AS SELECT `e`.`etnia` AS `etnia`, count(0) AS `total_indigenas`, sum(case when `u`.`id_territorio_etnico` is null then 1 else 0 end) AS `indigenas_fuera_territorio` FROM (((`personas` `p` join `etnias` `e` on(`e`.`id` = `p`.`id_etnia`)) join `vivienda` `v` on(`v`.`id` = `p`.`id_vivienda`)) join `ubicacion` `u` on(`u`.`id` = `v`.`id_ubicacion`)) GROUP BY `e`.`etnia` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_personas_mayores_sin_problemas_de_salud`
--
DROP TABLE IF EXISTS `vista_personas_mayores_sin_problemas_de_salud`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_personas_mayores_sin_problemas_de_salud`  AS SELECT `p`.`id` AS `id`, `p`.`nombre` AS `nombre`, `p`.`apellido` AS `apellido`, `p`.`genero` AS `genero`, `p`.`fecha_nacimiento` AS `fecha_nacimiento`, `p`.`id_tipo_documento` AS `id_tipo_documento`, `p`.`documento` AS `documento`, `p`.`id_parentesco` AS `id_parentesco`, `p`.`id_etnia` AS `id_etnia`, `p`.`id_pueblo_vitsa` AS `id_pueblo_vitsa`, `p`.`id_clan_kumpania` AS `id_clan_kumpania`, `p`.`lengua_nativa` AS `lengua_nativa`, `p`.`op_entiende_lengua:nativa` AS `op_entiende_lengua:nativa`, `p`.`numero_lengua_nativa` AS `numero_lengua_nativa`, `p`.`id_lugar_nacimiento` AS `id_lugar_nacimiento`, `p`.`id_vivienda` AS `id_vivienda`, `p`.`id_estado_civil` AS `id_estado_civil`, `p`.`id_situacion` AS `id_situacion`, `p`.`sabe_leer` AS `sabe_leer`, `p`.`id_grado` AS `id_grado` FROM (`personas` `p` left join `respuestas_actividades` `ra` on(`ra`.`id_personas` = `p`.`id`)) WHERE `ra`.`id_personas` is null AND year(`p`.`fecha_nacimiento`) < 1970 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_persona_mayor_dificultades__mas_personas`
--
DROP TABLE IF EXISTS `vista_persona_mayor_dificultades__mas_personas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_persona_mayor_dificultades__mas_personas`  AS SELECT `p`.`nombre` AS `nombre`, `num`.`cantidad` AS `cantidad` FROM ((`personas` `p` join `respuestas_actividades` `ra` on(`ra`.`id_personas` = `p`.`id`)) join (select `personas`.`id_vivienda` AS `id_vivienda`,count(0) AS `cantidad` from `personas` group by `personas`.`id_vivienda`) `num` on(`num`.`id_vivienda` = `p`.`id_vivienda`)) WHERE year(`p`.`fecha_nacimiento`) < 1970 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `10year_adelante_mujeres`
--
ALTER TABLE `10year_adelante_mujeres`
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `agua_alimentos`
--
ALTER TABLE `agua_alimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `area_protegida`
--
ALTER TABLE `area_protegida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`id_barrio`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `como_trato_poblema`
--
ALTER TABLE `como_trato_poblema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `condicion_ocupacion`
--
ALTER TABLE `condicion_ocupacion`
  ADD PRIMARY KEY (`id_condicion_ocupacion`);

--
-- Indices de la tabla `cuestionarios`
--
ALTER TABLE `cuestionarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_trabajadores` (`id_trabajadores`),
  ADD KEY `id_vivienda` (`id_vivienda`);

--
-- Indices de la tabla `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indices de la tabla `empresa_convenios`
--
ALTER TABLE `empresa_convenios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `etnias`
--
ALTER TABLE `etnias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id_grado`),
  ADD KEY `id_nivel_educativo` (`id_nivel_educativo`);

--
-- Indices de la tabla `marial_piso`
--
ALTER TABLE `marial_piso`
  ADD PRIMARY KEY (`id_piso`);

--
-- Indices de la tabla `material_paredes`
--
ALTER TABLE `material_paredes`
  ADD PRIMARY KEY (`id_paredes`);

--
-- Indices de la tabla `menor_5anos`
--
ALTER TABLE `menor_5anos`
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_parmanece` (`id_parmanece`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `nivel_educativo`
--
ALTER TABLE `nivel_educativo`
  ADD PRIMARY KEY (`id_nivel_educativo`);

--
-- Indices de la tabla `ocasionado`
--
ALTER TABLE `ocasionado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parentesco`
--
ALTER TABLE `parentesco`
  ADD PRIMARY KEY (`id_parentesco`);

--
-- Indices de la tabla `permanece`
--
ALTER TABLE `permanece`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vivienda` (`id_vivienda`),
  ADD KEY `id_parentesco` (`id_parentesco`),
  ADD KEY `id_tipo_documento` (`id_tipo_documento`),
  ADD KEY `lugar_nacimiento` (`id_lugar_nacimiento`),
  ADD KEY `id_lugar_nacimiento` (`id_lugar_nacimiento`),
  ADD KEY `id_etnia` (`id_etnia`),
  ADD KEY `id_pueblo_vitsa` (`id_pueblo_vitsa`),
  ADD KEY `id_clan_kumpania` (`id_clan_kumpania`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_situacion` (`id_situacion`),
  ADD KEY `id_estado_civil` (`id_estado_civil`);

--
-- Indices de la tabla `personas_muertas`
--
ALTER TABLE `personas_muertas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vivienda` (`id_vivienda`);

--
-- Indices de la tabla `preparar_alimentos`
--
ALTER TABLE `preparar_alimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `problema_salud_hace_30dias`
--
ALTER TABLE `problema_salud_hace_30dias`
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_como_trato_problema` (`id_como_trato_problema`);

--
-- Indices de la tabla `reg_user`
--
ALTER TABLE `reg_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado` (`estado`),
  ADD KEY `id_dane` (`id_dane`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `reg_user_ibfk_4` (`barrio`),
  ADD KEY `reg_user_ibfk_5` (`municipio`),
  ADD KEY `reg_user_ibfk_6` (`departamento`);

--
-- Indices de la tabla `respuestas_actividades`
--
ALTER TABLE `respuestas_actividades`
  ADD PRIMARY KEY (`id_respuestas_actividades`),
  ADD KEY `id_personas` (`id_personas`),
  ADD KEY `id_actividad` (`id_actividad`),
  ADD KEY `id_respuestas` (`id_respuestas`),
  ADD KEY `id_osacionado` (`id_osacionado`);

--
-- Indices de la tabla `resultado_encuestas`
--
ALTER TABLE `resultado_encuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sanitario`
--
ALTER TABLE `sanitario`
  ADD PRIMARY KEY (`id_sanitario`);

--
-- Indices de la tabla `situacion`
--
ALTER TABLE `situacion`
  ADD PRIMARY KEY (`id_situacion`);

--
-- Indices de la tabla `territorio_etnico`
--
ALTER TABLE `territorio_etnico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_respuesta`
--
ALTER TABLE `tipo_respuesta`
  ADD PRIMARY KEY (`Id_tipo_respuesta`);

--
-- Indices de la tabla `tipo_vivienda`
--
ALTER TABLE `tipo_vivienda`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_dane` (`id_dane`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_municipio` (`id_municipio`),
  ADD KEY `direccion` (`id_direccion`),
  ADD KEY `uso_vivienda` (`id_uso_unidad`),
  ADD KEY `id_clase` (`id_clase`),
  ADD KEY `id_area_protegida` (`id_area_protegida`),
  ADD KEY `territorio_etnico` (`id_territorio_etnico`);

--
-- Indices de la tabla `uso`
--
ALTER TABLE `uso`
  ADD PRIMARY KEY (`id_uso`),
  ADD KEY `uso_unidad_id_uso` (`id_uso_unidad`);

--
-- Indices de la tabla `uso_unidad`
--
ALTER TABLE `uso_unidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD KEY `id_cuestionario` (`id_cuestionario`),
  ADD KEY `id_resultado_entrevista` (`id_resultado_entrevista`);

--
-- Indices de la tabla `vivienda`
--
ALTER TABLE `vivienda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ubicacion` (`id_ubicacion`),
  ADD KEY `id_material_paredes` (`id_material_paredes`),
  ADD KEY `id_material_piso` (`id_material_piso`),
  ADD KEY `id_tipo_vivienda` (`id_tipo_vivienda`),
  ADD KEY `id_condicion` (`id_condicion`),
  ADD KEY `id_ubicacion_2` (`id_ubicacion`),
  ADD KEY `id_preparan_alimentos` (`id_preparan_alimentos`),
  ADD KEY `id_obtener_agua` (`id_obtener_agua`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD KEY `id_trabajador` (`id_trabajador`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `agua_alimentos`
--
ALTER TABLE `agua_alimentos`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `area_protegida`
--
ALTER TABLE `area_protegida`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `barrio`
--
ALTER TABLE `barrio`
  MODIFY `id_barrio` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `como_trato_poblema`
--
ALTER TABLE `como_trato_poblema`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `condicion_ocupacion`
--
ALTER TABLE `condicion_ocupacion`
  MODIFY `id_condicion_ocupacion` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cuestionarios`
--
ALTER TABLE `cuestionarios`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id_documento` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empresa_convenios`
--
ALTER TABLE `empresa_convenios`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `etnias`
--
ALTER TABLE `etnias`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id_grado` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `marial_piso`
--
ALTER TABLE `marial_piso`
  MODIFY `id_piso` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `material_paredes`
--
ALTER TABLE `material_paredes`
  MODIFY `id_paredes` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `nivel_educativo`
--
ALTER TABLE `nivel_educativo`
  MODIFY `id_nivel_educativo` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ocasionado`
--
ALTER TABLE `ocasionado`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `parentesco`
--
ALTER TABLE `parentesco`
  MODIFY `id_parentesco` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permanece`
--
ALTER TABLE `permanece`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personas_muertas`
--
ALTER TABLE `personas_muertas`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `preparar_alimentos`
--
ALTER TABLE `preparar_alimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reg_user`
--
ALTER TABLE `reg_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `resultado_encuestas`
--
ALTER TABLE `resultado_encuestas`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sanitario`
--
ALTER TABLE `sanitario`
  MODIFY `id_sanitario` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `territorio_etnico`
--
ALTER TABLE `territorio_etnico`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_respuesta`
--
ALTER TABLE `tipo_respuesta`
  MODIFY `Id_tipo_respuesta` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_vivienda`
--
ALTER TABLE `tipo_vivienda`
  MODIFY `id_tipo` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `uso`
--
ALTER TABLE `uso`
  MODIFY `id_uso` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `uso_unidad`
--
ALTER TABLE `uso_unidad`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `10year_adelante_mujeres`
--
ALTER TABLE `10year_adelante_mujeres`
  ADD CONSTRAINT `10year_adelante_mujeres_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD CONSTRAINT `barrio_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuestionarios`
--
ALTER TABLE `cuestionarios`
  ADD CONSTRAINT `cuestionarios_ibfk_1` FOREIGN KEY (`id_vivienda`) REFERENCES `vivienda` (`id`);

--
-- Filtros para la tabla `grado`
--
ALTER TABLE `grado`
  ADD CONSTRAINT `grado_ibfk_1` FOREIGN KEY (`id_nivel_educativo`) REFERENCES `nivel_educativo` (`id_nivel_educativo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `menor_5anos`
--
ALTER TABLE `menor_5anos`
  ADD CONSTRAINT `menor_5anos_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `menor_5anos_ibfk_2` FOREIGN KEY (`id_parmanece`) REFERENCES `permanece` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`id_vivienda`) REFERENCES `vivienda` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personas_ibfk_10` FOREIGN KEY (`id_estado_civil`) REFERENCES `estado_civil` (`id`),
  ADD CONSTRAINT `personas_ibfk_3` FOREIGN KEY (`id_tipo_documento`) REFERENCES `documento` (`id_documento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personas_ibfk_4` FOREIGN KEY (`id_parentesco`) REFERENCES `parentesco` (`id_parentesco`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personas_ibfk_5` FOREIGN KEY (`id_lugar_nacimiento`) REFERENCES `municipio` (`id_municipio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personas_ibfk_6` FOREIGN KEY (`id_etnia`) REFERENCES `etnias` (`id`),
  ADD CONSTRAINT `personas_ibfk_8` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`),
  ADD CONSTRAINT `personas_ibfk_9` FOREIGN KEY (`id_situacion`) REFERENCES `situacion` (`id_situacion`);

--
-- Filtros para la tabla `personas_muertas`
--
ALTER TABLE `personas_muertas`
  ADD CONSTRAINT `personas_muertas_ibfk_1` FOREIGN KEY (`id_vivienda`) REFERENCES `vivienda` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `problema_salud_hace_30dias`
--
ALTER TABLE `problema_salud_hace_30dias`
  ADD CONSTRAINT `problema_salud_hace_30dias_ibfk_1` FOREIGN KEY (`id_como_trato_problema`) REFERENCES `como_trato_poblema` (`id`),
  ADD CONSTRAINT `problema_salud_hace_30dias_ibfk_2` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `reg_user`
--
ALTER TABLE `reg_user`
  ADD CONSTRAINT `reg_user_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estado` (`id_estado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reg_user_ibfk_2` FOREIGN KEY (`id_dane`) REFERENCES `dane` (`id`),
  ADD CONSTRAINT `reg_user_ibfk_3` FOREIGN KEY (`id_empresa`) REFERENCES `empresa_convenios` (`id`),
  ADD CONSTRAINT `reg_user_ibfk_4` FOREIGN KEY (`barrio`) REFERENCES `barrio` (`id_barrio`),
  ADD CONSTRAINT `reg_user_ibfk_5` FOREIGN KEY (`municipio`) REFERENCES `municipio` (`id_municipio`),
  ADD CONSTRAINT `reg_user_ibfk_6` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Filtros para la tabla `respuestas_actividades`
--
ALTER TABLE `respuestas_actividades`
  ADD CONSTRAINT `respuestas_actividades_ibfk_1` FOREIGN KEY (`id_actividad`) REFERENCES `actividades` (`id`),
  ADD CONSTRAINT `respuestas_actividades_ibfk_2` FOREIGN KEY (`id_osacionado`) REFERENCES `ocasionado` (`id`),
  ADD CONSTRAINT `respuestas_actividades_ibfk_3` FOREIGN KEY (`id_respuestas`) REFERENCES `tipo_respuesta` (`Id_tipo_respuesta`),
  ADD CONSTRAINT `respuestas_actividades_ibfk_4` FOREIGN KEY (`id_personas`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `territorio_etnico` FOREIGN KEY (`id_territorio_etnico`) REFERENCES `territorio_etnico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ubicacion_ibfk_1` FOREIGN KEY (`id_clase`) REFERENCES `clase` (`id`),
  ADD CONSTRAINT `ubicacion_ibfk_2` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`),
  ADD CONSTRAINT `ubicacion_ibfk_3` FOREIGN KEY (`id_area_protegida`) REFERENCES `area_protegida` (`id`),
  ADD CONSTRAINT `ubicacion_ibfk_4` FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id`),
  ADD CONSTRAINT `ubicacion_ibfk_5` FOREIGN KEY (`id_uso_unidad`) REFERENCES `uso` (`id_uso`);

--
-- Filtros para la tabla `uso`
--
ALTER TABLE `uso`
  ADD CONSTRAINT `uso_ibfk_1` FOREIGN KEY (`id_uso_unidad`) REFERENCES `uso_unidad` (`id`);

--
-- Filtros para la tabla `vivienda`
--
ALTER TABLE `vivienda`
  ADD CONSTRAINT `vivienda_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vivienda_ibfk_2` FOREIGN KEY (`id_material_paredes`) REFERENCES `material_paredes` (`id_paredes`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vivienda_ibfk_3` FOREIGN KEY (`id_material_piso`) REFERENCES `marial_piso` (`id_piso`) ON DELETE CASCADE,
  ADD CONSTRAINT `vivienda_ibfk_4` FOREIGN KEY (`id_tipo_vivienda`) REFERENCES `tipo_vivienda` (`id_tipo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vivienda_ibfk_5` FOREIGN KEY (`id_condicion`) REFERENCES `condicion_ocupacion` (`id_condicion_ocupacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vivienda_ibfk_6` FOREIGN KEY (`id_preparan_alimentos`) REFERENCES `preparar_alimentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vivienda_ibfk_7` FOREIGN KEY (`id_obtener_agua`) REFERENCES `agua_alimentos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
