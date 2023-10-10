-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1:3306
-- Genereringstid: 04. 10 2023 kl. 08:55:54
-- Serverversion: 8.0.31
-- PHP-version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `produkter`
--

DROP TABLE IF EXISTS `produkter`;
CREATE TABLE IF NOT EXISTS `produkter` (
  `prodId` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `prodNavn` varchar(100) COLLATE utf8mb3_danish_ci NOT NULL,
  `prodDirector` varchar(100) COLLATE utf8mb3_danish_ci NOT NULL,
  `prodStars` varchar(200) COLLATE utf8mb3_danish_ci NOT NULL,
  `prodBeskrivelse` text COLLATE utf8mb3_danish_ci,
  `prodPris` decimal(9,2) NOT NULL,
  `prodDato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prodTid` time DEFAULT NULL,
  `prodGenre` varchar(100) COLLATE utf8mb3_danish_ci NOT NULL,
  `prodBillede` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_danish_ci DEFAULT NULL,
  PRIMARY KEY (`prodId`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_danish_ci;

--
-- Data dump for tabellen `produkter`
--

INSERT INTO `produkter` (`prodId`, `prodNavn`, `prodDirector`, `prodStars`, `prodBeskrivelse`, `prodPris`, `prodDato`, `prodTid`, `prodGenre`, `prodBillede`) VALUES
(23, 'Alien - Den 8. passager', ' Ridley Scott', ' Sigourney Weaver, Tom Skerritt, John Hurt', '<p>Rumskibet Nostromo fungerer som sl&aelig;beb&aring;d i rummet og er netop nu ved at fragte et k&aelig;mpe raffinaderi. De modtager et n&oslash;dsignal der kunne tyde p&aring; intelligent liv, og da de unders&oslash;ger sagen finder de en m&aelig;ngde pupper. Op af en af pupperne springer en fremmed livsform. Og da det senere bliver klart at den har lagt &aelig;g inde i kroppen p&aring; et af bes&aelig;tningsmedlemmer kan alle tiders mareridt begynde.</p>', '150.00', '2023-10-02 09:41:32', '00:01:17', 'Sci-Fi', 'alien1.jpg'),
(24, 'Predators', 'Nimród Antal', ' Adrien Brody, Laurence Fishburne, Topher Grace', '<p>En gruppe h&aelig;rdede mordere, der ledes af Adrien Brody - en frygtl&oslash;s lejesoldat jages p&aring; en fremmed planet i Nimr&oacute;d Antals popul&aelig;re science-fiction/actionserie. Lejesoldater, mordere, gangstere og fanger udgjorde p&aring; Jorden gruppen af de mest frygtede m&aelig;nd. Men de er nu alle langt v&aelig;k hjemmefra og den&nbsp;<span class=\"yZlgBd\">frygtl&oslash;se lejesoldat Royce og hans hold bliver tvunget til at g&oslash;re sig klar til en kamp for livet.</span></p>', '150.00', '2023-10-02 09:46:14', '00:01:07', 'Action', 'predators.jpg'),
(26, 'Prometheus', 'Ridley Scott', 'Noomi Rapace, Logan Marshall-Green, Michael Fassbender', '<p>Et hold videnskabsfolk rejser gennem universet og strander i en ikkejordisk verden. Mens de k&aelig;mper for at holde sig i live, bliver det klart for dem, at de r&aelig;dsler, de gennemg&aring;r, ikke kun er en trussel for dem selv, men for hele menneskeheden.</p>', '199.00', '2023-10-03 08:33:42', '00:01:24', 'Adventure', 'Prometheus.jpg'),
(27, '2012', 'Roland Emmerich', ' John Cusack, Thandiwe Newton, Chiwetel Ejiofor', '<p>Forskere opdager at jorden snart vil g&aring; under, og klodens ledere l&aelig;gger i al hemmelighed planer for at redde sig selv og s&aring; mange andre som muligt. Jackson er p&aring; ferie med sine to b&oslash;rn, da han tilf&aelig;ldigvis opdager sandheden.</p>', '149.00', '2023-10-03 08:36:20', '00:01:58', 'Action', '2012.jpg'),
(28, 'The Day After Tomorrow', 'Roland Emmerich', ' Dennis Quaid, Jake Gyllenhaal, Emmy Rossum', '<p>Dramatiske klima&aelig;ndringer vender op og ned p&aring; det globale vejr, s&aring; tornadoer h&aelig;rger Los Angeles, en gigantisk tidevandsb&oslash;lge opsluger New York og i de nordlige egne falder temperaturerne markant og fastfryser civilisationen i et ishelvede.</p>', '139.00', '2023-10-03 08:41:28', '00:01:24', 'Action', 'thedat.jpg'),
(29, 'San Andreas', 'Brad Peyton', ' Dwayne Johnson, Carla Gugino, Alexandra Daddario', '<p>I k&oslash;lvandet p&aring; et massivt jordsk&aelig;lv i Californien, tager en redningshelikopterpilot p&aring; en livsfarlig rejse, sammen med sin ekskone, hen over staten for at redde sin datter.</p>', '145.00', '2023-10-03 08:43:51', '00:01:14', 'Adventure', 'sanandreas.jpg'),
(30, 'Godzilla', 'Gareth Edwards', ' Aaron Taylor-Johnson, Elizabeth Olsen, Bryan Cranston', '<p>Godzilla stiger op fra dybet endnu en gang i denne genindspilning af den klassiske japanske monstersaga, som havde premiere i 1954.</p>', '164.00', '2023-10-03 08:46:14', '00:01:23', 'Action', 'Godzilla.jpg'),
(31, 'Den 5. Bølge', ' J Blakeson', ' Chloë Grace Moretz, Matthew Zuk, Gabriela Lopez', '<p>En gruppe overlevende teenagere k&aelig;mper for at redde menneskeheden fra udslettelse, efter at fire angrebsb&oslash;lger af rumv&aelig;sner har decimeret Jordens befolkning.</p>', '200.00', '2023-10-03 08:48:46', '00:01:35', 'Action', 'den5boelge.jpg'),
(32, 'Greenland', 'Ric Roman Waugh', ' Gerard Butler, Morena Baccarin, Roger Dale Floyd', '<p>En familie k&aelig;mper for at overleve, mens en komet raser mod Jorden. John Garrity, hans kone Allison og s&oslash;nnen Nathan tager ud p&aring; en farefuld rejse, samtidigt med at de k&aelig;mper mod den tiltagende panik og lovl&oslash;sheden omkring dem.</p>', '200.00', '2023-10-03 08:52:04', '00:01:19', 'Thriller', 'greenland.jpg'),
(33, 'London Has Fallen', 'Babak Najafi', ' Gerard Butler, Aaron Eckhart, Morgan Freeman', '<p>Den amerikanske pr&aelig;sident Benjamin Asher st&aring;r igen midt i et actionfyldt og drabeligt angreb. Denne gang er angrebet rettet mod flere er verdens mest magtfulde ledere, der alle er samlet til den britiske premiereministers begravelse i London - et event der skulle v&aelig;re det mest beskyttede i verden.</p>', '100.00', '2023-10-03 08:53:57', '00:00:00', 'Thriller', 'londonhasfallen.jpg'),
(34, 'Geostor', 'Dean Devlin', ' Gerard Butler, Jim Sturgess, Abbie Cornish', '', '120.00', '2023-10-03 08:55:43', '00:01:10', 'Action', 'geostorm.jpg'),
(35, 'Barbie', 'Greta Gerwig', ' Margot Robbie, Ryan Gosling, Issa Rae', '<p>I Barbie-land er alt og alle perfekte. Barbie bliver smidt ud af den perfekte verden. Sammen med Ken begiver hun sig ind i menneskenes verden for at finde lykken.</p>', '250.00', '2023-10-03 08:58:29', '00:00:00', 'Comedy', 'barbie.jpg'),
(36, 'Rampage Out of Control', 'Brad Peyton', ' Dwayne Johnson, Naomie Harris, Malin Akerman', '<p>Davis er knyttet til en intelligent gorilla, som han har taget sig af siden dens f&oslash;dsel. Et videnskabeligt eksperiment galt og forvandler aben til et gigantisk monster. Davis udvikler en modgift or at forhindre en katastrofe og redde hans ven.</p>', '170.00', '2023-10-03 09:20:03', '00:01:07', 'Action', 'rampage.jpg'),
(37, 'Kong: Skull Island', ' Jordan Vogt-Roberts', ' Tom Hiddleston, Samuel L. Jackson, Brie Larson', '<p>&Aring;ret er 1973, da den tidligere elitesoldat, James Conrad, bliver hyret til at lede en flok eventyrlystne forskere og soldater ud p&aring; en ekspedition til den mytiske &oslash;, Skull Island.</p>', '169.00', '2023-10-03 09:21:59', '00:01:18', 'Adventure', 'kong.jpg'),
(38, 'Jurassic World', ' Colin Trevorrow', ' Chris Pratt, Bryce Dallas Howard, Ty Simpkins', '<p>Jurassic World er det luksuri&oslash;se feriested, beliggende ud for Cost Ricas kyst, der er hjemsted for en r&aelig;kke gensplejsede dinosaurer, herunder den onde og intelligente Indominus-rex. Da det store dyr undslipper, starter et sandt mareridt.</p>', '180.00', '2023-10-03 09:41:46', '00:01:24', 'Adventure', 'JurassicWorld.jpg'),
(39, 'Jumanji: Welcome to the Jungle', 'Jake Kasdan', ' Dwayne Johnson, Karen Gillan, Kevin Hart', '<p>Fire teenagere opdager et gammelt computerspil, de aldrig har h&oslash;rt om f&oslash;r, og bliver hurtigt f&aelig;ngslet af spillets junglemilj&oslash;. Men snart m&aring; de indse, at m&aring;let med at spille Jumanji ikke er at vinde, det er at overleve.</p>', '149.00', '2023-10-03 09:48:02', '00:01:20', 'Adventure', 'jumanji.jpg'),
(40, 'Central Intelligence', ' Rawson Marshall Thurber', 'Dwayne Johnson, Kevin Hart, Danielle Nicolet', '<p>En CIA-agent f&aring;r hj&aelig;lp af en tidligere klassekammerat, for at forhindre et amerikansk spion-satellit-netv&aelig;rk i at blive hacket.</p>', '100.00', '2023-10-03 09:50:16', '00:01:07', 'Comedy', 'CentralInt.jpg'),
(41, 'Red Notice', 'Rawson Marshall Thurber', ' Dwayne Johnson, Ryan Reynolds, Gal Gadot', '<p>Interpol-agenten John Hartley har intet andet valg end at sl&aring; sig sammen med den mest berygtede kunsttyv gennem tiderne, Nolan Booth, for at fange nutidens mest efters&oslash;gte kunsttyv - den forf&oslash;rende og farlige Sarah Black.</p>', '179.00', '2023-10-03 09:54:23', '00:01:18', 'Thriller', 'rednotice.jpg'),
(42, 'The Adam Project', 'Shawn Levy', ' Ryan Reynolds, Walker Scobell, Mark Ruffalo', '<p>Den tidsrejsende jagerpilot Adam Reed styrtlander ved et uheld i 2022 og sl&aring;r sig sammen som tolv&aring;rig for at redde fremtiden.</p>', '149.00', '2023-10-03 09:56:26', '00:01:24', 'Action', 'theadamproject.jpg'),
(43, 'Uncharted', 'Ruben Fleischer', ' Tom Holland, Mark Wahlberg, Antonio Banderas', '<p>Skattej&aelig;geren Victor Sullivan hyrer Nathan Drake til at finde en skat, der er fem hundrede &aring;r gammel. Det begynder som et r&oslash;veri, men snart m&aring; de to rejse verden rundt p&aring; jagt efter den forsvundne skat.</p>', '100.00', '2023-10-03 10:02:00', '00:01:14', 'Adventure', 'uncharted.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
