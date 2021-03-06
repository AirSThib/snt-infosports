-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 06 Mars 2021 à 09:47
-- Version du serveur :  5.7.33-0ubuntu0.16.04.1
-- Version de PHP :  7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `infosports`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `admins`
--

INSERT INTO `admins` (`id`, `user`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `author` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `mainCategory` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `author`, `date`, `time`, `mainCategory`, `image`, `published`) VALUES
(1, 'Filippo Ganna remporte le contre-la-montre de l\'UAE Tour, Tadej Pogačar est le nouveau maillot rouge', 1, '2021-02-22', '16:43:06', 2, 1, 1),
(2, 'Plus que jamais, le "vieux" Djokovic va tout miser sur les Grands Chelemens', 2, '2021-02-22', '19:37:01', 4, 2, 1),
(3, 'Composition du Barça : Messi, Lenglet, Dembélé et Griezmann d\'entrée contre Cadix', 2, '2021-02-22', '19:46:01', 3, 3, 1),
(4, 'Pogacar, Alaphilippe, Froome et Geoghegan Hart, têtes d\'affiche du Critérium du Dauphiné 2021', 1, '2021-02-22', '19:48:58', 2, 4, 1),
(5, 'Déjà qualifiés pour l\'Euro-2022, les français surclassés par la Grande-Bretagne', 2, '2021-02-22', '19:53:30', 1, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `articles-contents`
--

CREATE TABLE `articles-contents` (
  `id` int(11) NOT NULL,
  `article` int(11) NOT NULL,
  `content` text COLLATE utf8_general_mysql500_ci NOT NULL,
  `author` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `articles-contents`
--

INSERT INTO `articles-contents` (`id`, `article`, `content`, `author`, `date`, `time`) VALUES
(1, 1, 'Hudayriyat Island, 22 février 2021 - Le champion du monde ITT Filippo Ganna (Ineos Grenadiers) a remporté l\'étape 2, la scène du Conseil des sports d\'Abou Dhabi, de la troisième édition du UAE Tour, devant Stefan Bissegger (EF Education - Nippo) et Mikkel Bjerg (UAE Team Emirates) sur un ITT de 13 km sur l\'île d\'Hudayriyat. Tadej Pogačar (UAE Team Emirates) est le nouveau leader du GC et a reçu le maillot rouge.\r\n\r\nRésultat de l\'étape\r\n<ol>\r\n<li>Filippo Ganna (Ineos Grenadiers), 13 km en 13,56 pouces, vitesse moyenne 55,981 km/h</li>\r\n<li>Stefan Bissegger (EF Education - Nippo) à 14 ″</li>\r\n<li>Mikkel Bjerg (UAE Team Emirates) à 21 ″</li>\r\n\r\nMaillots\r\nLe maillot rouge, sponsorisé par ADNOC (Classement général individuel par temps) - Tadej Pogačar (UAE Team Emirates)\r\nLe maillot vert, sponsorisé par Etisalat (Classement général individuel par points) - João Almeida (Deceuninck - Quick-Step)\r\nLe maillot blanc, sponsorisé par Nakheel (Meilleur jeune cavalier né après le 1er janvier 1996) - Tadej Pogačar (UAE Team Emirates)\r\nLe maillot noir, sponsorisé par Abu Dhabi Aviation (classification intermédiaire du maillot de sprint) - João Almeida (Deceuninck - Quick-Step)\r\n\r\n<b>Classement général</b>\r\n<ol>\r\n<li>Tadej Pogačar (UAE Team Emirates)</li>\r\n<li>João Almeida (Deceuninck - Quick-Step) à 5 ″</li\r\n<li>Mattia Cattaneo (Deceuninck - Quick-Step) à 18 ″</li>\r\n</ol>\r\n\r\nS\'exprimant quelques secondes après la fin de l\'étape, le vainqueur de l\'étape Filippo Ganna a déclaré: «Ce n\'est jamais facile de gagner un contre-la-montre même si vous le faites avec de bonnes jambes et une forte concentration. Heureusement, mon corps était prêt pour cet effort aujourd\'hui. C’est un résultat fantastique pour moi et pour l’équipe. C\'était un peu étrange de rouler dans le désert et c’est la première fois que je participe au UAE Tour. C’est difficile de rouler à 55 ou 56 km/h mais je suis vraiment content aujourd’hui. »\r\n\r\nLe détenteur du maillot rouge Tadej Pogačar a déclaré: « Je suis vraiment content de ma performance aujourd\'hui. Le vent était assez fort. J’ai fait de mon mieux et c’était un très bon moment, je suis heureux d’avoir le maillot de leader. Je préfère être en avance que derrière au classement général ».', 1, '2021-02-22', '16:43:07'),
(2, 1, '<p>Hudayriyat Island, 22 février 2021 - Le champion du monde ITT Filippo Ganna (Ineos Grenadiers) a remporté l\'étape 2, la scène du Conseil des sports d\'Abou Dhabi, de la troisième édition du UAE Tour, devant Stefan Bissegger (EF Education - Nippo) et Mikkel Bjerg (UAE Team Emirates) sur un ITT de 13 km sur l\'île d\'Hudayriyat. Tadej Pogačar (UAE Team Emirates) est le nouveau leader du GC et a reçu le maillot rouge.</p>\r\n\r\n<p><b>Résultat de l\'étape</b>\r\n<ol>\r\n<li>Filippo Ganna (Ineos Grenadiers), 13 km en 13,56 pouces, vitesse moyenne 55,981 km/h</li>\r\n<li>Stefan Bissegger (EF Education - Nippo) à 14 ″</li>\r\n<li>Mikkel Bjerg (UAE Team Emirates) à 21 ″</li>\r\n</ol></p>\r\n\r\n<p><b>Maillots</b>\r\nLe maillot rouge, sponsorisé par ADNOC (Classement général individuel par temps) - Tadej Pogačar (UAE Team Emirates)\r\nLe maillot vert, sponsorisé par Etisalat (Classement général individuel par points) - João Almeida (Deceuninck - Quick-Step)\r\nLe maillot blanc, sponsorisé par Nakheel (Meilleur jeune cavalier né après le 1er janvier 1996) - Tadej Pogačar (UAE Team Emirates)\r\nLe maillot noir, sponsorisé par Abu Dhabi Aviation (classification intermédiaire du maillot de sprint) - João Almeida (Deceuninck - Quick-Step)</p>\r\n\r\n<p><b>Classement général</b>\r\n<ol>\r\n<li>Tadej Pogačar (UAE Team Emirates)</li>\r\n<li>João Almeida (Deceuninck - Quick-Step) à 5 ″</li\r\n<li>Mattia Cattaneo (Deceuninck - Quick-Step) à 18 ″</li>\r\n</ol></p>\r\n\r\n<p>S\'exprimant quelques secondes après la fin de l\'étape, le vainqueur de l\'étape Filippo Ganna a déclaré: «Ce n\'est jamais facile de gagner un contre-la-montre même si vous le faites avec de bonnes jambes et une forte concentration. Heureusement, mon corps était prêt pour cet effort aujourd\'hui. C’est un résultat fantastique pour moi et pour l’équipe. C\'était un peu étrange de rouler dans le désert et c’est la première fois que je participe au UAE Tour. C’est difficile de rouler à 55 ou 56 km/h mais je suis vraiment content aujourd’hui. »</p>\r\n\r\n<p>Le détenteur du maillot rouge Tadej Pogačar a déclaré: « Je suis vraiment content de ma performance aujourd\'hui. Le vent était assez fort. J’ai fait de mon mieux et c’était un très bon moment, je suis heureux d’avoir le maillot de leader. Je préfère être en avance que derrière au classement général ».</p>', 1, '2021-02-22', '16:46:45'),
(3, 1, '<p>Hudayriyat Island, 22 février 2021 - Le champion du monde ITT Filippo Ganna (Ineos Grenadiers) a remporté l\'étape 2, la scène du Conseil des sports d\'Abou Dhabi, de la troisième édition du UAE Tour, devant Stefan Bissegger (EF Education - Nippo) et Mikkel Bjerg (UAE Team Emirates) sur un ITT de 13 km sur l\'île d\'Hudayriyat. Tadej Pogačar (UAE Team Emirates) est le nouveau leader du GC et a reçu le maillot rouge.</p>\r\n\r\n<p><b>Résultat de l\'étape</b>\r\n<ol>\r\n<li>Filippo Ganna (Ineos Grenadiers), 13 km en 13,56 pouces, vitesse moyenne 55,981 km/h</li>\r\n<li>Stefan Bissegger (EF Education - Nippo) à 14 ″</li>\r\n<li>Mikkel Bjerg (UAE Team Emirates) à 21 ″</li>\r\n</ol></p>\r\n\r\n<p><b>Maillots</b>\r\nLe maillot rouge, sponsorisé par ADNOC (Classement général individuel par temps) - Tadej Pogačar (UAE Team Emirates)\r\nLe maillot vert, sponsorisé par Etisalat (Classement général individuel par points) - João Almeida (Deceuninck - Quick-Step)\r\nLe maillot blanc, sponsorisé par Nakheel (Meilleur jeune cavalier né après le 1er janvier 1996) - Tadej Pogačar (UAE Team Emirates)\r\nLe maillot noir, sponsorisé par Abu Dhabi Aviation (classification intermédiaire du maillot de sprint) - João Almeida (Deceuninck - Quick-Step)</p>\r\n\r\n<p><b>Classement général</b>\r\n<ol>\r\n<li>Tadej Pogačar (UAE Team Emirates)</li>\r\n<li>João Almeida (Deceuninck - Quick-Step) à 5 ″</li>\r\n<li>Mattia Cattaneo (Deceuninck - Quick-Step) à 18 ″</li>\r\n</ol></p>\r\n\r\n<p>S\'exprimant quelques secondes après la fin de l\'étape, le vainqueur de l\'étape Filippo Ganna a déclaré: «Ce n\'est jamais facile de gagner un contre-la-montre même si vous le faites avec de bonnes jambes et une forte concentration. Heureusement, mon corps était prêt pour cet effort aujourd\'hui. C’est un résultat fantastique pour moi et pour l’équipe. C\'était un peu étrange de rouler dans le désert et c’est la première fois que je participe au UAE Tour. C’est difficile de rouler à 55 ou 56 km/h mais je suis vraiment content aujourd’hui. »</p>\r\n\r\n<p>Le détenteur du maillot rouge Tadej Pogačar a déclaré: « Je suis vraiment content de ma performance aujourd\'hui. Le vent était assez fort. J’ai fait de mon mieux et c’était un très bon moment, je suis heureux d’avoir le maillot de leader. Je préfère être en avance que derrière au classement général ».</p>', 1, '2021-02-22', '16:49:32'),
(4, 1, '<p><b>Hudayriyat Island, 22 février 2021 -</b> Le champion du monde ITT Filippo Ganna (Ineos Grenadiers) a remporté l\'étape 2, la scène du Conseil des sports d\'Abou Dhabi, de la troisième édition du UAE Tour, devant Stefan Bissegger (EF Education - Nippo) et Mikkel Bjerg (UAE Team Emirates) sur un ITT de 13 km sur l\'île d\'Hudayriyat. Tadej Pogačar (UAE Team Emirates) est le nouveau leader du GC et a reçu le maillot rouge.</p>\r\n\r\n<p><b>Résultat de l\'étape</b>\r\n<ol>\r\n<li>Filippo Ganna (Ineos Grenadiers), 13 km en 13,56 pouces, vitesse moyenne 55,981 km/h</li>\r\n<li>Stefan Bissegger (EF Education - Nippo) à 14 ″</li>\r\n<li>Mikkel Bjerg (UAE Team Emirates) à 21 ″</li>\r\n</ol></p>\r\n\r\n<p><b>Maillots</b>\r\nLe maillot rouge, sponsorisé par ADNOC (Classement général individuel par temps) - Tadej Pogačar (UAE Team Emirates)\r\nLe maillot vert, sponsorisé par Etisalat (Classement général individuel par points) - João Almeida (Deceuninck - Quick-Step)\r\nLe maillot blanc, sponsorisé par Nakheel (Meilleur jeune cavalier né après le 1er janvier 1996) - Tadej Pogačar (UAE Team Emirates)\r\nLe maillot noir, sponsorisé par Abu Dhabi Aviation (classification intermédiaire du maillot de sprint) - João Almeida (Deceuninck - Quick-Step)</p>\r\n\r\n<p><b>Classement général</b>\r\n<ol>\r\n<li>Tadej Pogačar (UAE Team Emirates)</li>\r\n<li>João Almeida (Deceuninck - Quick-Step) à 5 ″</li>\r\n<li>Mattia Cattaneo (Deceuninck - Quick-Step) à 18 ″</li>\r\n</ol></p>\r\n\r\n<p>S\'exprimant quelques secondes après la fin de l\'étape, le vainqueur de l\'étape Filippo Ganna a déclaré: «Ce n\'est jamais facile de gagner un contre-la-montre même si vous le faites avec de bonnes jambes et une forte concentration. Heureusement, mon corps était prêt pour cet effort aujourd\'hui. C’est un résultat fantastique pour moi et pour l’équipe. C\'était un peu étrange de rouler dans le désert et c’est la première fois que je participe au UAE Tour. C’est difficile de rouler à 55 ou 56 km/h mais je suis vraiment content aujourd’hui. »</p>\r\n\r\n<p>Le détenteur du maillot rouge Tadej Pogačar a déclaré: « Je suis vraiment content de ma performance aujourd\'hui. Le vent était assez fort. J’ai fait de mon mieux et c’était un très bon moment, je suis heureux d’avoir le maillot de leader. Je préfère être en avance que derrière au classement général ».</p>', 1, '2021-02-22', '16:54:28'),
(5, 2, '<p><b>OPEN D\'AUSTRALIE 2021 - Et un qui fait 18. 18 titres du Grand Chelem pour Novak Djokovic. A deux longueurs de Federer et Nadal. Seul cet objectif occupe à présent l\'esprit du champion serbe, qui entend bien ménager son corps et aménager son calendrier dans la dernière phase de sa carrière, afin de tout miser sur les plus grands tournois du circuit.</b></p>\r\n\r\n<p>Ce n\'est pas forcément évident à le voir évoluer ou à la lecture des palmarès, mais Novak Djokovic vieillit. Dans quatre mois, il aura 34 ans. Aucun signe de déclin à l\'horizon. Prétendre le contraire serait cocasse, pour ne pas dire ridicule après l\'avoir vu soulever le trophée Norman Brookes pour la 9e fois de sa carrière. Le Serbe a dispersé la confiance de Daniil Medvedev aux quatre coins de "sa" Rod Laver Arena, dimanche. Cet Open d\'Australie aura donc accouché d\'un scénario ultra-prévisible avec ce nouveau triomphe du maître des lieux. Mais si la destination était connue, le chemin emprunté n\'aura pas été de tout repos.<p>\r\n\r\n<p>Il y a une semaine, après avoir écarté Milos Raonic en huitième de finale, le numéro un mondial s\'était dit "prêt à prendre des risques" malgré sa blessure aux abdominaux. Le jeu en valait la chandelle australienne. "Les médecins sont tous d\'accord pour convenir qu\'il y a un risque, un petit risque que j\'aggrave sérieusement la blessure au point de me tenir éloigné des courts pendant, disons, une certaine période, avait-il dit. Mais ils ne pensent pas non plus que ça puisse être grave au point de compromettre toute ma saison. J\'accepte les conséquences que ça aura sur l\'après Open d\'Australie. Je prendrai le temps qu\'il faut pour me soigner et revenir quand je serai complètement guéri."</p>\r\n\r\n<p>Le pari s\'est donc avéré payant. A son âge, Djokovic veut tout miser sur les quatre plus grands tournois afin d\'aller chercher Roger Federer et Rafael Nadal qui, avec vingt titres majeurs, le devancent encore de deux unités. A fortiori depuis qu\'il a l\'assurance de s\'emparer de l\'autre record dont il rêvait, celui du nombre de semaines passées à la première place mondiale. Dans deux semaines, il supplantera Federer et ses 310 semaines.</p>\r\n\r\n<p>"Maintenant que je suis sûr de devenir le N°1 historique, je suis soulagé, a-t-il avoué dimanche. Je vais pouvoir me concentrer principalement sur les Grands Chelems. Quand on vise la place de N°1, on est obligé de jouer, et de bien jouer, toute la saison. Ce n\'est pas que je me sente vieux ou fatigué. Mais je sais que d\'un point de vue biologique, et en les regardant en face, les choses ne sont plus les mêmes pour moi qu\'il y a dix ans. Je dois être plus intelligent au niveau de mon emploi du temps et atteindre mon pic de forme au bon moment. Les tournois du Grand Chelem sont ceux où je veux être le meilleur."</p>\r\n\r\n<p>Il faut donc s\'attendre à le voir un peu moins. Un programme allégé ? Des impasses sur certains Masters 1000 ? Possible. La chasse aux points, c\'est terminé. Seul le gros gibier va désormais le concerner. "Mes objectifs vont s\'adapter et bouger un peu, prévient-il. Je vais donc ajuster mon calendrier, ce que j\'attends avec impatience en tant que père et mari. Ma femme et mes enfants me manquent. Il y a plus malheureux que nous, mais pour tous les joueurs, c\'est dur d\'être séparé de nos familles pendant une longue période comme ça."</p>\r\n\r\n<p><b>À quand le retour ?</b><br />\r\nMais tout n\'est pas aussi simple, prévient son staff. Si tout convergera vers les Majeurs, jouer trop peu est une option à risques. "On ne peut pas se concentrer uniquement sur les Grands Chelems, juge son entraîneur Goran Ivanisevic. Donc il devra jouer suffisamment avant les grands tournois. Là, maintenant, pour être franc, comme il vient de gagner, je m\'en fous. S\'il demande à ne pas jouer jusqu\'à Roland-Garros, OK ! Mais sérieusement, il aura besoin de jouer." Tour sera donc une affaire de dosage, et il devra être subtil.</p>\r\n\r\n<p>À court terme, il est en tout cas probable que Novak Djokovic s\'accorde un break. Parce qu\'il en a besoin, que rien ne le motivera vraiment d\'ici les Internationaux de France. Puis il doit de toute façon s\'occuper de ses abdominaux. Quand reviendra-t-il aux affaires ? Il faudra un peu de patience. "J\'ai passé une IRM, a-t-il confié. Les dégats sont plus importants que ce qu\'ils étaient après le 3e tour. Ce n\'est pas si grave selon les médecins mais je vais devoir prendre du temps pour me reposer car la déchirure s\'est agrandie de 1,7 à 2,5 cm."</p>\r\n\r\n<p>Le Serbe a également averti : "Je n\'ai pas l\'intention de rester invaincu toute la saison." En réalité, les Djokovic, Nadal ou Federer ont déjà commencé depuis quelque temps à opérer en gestionnaire pour viser moins, mais juste. Le palmarès des Masters 1000 s\'est davantage ouvert. Le Masters de fin d\'année en témoigne aussi. Dimitrov. Zverev. Tsitsipas. Medvedev. Sans délaisser ce rendez-vous important, ils n\'en font plus, à l\'image de Djokovic, un objectif prioritaire. Mais quand arrivent les Grands Chelems, ils sont là. Lui est là. Et ça, ça pourrait ne pas changer de sitôt.</p>', 2, '2021-02-22', '19:37:01'),
(6, 3, '<p><b>Ronald Koeman a reconduit dimanche contre Cadix l\'équipe battue par le PSG (1-4) mardi dernier en C1 avec Lionel Messi, Clément Lenglet, Ousmane Dembélé et Antoine Griezmann.</b></p>\r\n\r\n<p>L\'entraîneur néerlandais du FC Barcelone, Ronald Koeman, a décidé de faire de nouveau confiance au onze de départ sèchement battu par le PSG (1-4) mardi en 8es de finale aller de la Ligue des champions. On retrouve donc face à Cadix, pour la 24e journée de la Liga, Lionel Messi associé aux Français Ousmane Dembélé et Antoine Griezmann. Clément Lenglet est lui aussi présent au coup d\'envoi.</p>', 2, '2021-02-22', '19:46:01'),
(7, 4, '<p><b>Tadej Pogacar, Julian Alaphilippe, Christopher Froome et Tao Geoghegan Hart seront les principales têtes d\'affiche du prochain Critérium du Dauphiné, qui se courra à partir du 30 mai.</b></p>\r\n\r\n<p>Tadej Pogacar (UAE), vainqueur du Tour de France 2020, Julian Alaphilippe (Deceuninck - Quick Step), champion du monde en titre, Christopher Froome (Israel Nation) et Tao Geoghegan Hart (Ineos), vainqueur du dernier Giro, seront les têtes d\'affiche du 73e Critérium du Dauphiné (du 30 mai au 6 juin 2021), dont le tracé a été dévoilé ce lundi.</p>\r\n\r\n<p>Seront aussi présents les Colombiens Rigoberto Uran (EF) et Miguel Angel Lopez (Movistar), ainsi que les Français Guillaume Martin (Cofidis) et David Gaudu (Groupama - FDJ). Le vainqueur sortant, le Colombien Daniel Martinez (EF), n\'est, quant à lui, pas encore assuré de prendre le départ.</p>', 1, '2021-02-22', '19:48:58'),
(8, 5, '<p><b>QUALIFICATIONS EURO 2022 - L\'équipe de France de basket s\'est inclinée face à la Grande-Bretagne ce lundi (94-73) lors de son dernier match de qualification pour l\'Euro 2022, mais termine tout de même première de son groupe et se qualifie pour le tournoi principal.</b></p>\r\n\r\n<p>Déjà assurés de disputer le Championnat d\'Europe 2022, les basketteurs français se sont inclinés contre la Grande-Bretagne 94 à 73, lundi en début de soirée à Podgorica, pour leur dernier match de la phase de qualifications.</p>\r\n\r\n<p>Malgré ce revers, le premier contre les Britanniques depuis 1988 et le plus lourd contre ce pays, les Bleus terminent à la première place de leur groupe, avec quatre victoires et deux défaites, un bilan identique à leurs adversaires du jour, mais un meilleur bilan dans les rencontres directes (152-150).</p>\r\n\r\n<h1>Une qualification déjà assurée</h1>\r\n<p>Les Français, médaillés de bronze au Mondial-2019 en Chine, avaient déjà assuré leur place au prochain Euro grâce à leur victoire samedi contre le Monténégro 73 à 71. Les Britanniques avaient également décroché leur billet pour la compétition continentale grâce à leur victoire contre les Allemands (83-81) et au succès des Français.</p>\r\n\r\n<p>L\'Euro a été décalé d\'un an à l\'automne 2022 (1er-18 septembre) en raison de la pandémie de Covid-19 et le report à l\'été 2021 des Jeux olympiques de Tokyo (23 juillet-8 août). Le Championnat d\'Europe se déroulera dans quatre pays: en Allemagne, en Italie, en République tchèque et en Géorgie, avec une phase finale à Berlin.</p>', 2, '2021-02-22', '19:53:31');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_general_mysql500_ci NOT NULL,
  `color` varchar(6) COLLATE utf8_general_mysql500_ci NOT NULL,
  `menu` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `menu`) VALUES
(1, 'Basket', 'd33', 1),
(2, 'Cyclisme', 'fc3', 1),
(3, 'Football', '222', 1),
(4, 'Tennis', '0b2', 1),
(5, 'Natation', '54c0ff', 1);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `images`
--

INSERT INTO `images` (`id`, `name`) VALUES
(1, 'filippo-ganna-uae-tour-2021-2nd'),
(2, 'djokovic-grand-chelems'),
(3, 'barca'),
(4, 'alaphillipe-pogacar'),
(5, 'euro2022-basket-bleus');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `article` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `content` text COLLATE utf8_general_mysql500_ci NOT NULL,
  `user` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` text COLLATE utf8_general_mysql500_ci NOT NULL,
  `realname` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `realname`, `email`) VALUES
(1, 'thibauld', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Thibauld Scelles', ''),
(2, 'alex', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Alex Pinson', '');

-- --------------------------------------------------------

--
-- Structure de la table `writers`
--

CREATE TABLE `writers` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Contenu de la table `writers`
--

INSERT INTO `writers` (`id`, `user`) VALUES
(1, 1),
(2, 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `articles-contents`
--
ALTER TABLE `articles-contents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `articles-contents`
--
ALTER TABLE `articles-contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
