-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dic 28, 2014 alle 16:54
-- Versione del server: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dichred_client`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` varchar(200) NOT NULL,
  `secret` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `as_auth_endpoint` varchar(2000) NOT NULL,
  `as_token_endpoint` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table holds the client info';

--
-- Dump dei dati per la tabella `client`
--

INSERT INTO `client` (`id`, `secret`, `description`, `as_auth_endpoint`, `as_token_endpoint`) VALUES
('dichred_clientid1', '7aba9979f96d797400ed5e6503f85972', 'Compilazione (automatica) online della dichiarazione dei redditi - 730.', 'https://localhost/oauth/public/oauth/authorize', 'https://localhost/oauth/public/oauth/token');

-- --------------------------------------------------------

--
-- Struttura della tabella `rsets_scopes`
--

CREATE TABLE IF NOT EXISTS `rsets_scopes` (
  `scope_uri` varchar(100) NOT NULL,
  `rset_id` varchar(100) NOT NULL,
  `rset_name` varchar(100) NOT NULL,
  `rset_uri` varchar(200) DEFAULT NULL,
  `scope_name` varchar(200) DEFAULT NULL,
  UNIQUE KEY `UNIQUE` (`scope_uri`,`rset_id`,`rset_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table holds scopes used to request data';

--
-- Dump dei dati per la tabella `rsets_scopes`
--

INSERT INTO `rsets_scopes` (`scope_uri`, `rset_id`, `rset_name`, `rset_uri`, `scope_name`) VALUES
('https://localhost/comune/public/resource/resource/readscope', '7d16aa15895b92e7c77c894fc94e6289', 'rset indirizzo anagrafica co', 'https://localhost/comune/public/resource/resource/endpoint?id=7d16aa15895b92e7c77c894fc94e6289', 'read'),
('https://localhost/comune/public/resource/resource/readscope', '8c2259ef5b8d5f96a385c869f22c7429', 'rset cognome nome', 'https://localhost/comune/public/resource/resource/endpoint?id=8c2259ef5b8d5f96a385c869f22c7429', 'read'),
('https://localhost/comune/public/resource/resource/readscope', 'b6b08b285854b56e1d2a611c765703e0', 'nome 6', 'https://localhost/comune/public/resource/resource/endpoint?id=b6b08b285854b56e1d2a611c765703e0', 'read'),
('https://localhost/comune/public/resource/resource/readscope', 'c918e7111e1649ac5522aee8b587b534', 'rset nome', 'https://localhost/comune/public/resource/resource/endpoint?id=c918e7111e1649ac5522aee8b587b534', 'read'),
('https://localhost/comune/public/resource/resource/readscope', 'dcb964772abaef6d625734a14cca7229', 'rset nominativo indirizzo', 'https://localhost/comune/public/resource/resource/endpoint?id=dcb964772abaef6d625734a14cca7229', 'read'),
('https://localhost/comune/public/resource/resource/readscope', 'fb8e11aaa929281b3ff5c9da13ec2f2d', 'name creation', 'https://localhost/comune/public/resource/resource/endpoint?id=fb8e11aaa929281b3ff5c9da13ec2f2d', 'read'),
('https://localhost/comune/public/resource/resource/writescope', '7d16aa15895b92e7c77c894fc94e6289', 'rset indirizzo anagrafica co', 'https://localhost/comune/public/resource/resource/endpoint?id=7d16aa15895b92e7c77c894fc94e6289', 'write'),
('https://localhost/comune/public/resource/resource/writescope', '8c2259ef5b8d5f96a385c869f22c7429', 'rset cognome nome', 'https://localhost/comune/public/resource/resource/endpoint?id=8c2259ef5b8d5f96a385c869f22c7429', 'write'),
('https://localhost/comune/public/resource/resource/writescope', 'b6b08b285854b56e1d2a611c765703e0', 'nome 6', 'https://localhost/comune/public/resource/resource/endpoint?id=b6b08b285854b56e1d2a611c765703e0', 'write'),
('https://localhost/comune/public/resource/resource/writescope', 'c918e7111e1649ac5522aee8b587b534', 'rset nome', 'https://localhost/comune/public/resource/resource/endpoint?id=c918e7111e1649ac5522aee8b587b534', 'write'),
('https://localhost/comune/public/resource/resource/writescope', 'dcb964772abaef6d625734a14cca7229', 'rset nominativo indirizzo', 'https://localhost/comune/public/resource/resource/endpoint?id=dcb964772abaef6d625734a14cca7229', 'write'),
('https://localhost/comune/public/resource/resource/updatescope', '8c2259ef5b8d5f96a385c869f22c7429', 'rset cognome nome', 'https://localhost/comune/public/resource/resource/endpoint?id=8c2259ef5b8d5f96a385c869f22c7429', 'update');

-- --------------------------------------------------------

--
-- Struttura della tabella `rset_scope`
--

CREATE TABLE IF NOT EXISTS `rset_scope` (
  `scope_uri` varchar(100) NOT NULL,
  `rset_id` varchar(100) NOT NULL,
  `rset_name` varchar(100) NOT NULL,
  `rset_uri` varchar(200) DEFAULT NULL,
  `scope_name` varchar(200) DEFAULT NULL,
  UNIQUE KEY `UNIQUE` (`scope_uri`,`rset_id`,`rset_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table holds scopes used to request data';

--
-- Dump dei dati per la tabella `rset_scope`
--

INSERT INTO `rset_scope` (`scope_uri`, `rset_id`, `rset_name`, `rset_uri`, `scope_name`) VALUES
('https://localhost/comune/public/resource/resource/readscope', '7d16aa15895b92e7c77c894fc94e6289', 'rset indirizzo anagrafica co', 'https://localhost/comune/public/resource/resource/endpoint?id=7d16aa15895b92e7c77c894fc94e6289', 'read'),
('https://localhost/comune/public/resource/resource/readscope', '8c2259ef5b8d5f96a385c869f22c7429', 'rset cognome nome', 'https://localhost/comune/public/resource/resource/endpoint?id=8c2259ef5b8d5f96a385c869f22c7429', 'read'),
('https://localhost/comune/public/resource/resource/readscope', 'b6b08b285854b56e1d2a611c765703e0', 'nome 6', 'https://localhost/comune/public/resource/resource/endpoint?id=b6b08b285854b56e1d2a611c765703e0', 'read'),
('https://localhost/comune/public/resource/resource/readscope', 'c918e7111e1649ac5522aee8b587b534', 'rset nome', 'https://localhost/comune/public/resource/resource/endpoint?id=c918e7111e1649ac5522aee8b587b534', 'read'),
('https://localhost/comune/public/resource/resource/readscope', 'dcb964772abaef6d625734a14cca7229', 'rset nominativo indirizzo', 'https://localhost/comune/public/resource/resource/endpoint?id=dcb964772abaef6d625734a14cca7229', 'read'),
('https://localhost/comune/public/resource/resource/readscope', 'fb8e11aaa929281b3ff5c9da13ec2f2d', 'name creation', 'https://localhost/comune/public/resource/resource/endpoint?id=fb8e11aaa929281b3ff5c9da13ec2f2d', 'read'),
('https://localhost/comune/public/resource/resource/writescope', '7d16aa15895b92e7c77c894fc94e6289', 'rset indirizzo anagrafica co', 'https://localhost/comune/public/resource/resource/endpoint?id=7d16aa15895b92e7c77c894fc94e6289', 'write'),
('https://localhost/comune/public/resource/resource/writescope', '8c2259ef5b8d5f96a385c869f22c7429', 'rset cognome nome', 'https://localhost/comune/public/resource/resource/endpoint?id=8c2259ef5b8d5f96a385c869f22c7429', 'write'),
('https://localhost/comune/public/resource/resource/writescope', 'b6b08b285854b56e1d2a611c765703e0', 'nome 6', 'https://localhost/comune/public/resource/resource/endpoint?id=b6b08b285854b56e1d2a611c765703e0', 'write'),
('https://localhost/comune/public/resource/resource/writescope', 'c918e7111e1649ac5522aee8b587b534', 'rset nome', 'https://localhost/comune/public/resource/resource/endpoint?id=c918e7111e1649ac5522aee8b587b534', 'write'),
('https://localhost/comune/public/resource/resource/writescope', 'dcb964772abaef6d625734a14cca7229', 'rset nominativo indirizzo', 'https://localhost/comune/public/resource/resource/endpoint?id=dcb964772abaef6d625734a14cca7229', 'write'),
('https://localhost/comune/public/resource/resource/updatescope', '8c2259ef5b8d5f96a385c869f22c7429', 'rset cognome nome', 'https://localhost/comune/public/resource/resource/endpoint?id=8c2259ef5b8d5f96a385c869f22c7429', 'update');

-- --------------------------------------------------------

--
-- Struttura della tabella `scope`
--

CREATE TABLE IF NOT EXISTS `scope` (
  `id` varchar(200) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table holds scopes used to request data';

--
-- Dump dei dati per la tabella `scope`
--

INSERT INTO `scope` (`id`, `description`) VALUES
('lettura_dati_anagrafici', 'Comune - lettura dati anagrafici (nome, cognome, residenza, data e luogo di nascita, stato civile)'),
('lettura_dati_sostituto_imposta', 'Agenzia delle Entrate - lettura dati sostituto d''imposta'),
('lettura_dati_contratti_locazione_fabbricati', 'Agenzia delle Entrate - lettura dati contratti locazione dei fabbricati'),
('lettura_dati_cud', 'Agenzia delle Entrate - lettura dati del CUD'),
('lettura_dati_spese_mediche', 'Agenzia delle Entrate - lettura dati delle spese mediche'),
('lettura_dati_fabbricati', 'Agenzia del Territorio - lettura dati dei fabbricati in possesso');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
