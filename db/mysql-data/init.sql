-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-02-2021 a las 15:04:10
-- Versión del servidor: 10.3.22-MariaDB-0+deb10u1
-- Versión de PHP: 7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `c1genesis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_historialusuarios`
--

CREATE TABLE `db_historialusuarios` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `pass` text NOT NULL,
  `nombre` text NOT NULL,
  `hash_session` text DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `fec_ult_act` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_original` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_historialusuarios`
--

INSERT INTO `db_historialusuarios` (`id`, `email`, `pass`, `nombre`, `hash_session`, `owner`, `fec_ult_act`, `id_original`) VALUES
(149, 'aaamegli@mininterior.gob.ar', 'Ministerio2020', '', 'a673e9b57147b2f47847e56e9e6ddec0', 0, '2020-12-29 16:19:52', NULL),
(150, 'probandomail@mininterior.gob.ar', 'Ministerio2020', 'Prueba 1', '2b445ce63fa16b9e030106d1d31934ec', 0, '2020-12-29 16:21:06', NULL),
(151, 'meqgli@mininterior.gob.ar', 'Ministerio2020', 'Maria Laura Santillan', '1412744b8cfd87408bf7d69833cff5b7', 0, '2020-12-29 17:55:54', '85'),
(152, 'jaaaaffir9@mininteriosr.gob.ar', 'Moroco24$', 'Leito', 'b480361497b4bd599332cb0973fc1740', 0, '2020-12-29 18:12:34', '16'),
(153, 'namamama@mininterior.gob.ar', 'Ministerio2020', '', '9d6e8a1f795e46e496639de766bce49a', 0, '2020-12-29 18:12:47', '60'),
(154, 'mAAegli@mininterior.gob.ar', 'mINISTERIO2020', '', 'd67fa9953701fbe9d9c9681d0b3339c0', 0, '2020-12-29 18:12:51', '61'),
(155, 'lcon12dori@mininterior.gob.ar', 'Genesis2020', '21321', '6ac7fc14a20b3d348ce0090f8d4679e1', 0, '2020-12-30 12:24:46', '69'),
(156, 'lcondori@mininterior.gob.ar21', 'Genesis20202', '123', '1ef205cb7d3e45ebe3dda227d824558d', 0, '2020-12-30 12:24:59', '90'),
(157, 'megli@mininterior.gob.ar11111', 'Ministerio2020', '', 'd149a7f5e2b198789fd94336b8a14361', 0, '2020-12-30 12:25:26', '99'),
(158, 'megqli@mininterior.gob.ar', 'Ministerio2020', 'Maria Laura Santillan', '44730b4750fc6fa2c763fec9d53e35b0', 0, '2020-12-30 12:26:22', '80'),
(159, 'nuevo.si@mininterior.gob.ar', 'Ministerio2020', 'NuvoUsuario', '6c16a84cc717f5bf01d0553f97ef66b2', 0, '2021-01-04 12:23:25', '152'),
(160, 'nuevoemaukli@mininterior.gob.ar', 'Ministerio2020', 'Borrar', '4b061ff073c79252e0a3dd09b38595af', 0, '2021-01-04 12:23:33', '151'),
(161, 'meqgli@mininterior.gob.ar', 'Ministerio2020', 'nicolas24', 'cacfb945b47ea66d2513564e87ef87e8', 0, '2021-01-04 12:26:03', '150'),
(162, 'megli@mininterior.gob.ar', 'Ministerio2020', 'a', '397da54622eb2f0b052c14e12b52c0b1', 0, '2021-01-04 12:35:33', '149'),
(164, 'me12gli@mininterior.gob.ar', 'Ministerio2020', 'preeuba', '629a8d1f76472e6eb937fd053ed80e22', 0, '2021-01-04 12:43:46', '146'),
(165, 'pobando_email@mininterior.gob.ar', 'Ministerio2020', 'Probrando usuarios', '57379dc057c23d7c8a77141b2f6c5b93', 0, '2021-01-04 13:16:17', '138'),
(166, 'HugoALber@mininterior.gob.ar', 'Ministerio2020', 'Hugo Alberto', '829148843b9570eee5653dd08c050f96', 0, '2021-01-04 17:38:39', '145'),
(167, 'megli999@mininterior.gob.ar', 'Ministerio2020', 'Torres', 'b487d56bfa19d32bb0ccec955925d47a', 0, '2021-01-04 19:16:40', '142'),
(168, 'nick_25_i@mininterior.gob.ar', 'Ministerio2020', 'Nick.1982', 'f9590e51b599f147d85fda605dc84e37', 0, '2021-01-05 17:40:10', '139'),
(169, 'namendoalara@mininterior.gob.ar', 'Nnicolas1253', 'kl', 'bce42c697116f26b0ccd22000535de7f', 0, '2021-01-05 17:45:33', '153'),
(170, 'namendoalra1@mininterior.gob.ar', 'Ministerio2020', 'Nicolas A.', '4391e7fff6c9be0cc26b1f0d7869f657', 0, '2021-01-05 19:04:03', '136'),
(171, 'lcondorii@mininterior.gob.ar', 'fevqor-xuwhY1-wyfmuw', 'Leo', '639983277b336d74cffe9e6392cca633', 0, '2021-01-05 19:37:22', '144'),
(172, 'admin@mininterior.gob.ar', 'Ministerio2020', 'admin', '3a236bede27076d5c2f6c9f63063b11f', 0, '2021-01-05 19:38:40', '147'),
(173, 'Mlaurita@mininterior.gob.ar', 'Ministerio2020', 'Maria Laura Santillan', '0ab7bdb8fdd2c7a06778c965939a88af', 0, '2021-01-06 12:02:11', '133'),
(174, '123lcondori@mininterior.gob.ar', 'gENESIS2020', '123', 'ad8629afbfa618425a98c544b9a065d8', 0, '2021-01-06 14:16:17', '132'),
(175, 'namendolarqa@mininterior.gob.ar', 'Moroco24$', '', '8d5ef285cfdb4a80f968afd2c2b2f05a', 0, '2021-01-06 15:05:44', '155'),
(176, 'namendoalara@mininterior.gob.ar', 'Moroco24$', '', '6a27b53e25c7e465af552f1921575f64', 0, '2021-01-06 17:17:23', '156'),
(177, 'namen@mininterior.gob.ar', 'Moroco24$', 'Nicolás Amendo', '3aab5a7ad14a1858ac78bcec05c103fd', 0, '2021-01-06 17:34:23', '157'),
(178, 'namendolaraa@mininterior.gob.ar', 'Moroco24$', 'nico', 'c40450b8e0749553f40d05cdf285a07a', 0, '2021-01-06 17:45:24', '160'),
(179, 'megli@mininterior.gob.ar', 'Ministerio2020', 'A', '55e57670152f9ad92bb4731fd5fa4556', 0, '2021-01-06 17:50:03', '161'),
(180, 'megli@mininterior.gob.ar', 'Ministerio2020', 'A', '3de28f9c2d3890b5edfa6ba32958f6f9', 0, '2021-01-06 17:58:51', '162'),
(181, 'namendolarka@mininterior.gob.ar', 'Moroco24$', 'l', 'dd509047caa9af86448ba7cab4e8eb80', 0, '2021-01-06 18:03:37', '163'),
(182, 'namendolYaara@mininterior.gob.ar', 'Moroco2a', 'martim', 'b2bec490a35b5c93cfde5df5926cd509', 0, '2021-01-06 18:20:45', '159'),
(183, 'martinag@mininterior.gob.ar', 'Ministerio2020', 'Martina', '092de4676ac420ca37269e3649927a0a', 0, '2021-01-06 18:21:27', '158'),
(184, 'namlarsa@mininterior.gob.ar', 'Moroco24$', 'gabi', 'bf31df620cd981b0b7f42a910f18342b', 0, '2021-01-06 18:33:50', '154'),
(185, 'me2gli@mininterior.gob.ar', 'Ministerio2020', '', '5b70b2f03b13c098b5c7e5bcc08b17ee', 0, '2021-01-06 18:57:27', '129'),
(186, 'megli@142525mininterior.gob.ar', 'Ministerio2020', '', '9ee1a1897d87f1988da9bd238f5c7163', 0, '2021-01-06 18:57:31', '128'),
(187, 'megli@ssssssmininterior.gob.ar', 'Ministerio2020', '', 'e7bae02b02fffdaa4014b3d630998be2', 0, '2021-01-06 18:57:37', '127'),
(188, 'megli@3mininterior.gob.ar2', 'Ministerio2020', '', 'a4cdec3930e94d9cef02851b4198079a', 0, '2021-01-06 18:57:44', '126'),
(189, 'Martina@mininterior.gob.ar', 'Ministerio2020', 'NombreDePrueba', '716f7fb539385890893762750baa256d', 0, '2021-01-06 18:57:48', '141'),
(190, 'megqli@mininterior.gob.ara', 'Ministerio2020', '', '0994008ac4b63aac260841b548f08c31', 0, '2021-01-06 18:57:54', '125'),
(192, 'megli@1mininterior.gob.ar1', 'Ministerio2020', '', '2e0999d8560cf015373da7946379a023', 0, '2021-01-06 18:58:01', '122'),
(193, 'Ayrtondeaq@mininterior.gob.ar', 'Ministerio2020', 'Ayrton A.', 'f5eafef627cc6833bf61ba7b70bfa6fd', 0, '2021-01-06 18:58:05', '135'),
(194, 'megli@pmininterior.gob.ar', 'Ministerio2020', '', '218fc96339b7a8b16717b7c14c78ee51', 0, '2021-01-06 18:58:09', '123'),
(195, 'megli@2mininterior.gob.ar1', 'Ministerio2020', '', 'f90c868c658643fab175e6642b96240f', 0, '2021-01-06 18:58:15', '119'),
(196, 'megli@amininterior.gob.ara', 'Ministerio2020', '', '0dc51d669cf2f747cc011978a9028edb', 0, '2021-01-06 18:58:20', '121'),
(197, 'megli@1mininterior.gob.ar', 'Ministerio2020', '', '6ec11acb051407863a20e86bafa38ffe', 0, '2021-01-06 18:58:25', '120'),
(198, 'megli@mininterior.gob.arssssssssssssssssss', 'Ministerio2020', '', 'a3ff22b6ed99cf8fbea68fa1a4732f87', 0, '2021-01-06 18:58:28', '117'),
(199, 'megli@mininterior.gob.arj', 'Ministerio2020', '', '63ce0489ad86a58fb92fbe8387b270be', 0, '2021-01-07 12:34:44', '118'),
(200, 'megli@mininterior.gob.arqqqqq', 'Ministerio2020', '', 'e80fccf634edd9189f63de3696d5a0ca', 0, '2021-01-07 12:34:48', '115'),
(201, 'megli@GMAIL.COM', 'Ministerio2020', '', 'a8cdaebe762e5fb543ee6f4a0fd2de2d', 0, '2021-01-07 12:34:51', '113'),
(202, 'megli@mininterior.gob.araaaaaa', 'Ministerio2020', '', '5e5e8b38f1655f67a4e90fd613cda93e', 0, '2021-01-07 12:34:54', '114'),
(203, 'megli@mininterior.gob.arsss', 'Ministerio2020', '', 'cad0aa9b303ae95e1573a231da5eb80a', 0, '2021-01-07 12:34:58', '116'),
(204, 'megli@mininterior2.gob.ar1', 'Ministerio2020', '', 'e8dd04aa6a11a0ac92598fad564a1b75', 0, '2021-01-07 12:35:02', '112'),
(205, 'megli@minainterior.gob.ar', 'Ministerio2020', '', 'a4151337da8bfdc4e0b9437ce14bec95', 0, '2021-01-07 12:35:05', '111'),
(206, 'megli@mininteriowr.gob.ar', 'Ministerio2020', '', '92c2d7623c2fefc7e2d21023154fb794', 0, '2021-01-07 12:35:08', '110'),
(207, 'megli@mininterior.gob.ar6', 'Ministerio2020', '', 'b909546aacd744555a5b49323113bdf5', 0, '2021-01-07 12:35:12', '108'),
(208, 'megli@mininterior.gob.a2r12', 'Ministerio2020', '', '756f89010f1d5596224aa08cd8b123aa', 0, '2021-01-07 12:35:16', '106'),
(210, 'megli@mininterior.gob.ara', 'Ministerio2020', '', 'b19d1078eec6f0d338c62a71837b8113', 0, '2021-01-07 12:36:40', '109'),
(211, 'megli@minin1terior.gob.ar', 'Ministerio2020', '', '3df485068f008e0bec1bf4834d235f8e', 0, '2021-01-07 12:36:44', '105'),
(212, 'megli@mininterior.gob.a1r', 'Ministerio2020', '', 'd3fe6a9c7e1ac33877a8f3187415225d', 0, '2021-01-07 12:36:48', '104'),
(213, 'meglis@gmail.com', 'Ministerio2020', '', '5efbfb51ce27dbebf0d1a7dd23df066f', 0, '2021-01-07 12:36:51', '107'),
(214, 'megli@mininterior.gob.ar2222', 'Ministerio2020', '', '83e75d6981e2cb649f294c12bfa0a8b3', 0, '2021-01-07 12:36:55', '100'),
(215, 'megli@mininterior.gob.ar12222222', 'Ministerio2020', '', 'db0cc63674f989050e609bd58cbef38b', 0, '2021-01-07 12:37:00', '98'),
(216, 'megli@mininterior1.gob.ar1', 'Ministerio2020', '', '4ac12c9bdc5c03ebfb1e3a44f08982c3', 0, '2021-01-07 12:54:28', '97'),
(217, 'megli@mininterior.gob.ar111', 'Ministerio2020', '', 'de6bb503a1a240c32ee9ae44fd896dd8', 0, '2021-01-07 13:01:28', '96'),
(218, 'megli@mininterior.gob.ar12', 'Ministerio2020', '', 'ed34687706b03a094a2413f5358f3327', 0, '2021-01-07 13:03:28', '101'),
(219, 'megli@555mininterior.gob.ar', 'Ministerio2020', '', '3a165459629bbbbb6f2cce085304292c', 0, '2021-01-07 15:14:52', '94'),
(220, 'megli@mininterior.gob.ar11', 'Ministerio2020', 'Maria Laura Santillan', '33b1795e1510f897704fea70ee58453a', 0, '2021-01-07 15:15:00', '93'),
(221, 'megli@mininterior.gob.ar1', 'Ministerio2020', 'a', '4b62facfa1800741e374ef07c4162f09', 0, '2021-01-08 01:22:40', '92'),
(222, 'megli@mininteppprior.gob.ar1', 'Ministerio2020', 'Maria Laura Santillan', 'b9478a16c54a8777dfca715fdfe1e74d', 0, '2021-01-08 14:34:12', '95'),
(223, 'madfalene@mininterior.gob.ar12', 'Ministerio2020', 'Marta', '8f9eaa235cc9da6e0aa2e9bb6b43ff54', 0, '2021-01-08 17:53:12', '89'),
(224, 'aaamegli@mininterior.gob.ar12', 'Ministerio2020', 'Torres', 'fcdb5d8592e09326fe0e13c6cddd7fd2', 0, '2021-01-08 18:02:06', '88'),
(225, 'ArturoP@mininterior.gob.ar', 'Ministerio2020', 'Maria Laura Santillan', 'd00b8b8f816c14545c0353049d0cbb17', 0, '2021-01-08 18:02:11', '87'),
(226, 'm1egli@mininterior.gob.ar', 'Ministerio2020', '', '0788bd26521fe4d7ba4429d4549f19ba', 0, '2021-01-08 18:02:35', '84'),
(227, 'megli@mininterior.gob.ar', 'Ministerio2020', 'Torres', '1fff9f6e099d1cd6d231c6fdc4ac0055', 0, '2021-01-09 00:43:16', '91'),
(228, 'lcondori@mininterior.gob.arl', 'Genesis2020', '123', '6208e59d7d365f5a0bef221895bfa0ae', 0, '2021-01-09 16:11:17', '76'),
(229, 'megaali@mininterior.gob.ar', 'Ministerio2020', 'Maria Laura Santillan', '0d0e7fde0a5f33ca8b6d3569eba9fbc4', 0, '2021-01-09 17:26:18', '82'),
(230, 'm9egli@mininterior.gob.ar', 'Ministerio2020', '', '4d60e19229e8a9b146108407e6c57e0f', 0, '2021-01-10 22:44:53', '83'),
(231, 'megaaaali@mininterior.gob.ar', 'Ministerio2020', '', 'b2cb785f0e78ed3c742786913297bbe1', 0, '2021-01-10 23:10:48', '70'),
(232, 'maegli@mininterior.gob.ar', 'Ministerio2020', '', 'c51e903d076b92ac792790b48e5f1975', 0, '2021-01-10 23:12:07', '65'),
(233, 'lco123213n2dori@mi1ninterior.gob.ar', 'Genesis2020', '123', '53f76c95c90666ba70c99c59d3b92ccd', 0, '2021-01-11 12:11:05', '74'),
(234, '123213lconadori@mininterior.gob.ar', 'Genesis2020', '23', '3d493c7c295a21bb8f7b76c91a847e66', 0, '2021-01-11 12:11:18', '54'),
(235, 'lco123213n2dori@minin12terior.gob.ar', 'Genesis2020', '123', 'f0a60fd0999fb901673c6d929cda070b', 0, '2021-01-11 12:32:22', '73'),
(236, 'maegli@mininterior.gob.ar', 'Ministerio2020', 'Nicolas', 'f7e78be4e8543016defa39e95decfb5f', 0, '2021-01-11 14:40:38', '171'),
(237, 'me1gli@mininterior.gob.ar', 'Ministerio2020', 'Prueba 11', '924cf05c403a660954ba8dabc798dd23', 0, '2021-01-11 14:40:42', '169'),
(238, 'megaaali@mininterior.gob.ar', 'Ministerio2020', 'Prueba de carga Nico', '9f2d055e0349c6792bd5d1a9b826fd98', 0, '2021-01-11 14:40:46', '166'),
(239, 'meglia11@mininterior.gob.ar', 'Ministerio2020', 'Nicolas 11', '93c5d4e6a5a0bf62379484dcef84d7ce', 0, '2021-01-11 14:40:50', '168'),
(240, 'martin@mininterior.gob.ar', 'Martin2020', 'MARTIN ', '14458202a35b74d54a9f02cc1a78ec06', 0, '2021-01-11 14:59:33', '175'),
(241, 'pruebadesdelogin@mininterior.gob.ar', 'Ministerio2020', 'Marta', '760f7cf4a7ede2791c885387fe5174ed', 0, '2021-01-11 15:59:31', '172'),
(242, 'pruedmartin@mininterior.gob.ar', 'Ministerio21', 'daiana martin', '0726b1c7f4eb103238689ef360fccdaf', 0, '2021-01-11 16:03:21', '179'),
(243, 'Sebaprueba@mininterior.gob.ar', 'Sebastian1992', 'SebaRodriguez', '2474387b48c77406f433341b5e9720fe', 0, '2021-01-11 16:03:33', '181'),
(244, 'gabiprueba@mininterior.gob.ar', 'Gabriela1992', 'GabiGimenez', '2230eabddc317541d90e2ae0e73ecab8', 0, '2021-01-11 16:03:36', '180'),
(245, 'Leilaprueba@mininterior.gob.ar', 'Leila1992', 'Leila ', '83c62103415ee0b3b401260f11013499', 0, '2021-01-11 16:03:41', '178'),
(247, 'martinprueba@mininterior.gob.ar', 'Martin1992', 'MartinSouto', 'f22caca974330ae89f45e7485fd0bee6', 0, '2021-01-11 16:14:54', '177'),
(248, 'pruebadmartin@mininterior.gob.ar', 'Ki081952', 'Daiana  Martin', '910cd69b3e7fb9dde156b56bcb37c002', 0, '2021-01-11 16:15:01', '176'),
(249, 'lco123213n2dori@mininterior.gob.ar', 'Genesis2020', '123', 'e16a9f6d6e0745411976f6912a4e92f8', 0, '2021-01-11 18:26:03', '72'),
(250, 'namendolara@mininterior.gob.ar', 'Ministerio2020', 'Migul', 'e37822b5aa6b90dac163a2489401cbcf', 0, '2021-01-11 18:29:01', '102'),
(255, 'lco1a2ndori@mininterior.gob.ar', 'Genesis2020', '123', 'c83cbc051ef432c2dd9b101963591829', 0, '2021-01-11 18:35:48', '67'),
(256, 'dmartin@mininterior.gob.ar', 'Ministerio21', 'Daiana Antonella Martin', '36504738c5f7db8279c435ac4434b46f', 0, '2021-01-11 18:42:48', '167'),
(257, 'lcond12ori@mininterior.gob.ar', 'Genesis2020', '123', 'c4f3647b64146f4ec90fddbaf8c8fa08', 0, '2021-01-11 18:42:57', '68'),
(258, 'namend6olara@mininterior.gob.ar', 'Moroco24$', 'aaaaa', '3f71c7066f49f251aaf0699a6a0b52fb', 0, '2021-01-11 18:44:37', '64'),
(259, 'namaaaaaaa@mininterior.gob.ar', 'Ministerio202', 'Marca', '6045599ebc09b3f247e72092baa76c6b', 0, '2021-01-11 18:44:42', '24'),
(260, 'marialalalalaaaaaa@mininterior.gob.ar', 'Nicolas24256', 'aaaa', '793adfda5e580108af1843c2c07418a9', 0, '2021-01-11 18:44:50', '26'),
(261, 'proaband99op@mininterior.gob.ara', 'Genesis2020aaa9', 'ProbandoaContraseña', '2f3a7388c5bb7963196a1365a94fb600', 0, '2021-01-11 18:47:39', '86'),
(262, 'dmartinprueba@mininterior.gob.ar', 'Ministerio21', 'Daiana  Martin', '60b7528609e3e2c43ea5ae2cf8167b60', 0, '2021-01-11 18:51:42', '174'),
(263, 'mSSSSAAegli@mininterior.gob.ar', 'mINISTERIO2020', 'S', '46b31545b70b3443bf3595db6c13581f', 0, '2021-01-11 18:52:07', '62'),
(264, 'lcondori@mininterior.gob.ar1', 'Genesis2020', '123', 'b8331bbe89dd1933984a8c5bd3d4b71d', 0, '2021-01-11 19:05:13', '34'),
(265, 'meglia1@mininterior.gob.ar', 'Ministerio2020', 'Marta', '0ee07d5ac0192cbcee7bc29dc693e693', 0, '2021-01-11 19:10:48', '173'),
(266, 'tester@mininterior.gob.ar', 'Genesis2020', 'Prueba', '4d62c8a5d8e89c63f9febc4725c3b940', 0, '2021-01-11 22:08:22', '79'),
(267, 'miguelitogiraldo@mininterior.gob.ar', 'Ministerio2020', 'Miguel Angel G.', '0043276eb98bf5de2e58de081928e2c4', 0, '2021-01-11 22:35:21', '137'),
(268, 'lc1ondori@mininterior.gob.ar', 'Genesis2020', '123', '98c2a9348a522231a17194f38860c3be', 0, '2021-01-11 22:35:27', '75'),
(269, 'lcon2dori@mininterior.gob.ar', 'Genesis2020', '123', '9ed116541590bc45e2f9743efee00779', 0, '2021-01-11 22:35:30', '71'),
(270, 'megli3@mininterior.gob.ar', 'Ministerio2020', 'a', 'fcb1b212e25f4becab46ec0aaba3dacf', 0, '2021-01-11 22:35:34', '66'),
(271, 'nicolas2365@mininterior.gob.ar', 'Ministerio2020', '', '760be5629df2806ce22adc2e94b1f993', 0, '2021-01-12 12:09:49', '31'),
(272, 'msegli@mininterior.gob.ar', 'Nicolas24', 'a', '803cd5010d973a165e8411fe7c0a5dd1', 0, '2021-01-12 12:10:19', '59'),
(273, 'lcondasassori@mininterior.gob.ar', 'Genesis2020', '213', '332df3d1df8b5029a8503a034a249017', 0, '2021-01-12 12:10:26', '58'),
(274, 'lcondsori@mininterior.gob.ar', 'Genesis2020', '213', '635933093055b0841037ba59ba272f53', 0, '2021-01-12 12:17:54', '57'),
(275, 'lcond1ori@mininterior.gob.ar', 'Genesis2020', '23', '2bc412809bf477d7383fd720e32bcd09', 0, '2021-01-12 12:18:08', '56'),
(276, 'lcondo1ri@mininterior.gob.ar', 'Genesis2020', '23', '7c947105ff1d5cebd0fb14ded4acdcb5', 0, '2021-01-12 12:18:15', '55'),
(277, 'jair@mininteriosr.gob.ar', '123456asdS', '', '4cbf9640e667de550c042df41295c045', 0, '2021-01-12 12:19:04', '9'),
(278, '23nasdaori@mininterior.gob.ar', 'Genesis2020', '123', 'd79cc921393237940f716a27d773c0af', 0, '2021-01-12 12:19:09', '53'),
(279, 'megali@mininterior.gob.ar', 'Ministerio2020', 'DAaa', '9aa0578561de4e3fcb3d81807b2c9753', 0, '2021-01-12 12:19:16', '63'),
(280, 'lconasdaori@mininterior.gob.ar', 'Genesis2020', '123', '4b8599bd615f7ffaf41aa5f8951afaab', 0, '2021-01-12 12:19:20', '52'),
(281, 'lcoaasdassasa12ndori@mininterior.gob.ar', 'Genesis2020', '123', 'd4df278195dd97b39cbcd0b15970c596', 0, '2021-01-12 12:19:32', '51'),
(282, 'lcoaasdassandori@mininterior.gob.ar', 'Genesis2020', '123', '3103f969bde5161b1fc5774fd9678feb', 0, '2021-01-12 12:56:48', '50'),
(283, 'lcoasandori@mininterior.gob.ar', 'Genesis2020', '123', '1b80dc5494f430855bd82666c26bae43', 0, '2021-01-12 12:56:54', '49'),
(284, 'lcon1dori@mininterior.gob.ar', 'Genesis2020', '123', '1b12bf4dedaa1fa67ce230ced76c608c', 0, '2021-01-12 13:54:38', '48'),
(285, 'meglia@mininterior.gob.ar', 'Ministerio2020', 'Torres', 'eb8d0631fde81a67ae6325f6131fe17d', 0, '2021-01-12 14:05:31', '81'),
(286, 'zdmartin@mininterior.gob.ar', 'Ministerio21', 'Daiana  Martin', '22ddfd2ab8732801a73b147708c8a257', 0, '2021-01-12 15:39:37', '184'),
(287, 'lco1122ndaori@mininterior.gob.ar', 'Genesis2020', '123', '73361232acafd4ab089e2c65b44865ed', 0, '2021-01-12 15:39:55', '47'),
(288, 'lcoandori@mininterior.gob.ar', 'Genesis2020', '123', '5c88928da11637b099dc05debf8a2599', 0, '2021-01-12 16:26:16', '46'),
(289, 'lco1ndori@mininterior.gob.ar', 'Genesis2020', '123', 'afa660e48f0bbd66485ea12486ff307a', 0, '2021-01-12 16:26:21', '45'),
(292, 'lcoaaanadaori@mininterior.gob.ar', 'Genesis2020', '123', 'ab0fd49630abf4dbde6b411ebfc7532b', 0, '2021-01-13 19:39:34', '43'),
(294, 'nico@mininterior.gob.ar', 'Ministerio2020', 'nicolas', '30eaebd068de5a63756e76a6dd06a0d1', 0, '2021-01-13 19:40:04', '20'),
(295, 'lcondaori@mininterior.gob.ar', 'Genesis2020', '123', 'b9d12e7571a0c179810a59af1a716157', 0, '2021-01-13 19:40:54', '38'),
(296, 'lcoaaanad123aori@mininterior.gob.ar', 'Genesis2020', '123', 'bf7a900d56f20f407298d9e0ecca6860', 0, '2021-01-13 19:41:47', '44'),
(297, 'lcoaanadaori@mininterior.gob.ar', 'Genesis2020', '123', '81a17d14e9fa491972f8af410bc5dd20', 0, '2021-01-13 19:41:52', '42'),
(298, 'lcoanadaori@mininterior.gob.ar', 'Genesis2020', 'usuario prueba', 'a981c54c80a43c9ed6a3a3aab641f659', 0, '2021-01-13 19:42:22', '41'),
(299, 'megli1@mininterior.gob.ar', 'Ministerio2020', 'Marta', '8d1f7e7a25b0d76b7c4f187cc45ae399', 0, '2021-01-13 19:42:32', '35'),
(300, 'marquitos@mininterior.gob.ar', 'Moroco24$', 'Marcos', 'bd3cd85b099154456b25bb0d9a5d2938', 0, '2021-01-13 19:42:55', '11'),
(302, 'meglai@mininterior.gob.ar', 'Ministerio2020', 'Martin', '91136a061e69f8c7ce2548833a005f9c', 0, '2021-01-26 16:58:02', '189'),
(303, 'megli@mininterior.gob.ar', 'Ministerio2020', 'Nico', 'd818bf63623a05a70f91ce19e2d8366d', 0, '2021-01-26 16:58:24', '188'),
(304, 'NicoAmendo@mininterior.gob.ar', '123456789A', 'Nicolas A', 'be4158fb087fb7738039ba525921f1fe', 0, '2021-01-26 17:03:15', '78'),
(305, 'megli@mininterior.gob.ar', 'Ministerio2020', 'Marta', 'a43759b94c5516f0d3692a0b719a55d2', 0, '2021-01-26 17:10:47', '190'),
(306, 'prueba3@mininterior.gob.ar', '123456789A', 'Hugo', 'd0be3ef5c34736b0d45dbfab73d89889', 0, '2021-01-28 17:58:45', '77'),
(307, 'ggimenez@mininterior.gob.ar', 'Solange1992', 'Gimenez', 'da66f97896e5fdbc722a3ea84a8b23fd', 0, '2021-01-28 18:02:12', '185'),
(308, 'facebey@mininterior.gob.ar', 'Fede1988', 'Federico Acebey', '768a3917166e94aa74f60ee7df8a8463', 0, '2021-01-28 18:02:55', '187'),
(309, 'meglaai@mininterior.gob.ar', 'Ministerio2020', 'marcela1', '78b0180723a4d58545b5421b47b97d0f', 0, '2021-01-28 18:19:22', '191'),
(310, 'megqqli@mininterior.gob.ar', 'Ministerio2020', 'Torres', 'ee3a9c3b926a8bcd1632b7327a5137d7', 0, '2021-01-28 19:35:20', '134'),
(312, 'namendolarada@mininterior.gob.ar', 'Moroco24$', 'dada', 'bcc4f5a96d1e0981ce39a5adb1b3a995', 0, '2021-01-29 13:05:42', '195'),
(313, 'namenadolara@mininterior.gob.ar', 'Moroco24$', 'Martin', '08525fe8431955fb7698abd7efbffff3', 0, '2021-01-29 13:05:50', '194'),
(314, 'mart2021a@mininterior.gob.ar', 'Moroco24$', 'martin', '93c6096034084fb38e3fc16948f36cea', 0, '2021-01-29 13:05:56', '193'),
(315, 'gurquiza@mininterior.gob.ar', 'Pirulo33', 'guadalupe de urquiza', 'b7e87702d025225aa3f0447f6ab2c7de', 0, '2021-01-29 17:59:19', '186'),
(317, '11megli@mininterior.gob.ar', 'Ministerio2020', 'preuba', '62a50554ba2de8670bf3e8e710056c3f', 0, '2021-02-01 03:13:11', '170'),
(318, 'megliAAA@mininterior.gob.ar', 'Ministerio2020', 'prueba del 11', 'deaf28b9df068e1e656aaff195122b7d', 0, '2021-02-01 03:13:23', '164'),
(319, 'testingsistemas@mininterior.gob.ar', 'Papaverroas99', 'Testing', '4ff91e2e54b26ab29cb35de79e9f1b3e', 0, '2021-02-01 15:31:26', '197'),
(320, 'bar@mininterior.gob.ar', 'Asd12345678', 'barbara bc', '273cf70f9c62b1645cabc383edcfada4', 0, '2021-02-01 15:33:30', '198'),
(321, 'TEST@mininterior.gob.ar', 'Test123456', 'TESTING123456', '0d20d63140a5886389875967997e28a0', 0, '2021-02-01 18:33:25', '199'),
(322, 'bcordoneda@mininterior.gob.ar', 'Ministerio2020', 'Bárbara Cordoneda', '20a84661c26b24584b0a5c92875dbeae', 0, '2021-02-01 18:33:28', '196'),
(323, 'fmoojek@mininterior.gob.ar', 'Papaverroas99', 'Felix @#$%', '5e1f3cd7602dbe7ded08b7a7d6389bc8', 0, '2021-02-02 15:26:40', '202'),
(324, 'fmujen@mininterior.gob.ar', 'Papaverroas99', 'suisui', 'f4e7d59e2a13ca35b96ced89eb658d17', 0, '2021-02-05 14:01:23', '203'),
(325, 'ggimenesz@mininterior.gob.ar', 'Solange1992', 'Gabriela S Gimenez', '0a7aa2af6b02fc909d02af2a61ada4d4', 0, '2021-02-05 16:46:42', '183'),
(326, 'lcondaori@mininterior.gob.ara', 'Genesis2020', '123', 'cfb9e3933096ba7ae1facf79380a5513', 0, '2021-02-05 16:49:02', '39'),
(329, 'martinpruebas@mininterior.gob.ar', 'Martin1992', 'MartinGimeenz', '4250b61858d6e68ddd543c13ac2f0b66', 0, '2021-02-10 00:13:06', '182'),
(330, 'fmojen@mininterior.gob.ar', 'Papaverroas99', 'test', '1930d937c41ddc2ea1ff334ca14ab9b9', 0, '2021-02-11 18:27:55', '204'),
(331, 'bcordoneda@mininterior.gob.ar', 'Bar123456', 'BARBARA Bc', 'dc980055dfe075cb1c9b077555a9c320', 0, '2021-02-11 18:28:38', '200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_keystore`
--

CREATE TABLE `db_keystore` (
  `id` int(11) NOT NULL,
  `id_db_usuarios` int(11) NOT NULL,
  `hash` text NOT NULL,
  `keyapi` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fec_ult_act` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_keystore`
--

INSERT INTO `db_keystore` (`id`, `id_db_usuarios`, `hash`, `keyapi`, `status`, `fec_ult_act`) VALUES
(1, 1, 'dsfsdfsdfsdffdbvfdbdfdsdfsdf', 'lkj43983f39f8j498fj3498f3948fh3948fh3', 1, '2020-05-03 17:06:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_pictures`
--

CREATE TABLE `db_pictures` (
  `id` int(11) NOT NULL,
  `url_image` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_pictures`
--

INSERT INTO `db_pictures` (`id`, `url_image`, `title`, `description`, `orden`) VALUES
(1, '/genesis/views/assets/images/p5q_profile_pw.jpg', 'GENESIS', 'Todos los recursos al alcance de nuestras manos.', 1),
(2, '/genesis/views/assets/images/zm8_profile_zw.jpg', 'UNA HERRAMIENTA', 'Unifica todos los equipos.', 2),
(3, '/genesis/views/assets/images/nzj_profile_cl.jpg', 'PARA TODXS', 'Agilizando  el desarrollo de nuestros productos', 3),
(5, '/genesis/views/assets/images/logo-inverse.png', '', '', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_setting`
--

CREATE TABLE `db_setting` (
  `id` int(11) NOT NULL,
  `usa_carrousel_ini` tinyint(1) NOT NULL DEFAULT 0,
  `usa_carrusel_txt` tinyint(1) NOT NULL DEFAULT 0,
  `usa_alta_user` tinyint(1) NOT NULL DEFAULT 0,
  `usa_recovery_user` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_setting`
--

INSERT INTO `db_setting` (`id`, `usa_carrousel_ini`, `usa_carrusel_txt`, `usa_alta_user`, `usa_recovery_user`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_tables`
--

CREATE TABLE `db_tables` (
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `mail` text NOT NULL,
  `cuil` text NOT NULL,
  `host` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_tables`
--

INSERT INTO `db_tables` (`id`, `usuario`, `mail`, `cuil`, `host`) VALUES
(1, 'usuario 1', 'mail@mininterior.gob.ar', '20-28554614-2', '192.168.0.1'),
(2, 'usuario 2', 'mail@mininterior.gob.ar', '21-28554614-2', '192.168.0.2'),
(3, 'usuario 3', 'mail@mininterior.gob.ar', '22-28554614-2', '192.168.0.3'),
(4, 'usuario 4', 'mail@mininterior.gob.ar', '23-28554614-2', '192.168.0.4'),
(5, 'usuario 5', 'mail@mininterior.gob.ar', '23-28554614-2', '192.168.0.4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_usuarios`
--

CREATE TABLE `db_usuarios` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `pass` text NOT NULL,
  `nombre` text NOT NULL,
  `hash_session` text DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `fec_ult_act` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_usuarios`
--

INSERT INTO `db_usuarios` (`id`, `email`, `pass`, `nombre`, `hash_session`, `owner`, `fec_ult_act`) VALUES
(1, 'lcondori@gmail.com', 'Genesis2020', 'Leo Condori', 'ae7795023a8c568bc310ad4f52777b9c', 1, '2021-02-17 14:51:29'),
(3, 'invitado@mininterior.gob.ar', 'Genesis2020', 'Invitado', 'be0f7158a91959e4869807c9f70b9f94', 0, '2020-10-12 01:37:41'),
(4, 'jbadillo@mininterior.gob.ar', 'Genesis2020', 'jair badillo', 'a4542e543a2436b9e61f91611c686ccc', 1, '2021-02-17 19:37:35'),
(5, 'fmoojen@mininterior.gob.ar', 'Papaverroas99', 'felix moojen', '027fc30ade41d2a543be0d8bd4348672', 1, '2021-02-18 14:01:15'),
(6, 'namendolara@mininterior.gob.ar', 'Moroco24$', 'nicolino', '92dff2b9b1e59dc2ea9f2d576fde2a52', 0, '2021-01-29 13:02:39'),
(7, 'aartaza@mininterior.gob.ar', 'Genesis2020', '21312', '23e4fb0d091846b8d1d1d44448ac33cb', 0, '2020-12-17 13:11:05'),
(8, 'prueba@mininterior.gob.ar', 'Moroco24$', 'prueba', '0bd2354005985233335872edea43b081', 0, '2020-12-17 14:49:48'),
(10, 'jair9@mininteriosr.gob.ar', 'Moroco24$', '', '7ec16a4de0ef103fc35dda22c95f61f8', 1, '2020-12-29 13:53:05'),
(12, 'maria@mininterior.gob.ar', 'Genesis2020', 'Marcos', '1b403c9ad2f496c1cbf43db9173df78d', 1, '2020-12-18 12:33:52'),
(13, 'marcela@mininterior.gob.ar', 'Moroco24$', 'MArcela', '930880c1efc2dbbe593d68d33850467c', 1, '2020-12-18 12:48:54'),
(14, 'noelia@mininterior.gob.ar', 'Moroco24$', 'noelia', '50792d1e709e42e678f5ea017701eaea', 0, '2020-12-18 12:51:05'),
(15, 'jaaaair9@mininteriosr.gob.ar', 'Moroco24$', 'Leito', '9723534794e4df93eca49d3509659e33', 1, '2020-12-29 16:42:29'),
(17, 'monaica@mininterior.gob.ar', 'Moroco24$', 'marcela', 'a52c4f0a78eda2bab3bdd9f0ae9fb977', 1, '2020-12-18 13:53:52'),
(21, 'nicogr@mininterior.gob.ar', 'Ministerio2020', 'nicolas1', 'a160d210d67d89d81976fadff8bb9148', 1, '2020-12-29 13:15:30'),
(22, 'mlaura@mininterior.gob.ar', '1234', 'Maria laura', 'c9854957f0c86e442c654e27a330eb10', 0, '2021-01-14 19:13:00'),
(23, 'a@mininterior.gob.ar', '1234', 'aa', 'c042f84bd94fee25de83a8a30f091718', 0, '2020-12-18 20:33:29'),
(25, 'nama@mininterior.gob.ar', 'Ministerio20', 'Marca', '3a209a63e6d792828d1cb7e63e9a4964', 0, '2020-12-18 20:36:01'),
(27, 'marialalalalaaaaaaaaaa@mininterior.gob.ar', 'Nicolas2425', 'aaaa', '7b5b86862dd3c8c69e75c4130e53cd8a', 0, '2020-12-18 20:37:42'),
(28, 'marialalalalaaaaaaaaaaaaaa@mininterior.gob.ar', '8888888Ni', 'aaaa', '41160d6d1522727937f08002bf67479c', 0, '2020-12-18 20:38:17'),
(29, 'meglaaaai@mininterior.gob.ar', 'Nicolas125', 'aaaa', 'e4f1dbfbc9a339cb59e69cedc16fce31', 1, '2020-12-18 20:45:21'),
(30, 'meglaaaaaaai@mininterior.gob.ar', 'Nicolas12', 'aaaa', '097056f633e3872c6dfc52099c205c12', 1, '2020-12-18 20:45:29'),
(32, 'lco12ndori@mininterior.gob.ar', 'Genesis2020', '123', 'dde3b585e087e75ad4ae27032580342a', 1, '2020-12-21 13:13:13'),
(33, 'lco12n12dori@mininterior.gob.ar', 'Genesis2020', '', 'b70c25fc3a822a1259caa433b8a4e2bc', 0, '2020-12-21 13:17:50'),
(36, 'lconadori@mininterior.gob.ar', 'Genesis2020', '123', '716ac58470f2c3a6bddee291b5013f79', 0, '2020-12-21 13:53:34'),
(37, 'lconaadori@mininterior.gob.ar', 'Genesis2020', '123', 'ff57583f599696d0a73321cf7c2899bd', 0, '2021-02-01 15:18:24'),
(40, 'lconadaori@mininterior.gob.ar', 'Genesis2020', '123', '9340e16e9a04d1570edc4c74dd451615', 0, '2020-12-21 14:07:08'),
(103, 'megli@mininterior.gob.ar', 'Ministerio2020', 'ProbandoEmail', 'ae7e4ccaa03a8c2ad1e8d480427004ba', 0, '2021-01-29 17:42:42'),
(124, 'wegli@mininterior.gob.ar', 'Ministerio2020', '', 'e907c233a09e27d137369bb2c66247ba', 0, '2021-01-29 17:29:31'),
(140, 'probarcaracteres@mininterior.gob.ar', 'Ministerio2020', 'Prue!ba_DE_Caract!', '7356c9b08b3aa25db7fd2f26a170ac57', 0, '2021-01-28 20:05:05'),
(165, 'ggimenez@mininterior.gob.ar', 'Solange1992', 'Gimenez Gabriela Solange', 'eccadcf18999b1b99d5b7268d67eec5e', 1, '2021-02-17 12:49:05'),
(192, 'martin2021@mininterior.gob.ar', 'Moroco24$', 'Martin', '31396286a583ca38690a9d8148d9c74c', 0, '2021-01-29 18:33:48'),
(201, 'lgattuso@mininterior.gob.ar', 'Ministerio21', 'leandro', 'ce046610df40bb81312f8777d60f83d6', 1, '2021-02-18 15:26:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_version`
--

CREATE TABLE `db_version` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `subversion` int(11) NOT NULL,
  `hash` text NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `fec_ult_act` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_version`
--

INSERT INTO `db_version` (`id`, `version`, `subversion`, `hash`, `habilitado`, `fec_ult_act`) VALUES
(1, 12, 16, '5116fff881d10d332d04be90aff768af', 1, '2020-05-04 05:47:19'),
(15, 12, 99, '5116fff881d10d332d04be90aff768af', 1, '2020-05-04 17:22:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sp_framework`
--

CREATE TABLE `sp_framework` (
  `id` int(11) NOT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `menu` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0,
  `config_button` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sp_framework`
--

INSERT INTO `sp_framework` (`id`, `header`, `menu`, `footer`, `config_button`) VALUES
(1, 1, 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `db_historialusuarios`
--
ALTER TABLE `db_historialusuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_keystore`
--
ALTER TABLE `db_keystore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_db_usuarios` (`id_db_usuarios`);

--
-- Indices de la tabla `db_pictures`
--
ALTER TABLE `db_pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_setting`
--
ALTER TABLE `db_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_tables`
--
ALTER TABLE `db_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_usuarios`
--
ALTER TABLE `db_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_version`
--
ALTER TABLE `db_version`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sp_framework`
--
ALTER TABLE `sp_framework`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `db_historialusuarios`
--
ALTER TABLE `db_historialusuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT de la tabla `db_keystore`
--
ALTER TABLE `db_keystore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `db_pictures`
--
ALTER TABLE `db_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `db_setting`
--
ALTER TABLE `db_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `db_tables`
--
ALTER TABLE `db_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `db_usuarios`
--
ALTER TABLE `db_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT de la tabla `db_version`
--
ALTER TABLE `db_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `sp_framework`
--
ALTER TABLE `sp_framework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `db_keystore`
--
ALTER TABLE `db_keystore`
  ADD CONSTRAINT `db_keystore_ibfk_1` FOREIGN KEY (`id_db_usuarios`) REFERENCES `db_usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
