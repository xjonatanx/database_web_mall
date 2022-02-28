-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-02-2022 a las 15:34:37
-- Versión del servidor: 5.7.37
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paseodel_paseodelvalle`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arriendos`
--

CREATE TABLE `arriendos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(900) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_arriendo` varchar(900) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_arriendo_deleted` varchar(900) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `fk_id_mall` int(11) NOT NULL,
  `estado` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `arriendos`
--

INSERT INTO `arriendos` (`id`, `descripcion`, `img_arriendo`, `img_arriendo_deleted`, `fecha`, `fk_id_mall`, `estado`) VALUES
(1, '<h6>N° Local: Módulo 1</h6><h6>Superficie: 6 mts</h6><h6>Nivel: Subnivel</h6><h6>Excelente Ubicación</h6><h6>-------------------------------------------</h6><h6>Contacto: +569 7499 0720</h6><h6>Correo: tsmith@paseodelvalle.cl</h6>', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1645454176Modulo_1.png', 'img/1645454176Modulo_1.png', '2022-02-21', 1, 'DISPONIBLE'),
(5, '<h6>N° Local: Módulo 2</h6><h6>Superficie: 6 mts</h6><h6>Nivel: Subnivel</h6><h6>Excelente Ubicación</h6><h6>-------------------------------------------</h6><h6>Contacto: +569 7499 0720</h6><h6>Correo: tsmith@paseodelvalle.cl</h6>', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1645476448Modulo_2.png', 'img/1645476448Modulo_2.png', '2022-02-21', 1, 'DISPONIBLE');

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
(3, 'Pacto de fuga', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580327800AFICHE_Pactofuga.png', 'img/1580327800AFICHE_Pactofuga.png', 'https://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=163&nombre=Pacto%20de%20Fuga', 2),
(4, 'BAD BOYS', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580327853AFICHE_BAD_BOYS.png', 'img/1580327853AFICHE_BAD_BOYS.png', 'https://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=165&nombre=BAD%20BOYS%20PARA%20SIEMPRE', 2),
(5, 'DOLITLLE', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580327913AFICHE_dolitle.png', 'img/1580327913AFICHE_dolitle.png', 'https://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=158&nombre=DOLITLLE', 2),
(6, 'ESPÍAS A ESCONDIDAS', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580327985AFICHE_espias.png', 'img/1580327985AFICHE_espias.png', 'https://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=156&nombre=Esp%C3%ADas%20a%20Escondidas', 2),
(7, 'STAR WARS: EL ASCENSO DE SKYWALKER', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580328031AFICHE_starwars.png', 'img/1580328031AFICHE_starwars.png', 'https://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=147&nombre=STAR%20WARS:%20EL%20ASCENSO%20DE%20SKYWALKER', 2),
(8, 'FROZEN II', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580328110AFICHE_FROZENII.png', 'img/1580328110AFICHE_FROZENII.png', 'https://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=145&nombre=Frozen%20II', 2),
(9, 'JUMANJI, EL SIGUIENTE NIVEL', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580328196AFICHE_yumanyi.png', 'img/1580328196AFICHE_yumanyi.png', 'https://www.cinepaseodelvalle.cl/cartelera_detalle.php?id=152&nombre=Jumanji,%20el%20siguiente%20nivel', 2);

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
(12, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1627418779EVENTO CINE.png', 'img/1627418779EVENTO CINE.png', '<p>Ven a Paseo del Valle y participa en el sorteo de espectaculares premios.</p><p>Por compras sobre $5.000.- recibe tu cupón, llénalo con tus datos y deposítalo en el buzón que encontrarás en el centro comercial. Podrás ganar una TABLET o AUDÍFONOS GAMER o FICHAS SUPER LAND. </p><p>Promoción válida hasta el 07 de AGOSTO del 2021. Sorteo 07 de AGOSTO solo cupones válidos en locales de Paseo del Valle, no participa Unimarc, Johnson o Paris.&nbsp;</p><p>Foto premios sólo referencial.</p>', 0, 1),
(13, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1630944748EVENTO.png', 'img/1630944748EVENTO.png', '<p><strong>9 DE SEPTIEMBRE ABRIMOS!!!</strong></p><p>FINALMENTE LLEGÓ EL MOMENTO!!!</p><p>Desde el 9 de Septiembre volvamos a disfrutar la magia del cine de forma cómoda, limpia y segura en Cine Paseo del Valle, Quillota.</p><p>Al comprar tu ticket deberás tener:</p><p>• Tu pase de movilidad y tu cédula de identidad</p><p>• Mascarilla</p><p>• Respetar las normas de seguridad del Cine ante el Covid-19</p>', 0, 1),
(14, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1630937884septiembre.png', 'img/1630937884septiembre.png', '<p>GRAN SORTEO FIESTAS PATRIAS!!!</p><p>Ven a Paseo del Valle y participa en el sorteo de espectaculares premios.</p><p>Por compras sobre $5.000.- recibe tu cupón, llénalo con tus datos y deposítalo en el buzón que encontrarás en el centro comercial. Podrás ganar una PARRILLA ELÉCTRICA o PACK DE VINOS o SET PARRILLERO.</p><p>Promoción válida hasta el 15 de septiembre del 2021. Sorteo 15 de SEPTIEMBRE solo cupones válidos en locales de Paseo del Valle, no participa Unimarc y Paris.&nbsp;</p><p>Foto premios sólo referencial</p>', 0, 1),
(17, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1640008462EVENTO Violin.png', 'img/1640008462EVENTO Violin.png', '<p>MUSICA EN VIVO en Mall Paseo del Valle, Quillota.</p><p>Hoy lunes 20 al 24 de diciembre de 12:00 a 13:00 hrs</p><p>Te invitamos a disfrutar concierto de Navidad con RAÚL FIGUEROA Violinista Profesional.</p><p>ENTRADA LIBERADA</p><p><a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2Fwww.paseodelvalle.cl%2F%3Ffbclid%3DIwAR3duadrF1NPSBaercHhbE06YedzYCp5CPwH0dUEi0kbTQkTfuVs491mZKw&amp;h=AT1J46kw9jScRHZEI9Qc6im6AAVnORxs-qO0pn8vqeKoTx-gQRnZosQ6aTESNAJd6Sc9JTpfAIDAKhckWEP47y1jHZ2AbPIHEB70SOp9yNOHs7H8tgxujOouCdhcjafE1JeU8JE&amp;__tn__=-UK-R&amp;c[0]=AT0Q_dmIilk93Jv0fb28Z6KJfxIyHw_Qe3Q-Gp21eQFdZphv1m954IoH92LmQAkFl7mteBOuSIQFjfw0E4VcfNGRU4fttoarJw1l-e8ulgCadEc_fygowfoPIPkVMBcEtgwfUBJEla2hysBMosFbYaGa7pAV6VX5W7w5mSMV8jSHyF2CVteX2VOvQbGRp9V__jSuHoXM\" rel=\"noopener noreferrer\" target=\"_blank\">www.paseodelvalle.cl</a></p>', 0, 1),
(18, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1645024606GANADORES_SAN VALENTIN.png', 'img/1645024606GANADORES_SAN VALENTIN.png', '<p>Felices los ganadores este \"San Valentín\" 14 de febrero.</p><p>Un rico Desayuno <span style=\"color: rgb(38, 38, 38);\">del \"Valle café Bistro\" a su hogar</span> y un espectacular \"Aperitivo\", <span style=\"color: rgb(38, 38, 38);\">gracias por preferirnos. Ambos de nuestra comuna de Quillota. </span></p><p><span style=\"color: rgb(38, 38, 38);\">El próximo puedes ser tú!!!!</span></p>', 1, 1);

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
  `arriendo_img` varchar(800) COLLATE utf8_spanish_ci DEFAULT NULL,
  `arriendo_img_deleted` varchar(800) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cartelera_img` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cartelera_img_deleted` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_id_mall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`id`, `eventos_img`, `eventos_img_deleted`, `noticias_img`, `noticias_img_deleted`, `arriendo_img`, `arriendo_img_deleted`, `cartelera_img`, `cartelera_img_deleted`, `fk_id_mall`) VALUES
(8, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1645128743GANADORES_SAN VALENTIN.png', 'img/1645128743GANADORES_SAN VALENTIN.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1637262806compra online copia.png', 'img/1637262806compra online copia.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1645461169ARRIENDO 2.png', 'img/1645461169ARRIENDO 2.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1645125598350x194.png', 'img/1645125598350x194.png', 1);

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
(1, 'MALL PASEO DEL VALLE', '(33) 247 0000', '9:00', '20:30', 'Ohiggins 176, Quillota, Valparaíso', 'https://paseodelvalle.cl/backend-paseodelvalle/img/16268941031577130804logo (1).png', 'img/16268941031577130804logo (1).png');

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
(3, 'Pinta Caritas en Paseo del Valle', 'Evento especial para los niños', '<p>Muy felices quedan los niños que participán en el Pinta Cartitas que organiza Paseo del Valle.</p>', '2020-01-29', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580335470pintacaritas.png', 'img/1580335470pintacaritas.png', 1),
(4, 'Bingo Familiares', 'Actividad que reune a la familia', '<p>Todos los domingos del mes de Noviembre se realizaron bingos familiares, familias completas participan de esta actividad... niños, abuelos, parejas... en febrero comenzamos nuevamente.</p>', '2020-01-29', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580335912bingo.png', 'img/1580335912bingo.png', 1),
(5, 'PRONTO!!!', 'Nos estamos preparando para recibirte', '<p> </p>', '2021-07-27', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1627418969PREPARANDO_CINE.png', 'img/1627418969PREPARANDO_CINE.png', 1),
(6, 'FELIZ DIA DEL NIÑO 8 DE AGOSTO', 'Gana espectaculares premios', '<p>Ven a Paseo del Valle y participa en el sorteo de espectaculares premios.</p><p>Por compras sobre $5.000.- recibe tu cupón, llénalo con tus datos y deposítalo en el buzón que encontrarás en el centro comercial. Podrás ganar una TABLET o AUDÍFONOS GAMER o FICHAS SUPER LAND. </p><p>Promoción válida hasta el 07 de AGOSTO del 2021. Sorteo 07 de AGOSTO solo cupones válidos en locales de Paseo del Valle, no participa Unimarc, Johnson o Paris.&nbsp;</p><p>Foto premios sólo referencial.</p>', '2021-07-27', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1627419185DIADELNIÑOO.png', 'img/1627419185DIADELNIÑOO.png', 1),
(7, 'COMPRA ONLINE TU ENTRADA AL CINE PASEO DEL VALLE', 'Olvídate de las filas y ahorra tiempo!!!', '<p>AHORA...COMPRA TU TICKET ONLINE!!!</p><p>en Cine Paseo del Valle, Quillota.</p><p>• AHORRA TIEMPO</p><p>• OLVÍDATE DE LAS FILAS</p><p>Pasos para comprar:</p><p>1.- Ingresar a página web: www.cinepaseodelvalle.cl y lickear sobre el ícono de compra de entradas online. (puede ser en el header o dentro de cada película)</p><p>2.- Seleccionar película y clickear sobre “Comprar”</p><p>3.- Una vez clickeado el botón comprar, se debe registrar en el sistema, completando los campos básicos que se exigen, Rut, Nombre, Apellido, Mail, Clave.</p><p>4.- Seleccionar butacas y finalizar compra.</p><p>Más información de horarios y próximos estrenos en www.cinepaseodelvalle.cl</p>', '2022-01-06', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1641488059COMPRA_ONLINE.png', 'img/1641488059COMPRA_ONLINE.png', 1);

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
(5, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580333675PDV_general.png', 'img/1580333675PDV_general.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_principal_inicio`
--

