-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dic 28, 2014 alle 16:53
-- Versione del server: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `comune_rs`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `as_pubkey`
--

CREATE TABLE IF NOT EXISTS `as_pubkey` (
  `id` varchar(200) NOT NULL,
  `path` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table holds the Authorization Server public key file path';

--
-- Dump dei dati per la tabella `as_pubkey`
--

INSERT INTO `as_pubkey` (`id`, `path`) VALUES
('AS_1', 'public/pubkeys/as1_pub.pem'),
('AS_2', 'public/pubkeys/as2_pub.pem'),
('AS_3', 'public/pubkeys/as3_pub.pem'),
('AS_4', 'public/pubkeys/as4_pub.pem'),
('AS_5', 'public/pubkeys/as5_pub.pem');

-- --------------------------------------------------------

--
-- Struttura della tabella `resource_set_info`
--

CREATE TABLE IF NOT EXISTS `resource_set_info` (
  `rset_id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `uri` varchar(200) NOT NULL,
  `table` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `colselect` varchar(300) NOT NULL,
  PRIMARY KEY (`rset_id`),
  FULLTEXT KEY `name` (`name`,`uri`,`description`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `resource_set_info`
--

INSERT INTO `resource_set_info` (`rset_id`, `name`, `uri`, `table`, `description`, `type`, `colselect`) VALUES
('8c2259ef5b8d5f96a385c869f22c7429', 'rset cognome nome', 'https://localhost/comune/public/resource/resource/endpoint?id=8c2259ef5b8d5f96a385c869f22c7429', 'resource_set_info', 'lettura del nominativo', 'http://schema.org/Person', 'nome,cognome'),
('4559846a9169c2066ec188ccfd1e7a52', 'prova', 'https://localhost/comune/public/resource/resource/endpoint?id=4559846a9169c2066ec188ccfd1e7a52', 'resource_set_info', 'lett', '', 'nome,cognome'),
('eaef3051edbc958a0a379ba7eb2492d7', 'prova del nome', 'https://localhost/comune/public/resource/resource/endpoint?id=eaef3051edbc958a0a379ba7eb2492d7', 'resource_set_info', 'lettura', 'anagrafica', 'nome,cognome'),
('c918e7111e1649ac5522aee8b587b534', 'rset nome', 'https://localhost/comune/public/resource/resource/endpoint?id=c918e7111e1649ac5522aee8b587b534', 'resource_set_info', 'lettura del nome', 'http://schema.org/Person', 'nome'),
('dcb964772abaef6d625734a14cca7229', 'rset nominativo indirizzo', 'https://localhost/comune/public/resource/resource/endpoint?id=dcb964772abaef6d625734a14cca7229', 'resource_set_info', 'indirizzo completo', '', 'nome,cognome,comune_residenza,provincia_residenza,cap_residenza,indirizzo_residenza,num_civico_residenza,frazione_residenza'),
('7d16aa15895b92e7c77c894fc94e6289', 'rset indirizzo anagrafica co', 'https://localhost/comune/public/resource/resource/endpoint?id=7d16aa15895b92e7c77c894fc94e6289', 'resource_set_info', 'indirizzo anagrafica completo', '', 'nome,cognome,provincia_residenza,cap_residenza,tipologia_residenza'),
('9201941a279d368fc3c4df18874eaf07', 'prova nome', 'https://localhost/comune/public/resource/resource/endpoint?id=9201941a279d368fc3c4df18874eaf07', 'resource_set_info', 'lettura', '', 'nome'),
('d73719c258ac47a7da3f472f9c918cc1', 'prova 2', 'https://localhost/comune/public/resource/resource/endpoint?id=d73719c258ac47a7da3f472f9c918cc1', 'resource_set_info', 'lettura 2 ', '', 'nome,cognome'),
('f7e558850636e5356e481d831c01ae7b', 'nominativo', 'https://localhost/comune/public/resource/resource/endpoint?id=f7e558850636e5356e481d831c01ae7b', 'resource_set_info', 'lettura nominativo', '', 'nome,cognome'),
('88631358f0bc5526ce932a088131446f', 'nome 3', 'https://localhost/comune/public/resource/resource/endpoint?id=88631358f0bc5526ce932a088131446f', 'resource_set_info', 'lettrura', '', 'nome,cognome,sesso'),
('fb8e11aaa929281b3ff5c9da13ec2f2d', 'name creation', 'https://localhost/comune/public/resource/resource/endpoint?id=fb8e11aaa929281b3ff5c9da13ec2f2d', 'resource_set_info', '', '', 'nome'),
('85cc9cebe1c4a027fc9fffe71cfd2bde', 'nome 5', 'https://localhost/comune/public/resource/resource/endpoint?id=85cc9cebe1c4a027fc9fffe71cfd2bde', 'resource_set_info', '', '', 'nome,cognome,sesso'),
('b6b08b285854b56e1d2a611c765703e0', 'nome 6', 'https://localhost/comune/public/resource/resource/endpoint?id=b6b08b285854b56e1d2a611c765703e0', 'resource_set_info', '', '', 'cf,nome,sesso,indirizzo_residenza'),
('2c9b36ac90ec0417aef740ecb1874f63', 'prova dom dic', 'https://localhost/comune/public/resource/resource/endpoint?id=2c9b36ac90ec0417aef740ecb1874f63', 'resource_set_info', 'prova dom dic', 'anagrafica 5', 'nome,cognome,data_nascita'),
('65cc808ea6a9d076be3f681683f04829', 'proof', 'https://localhost/comune/public/resource/resource/endpoint?id=65cc808ea6a9d076be3f681683f04829', 'resource_set_info', 'prof', 'proof', 'cf,nome,cognome'),
('27046957e60077cefe45220b0f995ebb', 'riempi anche oauth', 'https://localhost/comune/public/resource/resource/endpoint?id=27046957e60077cefe45220b0f995ebb', 'resource_set_info', 'dovrebbe inserirne 3', 'triplo uri', 'stato_civile'),
('0d78045d01a077fad16a9bcb0bab76eb', 'prova require once', 'https://localhost/comune/public/resource/resource/endpoint?id=0d78045d01a077fad16a9bcb0bab76eb', 'resource_set_info', 'rova req', 'once', 'cf,nome'),
('9fbeb20a2e960e143207b5e7397aebd4', 'prova non si sa', 'https://localhost/comune/public/resource/resource/endpoint?id=9fbeb20a2e960e143207b5e7397aebd4', 'resource_set_info', 'test test', 'test', 'cf,tipologia_residenza'),
('a453da46e581f35d18de1dec2615dcf9', 'nome del resource set', 'https://localhost/comune/public/resource/resource/endpoint?id=a453da46e581f35d18de1dec2615dcf9', 'resource_set_info', 'la descrizione', 'concetto rdf', 'cf,nome,cognome'),
('8a77748c72023acc44f6458140dd9450', 'name 23', 'https://localhost/comune/public/resource/resource/endpoint?id=8a77748c72023acc44f6458140dd9450', 'resource_set_info', 'descr name 23', 'name 23', 'nome,data_nascita');

-- --------------------------------------------------------

--
-- Struttura della tabella `rset_scope`
--

CREATE TABLE IF NOT EXISTS `rset_scope` (
  `scope_uri` varchar(100) NOT NULL,
  `rset_id` varchar(100) NOT NULL,
  PRIMARY KEY (`scope_uri`,`rset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `rset_scope`
--

INSERT INTO `rset_scope` (`scope_uri`, `rset_id`) VALUES
('https://localhost/comune/public/resource/resource/deletescope', '9fbeb20a2e960e143207b5e7397aebd4'),
('https://localhost/comune/public/resource/resource/readscope', '0d78045d01a077fad16a9bcb0bab76eb'),
('https://localhost/comune/public/resource/resource/readscope', '27046957e60077cefe45220b0f995ebb'),
('https://localhost/comune/public/resource/resource/readscope', '4559846a9169c2066ec188ccfd1e7a52'),
('https://localhost/comune/public/resource/resource/readscope', '65cc808ea6a9d076be3f681683f04829'),
('https://localhost/comune/public/resource/resource/readscope', '7d16aa15895b92e7c77c894fc94e6289'),
('https://localhost/comune/public/resource/resource/readscope', '85cc9cebe1c4a027fc9fffe71cfd2bde'),
('https://localhost/comune/public/resource/resource/readscope', '88631358f0bc5526ce932a088131446f'),
('https://localhost/comune/public/resource/resource/readscope', '8a77748c72023acc44f6458140dd9450'),
('https://localhost/comune/public/resource/resource/readscope', '8c2259ef5b8d5f96a385c869f22c7429'),
('https://localhost/comune/public/resource/resource/readscope', '9201941a279d368fc3c4df18874eaf07'),
('https://localhost/comune/public/resource/resource/readscope', 'a453da46e581f35d18de1dec2615dcf9'),
('https://localhost/comune/public/resource/resource/readscope', 'b6b08b285854b56e1d2a611c765703e0'),
('https://localhost/comune/public/resource/resource/readscope', 'b6ebd97b0ce737434d850ab2426b2bb6'),
('https://localhost/comune/public/resource/resource/readscope', 'c918e7111e1649ac5522aee8b587b534'),
('https://localhost/comune/public/resource/resource/readscope', 'd73719c258ac47a7da3f472f9c918cc1'),
('https://localhost/comune/public/resource/resource/readscope', 'dcb964772abaef6d625734a14cca7229'),
('https://localhost/comune/public/resource/resource/readscope', 'eaef3051edbc958a0a379ba7eb2492d7'),
('https://localhost/comune/public/resource/resource/readscope', 'fb8e11aaa929281b3ff5c9da13ec2f2d'),
('https://localhost/comune/public/resource/resource/updatescope', '27046957e60077cefe45220b0f995ebb'),
('https://localhost/comune/public/resource/resource/updatescope', '8c2259ef5b8d5f96a385c869f22c7429'),
('https://localhost/comune/public/resource/resource/updatescope', '9fbeb20a2e960e143207b5e7397aebd4'),
('https://localhost/comune/public/resource/resource/updatescope', 'f7e558850636e5356e481d831c01ae7b'),
('https://localhost/comune/public/resource/resource/writescope', '0d78045d01a077fad16a9bcb0bab76eb'),
('https://localhost/comune/public/resource/resource/writescope', '27046957e60077cefe45220b0f995ebb'),
('https://localhost/comune/public/resource/resource/writescope', '2c9b36ac90ec0417aef740ecb1874f63'),
('https://localhost/comune/public/resource/resource/writescope', '4559846a9169c2066ec188ccfd1e7a52'),
('https://localhost/comune/public/resource/resource/writescope', '7d16aa15895b92e7c77c894fc94e6289'),
('https://localhost/comune/public/resource/resource/writescope', '85cc9cebe1c4a027fc9fffe71cfd2bde'),
('https://localhost/comune/public/resource/resource/writescope', '88631358f0bc5526ce932a088131446f'),
('https://localhost/comune/public/resource/resource/writescope', '8a77748c72023acc44f6458140dd9450'),
('https://localhost/comune/public/resource/resource/writescope', '8c2259ef5b8d5f96a385c869f22c7429'),
('https://localhost/comune/public/resource/resource/writescope', 'a453da46e581f35d18de1dec2615dcf9'),
('https://localhost/comune/public/resource/resource/writescope', 'b6b08b285854b56e1d2a611c765703e0'),
('https://localhost/comune/public/resource/resource/writescope', 'b6ebd97b0ce737434d850ab2426b2bb6'),
('https://localhost/comune/public/resource/resource/writescope', 'c918e7111e1649ac5522aee8b587b534'),
('https://localhost/comune/public/resource/resource/writescope', 'd73719c258ac47a7da3f472f9c918cc1'),
('https://localhost/comune/public/resource/resource/writescope', 'dcb964772abaef6d625734a14cca7229'),
('https://localhost/comune/public/resource/resource/writescope', 'eaef3051edbc958a0a379ba7eb2492d7'),
('https://localhost/comune/public/resource/resource/writescope', 'f7e558850636e5356e481d831c01ae7b');

-- --------------------------------------------------------

--
-- Struttura della tabella `rs_info`
--

CREATE TABLE IF NOT EXISTS `rs_info` (
  `id` varchar(200) NOT NULL,
  `shared_secret_key` varchar(500) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table holds the Resource Server information';

--
-- Dump dei dati per la tabella `rs_info`
--

INSERT INTO `rs_info` (`id`, `shared_secret_key`, `description`) VALUES
('comune_rs_id', 'fe57e2b903694aefc6b87c87190d533f', 'Questo server si occupa delle richieste indirizzate al Comune.');

-- --------------------------------------------------------

--
-- Struttura della tabella `scope`
--

CREATE TABLE IF NOT EXISTS `scope` (
  `scope_id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `uri` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`scope_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `scope`
--

INSERT INTO `scope` (`scope_id`, `name`, `uri`, `description`) VALUES
('SCOPE_1', 'read', 'https://localhost/comune/public/resource/resource/readscope', 'lettura dati anagrafici'),
('SCOPE_2', 'write', 'https://localhost/comune/public/resource/resource/writescope', 'scrittura dati anagrafici'),
('SCOPE_3', 'update', 'https://localhost/comune/public/resource/resource/updatescope', 'modifica dati anagrafici'),
('SCOPE_4', 'delete', 'https://localhost/comune/public/resource/resource/deletescope', 'cancellazione dati anagrafici');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
