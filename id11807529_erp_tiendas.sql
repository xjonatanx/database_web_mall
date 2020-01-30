-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-01-2020 a las 00:17:39
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id11807529_erp_tiendas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartelera`
--

CREATE TABLE `cartelera` (
  `id` int(11) NOT NULL,
  `nombre_pelicula` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `img_pelicula` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `img_pelicula_deleted` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `enlace` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `fk_id_cine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cartelera`
--

INSERT INTO `cartelera` (`id`, `nombre_pelicula`, `img_pelicula`, `img_pelicula_deleted`, `enlace`, `fk_id_cine`) VALUES
(3, 'Pacto de fuga', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580327800AFICHE_Pactofuga.png', 'img/1580327800AFICHE_Pactofuga.png', 'http://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=163&nombre=Pacto%20de%20Fuga', 2),
(4, 'BAD BOYS', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580327853AFICHE_BAD_BOYS.png', 'img/1580327853AFICHE_BAD_BOYS.png', 'http://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=165&nombre=BAD%20BOYS%20PARA%20SIEMPRE', 2),
(5, 'DOLITLLE', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580327913AFICHE_dolitle.png', 'img/1580327913AFICHE_dolitle.png', 'http://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=158&nombre=DOLITLLE', 2),
(6, 'ESPÍAS A ESCONDIDAS', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580327985AFICHE_espias.png', 'img/1580327985AFICHE_espias.png', 'http://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=156&nombre=Esp%C3%ADas%20a%20Escondidas', 2),
(7, 'STAR WARS: EL ASCENSO DE SKYWALKER', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580328031AFICHE_starwars.png', 'img/1580328031AFICHE_starwars.png', 'http://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=147&nombre=STAR%20WARS:%20EL%20ASCENSO%20DE%20SKYWALKER', 2),
(8, 'FROZEN II', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580328110AFICHE_FROZENII.png', 'img/1580328110AFICHE_FROZENII.png', 'http://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=145&nombre=Frozen%20II', 2),
(9, 'JUMANJI, EL SIGUIENTE NIVEL', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580328196AFICHE_yumanyi.png', 'img/1580328196AFICHE_yumanyi.png', 'http://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=152&nombre=Jumanji,%20el%20siguiente%20nivel', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `fk_id_mall`) VALUES
(7, 'Patio de Comidas', 1),
(8, 'Optica', 1),
(9, 'Supermercado', 1),
(10, 'Farmacias', 1),
(11, 'Servicios', 1),
(12, 'Oficinas', 1),
(13, 'Multitienda', 1),
(14, 'Vestuario Femenino', 1),
(15, 'Vestuario Infantil', 1),
(16, 'Zapateria', 1),
(17, 'Salas de Cine', 1),
(18, 'Estacionamiento', 1),
(19, 'Accsesorios', 1),
(20, 'Cafetería, Heladería, Pastelería', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cine`
--

CREATE TABLE `cine` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cine`
--

INSERT INTO `cine` (`id`, `nombre`, `fk_id_mall`) VALUES
(2, 'Cine Paseo Del Valle', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `comentario` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `fk_id_noticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_nuestro`
--

CREATE TABLE `contenido_nuestro` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contenido_nuestro`
--