CREATE TABLE `slider_principal_inicio` (
  `id` int(11) NOT NULL,
  `img_inicio` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_deleted` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_id_mall` int(11) NOT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slider_principal_inicio`
--

INSERT INTO `slider_principal_inicio` (`id`, `img_inicio`, `img_deleted`, `fk_id_mall`, `orden`) VALUES
(62, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1627417665Banner la ogazzaa.png', 'img/1627417665Banner la ogazzaa.png', 1, 5),
(67, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1631301818+ emocion.png', 'img/1631301818+ emocion.png', 1, 3),
(79, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1641487803COMPRA ONLINE..png', 'img/1641487803COMPRA ONLINE..png', 1, 2),
(80, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1642021305WEB_VERANO 2022.png', 'img/1642021305WEB_VERANO 2022.png', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_principal_inicio_responsive`
--

CREATE TABLE `slider_principal_inicio_responsive` (
  `id` int(11) NOT NULL,
  `img_inicio` varchar(200) NOT NULL,
  `img_deleted` varchar(300) NOT NULL,
  `fk_id_mall` int(11) NOT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slider_principal_inicio_responsive`
--

INSERT INTO `slider_principal_inicio_responsive` (`id`, `img_inicio`, `img_deleted`, `fk_id_mall`, `orden`) VALUES
(11, 'https://paseodelvalle.cl/backend-paseodelvalle/img/1627399394Banner la ogazzaa.png', 'img/1627399394Banner la ogazzaa.png', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_secundario_inicio`
--

CREATE TABLE `slider_secundario_inicio` (
  `id` int(11) NOT NULL,
  `img_inicio` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `img_deleted` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `fk_id_mall` int(11) NOT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slider_secundario_inicio`
--

INSERT INTO `slider_secundario_inicio` (`id`, `img_inicio`, `img_deleted`, `fk_id_mall`, `orden`) VALUES
(15, 'https://paseodelvalle.cl/backend-paseodelvalle/img/16273994955consejos.png', 'img/16273994955consejos.png', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_secundario_inicio_responsive`
--

CREATE TABLE `slider_secundario_inicio_responsive` (
  `id` int(11) NOT NULL,
  `img_inicio` varchar(200) NOT NULL,
  `img_deleted` varchar(300) NOT NULL,
  `fk_id_mall` int(11) NOT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `fk_id_mall` int(11) NOT NULL,
  `descripcion` varchar(600) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`id`, `nombre`, `numero_local`, `ubicacion`, `telefono`, `sitio_web`, `img_logo`, `img_logo_deleted`, `img_slider`, `img_slider_deleted`, `fk_id_categoria`, `fk_id_mall`, `descripcion`) VALUES
(3, 'WOM', 'B2', '2 nivel', ' ', 'www.wom.cl', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580329433logo_wom.jpeg', 'img/1580329433logo_wom.jpeg', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580329433wom_sider.png', 'img/1580329433wom_sider.png', 11, 1, 'Telefonía'),
(4, 'Isapre Colmena', 'C4', '3 nivel', '', 'http://www.colmena.cl/', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580330016logo_colmena.png', 'img/1580330016logo_colmena.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580330016banner colmena.png', 'img/1580330016banner colmena.png', 11, 1, NULL),
(6, 'Doggis', '1-2', 'Patio de Comidas', '', 'www.doggis.cl', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1584540028logo-doggis.jpg', 'img/1584540028logo-doggis.jpg', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580330974Banner doggis.png', 'img/1580330974Banner doggis.png', 7, 1, NULL),
(7, 'Eco Farmacia', 'A2', 'Nivel Calle', '', 'https://www.ecofarmacias.cl/', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580331426logo_ecofarmacia.jpeg', 'img/1580331426logo_ecofarmacia.jpeg', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580331426Banner_ecofarmacia.png', 'img/1580331426Banner_ecofarmacia.png', 10, 1, NULL),
(8, 'Monarch', '5', 'Segundo Nivel', ' ', 'www.monarch.cl', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580331799logo_monarch.png', 'img/1580331799logo_monarch.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580331799Captura de pantalla 2020-01-29 a la(s) 18.02.04.png', 'img/1580331799Captura de pantalla 2020-01-29 a la(s) 18.02.04.png', 19, 1, ' '),
(10, 'Unimarc', '3', 'Nivel Calle', '', 'https://www.unimarc.cl/', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580332223logo_unimarc.jpg', 'img/1580332223logo_unimarc.jpg', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1580332223banner_unimarc.png', 'img/1580332223banner_unimarc.png', 9, 1, NULL),
(11, 'Paris', '4', 'Nivel 2', ' ', 'http://www.paris.cl', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1628861449PARIS.png', 'img/1628861449PARIS.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1628861773PARIS.png', 'img/1628861773PARIS.png', 13, 1, ' '),
(13, 'Bubble Gummers', '', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588259414BubbleGammers.png', 'img/1588259414BubbleGammers.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588259414BubbleGummers.png', 'img/1588259414BubbleGummers.png', 16, 1, NULL),
(15, 'Pizza Hut', '', 'Patio de Comida', '', 'www.pizzahut.cl', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588259979CapturadePantalla2020-01-29ala(s)19.05.22.png', 'img/1588259979CapturadePantalla2020-01-29ala(s)19.05.22.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588259979pizzaHut.png', 'img/1588259979pizzaHut.png', 7, 1, NULL),
(16, 'Tarragona', '', 'Patio de Comida', '', 'www.tarragona.cl', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588260686tarragona.png', 'img/1588260686tarragona.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588260686tarragonabanner.png', 'img/1588260686tarragonabanner.png', 7, 1, NULL),
(17, 'La Ogazza', '9 y 10', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588261737CapturadePantalla2020-01-29ala(s)19.08.31.png', 'img/1588261737CapturadePantalla2020-01-29ala(s)19.08.31.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588261737Banner la ogazzaa.png', 'img/1588261737Banner la ogazzaa.png', 20, 1, NULL),
(19, 'La Ogazza', '9 y 10', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588261738laOgazza.png', 'img/1588261738laOgazza.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588261738Banner la ogazzaa.png', 'img/1588261738Banner la ogazzaa.png', 20, 1, NULL),
(21, 'Amphora', '', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588262976CapturadePantalla2020-01-29ala(s)19.06.55.png', 'img/1588262976CapturadePantalla2020-01-29ala(s)19.06.55.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588262976amphora.png', 'img/1588262976amphora.png', 14, 1, NULL),
(22, 'Jis Parking', '', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588263195CapturadePantalla2020-01-29ala(s)19.08.47.png', 'img/1588263195CapturadePantalla2020-01-29ala(s)19.08.47.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588263195Jiis.png', 'img/1588263195Jiis.png', 18, 1, NULL),
(23, 'RusTik Cafetería', ' ', 'Sub Nivel', ' ', ' ', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1628860871RUSTIK_CAFE.png', 'img/1628860871RUSTIK_CAFE.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588264521cafe.png', 'img/1588264521cafe.png', 20, 1, 'Ven a disfrutar, un rico café, pasteles y mucho más.'),
(24, 'Rapside', '', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588264859CapturadePantalla2020-01-29ala(s)19.11.08.png', 'img/1588264859CapturadePantalla2020-01-29ala(s)19.11.08.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588264859rapside.png', 'img/1588264859rapside.png', 16, 1, NULL),
(25, 'Astonland', '', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588265434CapturadePantalla2020-01-29ala(s)19.07.20.png', 'img/1588265434CapturadePantalla2020-01-29ala(s)19.07.20.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588265434astoland.png', 'img/1588265434astoland.png', 16, 1, NULL),
(26, 'Almazara', '', 'Nivel 2', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588265813CapturadePantalla2020-01-29ala(s)19.08.25.png', 'img/1588265813CapturadePantalla2020-01-29ala(s)19.08.25.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/158826581312936663_484578711729258_2131450293908053656_n.jpg', 'img/158826581312936663_484578711729258_2131450293908053656_n.jpg', 20, 1, NULL),
(27, 'Copy Center', '01', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588266239CapturadePantalla2020-01-29ala(s)19.09.08.png', 'img/1588266239CapturadePantalla2020-01-29ala(s)19.09.08.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588266239copycenter.png', 'img/1588266239copycenter.png', 11, 1, NULL),
(28, 'BelloSol Hindu', '', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588267754CapturadePantalla2020-01-29ala(s)19.12.50.png', 'img/1588267754CapturadePantalla2020-01-29ala(s)19.12.50.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588267754BELLOSOL.png', 'img/1588267754BELLOSOL.png', 19, 1, NULL),
(29, 'Global Store', '', 'Nivel 1', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588268268CapturadePantalla2020-01-29ala(s)19.08.55.png', 'img/1588268268CapturadePantalla2020-01-29ala(s)19.08.55.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588268268globalStore.png', 'img/1588268268globalStore.png', 19, 1, NULL),
(30, 'Optica S&G', '', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588268453CapturadePantalla2020-01-29ala(s)19.09.02.png', 'img/1588268453CapturadePantalla2020-01-29ala(s)19.09.02.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588268453OPTICA.png', 'img/1588268453OPTICA.png', 8, 1, NULL),
(31, 'Brujas', '', '', '', '', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588271185CapturadePantalla2020-01-29ala(s)19.12.29.png', 'img/1588271185CapturadePantalla2020-01-29ala(s)19.12.29.png', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1588271185blanco.png', 'img/1588271185blanco.png', 14, 1, NULL);

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
(2, 'Rafael', 'Pérez de Arce', 'NO APLICA', 'NO APLICA', 'NO APLICA', 'marketing@paseodelvalle.cl', 'Rafael2020', '2020-04-27 10:07:40', 'https://paseodelvalle.cl/backend-paseodelvalle/img/1626897925IMG_2152.JPG', 'img/1626897925IMG_2152.JPG'),
(3, 'Yonatan', 'Pizarro', 'NO APLICA', 'NO APLICA', 'NO APLICA', 'yonatanpizarro21@hotmail.com', 'jonatan2', '2020-04-27 10:07:40', 'https://paseodelvalle.cl/backend-paseodelvalle/img/157870442368586807_2449786621919103_2026587328004227072_o.jpg', 'img/157870442368586807_2449786621919103_2026587328004227072_o.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arriendos`
--
ALTER TABLE `arriendos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_mall_arriendo` (`fk_id_mall`);

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
-- Indices de la tabla `slider_principal_inicio_responsive`
--
ALTER TABLE `slider_principal_inicio_responsive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_mall_slider_inicio_resp` (`fk_id_mall`);

--
-- Indices de la tabla `slider_secundario_inicio`
--
ALTER TABLE `slider_secundario_inicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slider_secundario_tienda` (`fk_id_mall`);

--
-- Indices de la tabla `slider_secundario_inicio_responsive`
--
ALTER TABLE `slider_secundario_inicio_responsive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_mall_slider_secundario_resp` (`fk_id_mall`);

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
-- AUTO_INCREMENT de la tabla `arriendos`
--
ALTER TABLE `arriendos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mall`
--
ALTER TABLE `mall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `slider_nuestro`
--
ALTER TABLE `slider_nuestro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `slider_principal_inicio`
--
ALTER TABLE `slider_principal_inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `slider_principal_inicio_responsive`
--
ALTER TABLE `slider_principal_inicio_responsive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `slider_secundario_inicio`
--
ALTER TABLE `slider_secundario_inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `slider_secundario_inicio_responsive`
--
ALTER TABLE `slider_secundario_inicio_responsive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arriendos`
--
ALTER TABLE `arriendos`
  ADD CONSTRAINT `fk_id_mall_arriendo` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Filtros para la tabla `slider_principal_inicio_responsive`
--
ALTER TABLE `slider_principal_inicio_responsive`
  ADD CONSTRAINT `fk_id_mall_slider_inicio_resp` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `slider_secundario_inicio`
--
ALTER TABLE `slider_secundario_inicio`
  ADD CONSTRAINT `fk_slider_secundario_tienda` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `slider_secundario_inicio_responsive`
--
ALTER TABLE `slider_secundario_inicio_responsive`
  ADD CONSTRAINT `fk_id_mall_slider_secundario_resp` FOREIGN KEY (`fk_id_mall`) REFERENCES `mall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
