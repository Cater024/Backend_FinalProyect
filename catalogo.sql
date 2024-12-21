-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-12-2024 a las 00:37:20
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
-- Base de datos: `catalogo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(12,0) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'Destellos Multicolor', 'Aretes', 'Aretes dorados diseñados para destacar, con un delicado adorno de piedras en una variedad de colores vibrantes.', 62000, 'https://img.freepik.com/fotos-premium/aretes-dorados-esteticos-surtido-alto-angulo_23-2149846586.jpg?w=360'),
(2, 'Candonga Chunky', 'Aretes', 'Candongas minis y gruesas, con un diseño dorado elegante y audaz, ideales para darle un toque sofisticado a tu look.', 46000, 'https://img.freepik.com/foto-gratis/arreglo-aretes-dorados-esteticos-flat-lay_23-2149846594.jpg?t=st=1734644504~exp=1734648104~hmac=af02f1b24b1a54d850a9b6c9dc53b302f4575a210048f6e8c41085b66b6266f1&w=360'),
(3, 'Brillo Imperial', 'Aretes', 'Candongas grandes y doradas con un diseño clásico, ideales para resaltar tu estilo con un toque de distinción.', 60000, 'https://img.freepik.com/foto-gratis/arreglo-estetico-aretes-dorados_23-2149846597.jpg?t=st=1734644376~exp=1734647976~hmac=9588856307d39f0ca3a6db08f02daca8228ad721aca486619912557fd46a7296&w=360'),
(4, 'Luz de ocaso', 'Aretes', 'Aretes dorados en forma de gota, con un diseño tejido que fusiona elegancia y originalidad, dando un toque artesanal.', 75000, 'https://images.pexels.com/photos/9726881/pexels-photo-9726881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(5, 'Amanecer de Perlas', 'Aretes', 'Aretes pequeños en forma semicircular, adornados con delicados picos que sostienen perlas brillantes en cada extremo, un diseño para cualquier ocasión.', 50000, 'https://img.freepik.com/foto-gratis/esteticos-pendientes-dorados-perlas_23-2149846554.jpg?t=st=1734678785~exp=1734682385~hmac=fe2ab04443298da64f4c0d7b724660109a04649d43429a1cde09182fadccebb6&w=360'),
(6, 'Destellos Plateado', 'Aretes', 'Elegantes aretes de candonga en acabado plateado, de tamaño pequeño y diseño sencillo. Perfectos para un look discreto y sofisticado', 40000, 'https://img.freepik.com/fotos-premium/surtido-aretes-plata-esteticos-vista-superior_23-2149846583.jpg?w=360'),
(7, 'Oasis Dorado', 'Aretes', 'Candonga chunky que capturan la esencia de un oasis, con un diseño transparente como el agua cristalina, complementado por un toque dorado que evoca lujo y frescura.', 50000, 'https://img.freepik.com/foto-gratis/surtido-aretes-dorados-esteticos-alto-angulo_23-2149846574.jpg?t=st=1734719611~exp=1734723211~hmac=53ef09708754523a707d6832215204cdfa02bf91394c11bebcd0dc2463056147&w=360'),
(8, 'Esencia Rectangular', 'Aretes', 'Aretes pequeños con diseño rectangular y puntas suavemente redondeadas, combinando simplicidad y estilo, dando un toque minimalista', 34000, 'https://img.freepik.com/foto-gratis/arreglo-aretes-dorados-esteticos-flat-lay_23-2149846592.jpg?t=st=1734719717~exp=1734723317~hmac=0eca570f0e8a54cd5b5aa9ea00554f4fcd195d5da518e8b53f9264c4340a363b&w=360'),
(9, 'Brillo Rombado', 'Aretes', 'Candongas doradas con un diseño romboidal, su estructura geométrica resalta combinando elegancia y modernidad.', 58000, 'https://img.freepik.com/foto-gratis/pendientes-dorados-esteticos-alto-angulo_23-2149846567.jpg?t=st=1734719947~exp=1734723547~hmac=e858b5afc6e184cc56b98abb3a4b6d64479f2975cbb3a75b485d81ddad0c1a8c&w=360'),
(10, 'Brillo Sutil', 'Aretes', 'candongas doradas pequeñas son el complemento perfecto para cualquier ocasión. Su diseño clásico y atemporal se adapta a todos los estilos.', 30000, 'https://img.freepik.com/fotos-premium/vista-superior-surtido-aretes-dorados-esteticos_23-2149846578.jpg?w=360'),
(11, 'Brillantes Encantados', 'Sets', 'Set x3 aretes:  Brillo imperial, Brillo sutil y Amanecer de Perlas', 110000, 'https://img.freepik.com/foto-gratis/arreglo-estetico-aretes-dorados_23-2149846591.jpg?t=st=1734721127~exp=1734724727~hmac=26b41fe329c696ef3e6bb2eca40afbc62dbbb7aeff66ddcb8d2f5ebfeb82a4e0&w=360'),
(12, 'Escalera Dorada', 'Anillos', 'Anillo dorado que evoca la forma de una escalera, ofreciendo un toque moderno, este anillo es perfecto para quienes buscan un accesorio llamativo.', 68000, 'https://img.freepik.com/fotos-premium/vista-lujoso-anillo-dorado-polvo-blanco_23-2150329697.jpg?w=360'),
(13, 'Círculos de Luz', 'Anillos', 'Anillo dorado con un diseño elegante de círculos entrelazados, simbolizando la armonía y la conexión', 60000, 'https://img.freepik.com/free-photo/view-luxurious-golden-ring-rock-concrete-tray_23-2150329711.jpg?ga=GA1.1.41423785.1734402955'),
(14, 'Rombo Curvado', 'Anillos', 'Anillo dorado con un diseño curvado y grabados en rombo, convirtiéndose en una pieza versátil que resalta la belleza de la geometría.', 75000, 'https://img.freepik.com/free-photo/view-luxurious-golden-ring-rock-concrete-tray_23-2150329705.jpg?ga=GA1.1.41423785.1734402955'),
(15, 'Diva Asimétrica', 'Anillos', 'Anillo dorado de diseño asimétrico, que combina elegancia y vanguardismo en una pieza única, este anillo destaca por su estilo audaz y contemporáneo.', 80000, 'https://img.freepik.com/free-photo/view-luxurious-golden-ring-with-marble_23-2150329645.jpg?ga=GA1.1.41423785.1734402955'),
(16, 'Esencia Esmeralda', 'Anillos', 'Anillo lujoso con esmeraldas rectangulares enmarcadas por pequeños diamantes y un delicado borde dorado. Captura la belleza de las piedras preciosas y resalta su brillo.', 250000, 'https://img.freepik.com/free-photo/view-luxurious-golden-ring_23-2150329702.jpg?ga=GA1.1.41423785.1734402955'),
(17, 'Leopardo Dorado', 'Anillos', 'Anillo dorado con un diseño único que imita la textura de las manchas de leopardo, creadas con micropuntos ofreciendo una ilusión de movimiento.', 60000, 'https://img.freepik.com/fotos-premium/vista-lujoso-anillo-dorado-polvo-blanco_23-2150329691.jpg?w=360'),
(18, 'Aurora Nocturna', 'Anillos', 'Anillo dorado con cinco piedras asimétricas en tonos que evocan los misteriosos colores de la noche. Cada piedra, con su brillo único, representa la intensidad y belleza del cielo nocturno.', 88000, 'https://img.freepik.com/foto-gratis/anillo-oro-caro-fondo-polvo-blanco_23-2150347075.jpg?t=st=1734724443~exp=1734728043~hmac=7a991a9420b2a66d2d1284a8e468d463131ed05b3079bf2df09081c255772bc7&w=740'),
(20, 'Círculos en Movimiento', 'Anillos', 'Anillo dorado con un diseño único que juega con la ilusión de formas circulares asimétricas. Su estructura fluida y moderna crea un efecto dinámico.', 95000, 'https://img.freepik.com/foto-gratis/anillo-oro-caro-fondo-polvo-blanco_23-2150347038.jpg?t=st=1734725711~exp=1734729311~hmac=46c9143788f39bc781336799d8c859a1684980d0855953b733538cbcd1513b84&w=740'),
(21, 'Trilogía Dorada', 'Sets', 'Set x3 anillos: Leopardo Dorado, escalera dorada y Circulos de luz', 150000, 'https://img.freepik.com/foto-gratis/vista-lujoso-anillo-dorado-exhibicion-joyas-fieltro_23-2150329663.jpg?t=st=1734725937~exp=1734729537~hmac=0cafb7eb54a9cf1e2b3a3e2e61a5c67313b0ab06eea81a79d7d47f6c2dc2e4df&w=360'),
(22, 'Luz Nocturna', 'Sets', 'Set x3 anillos: un anillo Aura Nocturna y dos anillos Círculos en Movimiento', 250000, 'https://img.freepik.com/fotos-premium/anillo-oro-caro-que-muestra-sobre-fondo-coral-blanco_23-2150347056.jpg?w=360'),
(23, 'Alma de Oro', 'Sets', 'Set x4 anillos: Círculos de luz, Escalera Dorada, Diva Asimétrica y Rombo Curvado)', 220000, 'https://img.freepik.com/foto-gratis/vista-lujoso-anillo-dorado-bandeja-roca-o-hormigon_23-2150329673.jpg?t=st=1734726730~exp=1734730330~hmac=084c7baf98f455ef72d0a958633d3094c236a0458760b90cc96d119ef4e19f9e&w=360'),
(24, 'Lazos de Fuerza', 'Collares', 'Collar grueso dorado con tres círculos entrelazados, que combinan fuerza y elegancia en una pieza única. ', 112000, 'https://img.freepik.com/foto-gratis/cadena-dorada-lujosa-brillante_23-2149635272.jpg?t=st=1734727266~exp=1734730866~hmac=ace5bebcf639e72f7a0ad61ee36dbf5d50bcbc0e7c3ade16858fc0069125a5bb&w=360');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