INSERT INTO `contenido_nuestro` (`id`, `descripcion`, `fk_id_mall`) VALUES
(2, '<p>Centro Comercial ubicado en el centro de la ciudad de Quillota, cuenta con Estacionamientos Subterraneos, Supermercado, Locales Comerciales, Multitienda, Patio de Comidas, Oficinas y 4 Salas de Cine.</p>', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `img_slider` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `img_slider_deleted` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `principal` tinyint(1) DEFAULT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `img_slider`, `img_slider_deleted`, `descripcion`, `principal`, `fk_id_mall`) VALUES
(7, 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580334529350x194_SanValentin.png', 'img/1580334529350x194_SanValentin.png', '<p>Disfruta el dia de San Valentin en Paseo del Valle... ven por tus sorpresas.</p>', 1, 1),
(8, 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580334732350x194_Bingo.png', 'img/1580334732350x194_Bingo.png', '<p>Bingo Familiar en Febrero (2-9-16-23)</p>', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `id` int(11) NOT NULL,
  `eventos_img` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `eventos_img_deleted` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `noticias_img` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `noticias_img_deleted` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cartelera_img` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cartelera_img_deleted` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`id`, `eventos_img`, `eventos_img_deleted`, `noticias_img`, `noticias_img_deleted`, `cartelera_img`, `cartelera_img_deleted`, `fk_id_mall`) VALUES
(8, 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580334558350x194_SanValentin.png', 'img/1580334558350x194_SanValentin.png', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/158032207015771947852c463fe.jpeg', 'img/158032207015771947852c463fe.jpeg', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/15803249741577109742a7de5ae.jpeg', 'img/15803249741577109742a7de5ae.jpeg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mall`
--

CREATE TABLE `mall` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apertura` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cierre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `logo` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `logo_deleted` varchar(300) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mall`
--

INSERT INTO `mall` (`id`, `nombre`, `telefono`, `apertura`, `cierre`, `direccion`, `logo`, `logo_deleted`) VALUES
(1, 'MALL PASEO DEL VALLE', '(33) 247 0000', '9:00', '21:00', 'Ohiggins 176, Quillota, Valparaíso', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1577130804logo.png', 'img/1577130804logo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `subtitulo` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(5000) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `img_noticia` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `img_noticia_deleted` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `subtitulo`, `descripcion`, `fecha_publicacion`, `img_noticia`, `img_noticia_deleted`, `fk_id_mall`) VALUES
(3, 'Pinta Caritas en Paseo del Valle', 'Evento especial para los niños', '<p>Muy felices quedan los niños que participán en el Pinta Cartitas que organiza Paseo del Valle.</p>', '2020-01-29', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580335470pintacaritas.png', 'img/1580335470pintacaritas.png', 1),
(4, 'Bingo Familiares', 'Actividad que reune a la familia', '<p>Todos los domingos del mes de Noviembre se realizaron bingos familiares, familias completas participan de esta actividad... niños, abuelos, parejas... en febrero comenzamos nuevamente.</p>', '2020-01-29', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580335912bingo.png', 'img/1580335912bingo.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_nuestro`
--

CREATE TABLE `slider_nuestro` (
  `id` int(11) NOT NULL,
  `img_slider` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `img_slider_deleted` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slider_nuestro`
--

INSERT INTO `slider_nuestro` (`id`, `img_slider`, `img_slider_deleted`, `fk_id_mall`) VALUES
(5, 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580333675PDV_general.png', 'img/1580333675PDV_general.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_principal_inicio`
--

CREATE TABLE `slider_principal_inicio` (
  `id` int(11) NOT NULL,
  `img_inicio` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_deleted` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slider_principal_inicio`
--

INSERT INTO `slider_principal_inicio` (`id`, `img_inicio`, `img_deleted`, `fk_id_mall`) VALUES
(37, 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580332425JOHNSON.png', 'img/1580332425JOHNSON.png', 1),
(38, 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580332439Banner la ogazzaa.png', 'img/1580332439Banner la ogazzaa.png', 1),
(40, 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580333250verano.png', 'img/1580333250verano.png', 1),
(41, 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580333449WOM.png', 'img/1580333449WOM.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_secundario_inicio`
--

CREATE TABLE `slider_secundario_inicio` (
  `id` int(11) NOT NULL,
  `img_inicio` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `img_deleted` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slider_secundario_inicio`
--

INSERT INTO `slider_secundario_inicio` (`id`, `img_inicio`, `img_deleted`, `fk_id_mall`) VALUES
(9, 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580335098sanValentin.png', 'img/1580335098sanValentin.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `numero_local` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `sitio_web` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `img_logo` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `img_logo_deleted` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `img_slider` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `img_slider_deleted` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `fk_id_categoria` int(11) NOT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`id`, `nombre`, `numero_local`, `ubicacion`, `telefono`, `sitio_web`, `img_logo`, `img_logo_deleted`, `img_slider`, `img_slider_deleted`, `fk_id_categoria`, `fk_id_mall`) VALUES
(2, 'Troglodita', '3', 'Patio de Comidas', '222 0130440', 'www.tgdt.cl', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580327036troglodita-logo.jpg', 'img/1580327036troglodita-logo.jpg', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580327036SLIDERS-MECHADAS-500-C.png', 'img/1580327036SLIDERS-MECHADAS-500-C.png', 7, 1),
(3, 'WOM', 'B2', '2 nivel', '', 'www.wom.cl', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580329433logo_wom.jpeg', 'img/1580329433logo_wom.jpeg', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580329433wom_sider.png', 'img/1580329433wom_sider.png', 11, 1),
(4, 'Isapre Colmena', 'C4', '3 nivel', '', 'http://www.colmena.cl/', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580330016logo_colmena.png', 'img/1580330016logo_colmena.png', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580330016banner colmena.png', 'img/1580330016banner colmena.png', 11, 1),
(5, 'Bubble Gummers', 'A1', 'Nivel calle', '', 'https://www.bubblegummers.cl/', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580330598logo BG.jpg', 'img/1580330598logo BG.jpg', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580330112BAnner BG.png', 'img/1580330112BAnner BG.png', 15, 1),
(6, 'Doggis', '1-2', 'Patio de Comidas', '', 'www.doggis.cl', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580330974logo-doggis.jpg', 'img/1580330974logo-doggis.jpg', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580330974Banner doggis.png', 'img/1580330974Banner doggis.png', 7, 1),
(7, 'Eco Farmacia', 'A2', 'Nivel Calle', '', 'https://www.ecofarmacias.cl/', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580331426logo_ecofarmacia.jpeg', 'img/1580331426logo_ecofarmacia.jpeg', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580331426Banner_ecofarmacia.png', 'img/1580331426Banner_ecofarmacia.png', 10, 1),
(8, 'Monarch', '5', 'Segundo Nivel', '', '', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580331799logo_monarch.png', 'img/1580331799logo_monarch.png', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580331799Captura de pantalla 2020-01-29 a la(s) 18.02.04.png', 'img/1580331799Captura de pantalla 2020-01-29 a la(s) 18.02.04.png', 19, 1),
(9, 'Johnson', '4', 'Nivel 4', '', 'http://www.johnson.cl/', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580331997logo johnson.png', 'img/1580331997logo johnson.png', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580331997banner_johnson.png', 'img/1580331997banner_johnson.png', 13, 1),
(10, 'Unimarc', '3', 'Nivel Calle', '', 'https://www.unimarc.cl/', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580332223logo_unimarc.jpg', 'img/1580332223logo_unimarc.jpg', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/1580332223banner_unimarc.png', 'img/1580332223banner_unimarc.png', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `rut` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `last_date` datetime DEFAULT NULL,
  `foto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `foto_deleted` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `rut`, `email`, `telefono`, `usuario`, `passwd`, `last_date`, `foto`, `foto_deleted`) VALUES
(1, 'Yonatan', 'Pizarro', '18.420.862-8', 'yonatanpizarro21@hotmail.com', '+56940186603', 'xjonatanx', 'jonatan2', '2020-01-29 23:37:54', 'http://proyectos-yonatan.000webhostapp.com/backend-paseodelvalle/img/157870442368586807_2449786621919103_2026587328004227072_o.jpg', 'img/157870442368586807_2449786621919103_2026587328004227072_o.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cartelera`
--
ALTER TABLE `cartelera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cine_cartelera` (`fk_id_cine`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categoria_mall` (`fk_id_mall`);

--
-- Indices de la tabla `cine`
--
ALTER TABLE `cine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mall_cine` (`fk_id_mall`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comentario_noticia` (`fk_id_noticia`);

--
-- Indices de la tabla `contenido_nuestro`
--
ALTER TABLE `contenido_nuestro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contenido_mall` (`fk_id_mall`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eventos_mall` (`fk_id_mall`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inicio_tienda` (`fk_id_mall`);

--
-- Indices de la tabla `mall`
--
ALTER TABLE `mall`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_noticia_mall` (`fk_id_mall`);

--
-- Indices de la tabla `slider_nuestro`
--
ALTER TABLE `slider_nuestro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nuestro_mall` (`fk_id_mall`);

--
-- Indices de la tabla `slider_principal_inicio`
--
ALTER TABLE `slider_principal_inicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slider_principal_tienda` (`fk_id_mall`);

--
-- Indices de la tabla `slider_secundario_inicio`
--
ALTER TABLE `slider_secundario_inicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slider_secundario_tienda` (`fk_id_mall`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categoria_tienda` (`fk_id_categoria`),
  ADD KEY `fk_mall_tienda` (`fk_id_mall`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cartelera`
--
ALTER TABLE `cartelera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `cine`
--
ALTER TABLE `cine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenido_nuestro`
--
ALTER TABLE `contenido_nuestro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mall`
--
ALTER TABLE `mall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `slider_nuestro`
--
ALTER TABLE `slider_nuestro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `slider_principal_inicio`
--
ALTER TABLE `slider_principal_inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `slider_secundario_inicio`
--
ALTER TABLE `slider_secundario_inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cartelera`
--
ALTER TABLE `cartelera`
  ADD CONSTRAINT `fk_cine_cartelera` FOREIGN KEY (`fk_id_cine`) REFERENCES `cine` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `fk_categoria_mall` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cine`
--
ALTER TABLE `cine`
  ADD CONSTRAINT `fk_mall_cine` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentario_noticia` FOREIGN KEY (`fk_id_noticia`) REFERENCES `noticias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contenido_nuestro`
--
ALTER TABLE `contenido_nuestro`
  ADD CONSTRAINT `fk_contenido_mall` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_eventos_mall` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD CONSTRAINT `fk_inicio_tienda` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `fk_noticia_mall` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `slider_nuestro`
--
ALTER TABLE `slider_nuestro`
  ADD CONSTRAINT `fk_nuestro_mall` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `slider_principal_inicio`
--
ALTER TABLE `slider_principal_inicio`
  ADD CONSTRAINT `fk_slider_principal_tienda` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `slider_secundario_inicio`
--
ALTER TABLE `slider_secundario_inicio`
  ADD CONSTRAINT `fk_slider_secundario_tienda` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `fk_categoria_tienda` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mall_tienda` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
