-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Set 14, 2015 alle 23:04
-- Versione del server: 5.6.26
-- Versione PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportshop`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Page` varchar(200) NOT NULL,
  `img1` varchar(50) NOT NULL,
  `img2` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `Type`, `Page`, `img1`, `img2`) VALUES
(1, 'SHOES', 'http://localhost/sportshop/ProductByType/Shoes/shoes.html"', 'shoes1.jpg"', 'shoes2.jpg"'),
(2, 'SHORTS', 'http://localhost/sportshop/ProductByType/Shorts/shorts.html"', 'shorts1.jpg"', 'shorts2.jpg"'),
(3, 'TROUSERS', 'http://localhost/sportshop/ProductByType/Trousers/trousers.html"', 'trousers1.jpg"', 'trousers2.jpg"'),
(4, 'T-SHIRT', 'http://localhost/sportshop/ProductByType/T-Shirt/tshirt.html"', 'shirt1.jpg"', 'shirt2.jpg"'),
(5, 'ACCESSORIES', 'http://localhost/sportshop/ProductByType/Accessories/accessories.html"', 'accessories1.jpg"', 'accessories2.jpg"'),
(6, 'WATERPROOF JACKETS', 'http://localhost/sportshop/ProductByType/Jackets/jackets.html"', 'jacket1.jpg"', 'jacket2.jpg"'),
(7, 'SWIMWEAR', 'http://localhost/sportshop/ProductByType/Swimwear/swimwear.html"', 'swimsuit1.jpg"', 'swimsuit2.jpg"');

-- --------------------------------------------------------

--
-- Struttura della tabella `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `Name` varchar(100) NOT NULL,
  `IDProduct` int(11) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  `Location` varchar(100) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `Latest` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='classificazione degli eventi';

--
-- Dump dei dati per la tabella `events`
--

INSERT INTO `events` (`Name`, `IDProduct`, `Description`, `Date`, `Location`, `img`, `Latest`) VALUES
('Boost Your Run', 5, 'Maratona adidas per cityrunners', '2015-09-12', 'Milano', 'cityrun.jpg"', 1),
('Jordan Brand', 0, '23esimo anniversario della Jordan VII silhouette', '2015-09-10', 'Milano', 'jordan.jpg"', 1),
('Nike Dark Light', 3, 'Presentazione PSG kit 2015/2016', '2015-08-04', 'Parigi', 'psg.jpg"', 1),
('Nike Football', 1, 'Presentazione scarpe da calcio Nike', '2015-09-30', 'San Francisco', NULL, 0),
('UFC', 4, 'Presentazione ufficiale divise atleti UFC', '2015-07-30', 'Barcelona', 'ufc.jpg"', 1),
('Ultra BOOST', 2, 'Ultima arrivata: la rivoluzione del running', '2015-09-02', 'New York', 'boost.jpg"', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL COMMENT 'codice del prodotto',
  `Name` varchar(50) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Amount` int(11) NOT NULL COMMENT 'disponibilità',
  `img` varchar(200) DEFAULT NULL COMMENT 'immagine correlata',
  `Event` varchar(200) DEFAULT NULL COMMENT 'Evento in cui viene presentato',
  `TopProduct` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COMMENT='catalogo dei prodotti';

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`ID`, `Name`, `Type`, `Description`, `Amount`, `img`, `Event`, `TopProduct`) VALUES
(1, 'Nike Hypervenom', 'Shoes', 'Progettata per l''attaccante piu'' audace', 5, 'hypervenom.jpg"', 'Nike Event', 1),
(2, 'Stan Smith', 'Shoes', 'Design semplice e pulito', 30, 'stansmith.jpg"', 'MyAdidas', 0),
(3, 'Eliofeel Kalenji', 'T-Shirt', 'Ideato per il runner che corre con tempo caldo', 10, 'eliofeel.jpg"', NULL, 1),
(4, 'Nike Strike', 'Shorts', 'Dettagli a contrasto per uno stile sportivo', 25, 'nikestrike.jpg"', NULL, 1),
(5, 'Graphic', 'Accessories', 'Celebra le scarpe adidas storiche', 30, 'graphic.jpg"', NULL, 1),
(6, 'Short Solid', 'Swimwear', 'Short da mare perfetti per divertirsi sotto il sole', 15, 'shortsolid.jpg"', NULL, 1),
(7, 'Air Max Vapor', 'Accessories', 'Spallaccio rimovibile per chi ama la praticita''', 12, 'vapor.jpg"', 'Nike in Milan', 0),
(8, 'Orao', 'Accessories', 'Ideato per le attivita'' all''aria aperta', 20, 'orao.jpg"', 'Orao Exhibition', 0),
(9, 'White Watch', 'Accessories', 'Ideale per la tua corsa quotidiana', 35, 'watch.jpg"', '', 0),
(10, 'Garmin', 'Accessories', 'Ideato per lo sportivo regolare', 8, 'garmin.jpg"', NULL, 0),
(11, 'Flyknit Lunar 3', 'Shoes', 'Gomma al carbonio per una durata eccellente', 10, 'flyknit.jpg"', 'Nike in Milan', 0),
(12, 'Jordan Superfly', 'Shoes', 'Progettata per un gioco rapido e potente', 5, 'jordan.jpg"', 'Nike in Milan', 0),
(13, 'Ace 15.1', 'Shoes', 'Suola specifica per superfici compatte e sintetiche', 20, 'ace.jpg"', 'MyAdidas', 0),
(15, 'Swingman', 'Shorts', 'Lo stile dei Bulls in un pantaloncino vincente', 20, 'chicago.jpg"', 'MyAdidas', 0),
(16, 'Gladiator Printed', 'Shorts', 'Pantaloncino traspirante ed elasticizzato', 35, 'gladiator.jpg"', 'Nike in Milan', 0),
(17, 'No Finish Line', 'T-Shirt', 'Miscela di tessuti per una vestibilita'' ideale', 40, 'nofinishline.jpg"', 'Nike in Milan', 0),
(18, 'Player Home Germany', 'T-Shirt', 'La maglia dei campioni del mondo', 25, 'germany.jpg"', 'MyAdidas', 0),
(19, 'Jams Graphic', 'T-Shirt', 'Colori brillanti ed ispirazione alla cultura hip hop', 15, 'jams.jpg"', 'MyAdidas', 0),
(20, 'Highline', 'Swimwear', 'Ideato per il surf e per giocare sulla spiaggia', 15, 'highline.jpg"', NULL, 0),
(21, 'Hendaia', 'Swimwear', 'Ideato per gli sport acquatici', 25, 'hendaia.jpg"', NULL, 0),
(22, 'Street Graphic', 'Trousers', 'L''autentico stile adidas Originals in un pantalone', 25, 'street.jpg"', 'MyAdidas', 0),
(23, 'Barcelona Revolution', 'Trousers', 'Per un look da vero tifoso', 20, 'barcelona.jpg"', 'Nike in Milan', 0),
(24, 'B''Twin', 'Waterproof Jacket', 'Per praticare ciclismo con tempo piovoso o ventoso', 10, 'btwin.jpg"', NULL, 0),
(25, 'Evostyle', 'Waterproof Jacket', 'Giacca calda, impermeabile e traspirante', 20, 'evostyle.jpg"', NULL, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`Name`,`IDProduct`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codice del prodotto',AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
