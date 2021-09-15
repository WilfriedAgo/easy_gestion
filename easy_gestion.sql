-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 07 juil. 2021 à 11:41
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `easy_gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `nom` varchar(500) CHARACTER SET utf8 NOT NULL,
  `libelle` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `prix` double NOT NULL,
  `quantite` int(255) NOT NULL,
  `en_solde` tinyint(1) NOT NULL,
  `apercu` mediumtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `nom`, `libelle`, `prix`, `quantite`, `en_solde`, `apercu`) VALUES
(1, 'Nano Onde 3000', 'Micro onde effet cuivre.', 175000, 145, 1, 'assets/images_uploader/articles_images/micro-onde.jpg'),
(2, 'Dyson Cyclone V10', 'Aspirateur Dyson cyclone V10.', 145000, 1, 1, 'assets/images_uploader/articles_images/aspirateur.jpg'),
(3, 'Hydracreme', 'Crème hydratante contre peau sèche.', 1200, 5, 1, 'assets/images_uploader/articles_images/hydracreme.png'),
(4, 'ZeroTache', 'Lotion d\'huile d\'olive anti tache.', 5600, 100, 0, 'assets/images_uploader/articles_images/lotion.png'),
(5, 'AvocaSoap', 'Savon de gommage à l\'avocat, contre les rides.', 3600, 45, 0, 'assets/images_uploader/articles_images/avocasoap.png'),
(6, 'Air Force Nine', 'Chaussure NUKE Air force nine', 45000, 5, 1, 'assets/images_uploader/articles_images/airforce9.jpg'),
(7, 'Boucle d\'oreille MS', 'Mode suspendu luxe perle cristal.', 79500, 86, 1, 'assets/images_uploader/articles_images/boucleMs.jpg'),
(8, 'Coolhair', 'Défrisant pour cheveux frisés et crépus.', 2000, 10, 0, 'assets/images_uploader/articles_images/article.png'),
(9, 'iphroïd S11 Pro 2in1', 'Smartphone hybride iOS & Android.', 650000, 10, 1, 'assets/images_uploader/articles_images/iphroid.jpg'),
(10, 'Earszone 2081', 'Ecouteurs nouvelle génération.', 950000, 1, 0, 'assets/images_uploader/articles_images/earphone.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE `members` (
  `id` int(20) NOT NULL,
  `nom` varchar(500) CHARACTER SET utf8 NOT NULL,
  `prenom` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `sexe` tinyint(1) NOT NULL,
  `email` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `role` mediumtext CHARACTER SET utf8 NOT NULL,
  `photo` mediumtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `members`
--

INSERT INTO `members` (`id`, `nom`, `prenom`, `sexe`, `email`, `contact`, `role`, `photo`) VALUES
(1, 'AGO', 'Wilfried', 0, 'Kirinago66@gmail.com', '+229 62000975', 'Responsable du groupe <br> \r\n1- Conception de la maquette, et intégration du site web en HTML, CSS, Javascript <br> \r\n2- Conception des fonctionnalités :<br> \r\n- Limitation des ajouts des membres <br> \r\n- upload des fichiers images sur le serveur <br>\r\n- Analyse, correction des erreurs et bugs, optimisation du code', 'assets/images_uploader/members_images/wilfried.jpg'),
(2, 'MONWANOU', 'Laurence', 1, '', '+229 61337268', '1- Conception des fonctionalités <br> - Ajout des membres dans la base de donnée <br> - Affichage des informations sur la page détails membre <br> - Création de la table members <br> - Analyse et correction du code ', 'assets/images_uploader/members_images/laurence.jpeg'),
(3, 'OKETOKOUN', 'Faozane', 1, '', '+229 62961662', '1- Conception des fonctionalités <br> \r\n- Ajout des articles dans la base de donnée <br> \r\n- Affichage des informations sur la page détails articles <br> \r\n- Création de la table articles <br>\r\n- Analyse et correction du code ', 'assets/images_uploader/members_images/faozane.jpeg'),
(4, 'LIGALI', 'Enwatif', 1, '', '+229 64963264', '1- Conception des fonctionalités <br> - Conception de l\'algorithme de calcul du prix soldé en fonction du choix de l\'utilisateur <br> - Suppression des articles <br> - Mise à jour des articles <br> - Analyse et correction du code', 'assets/images_uploader/members_images/enwatif.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
