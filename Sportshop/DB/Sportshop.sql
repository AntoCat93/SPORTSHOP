-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Set 17, 2015 alle 10:46
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
  `LongDesc` varchar(1000) NOT NULL,
  `Page` varchar(200) NOT NULL DEFAULT 'http://localhost/sportshop/"',
  `Date` date NOT NULL,
  `Location` varchar(100) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `Latest` tinyint(1) NOT NULL DEFAULT '0',
  `Promotes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='classificazione degli eventi';

--
-- Dump dei dati per la tabella `events`
--

INSERT INTO `events` (`Name`, `IDProduct`, `Description`, `LongDesc`, `Page`, `Date`, `Location`, `img`, `Latest`, `Promotes`) VALUES
('Boost Your Run', 5, 'Maratona adidas per cityrunners', '', 'http://localhost/sportshop/"', '2015-09-12', 'Milano', 'cityrun.jpg"', 1, ''),
('Jordan Brand', 0, '23esimo anniversario delle Jordan', 'Per celebrare il calcio d''inizio della stagione di basket NBA e il 23esimo anniversario della silhouette Air Jordan VII, il Jordan Brand rifornisce i suoi atleti con scarpe di ultima generazione in esclusiva.\r\n\r\nOriginariamente pubblicato nel 1992 e indossato dai Boston Celtic nella sua prima stagione di campionato NBA, le Air Jordan VII dispongono di una scarpetta interna in neoprene e colorati geometrici dettagliati ispirati alla cultura tribale dell''Africa occidentale. Ogni Air Jordan VII riprende i colori specifici della squadra che le indossa. Il sistema di ammortizzazione Lunarlon offre una sensazione reattiva, mentre la configurazione multicolor con suola rinforzata offre una trazione eccezionale limitandone il degrado nel tempo.\r\nLa scarpa del Top-Player e'' targata JORDAN!', 'http://localhost/sportshop/events/jordanbrand.html"', '2015-09-10', 'Milano', 'jordan.jpg"', 1, 'Jordan Superfly'),
('Nike Dark Light', 3, 'Presentazione PSG kit 2015/2016', '', 'http://localhost/sportshop/"', '2015-08-04', 'Parigi', 'psg.jpg"', 1, ''),
('Nike Football', 1, 'Presentazione scarpe da calcio Nike', '', 'http://localhost/sportshop/"', '2015-09-30', 'San Francisco', NULL, 0, ''),
('UFC', 4, 'Presentazione ufficiale divise atleti UFC', '', 'http://localhost/sportshop/"', '2015-07-30', 'Barcelona', 'ufc.jpg"', 1, ''),
('Ultra BOOST', 2, 'La rivoluzione del running', 'Le regine dell''ammortizzazione. Indossa queste scarpe da running e regala ai tuoi piedi la rivoluzionaria azione ammortizzante della mescola boost, che assicura il massimo comfort e un ritorno di energia ineguagliabile senza perdere mai flessibilita''. La versione da uomo e'' dotata di tomaia in mesh traspirante. Il materiale adidas Primeknit nell''avampiede segue i movimenti della tua corsa. La suola in gomma STRETCHWEB, leggera e resistente, e'' progettata per interagire con la mescola boost e garantire una transizione piu'' fluida dalla punta al tallone.', 'http://localhost/sportshop/events/ultraboost.html"', '2015-09-02', 'New York', 'boost.jpg"', 1, 'Ultra Boost');

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL COMMENT 'codice del prodotto',
  `Name` varchar(50) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `LongDesc` varchar(1000) NOT NULL,
  `Page` varchar(200) NOT NULL DEFAULT 'http://localhost/sportshop/"',
  `Amount` int(11) NOT NULL COMMENT 'disponibilità',
  `img` varchar(200) DEFAULT NULL COMMENT 'immagine correlata',
  `Event` varchar(200) DEFAULT NULL COMMENT 'Evento in cui viene presentato',
  `TopProduct` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COMMENT='catalogo dei prodotti';

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`ID`, `Name`, `Type`, `Description`, `LongDesc`, `Page`, `Amount`, `img`, `Event`, `TopProduct`) VALUES
(1, 'Nike Hypervenom', 'Shoes', 'Progettata per l''attaccante piu'' audace', '', 'http://localhost/sportshop/"', 5, 'hypervenom.jpg"', 'Nike Event', 1),
(2, 'Stan Smith', 'Shoes', 'Design semplice e pulito', '', 'http://localhost/sportshop/"', 30, 'stansmith.jpg"', 'MyAdidas', 0),
(3, 'Eliofeel Kalenji', 'T-Shirt', 'Ideato per il runner che corre con tempo caldo', '', 'http://localhost/sportshop/"', 10, 'eliofeel.jpg"', NULL, 1),
(4, 'Nike Strike', 'Shorts', 'Dettagli a contrasto per uno stile sportivo', '', 'http://localhost/sportshop/"', 25, 'nikestrike.jpg"', NULL, 1),
(5, 'Graphic', 'Accessories', 'Celebra le scarpe adidas storiche', 'Questo zaino celebra le scarpe adidas storiche con una vivace e colorata stampa delle etichette piu'' iconiche. Con una base in resistente similpelle, lo zaino rifinito in poliestere possiede due scomparti principali e un divisorio interno.\r\nDue scomparti principali e tasca anteriore dotati di chiusura a zip.\r\n\r\nSpallacci regolabili e manico per il trasporto.\r\n\r\nStampa allover sulla parte superiore.\r\n\r\nResistente base in similpelle.\r\n\r\nDimensioni: 15 cm x 30 cm x 47 cm.\r\n\r\nTessuto piano, 100% poliestere.', 'http://localhost/sportshop/products/Graphic.html"', 30, 'graphic.jpg"', NULL, 1),
(6, 'Short Solid', 'Swimwear', 'Short da mare perfetti per divertirsi sotto il sole', '', 'http://localhost/sportshop/"', 15, 'shortsolid.jpg"', NULL, 1),
(7, 'Air Max Vapor', 'Accessories', 'Spallaccio rimovibile per chi ama la praticita''', '', 'http://localhost/sportshop/"', 12, 'vapor.jpg"', 'Nike in Milan', 0),
(8, 'Orao', 'Accessories', 'Ideato per le attivita'' all''aria aperta', '', 'http://localhost/sportshop/"', 20, 'orao.jpg"', 'Orao Exhibition', 0),
(9, 'White Watch', 'Accessories', 'Ideale per la tua corsa quotidiana', '', 'http://localhost/sportshop/"', 35, 'watch.jpg"', '', 0),
(10, 'Garmin', 'Accessories', 'Ideato per lo sportivo regolare', '', 'http://localhost/sportshop/"', 8, 'garmin.jpg"', NULL, 0),
(11, 'Flyknit Lunar 3', 'Shoes', 'Gomma al carbonio per una durata eccellente', '', 'http://localhost/sportshop/"', 10, 'flyknit.jpg"', 'Nike in Milan', 0),
(12, 'Jordan Superfly', 'Shoes', 'Progettata per un gioco rapido e potente', 'Progettata per un gioco rapido e potente, la scarpa da basket Jordan Super.Fly 4- Uomo presenta una tomaia flessibile in mesh con schiuma sul retro e un sistema di ammortizzazione a basso profilo per un comfort leggero e un''efficace protezione dagli impatti. Le fascette incrociate si integrano con i lacci per una stabilita'' extra.\r\nTecnologia FlightSpeed per stacchi esplosivi.\r\nTomaia flessibile in tessuto per un sostegno traspirante.\r\nSostegno extra in corrispondenza del tallone per una stabilita'' ideale.\r\nFascette incrociate che si integrano con i lacci per una calzata aderente e un sostegno maggiore.\r\nUnita'' Nike Zoom Air per un''ammortizzazione reattiva e a basso profilo.\r\nSuola in gomma piena con disegno a spina di pesce per una resistenza e un''aderenza straordinarie.', 'http://localhost/sportshop/products/Jordan.html"', 5, 'jordan.jpg"', 'Jordan Brand', 0),
(13, 'Ace 15.1', 'Shoes', 'Suola specifica per superfici compatte e sintetiche', '', 'http://localhost/sportshop/"', 20, 'ace.jpg"', 'MyAdidas', 0),
(15, 'Swingman', 'Shorts', 'Lo stile dei Bulls in un pantaloncino vincente', '', 'http://localhost/sportshop/"', 20, 'chicago.jpg"', 'MyAdidas', 0),
(16, 'Gladiator Printed', 'Shorts', 'Pantaloncino traspirante ed elasticizzato', '', 'http://localhost/sportshop/"', 35, 'gladiator.jpg"', 'Nike in Milan', 0),
(17, 'No Finish Line', 'T-Shirt', 'Miscela di tessuti per una vestibilita'' ideale', '', 'http://localhost/sportshop/"', 40, 'nofinishline.jpg"', 'Nike in Milan', 0),
(18, 'Player Home Germany', 'T-Shirt', 'La maglia dei campioni del mondo', '', 'http://localhost/sportshop/"', 25, 'germany.jpg"', 'MyAdidas', 0),
(19, 'Jams Graphic', 'T-Shirt', 'Colori brillanti ed ispirazione alla cultura hip hop', '', 'http://localhost/sportshop/"', 15, 'jams.jpg"', 'MyAdidas', 0),
(20, 'Highline', 'Swimwear', 'Ideato per il surf e per giocare sulla spiaggia', '', 'http://localhost/sportshop/"', 15, 'highline.jpg"', NULL, 0),
(21, 'Hendaia', 'Swimwear', 'Ideato per gli sport acquatici', '', 'http://localhost/sportshop/"', 25, 'hendaia.jpg"', NULL, 0),
(22, 'Street Graphic', 'Trousers', 'L''autentico stile adidas Originals', '', 'http://localhost/sportshop/"', 25, 'street.jpg"', 'MyAdidas', 0),
(23, 'Barcelona Revolution', 'Trousers', 'Per un look da vero tifoso', '', 'http://localhost/sportshop/"', 20, 'barcelona.jpg"', 'Nike in Milan', 0),
(24, 'B''Twin', 'Waterproof Jacket', 'Per praticare ciclismo con tempo piovoso o ventoso', '', 'http://localhost/sportshop/"', 10, 'btwin.jpg"', NULL, 0),
(25, 'Evostyle', 'Waterproof Jacket', 'Giacca calda, impermeabile e traspirante', '', 'http://localhost/sportshop/"', 20, 'evostyle.jpg"', NULL, 0),
(26, 'Ultra Boost', 'Shoes', 'La regina dell''ammortizzazione', '', 'http://localhost/sportshop/"', 12, 'boost.jpg"', 'Ultra BOOST', 0);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'codice del prodotto',AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
