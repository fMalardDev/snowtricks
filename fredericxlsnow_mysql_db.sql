-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Hôte : fredericxlsnow.mysql.db
-- Généré le : mer. 18 mai 2022 à 12:10
-- Version du serveur : 5.6.50-log
-- Version de PHP : 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fredericxlsnow`
--
CREATE DATABASE IF NOT EXISTS `fredericxlsnow` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fredericxlsnow`;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `auteur_id` int(11) DEFAULT NULL,
  `figure_id` int(11) NOT NULL,
  `date_creation` datetime NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `signale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `auteur_id`, `figure_id`, `date_creation`, `contenu`, `signale`) VALUES
(13, 3, 1, '2020-01-05 15:08:45', 'Facilis fugit velit laudantium sit a. Consequatur sit nulla id esse. Omnis rem accusamus nam.', NULL),
(14, 3, 2, '2020-01-05 15:08:45', 'Error est deserunt quo rerum eaque non qui esse. Assumenda et dignissimos ut quod et rerum ut. Excepturi dolores ab deleniti aperiam iste quia.', 0),
(15, 3, 8, '2020-01-05 15:08:45', 'Repellendus similique deserunt distinctio praesentium hic nisi. Eligendi quia placeat accusamus sit deleniti ea dignissimos. Facere praesentium culpa laborum maiores laborum.', NULL),
(16, 3, 10, '2020-01-05 15:08:45', 'Debitis fuga placeat iusto expedita velit autem molestiae. Est maxime ut magni tenetur. Quia odio a iste molestiae.', NULL),
(18, 3, 21, '2020-01-05 15:08:45', 'Beatae quos fugiat voluptas quos. Ab voluptatibus quis ipsum delectus et beatae. Qui natus error qui pariatur veniam rerum mollitia animi.', NULL),
(19, 3, 24, '2020-01-05 15:08:45', 'Excepturi porro et quam vel molestiae soluta blanditiis. Quae enim recusandae sed consequatur repudiandae. At quia accusantium veniam perferendis in.', NULL),
(20, 3, 25, '2020-01-05 15:08:45', 'Est molestiae fugit suscipit modi inventore. Quidem enim officiis culpa. Sint quibusdam recusandae illum occaecati totam voluptates.', NULL),
(21, 4, 4, '2020-01-05 15:08:45', 'Explicabo voluptatem perferendis aut et. Et repudiandae iure debitis quos sit est. Quia omnis necessitatibus sequi et aliquid eos velit.', NULL),
(22, 4, 5, '2020-01-05 15:08:45', 'Rem dolore voluptas occaecati beatae itaque. Quisquam odit ut aut impedit facilis. Laudantium consequatur autem eum dignissimos ut qui id.', 0),
(23, 4, 7, '2020-01-05 15:08:45', 'Ducimus qui dolorem facere porro voluptatem facilis. Occaecati sunt recusandae et. Nulla dolores fuga voluptate quia.', NULL),
(24, 4, 8, '2020-01-05 15:08:45', 'Dolor accusantium et nisi fugit quia sunt accusamus. Labore cupiditate qui corrupti consequuntur qui distinctio dignissimos dolores. Consequatur corrupti hic aut aut.', NULL),
(25, 4, 17, '2020-01-05 15:08:45', 'Ipsam et eius omnis est omnis. Laborum facilis sit officiis at. Beatae consequatur repellendus dolore quia illum corrupti.', NULL),
(26, 4, 19, '2020-01-05 15:08:45', 'Porro et unde blanditiis provident necessitatibus in nostrum. Pariatur non expedita mollitia soluta est voluptas similique nulla. Harum et minus quidem ab in sed non sunt.', NULL),
(27, 5, 4, '2020-01-05 15:08:45', 'Nobis aspernatur aperiam qui et. Eos non rerum id veniam eligendi fuga suscipit. Quas dolor et qui aut est velit.', NULL),
(28, 5, 7, '2020-01-05 15:08:45', 'Pariatur deleniti reprehenderit sed beatae ea dolorem id. Repellendus quis porro voluptatem. Sed harum fugit nisi similique.', NULL),
(29, 5, 19, '2020-01-05 15:08:45', 'Temporibus aut omnis suscipit optio ut qui et. Ea quia modi ab cumque cupiditate. Dolor ad ut sed minus inventore maxime.', NULL),
(30, 5, 20, '2020-01-05 15:08:45', 'Necessitatibus corrupti veritatis quidem quia. Fugit debitis velit voluptatibus quo ex quos nam. Magnam commodi nihil sed quaerat dolorem.', NULL),
(31, 5, 21, '2020-01-05 15:08:45', 'Perspiciatis sint vel fugiat neque nulla. Est quaerat rerum laudantium ut porro omnis. Et ea et voluptas doloremque illum quibusdam a beatae.', NULL),
(32, 6, 3, '2020-01-05 15:08:45', 'Ipsum dolorem et neque enim. Repudiandae aliquid est aut. Explicabo enim quia aut blanditiis sit perspiciatis.', 0),
(33, 6, 9, '2020-01-05 15:08:45', 'Consequatur nam labore sunt suscipit qui dolores tempore. Quos sit consequatur incidunt eaque ab sed natus. Autem tempore eveniet accusantium sunt omnis quae eos.', NULL),
(35, 6, 22, '2020-01-05 15:08:45', 'Nulla quo et maiores sint laboriosam. Magni maiores similique excepturi dolorem quaerat accusamus. Debitis ut iusto recusandae cumque.', NULL),
(36, 6, 24, '2020-01-05 15:08:45', 'Repudiandae est debitis quo ut fuga. Nihil tenetur velit numquam est. At delectus ipsam et.', NULL),
(37, 7, 1, '2020-01-05 15:08:45', 'Et inventore id quidem ut quisquam. Nemo similique quasi neque dicta aut sed sunt qui. Maxime voluptate eveniet et sunt omnis veritatis.', 1),
(38, 7, 6, '2020-01-05 15:08:45', 'Aliquam qui molestias minima eligendi aspernatur aut voluptatum qui. Dicta consequatur dolor velit vero eum assumenda illo mollitia. Ut vel expedita distinctio eos.', 1),
(39, 7, 14, '2020-01-05 15:08:45', 'Ducimus aspernatur id voluptatem consequatur. Necessitatibus esse non sapiente consequuntur omnis velit. Voluptatum et ratione odio iusto excepturi.', NULL),
(40, 7, 23, '2020-01-05 15:08:45', 'Autem maiores repellat sunt suscipit officia voluptatem placeat vero. In dolor explicabo velit eum. Quia illum aut quos corporis.', NULL),
(41, 8, 16, '2020-01-05 15:08:45', 'Et officiis molestias laboriosam in. Saepe et vel et. Dolores rem laboriosam id saepe laudantium accusamus.', 1),
(42, 8, 17, '2020-01-05 15:08:45', 'Sapiente molestiae et fuga aut sequi. In tenetur alias doloremque dolore aut dicta. Aut voluptate et enim molestiae perferendis assumenda aut.', 1),
(43, 26, 2, '2020-01-07 22:17:52', 'srtst', NULL),
(44, 26, 2, '2020-01-07 22:17:58', 'srtstsryrsy', NULL),
(45, 26, 2, '2020-01-07 22:18:04', 'eqryqerty', NULL),
(46, 26, 2, '2020-01-07 22:18:10', 'strysrtusrtu', NULL),
(47, 26, 2, '2020-01-07 22:18:16', 'rtsyrtu', NULL),
(48, 26, 2, '2020-01-07 22:18:23', 'rtjjydyj', NULL),
(49, 26, 2, '2020-01-07 22:18:29', 'trshjqrtjt', NULL),
(50, 26, 2, '2020-01-07 22:18:35', 'rtsjstyjys', NULL),
(51, 26, 2, '2020-01-07 22:18:41', 'erstry', NULL),
(52, 26, 2, '2020-01-07 22:19:58', 'erstry', NULL),
(53, 26, 26, '2020-01-09 21:03:58', 'Suspendisse a vehicula sem, at lobortis lacus. Mauris tincidunt faucibus eros, eu malesuada risus ullamcorper sit amet. Donec sit amet dolor quis enim dictum vulputate sed id risus. Morbi hendrerit eros ac sagittis blandit. Quisque sagittis tortor sed nunc ultricies fringilla.', NULL),
(54, 3, 26, '2020-01-09 21:10:58', 'Curabitur dictum quam quis erat cursus viverra. Sed aliquet molestie posuere. Nunc commodo urna quam, eu pharetra nisi tristique nec. Nunc interdum urna vel gravida dapibus. Duis eu est tincidunt, pretium justo sed, iaculis ipsum. Fusce molestie nisl dui.', NULL),
(55, 3, 26, '2020-01-09 21:11:24', 'Pellentesque vel gravida ex. Suspendisse accumsan mi at enim accumsan, pretium fermentum ex laoreet. Aliquam vestibulum turpis non sodales condimentum. Praesent odio sem, consectetur quis metus sit amet, gravida fringilla nulla. In vitae blandit dolor, non convallis metus. Donec orci nunc, varius eget cursus id, scelerisque vitae lectus. Nulla libero tortor, tincidunt et enim at, ornare vestibulum enim. Curabitur felis quam, mollis quis neque ac, bibendum elementum nisi. Etiam quis arcu ut dolor ornare posuere. Aliquam cursus dui ut nibh hendrerit, quis volutpat elit lacinia. Vivamus erat turpis, volutpat vel ullamcorper sit amet, pretium vel massa. Nunc nec diam finibus, blandit arcu in, ullamcorper odio. Phasellus ullamcorper, dui ut mollis convallis, elit ligula congue erat, ac vehicula nisl est convallis risus. Fusce erat turpis, commodo id ante aliquam, varius lacinia est. Proin consequat quam quis nibh ultricies, sit amet sollicitudin leo feugiat.', NULL),
(56, 4, 26, '2020-01-09 21:12:21', 'Curabitur venenatis bibendum elit ut pretium.', 1),
(57, 4, 26, '2020-01-09 21:12:36', 'non ?', NULL),
(58, 3, 26, '2020-01-09 21:13:58', 'Nunc facilisis lacinia vulputate. Phasellus volutpat elementum lectus, eu placerat orci consequat sit amet.', NULL),
(59, 5, 26, '2020-01-09 21:14:50', 'Fusce ut nisl rutrum, viverra lorem faucibus, suscipit turpis. Maecenas dignissim turpis a sagittis pellentesque. Quisque faucibus laoreet ex, posuere luctus dui rutrum vitae.', NULL),
(60, 5, 26, '2020-01-09 21:15:18', 'Curabitur ultricies tristique sapien, eu consequat nulla. Aenean metus lorem, iaculis in faucibus ut, tempor sit amet massa. Cras maximus est sed turpis placerat, vitae imperdiet orci lacinia. Curabitur consequat enim elit, sed venenatis urna euismod eget. Nunc sollicitudin pretium quam id volutpat.', NULL),
(61, 5, 26, '2020-01-09 21:15:43', 'Praesent nisl dui, dignissim non interdum at, ullamcorper sed dolor. Phasellus non ligula bibendum metus dictum cursus. Cras at purus imperdiet, sodales erat a, iaculis augue. Nunc eget felis posuere nulla dignissim vestibulum.', NULL),
(62, 6, 26, '2020-01-09 21:16:31', 'Curabitur porttitor felis ac lorem feugiat feugiat. Ut ornare semper dolor, a aliquam purus vehicula in. Maecenas vel elementum nisl. Cras facilisis lorem velit, id molestie mauris ultricies id.', NULL),
(63, 6, 26, '2020-01-09 21:16:58', 'Suspendisse potenti. Ut nec arcu a arcu lobortis malesuada. Mauris cursus nisi nisi, ac faucibus eros iaculis et. Nullam odio arcu, blandit malesuada ipsum sit amet, feugiat vehicula est. Nullam vestibulum rhoncus est, ornare mollis turpis blandit quis. Vivamus sagittis, lacus in tempor condimentum, magna erat varius metus, ut interdum metus lacus quis ligula. Aliquam volutpat tempus enim, et viverra lorem tempor dapibus. Suspendisse convallis eros non ante porttitor lobortis. Aenean eu massa ac risus volutpat suscipit vitae nec massa.', 1),
(69, 35, 26, '2020-01-10 21:08:13', 'un commentaire', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `difficulte`
--

CREATE TABLE `difficulte` (
  `id` int(11) NOT NULL,
  `notant_id` int(11) NOT NULL,
  `figure_id` int(11) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `difficulte`
--

INSERT INTO `difficulte` (`id`, `notant_id`, `figure_id`, `note`) VALUES
(9, 3, 4, 5),
(10, 3, 6, 10),
(11, 3, 9, 8),
(12, 3, 10, 2),
(13, 3, 14, 3),
(14, 3, 16, 7),
(15, 4, 12, 4),
(16, 5, 9, 5),
(17, 5, 11, 4),
(18, 5, 12, 1),
(19, 5, 13, 4),
(20, 5, 20, 3),
(21, 6, 6, 8),
(22, 7, 10, 1),
(23, 7, 20, 3),
(24, 7, 24, 7),
(25, 8, 1, 3),
(26, 26, 26, 6),
(28, 27, 26, 8),
(34, 35, 26, 2);

-- --------------------------------------------------------

--
-- Structure de la table `figure`
--

CREATE TABLE `figure` (
  `id` int(11) NOT NULL,
  `editeur_id` int(11) DEFAULT NULL,
  `groupe_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` datetime NOT NULL,
  `date_modification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `figure`
--

INSERT INTO `figure` (`id`, `editeur_id`, `groupe_id`, `nom`, `description`, `slug`, `date_creation`, `date_modification`) VALUES
(1, 8, 1, 'regular', 'Détermine la position sur la planche. Un rider regular aura le pied gauche devant.', 'regular', '2019-03-04 12:36:19', NULL),
(2, 3, 1, 'goofy', 'Détermine la position sur la planche. Un rider goofy aura le pied droit devant.', 'goofy', '2019-05-21 03:13:28', NULL),
(3, 4, 2, 'mute', 'Saisie de la carre frontside de la planche entre les deux pieds avec la main avant.', 'mute', '2019-05-13 12:39:09', NULL),
(4, NULL, 2, 'sad', 'Saisie de la carre backside de la planche, entre les deux pieds, avec la main avant. Aussi appelé \"melancholie\" ou \"style week\"', 'sad', '2019-12-09 23:25:25', '2020-01-07 11:37:25'),
(5, 5, 2, 'indy', 'Saisie de la carre frontside de la planche, entre les deux pieds, avec la main arrière.', 'indy', '2019-10-24 11:34:47', NULL),
(6, NULL, 2, 'stalefish', 'Saisie de la carre backside de la planche entre les deux pieds avec la main arrière.', 'stalefish', '2019-03-20 15:25:57', '2020-01-07 11:37:25'),
(7, 8, 2, 'tail', 'Saisie de la partie arrière de la planche, avec la main arrière.', 'tail', '2019-09-09 19:52:28', NULL),
(8, 6, 2, 'nose', 'Saisie de la partie avant de la planche, avec la main avant.', 'nose', '2019-04-17 23:26:01', NULL),
(9, 7, 2, 'japan', 'Saisie de l\'avant de la planche, avec la main avant, du côté de la carre frontside. Aussi appelé \"japan air\".', 'japan', '2019-07-21 03:33:49', NULL),
(10, 4, 2, 'seatbelt', 'Saisie du carre frontside à l\'arrière avec la main avant.', 'seatbelt', '2019-10-28 18:25:17', NULL),
(11, 3, 2, 'truckdriver', 'Saisie du carre frontside à l\'arrière avec la main avant.', 'truckdriver', '2019-03-05 20:51:33', NULL),
(12, 7, 3, '180', 'Un 180 désigne un demi-tour, soit 180 degrés d\'angle.', '180', '2019-10-15 12:56:00', NULL),
(13, NULL, 3, '360', '360, trois six pour un tour complet.', '360', '2019-05-11 15:04:21', '2020-01-07 11:38:18'),
(14, 7, 3, '540', '540, cinq quatre pour un tour et demi.', '540', '2019-10-08 12:01:30', NULL),
(15, 8, 3, '720', '720, sept deux pour deux tours complets.', '720', '2019-07-21 14:53:08', NULL),
(16, 3, 3, '900', '900 pour deux tours et demi.', '900', '2019-08-22 23:28:03', NULL),
(17, 6, 3, '1080', '1080 ou big foot pour trois tours.', '1080', '2019-03-23 07:38:54', NULL),
(18, NULL, 4, 'frontflip', 'Rotations en avant.', 'frontflip', '2019-03-16 05:49:57', '2020-01-07 11:37:25'),
(19, 7, 4, 'backflip', 'Rotations en arrière.', 'backflip', '2019-08-17 04:43:49', NULL),
(20, 6, 5, 'cork540', 'Une rotation désaxée est une rotation initialement horizontale mais lancée avec un mouvement des épaules particulier qui désaxe la rotation. Il existe différents types de rotations désaxées (corkscrew ou cork, rodeo, misty, etc.) en fonction de la manière dont est lancé le buste. Le cork 540 est un 540 combiné avec un backflip.', 'cork540', '2019-03-18 05:17:12', '2020-01-09 20:52:52'),
(21, 3, 6, 'slide', 'Un slide consiste à glisser sur une barre de slide. Le slide se fait soit avec la planche dans l\'axe de la barre, soit perpendiculaire, soit plus ou moins désaxé.', 'slide', '2019-05-19 04:41:33', NULL),
(22, 4, 6, 'nose slide', 'Un slide consiste à glisser sur une barre de slide. Le slide se fait soit avec la planche dans l\'axe de la barre, soit perpendiculaire, soit plus ou moins désaxé. Un nose slide est un slide fait sur l\'avant de la planche.', 'nose-slide', '2019-09-21 22:23:40', NULL),
(23, 5, 6, 'tail slide', 'Un slide consiste à glisser sur une barre de slide. Le slide se fait soit avec la planche dans l\'axe de la barre, soit perpendiculaire, soit plus ou moins désaxé. Un tail slide est un slide fait sur l\'arrière de la planche.', 'tail-slide', '2019-11-25 15:04:24', NULL),
(24, 4, 7, 'one foot trick', 'Figures réalisée avec un pied décroché de la fixation, afin de tendre la jambe correspondante pour mettre en évidence le fait que le pied n\'est pas fixé. Ce type de figure est extrêmement dangereuse pour les ligaments du genou en cas de mauvaise réception.', 'one-foot-trick', '2019-09-06 14:21:39', NULL),
(25, 3, 8, 'rocket air', 'Attrapez l\'avant de la planche et mettez la planche a la verticale.', 'rocket-air', '2019-02-17 16:24:11', NULL),
(26, 26, 5, 'cork 360', 'Cette rotation désaxée est une sorte de combinaison de backflip / frontflip et de rotation 360 (tour complet).', 'cork-360', '2020-01-09 20:51:57', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `figure_figure`
--

CREATE TABLE `figure_figure` (
  `figure_source` int(11) NOT NULL,
  `figure_target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `figure_figure`
--

INSERT INTO `figure_figure` (`figure_source`, `figure_target`) VALUES
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 14),
(20, 26),
(21, 1),
(21, 2),
(22, 21),
(23, 21),
(25, 1),
(25, 2),
(26, 13),
(26, 18),
(26, 19);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id`, `nom`, `slug`) VALUES
(1, 'ride', 'ride'),
(2, 'grab', 'grab'),
(3, 'rotation', 'rotation'),
(4, 'flip', 'flip'),
(5, 'rotation désaxée', 'rotation-desaxee'),
(6, 'slide', 'slide'),
(7, 'one foot trick', 'one-foot-trick'),
(8, 'old school', 'old-school');

-- --------------------------------------------------------

--
-- Structure de la table `illustration`
--

CREATE TABLE `illustration` (
  `id` int(11) NOT NULL,
  `figure_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `illustration`
--

INSERT INTO `illustration` (`id`, `figure_id`, `url`, `alt`) VALUES
(1, 1, '/illustrations/regular-1.jpg', 'photo regular-1.jpg'),
(2, 1, '/illustrations/regular-2.jpg', 'photo regular-2.jpg'),
(3, 1, '/illustrations/regular-goofy-1.jpg', 'photo regular-goofy-1.jpg'),
(4, 1, '/illustrations/regular-goofy-2.jpg', 'photo regular-goofy-2.jpg'),
(5, 1, '/illustrations/regular-goofy-3.jpg', 'photo regular-goofy-3.jpg'),
(6, 1, '/illustrations/regular-goofy-4.jpg', 'photo regular-goofy-4.jpg'),
(7, 2, '/illustrations/goofy-1.jpg', 'photo goofy-1.jpg'),
(8, 2, '/illustrations/regular-goofy-1.jpg', 'photo regular-goofy-1.jpg'),
(9, 2, '/illustrations/regular-goofy-2.jpg', 'photo regular-goofy-2.jpg'),
(10, 2, '/illustrations/regular-goofy-3.jpg', 'photo regular-goofy-3.jpg'),
(11, 2, '/illustrations/regular-goofy-4.jpg', 'photo regular-goofy-4.jpg'),
(12, 3, '/illustrations/mute-grab-1.png', 'photo mute-grab-1.png'),
(13, 3, '/illustrations/grabs-1.jpg', 'photo grabs-1.jpg'),
(14, 3, '/illustrations/grabs-2.png', 'photo grabs-2.png'),
(15, 3, '/illustrations/grabs-3.jpg', 'photo grabs-3.jpg'),
(16, 4, '/illustrations/sad-1.jpg', 'photo sad-1.jpg'),
(17, 5, '/illustrations/indy-1.jpg', 'photo indy-1.jpg'),
(18, 5, '/illustrations/indy-2.jpg', 'photo indy-2.jpg'),
(19, 5, '/illustrations/indy-3.jpg', 'photo indy-3.jpg'),
(20, 5, '/illustrations/indy-4.jpg', 'photo indy-4.jpg'),
(21, 5, '/illustrations/grabs-1.jpg', 'photo grabs-1.jpg'),
(22, 5, '/illustrations/grabs-2.png', 'photo grabs-2.png'),
(23, 5, '/illustrations/grabs-3.jpg', 'photo grabs-3.jpg'),
(24, 6, '/illustrations/stalefish-1.jpg', 'photo stalefish-1.jpg'),
(25, 6, '/illustrations/stalefish-2.jpg', 'photo stalefish-2.jpg'),
(26, 6, '/illustrations/grabs-1.jpg', 'photo grabs-1.jpg'),
(27, 6, '/illustrations/grabs-2.png', 'photo grabs-2.png'),
(28, 6, '/illustrations/grabs-3.jpg', 'photo grabs-3.jpg'),
(29, 7, '/illustrations/tail-1.jpg', 'photo tail-1.jpg'),
(30, 7, '/illustrations/tail-2.jpg', 'photo tail-2.jpg'),
(31, 7, '/illustrations/tail-3.jpg', 'photo tail-3.jpg'),
(32, 7, '/illustrations/tail-4.jpg', 'photo tail-4.jpg'),
(33, 7, '/illustrations/tail-5.jpg', 'photo tail-5.jpg'),
(34, 7, '/illustrations/tail-6.jpg', 'photo tail-6.jpg'),
(35, 7, '/illustrations/grabs-1.jpg', 'photo grabs-1.jpg'),
(36, 7, '/illustrations/grabs-2.png', 'photo grabs-2.png'),
(37, 7, '/illustrations/grabs-3.jpg', 'photo grabs-3.jpg'),
(38, 8, '/illustrations/nose-1.jpg', 'photo nose-1.jpg'),
(39, 8, '/illustrations/nose-2.jpg', 'photo nose-2.jpg'),
(40, 8, '/illustrations/nose-3.jpg', 'photo nose-3.jpg'),
(41, 8, '/illustrations/grabs-1.jpg', 'photo grabs-1.jpg'),
(42, 8, '/illustrations/grabs-2.png', 'photo grabs-2.png'),
(43, 8, '/illustrations/grabs-3.jpg', 'photo grabs-3.jpg'),
(44, 9, '/illustrations/japan-1.jpg', 'photo japan-1.jpg'),
(45, 9, '/illustrations/japan-2.jpg', 'photo japan-2.jpg'),
(46, 9, '/illustrations/grabs-1.jpg', 'photo grabs-1.jpg'),
(47, 9, '/illustrations/grabs-2.png', 'photo grabs-2.png'),
(48, 9, '/illustrations/grabs-3.jpg', 'photo grabs-3.jpg'),
(49, 10, '/illustrations/seatbelt-1.jpg', 'photo seatbelt-1.jpg'),
(50, 10, '/illustrations/seatbelt-2.jpg', 'photo seatbelt-2.jpg'),
(51, 10, '/illustrations/grabs-1.jpg', 'photo grabs-1.jpg'),
(52, 10, '/illustrations/grabs-2.png', 'photo grabs-2.png'),
(53, 10, '/illustrations/grabs-3.jpg', 'photo grabs-3.jpg'),
(54, 11, '/illustrations/truck-driver-1.jpg', 'photo truck-driver-1.jpg'),
(55, 11, '/illustrations/grabs-1.jpg', 'photo grabs-1.jpg'),
(56, 11, '/illustrations/grabs-2.png', 'photo grabs-2.png'),
(57, 11, '/illustrations/grabs-3.jpg', 'photo grabs-3.jpg'),
(58, 18, '/illustrations/front-flip-1.jpg', 'photo front-flip-1.jpg'),
(59, 18, '/illustrations/front-flip-2.jpg', 'photo front-flip-2.jpg'),
(60, 18, '/illustrations/front-flip-3.jpg', 'photo front-flip-3.jpg'),
(61, 18, '/illustrations/front-flip-4.jpg', 'photo front-flip-4.jpg'),
(62, 19, '/illustrations/back-flip-1.jpg', 'photo back-flip-1.jpg'),
(63, 19, '/illustrations/back-flip-2.jpg', 'photo back-flip-2.jpg'),
(64, 19, '/illustrations/back-flip-3.jpg', 'photo back-flip-3.jpg'),
(65, 20, '/illustrations/cork540-1.jpg', 'photo cork540-1.jpg'),
(66, 20, '/illustrations/cork540-2.jpg', 'photo cork540-2.jpg'),
(67, 21, '/illustrations/slide-1.jpg', 'photo slide-1.jpg'),
(68, 21, '/illustrations/slide-2.jpg', 'photo slide-2.jpg'),
(69, 22, '/illustrations/nose-slide-1.jpg', 'photo nose-slide-1.jpg'),
(70, 23, '/illustrations/tail-slide-1.jpg', 'photo tail-slide-1.jpg'),
(71, 24, '/illustrations/one-foot-trick-1.jpg', 'photo one-foot-trick-1.jpg'),
(72, 24, '/illustrations/one-foot-trick-2.jpg', 'photo one-foot-trick-2.jpg'),
(73, 24, '/illustrations/one-foot-trick-3.jpg', 'photo one-foot-trick-3.jpg'),
(74, 25, '/illustrations/rocket-air-1.jpg', 'photo rocket-air-1.jpg'),
(75, 25, '/illustrations/rocket-air-2.jpg', 'photo rocket-air-2.jpg'),
(76, 25, '/illustrations/rocket-air-3.jpg', 'photo rocket-air-3.jpg'),
(77, 26, '/illustrations/49782888.jpeg', 'une illustration de la figure cork 360'),
(78, 26, '/illustrations/649632196.jpeg', 'une illustration de la figure cork 360');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mot_de_passe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_verifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reinitialisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `login`, `mot_de_passe`, `mail`, `role`, `avatar`, `slug`, `a_verifier`, `reinitialisation`) VALUES
(3, 'quidem2273', '$argon2i$v=19$m=65536,t=4,p=1$ZHd5Szk1OFE2aXlUN3FDLg$nJYepGUgllpKagt4RXBkM2B1sIUvsMSWJoSmiyIHNEs', 'astrid43@heller.org', 'utilisateur', '/avatars/3.png', 'quidem2273', NULL, NULL),
(4, 'ut9887', '$argon2i$v=19$m=65536,t=4,p=1$WDZQVEV3UWc4cjB1Q041NQ$TvEZebKsBVVLzLdKrhWpA/WDyqvVMpWi/dqMzygXL5Q', 'ehuels@hotmail.com', 'utilisateur', '/avatars/4.png', 'ut9887', NULL, NULL),
(5, 'deserunt1099', '$argon2i$v=19$m=65536,t=4,p=1$ODdVNHdBTFRKT01raEo4Mg$jAciwYtm6xx47SAgpx+8bwxO/HF0HJzh/z4wOKDiJjM', 'koelpin.kris@sporer.info', 'utilisateur', '/avatars/5.png', 'deserunt1099', NULL, NULL),
(6, 'blanditiis1111', '$argon2i$v=19$m=65536,t=4,p=1$bndTVnhIQWlNdHBLUFpILw$5oZtqs29Pn4HA7or9j0BsY+lrYRTZMWXLuVd4j5IcGI', 'zprohaska@osinski.com', 'utilisateur', '/avatars/6.png', 'blanditiis1111', NULL, NULL),
(7, 'sapiente7428', '$argon2i$v=19$m=65536,t=4,p=1$MFNSdXV1eHBJdzczUDloaw$B5DxZyXfE59P4mEZnrIPcuekqdgqPYDEq8GoM/p1zCQ', 'anderson.heath@yahoo.com', 'utilisateur', '/avatars/7.png', 'sapiente7428', NULL, NULL),
(8, 'quia7648', '$argon2i$v=19$m=65536,t=4,p=1$eFV5aGpLM3N2OGVNMk9leg$bm1GtqQWZnx+2o2+Rddb5fwOOc7/mUjWoG63lj52RkQ', 'adams.carole@okuneva.com', 'utilisateur', NULL, 'quia7648', NULL, NULL),
(26, 'nouvelAdmin', '$argon2i$v=19$m=65536,t=4,p=1$ckZMbklXQ2tqbUtvS0pJRw$OFem4I5ukh8fhxYP9N9TWNl2cAX2g7ybmJjzbx5+dZU', 'fred.mgm2@gmail.com', 'administrateur', NULL, 'nouveladmin', NULL, NULL),
(27, 'nouveauModo', '$argon2i$v=19$m=65536,t=4,p=1$eFRXSnAwMzdqN0QxU1RZZg$FolSs+l4BWl0VShhJrRA59VOYBm1gTEZa3cUjpIZw5I', 'fred.mgm2@gmail.com', 'moderateur', NULL, 'nouveaumodo', NULL, NULL),
(29, 'Depuismobile', '$argon2i$v=19$m=65536,t=4,p=1$TE5NZTJCY0RqWUtvLlUzWA$GEaJU5KM3OGQOMDy8KrUpmsjauocauvj1DqBdvhKflw', 'fred.mgm2@gmail.com', 'utilisateur', NULL, 'depuismobile', NULL, NULL),
(34, 'johndoe', '$argon2i$v=19$m=65536,t=4,p=1$TGdKRzhDTWguL1hoREdDMA$ofsu8mp1vUFHxS/9xirVKlVmMDNo4FOav8SDufg4WGg', 'johndoe@yopmail.com', 'utilisateur', NULL, 'johndoe', NULL, NULL),
(35, 'nouvelUtilisateur', '$argon2i$v=19$m=65536,t=4,p=1$T3pUc1VkV1E4VkV5UkpoZg$KT0vbfmQl76/b/FcueMipKHUra1nMBnvuYAY9uf7BPM', 'fred.mgm2@gmail.com', 'utilisateur', '/avatars/109912272.png', 'nouvelutilisateur', NULL, NULL),
(36, 'exemple', '$argon2i$v=19$m=65536,t=4,p=1$cnpJY0k3WW5KcXBYaGhCRw$VaJToRqnVJS0L4J9rxKonf3lGUW8i028xA+QUXnuOpY', 'fred.mgm2@gmail.com', 'utilisateur', NULL, 'exemple', NULL, NULL),
(37, 'iboite', '$argon2i$v=19$m=65536,t=4,p=1$QkRuN2ouazA4OGVPT0xCUg$Ag5yVRJ66vLa196SbJbNZFwagSarkkrSHYEz+f6kiIs', 'iboite@yahoo.fr', 'utilisateur', NULL, 'iboite', 'c56babeba42a', NULL),
(38, 'test', '$argon2i$v=19$m=65536,t=4,p=1$Q00wY3hGbGxlWGQwVC4wQQ$ip9EmikozBslgK5taS655vp4EDvpbWh2TlTdPdzOZKk', 'test@test.com', 'utilisateur', NULL, 'test', '45b53d0775e1', NULL),
(39, 'tesdt', '$argon2i$v=19$m=65536,t=4,p=1$SklGSWFISDJ4QzBlUXNMeQ$lBlMkqnLZr/NTgFcFxiNctwt8gWI60VbSzDeuXD6seU', 'test@gmail.com', 'utilisateur', '/avatars/180762432.jpeg', 'tesdt', '3f04a8c035ad', NULL),
(40, 'rinho', '$argon2i$v=19$m=65536,t=4,p=1$cE45OFRpN3J5MVdLcmpQTA$9Je67hjYhDvP0RfXm9HhH/yn0dzFZfe4vacwNYHk0gc', 'dragonoffairy@gmail.com', 'utilisateur', NULL, 'rinho', 'c263eb97d452', NULL),
(41, 'soulkaiser', '$argon2i$v=19$m=65536,t=4,p=1$SVNnSGIxZ1lzV2tOdHFmYg$kZrI8JoNg+bMJ2tyLGfQX/whGQWRcZyfFJ+6NzNnhoQ', 'ksoulkaiser@gmail.com', 'utilisateur', NULL, 'soulkaiser', '1af0a8268c2c', NULL),
(42, 'elfepee', '$argon2i$v=19$m=65536,t=4,p=1$UTY3Qk1aYkFwdVZrNWN5VA$V5hCp7hdgOtLKkVMlZQl1BqpT8tgN5PlGHtqmx8T9UM', 'tristan.meillat28@gmail.com', 'utilisateur', NULL, 'elfepee', '9e97e335f859', NULL),
(43, 'LeZellus', '$argon2i$v=19$m=65536,t=4,p=1$WnZSUTBHSFpKc0RQbTFycw$jEi8vHLWepVr2sAwdkA09D77LEjoNaB8UL1ewvWAfd4', 'matheo.zeller@gmail.com', 'utilisateur', '/avatars/549223514.png', 'lezellus', '0ad1f70930f0', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_figure`
--

CREATE TABLE `utilisateur_figure` (
  `utilisateur_id` int(11) NOT NULL,
  `figure_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur_figure`
--

INSERT INTO `utilisateur_figure` (`utilisateur_id`, `figure_id`) VALUES
(3, 18),
(4, 4),
(4, 8),
(4, 23),
(5, 11),
(5, 12),
(5, 16),
(5, 20),
(6, 3),
(6, 14),
(6, 20),
(7, 9),
(7, 10),
(7, 13),
(8, 4),
(8, 6),
(8, 11),
(8, 20),
(26, 2),
(34, 4),
(35, 26);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `figure_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `figure_id`, `url`, `alt`) VALUES
(1, 1, 'https://www.youtube.com/embed/u20epr7tSEU', 'video'),
(2, 2, 'https://www.youtube.com/embed/GcacU4p2W-o', 'video'),
(3, 3, 'https://www.youtube.com/embed/51sQRIK-TEI', 'video'),
(4, 3, 'https://www.youtube.com/embed/Opg5g4zsiGY', 'video'),
(5, 4, 'https://www.youtube.com/embed/KEdFwJ4SWq4', 'video'),
(6, 4, 'https://www.youtube.com/embed/CA5bURVJ5zk', 'video'),
(7, 5, 'https://www.youtube.com/embed/iKkhKekZNQ8', 'video'),
(8, 5, 'https://www.youtube.com/embed/6QsLhWzXGu0', 'video'),
(9, 5, 'https://www.youtube.com/embed/6yA3XqjTh_w', 'video'),
(10, 6, 'https://www.youtube.com/embed/f9FjhCt_w2U', 'video'),
(11, 7, 'https://www.youtube.com/embed/id8VKl9RVQw', 'video'),
(12, 7, 'https://www.youtube.com/embed/_Qq-YoXwNQY', 'video'),
(13, 8, 'https://www.youtube.com/embed/gZFWW4Vus-Q', 'video'),
(14, 8, 'https://www.youtube.com/embed/M-W7Pmo-YMY', 'video'),
(15, 9, 'https://www.youtube.com/embed/CzDjM7h_Fwo', 'video'),
(16, 9, 'https://www.youtube.com/embed/jH76540wSqU', 'video'),
(17, 10, 'https://www.youtube.com/embed/4vGEOYNGi_c', 'video'),
(18, 10, 'https://www.youtube.com/embed/eTx2uVcbLzM', 'video'),
(19, 12, 'https://www.youtube.com/embed/JMS2PGAFMcE', 'video'),
(20, 12, 'https://www.youtube.com/embed/GnYAlEt-s00', 'video'),
(21, 12, 'https://www.youtube.com/embed/ATMiAVTLsuc', 'video'),
(22, 13, 'https://www.youtube.com/embed/GS9MMT_bNn8', 'video'),
(23, 13, 'https://www.youtube.com/embed/hUddT6FGCws', 'video'),
(24, 13, 'https://www.youtube.com/embed/6gFsbU3GWF0', 'video'),
(25, 14, 'https://www.youtube.com/embed/_hJX9HrdkeA', 'video'),
(26, 14, 'https://www.youtube.com/embed/cdekJgZs9qY', 'video'),
(27, 14, 'https://www.youtube.com/embed/K0dx4qT4wrQ', 'video'),
(28, 15, 'https://www.youtube.com/embed/4JfBfQpG77o', 'video'),
(29, 15, 'https://www.youtube.com/embed/XkkUSEz3I00', 'video'),
(30, 15, 'https://www.youtube.com/embed/H0-apzROnqE', 'video'),
(31, 16, 'https://www.youtube.com/embed/g8QUV2Vl1Zw', 'video'),
(32, 16, 'https://www.youtube.com/embed/G7Hgj0i95Ag', 'video'),
(33, 16, 'https://www.youtube.com/embed/8ifvMImDkew', 'video'),
(34, 17, 'https://www.youtube.com/embed/VXb3IjPh3sI', 'video'),
(35, 17, 'https://www.youtube.com/embed/EsP0fzKi6Ac', 'video'),
(36, 18, 'https://www.youtube.com/embed/xhvqu2XBvI0', 'video'),
(37, 18, 'https://www.youtube.com/embed/eGJ8keB1-JM', 'video'),
(38, 18, 'https://www.youtube.com/embed/aTTkQ45DUfk', 'video'),
(39, 19, 'https://www.youtube.com/embed/SlhGVnFPTDE', 'video'),
(40, 19, 'https://www.youtube.com/embed/AMsWP9WJS_0', 'video'),
(41, 19, 'https://www.youtube.com/embed/arzLq-47QFA', 'video'),
(42, 20, 'https://www.youtube.com/embed/FMHiSF0rHF8', 'video'),
(43, 21, 'https://www.youtube.com/embed/WOgw5uBSLp0', 'video'),
(44, 21, 'https://www.youtube.com/embed/R3OG9rNDIcs', 'video'),
(45, 22, 'https://www.youtube.com/embed/oAK9mK7wWvw', 'video'),
(46, 23, 'https://www.youtube.com/embed/HRNXjMBakwM', 'video'),
(47, 23, 'https://www.youtube.com/embed/KqSi94FT7EE', 'video'),
(48, 24, 'https://www.youtube.com/embed/4IVdWdvsrVA', 'video'),
(49, 24, 'https://www.youtube.com/embed/d7dpo_G9npo', 'video'),
(50, 25, 'https://www.youtube.com/embed/4IVdWdvsrVA', 'video'),
(51, 25, 'https://www.youtube.com/embed/d7dpo_G9npo', 'video'),
(52, 26, 'https://www.youtube.com/embed/H0Izq1fAM5w', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_67F068BC60BB6FE6` (`auteur_id`),
  ADD KEY `IDX_67F068BC5C011B5` (`figure_id`);

--
-- Index pour la table `difficulte`
--
ALTER TABLE `difficulte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AF6A33A0FBB3368D` (`notant_id`),
  ADD KEY `IDX_AF6A33A05C011B5` (`figure_id`);

--
-- Index pour la table `figure`
--
ALTER TABLE `figure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2F57B37A3375BD21` (`editeur_id`),
  ADD KEY `IDX_2F57B37A7A45358C` (`groupe_id`);

--
-- Index pour la table `figure_figure`
--
ALTER TABLE `figure_figure`
  ADD PRIMARY KEY (`figure_source`,`figure_target`),
  ADD KEY `IDX_704016F49DDAFD` (`figure_source`),
  ADD KEY `IDX_704016F419788A72` (`figure_target`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `illustration`
--
ALTER TABLE `illustration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D67B9A425C011B5` (`figure_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur_figure`
--
ALTER TABLE `utilisateur_figure`
  ADD PRIMARY KEY (`utilisateur_id`,`figure_id`),
  ADD KEY `IDX_4EFA89F1FB88E14F` (`utilisateur_id`),
  ADD KEY `IDX_4EFA89F15C011B5` (`figure_id`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CC7DA2C5C011B5` (`figure_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `difficulte`
--
ALTER TABLE `difficulte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `figure`
--
ALTER TABLE `figure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `illustration`
--
ALTER TABLE `illustration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC5C011B5` FOREIGN KEY (`figure_id`) REFERENCES `figure` (`id`),
  ADD CONSTRAINT `FK_67F068BC60BB6FE6` FOREIGN KEY (`auteur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `difficulte`
--
ALTER TABLE `difficulte`
  ADD CONSTRAINT `FK_AF6A33A05C011B5` FOREIGN KEY (`figure_id`) REFERENCES `figure` (`id`),
  ADD CONSTRAINT `FK_AF6A33A0FBB3368D` FOREIGN KEY (`notant_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `figure`
--
ALTER TABLE `figure`
  ADD CONSTRAINT `FK_2F57B37A3375BD21` FOREIGN KEY (`editeur_id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `FK_2F57B37A7A45358C` FOREIGN KEY (`groupe_id`) REFERENCES `groupe` (`id`);

--
-- Contraintes pour la table `figure_figure`
--
ALTER TABLE `figure_figure`
  ADD CONSTRAINT `FK_704016F419788A72` FOREIGN KEY (`figure_target`) REFERENCES `figure` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_704016F49DDAFD` FOREIGN KEY (`figure_source`) REFERENCES `figure` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `illustration`
--
ALTER TABLE `illustration`
  ADD CONSTRAINT `FK_D67B9A425C011B5` FOREIGN KEY (`figure_id`) REFERENCES `figure` (`id`);

--
-- Contraintes pour la table `utilisateur_figure`
--
ALTER TABLE `utilisateur_figure`
  ADD CONSTRAINT `FK_4EFA89F15C011B5` FOREIGN KEY (`figure_id`) REFERENCES `figure` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4EFA89F1FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2C5C011B5` FOREIGN KEY (`figure_id`) REFERENCES `figure` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
