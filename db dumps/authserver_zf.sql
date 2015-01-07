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
-- Database: `authserver_zf`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `authorization_codes`
--

CREATE TABLE IF NOT EXISTS `authorization_codes` (
  `authorization_code` varchar(1000) NOT NULL,
  `client_id` varchar(22) NOT NULL,
  `resource_owner_id` varchar(500) NOT NULL,
  `scopes` varchar(200) NOT NULL,
  `generation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`authorization_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `authorization_codes`
--

INSERT INTO `authorization_codes` (`authorization_code`, `client_id`, `resource_owner_id`, `scopes`, `generation_timestamp`) VALUES
('49a727f5c77f0eb8dffe', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 08:50:03'),
('a9400101455bca05ae6f', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 08:51:17'),
('5a1bacee599e9e80124e', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 09:11:47'),
('88cadd2c707265175244', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-28 12:04:04'),
('435d2d602e03e0aa8a9a', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 12:10:32'),
('d4cdf619974e21185738', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 12:19:00'),
('e46cce5d95f210c2982d', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 12:24:33');

-- --------------------------------------------------------

--
-- Struttura della tabella `authorization_codes_wrsets`
--

CREATE TABLE IF NOT EXISTS `authorization_codes_wrsets` (
  `authorization_code` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `client_id` varchar(22) CHARACTER SET latin1 NOT NULL,
  `resource_owner_id` varchar(500) CHARACTER SET latin1 NOT NULL,
  `rsets` varchar(300) DEFAULT NULL,
  `scopes` varchar(200) CHARACTER SET latin1 NOT NULL,
  `generation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `authorization_codes_wrsets`
--

INSERT INTO `authorization_codes_wrsets` (`authorization_code`, `client_id`, `resource_owner_id`, `rsets`, `scopes`, `generation_timestamp`) VALUES
('49a727f5c77f0eb8dffe', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 08:50:03'),
('a9400101455bca05ae6f', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 08:51:17'),
('5a1bacee599e9e80124e', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 09:11:47'),
('ccd45dc53eeb01864ecb', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 09:16:47'),
('da9d7ed025eb4576cb93', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 09:22:25'),
('603c529462d41fa8fa74', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 10:49:45'),
('c10b50fe9779407e8ee0', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 10:57:27'),
('2f5823e546a694d42c24', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289', 'https://localhost/comune/public/resource/resource/readscope', '2014-12-28 11:01:13'),
('180b5dfb7ba775049c64', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 11:12:41'),
('78d211f6d1a27e87e28d', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 11:24:22'),
('14d489f02b64984acae4', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 11:54:00'),
('7450ab11750f32e7acb2', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 12:46:16'),
('24eace32fec1309a51c1', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 12:53:43'),
('f614eea9dd5004bf2346', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 13:22:58'),
('c83649aa5665ba8939b0', 'dichred_clientid1', 'mario.rossi@gmail.com', 'b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope', '2014-12-28 13:32:47'),
('5bdae8412c3fb6c23bbd', 'dichred_clientid1', 'mario.rossi@gmail.com', 'c918e7111e1649ac5522aee8b587b534 dcb964772abaef6d625734a14cca7229', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 13:45:55'),
('af21d0b925d25192b85f', 'dichred_clientid1', 'mario.rossi@gmail.com', 'dcb964772abaef6d625734a14cca7229 fb8e11aaa929281b3ff5c9da13ec2f2d 7d16aa15895b92e7c77c894fc94e6289', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/writescope', '2014-12-28 14:02:57'),
('7be7d221c5a91187148e', 'dichred_clientid1', 'mario.rossi@gmail.com', 'b6b08b285854b56e1d2a611c765703e0 c918e7111e1649ac5522aee8b587b534', 'https://localhost/comune/public/resource/resource/writescope https://localhost/comune/public/resource/resource/writescope', '2014-12-28 14:12:16'),
('4a951ef9f2a4708de72e', 'dichred_clientid1', 'mario.rossi@gmail.com', 'b6b08b285854b56e1d2a611c765703e0 c918e7111e1649ac5522aee8b587b534', 'https://localhost/comune/public/resource/resource/writescope https://localhost/comune/public/resource/resource/writescope', '2014-12-28 14:13:30'),
('c22b769a9ac7c2ed7c5a', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429 b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/writescope https://localhost/comune/public/resource/resource/writescope https://localhost/comune/public/resource/resource/writescope', '2014-12-28 14:28:48'),
('b8308c85a66b1da10604', 'dichred_clientid1', 'mario.rossi@gmail.com', 'b6b08b285854b56e1d2a611c765703e0 c918e7111e1649ac5522aee8b587b534 dcb964772abaef6d625734a14cca7229', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 14:39:02'),
('437d1c29cc29561a3c31', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 14:47:08'),
('a1691f969c7e0d373f50', 'dichred_clientid1', 'mario.rossi@gmail.com', '7d16aa15895b92e7c77c894fc94e6289 8c2259ef5b8d5f96a385c869f22c7429', 'https://localhost/comune/public/resource/resource/readscope https://localhost/comune/public/resource/resource/readscope', '2014-12-28 14:48:15');

-- --------------------------------------------------------

--
-- Struttura della tabella `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_id` varchar(22) NOT NULL,
  `client_secret` varchar(40) NOT NULL,
  `client_type` enum('web','user-agent','native') NOT NULL,
  `redirect_uri` varchar(500) NOT NULL,
  `client_name` varchar(500) NOT NULL,
  `client_description` longtext,
  `creation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `client_secret` (`client_secret`),
  UNIQUE KEY `redirect_uri` (`redirect_uri`),
  UNIQUE KEY `client_name` (`client_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `client`
--

INSERT INTO `client` (`client_id`, `client_secret`, `client_type`, `redirect_uri`, `client_name`, `client_description`, `creation_timestamp`) VALUES
('dichred_clientid1', '7aba9979f96d797400ed5e6503f85972', 'web', 'http://127.0.0.1/client/public/index/process', 'Dichiarazione dei redditi client', 'L''applicazione che permette di automatizzare (in parte) la compilazione della dichiarazione dei redditi 730.', '2014-07-31 17:55:18');

-- --------------------------------------------------------

--
-- Struttura della tabella `refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `refresh_tokens` (
  `refresh_token` varchar(1000) NOT NULL,
  `client_id` varchar(22) NOT NULL,
  `resource_owner_id` varchar(500) NOT NULL,
  `scopes` varchar(200) NOT NULL,
  `generation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`refresh_token`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`refresh_token`, `client_id`, `resource_owner_id`, `scopes`, `generation_timestamp`) VALUES
('a8a0c994b503165f23b1', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 17:46:27'),
('a9d3712dd771a4936007', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 17:47:31'),
('566ce79072f1e92aa4f4', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 17:48:18'),
('4bdd7b7c8783e12a615e', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 17:53:06'),
('e5323acfb99620c782e9', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 17:54:25'),
('39588e1f3fd1daf553a0', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 17:57:53'),
('8dc2c3f71ce00441e2dd', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 18:00:51'),
('0d7e36c6fa0a3d5ffc16', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 18:05:48'),
('c093c8c88f14e1ebace4', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 18:09:24'),
('1460910effa3f62c6add', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 18:11:30'),
('b022ed944d0da2b02ce4', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 18:17:07'),
('e4dc58c484090abc84a4', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 18:20:58'),
('09d48a70f10c26702b37', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 18:21:54'),
('304e01aafd9d971f2f9c', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 18:25:38'),
('c84c5697a9c1b031b4ad', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 18:28:38'),
('61e034216669cef33064', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 18:41:41'),
('5fa5e22a3737b18b9565', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:06:19'),
('de9081bd996ce58be241', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:21:13'),
('cef48e8b700d8f61ea3d', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:22:20'),
('dbd1163203537f03d837', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:24:10'),
('544e20e188a4722352a0', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:26:41'),
('bf76c8e544b2e3dfc2ac', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:31:07'),
('4e2c3b658aeccc6795d9', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:33:27'),
('ebe655ef468b869afed5', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:34:34'),
('cd4dbc448483b4e8291c', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:35:50'),
('049aef976f88613647aa', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:41:39'),
('99ddad41a75e9ad66341', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_fabbricati', '2014-08-18 19:43:01'),
('b3fb7b27350780c2df71', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:47:43'),
('19e95ebb09ae52b51a8f', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:48:26'),
('0b466669bcfe85397405', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:49:36'),
('6568dab78e303a640129', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 19:52:33'),
('08ae766d6adec6a9a72f', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 20:08:04'),
('582457dc65b66dc5c5e7', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 20:35:44'),
('d738ec7f10bd95eda995', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 20:36:42'),
('1e61a41694e065ce2daf', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-18 20:38:41'),
('0286257b585b3df5c1c2', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 08:11:25'),
('f3b1bdc533bc155df1c5', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 08:30:53'),
('8a10ba20854bd86d5bdc', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 09:03:13'),
('9349e41e469d839a8006', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 09:13:12'),
('31b67c1824a7f89cf8bd', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 11:25:06'),
('7a94f2dd430a0ed954d7', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 11:25:48'),
('b8a47db612f0f3874a4a', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 12:11:24'),
('6b4fdc8e9a4e01ef9c8c', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 12:38:38'),
('fca7f3c3827025d441fd', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-08-25 19:34:46'),
('828345661bf637900ace', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-12-20 19:26:20'),
('ca3224fd2e55a763c1b5', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-12-20 21:02:08'),
('5b9da19ac8829c4843fe', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 12:44:31'),
('c739b6eef521c30b1266', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 15:26:15'),
('c574837c1880e417c75c', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 15:36:36'),
('dea197dc8428ca4716cd', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 15:38:00'),
('a65528c43aa5a03568e9', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-12-26 16:14:16'),
('a93c8309f51a9827b4f5', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 16:24:32'),
('3103df502ed3ede5c304', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 16:28:38'),
('cb3a312c61c1f95aa627', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 17:19:15'),
('0e14b579f62b49e71cb3', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 17:49:53'),
('14ae89d5b69fad472b76', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-26 18:46:53'),
('c2f60d8163c8bda757d0', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 07:08:24'),
('95490e84cb0f6cc3f674', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:05:29'),
('cac1aa8a8fa195162654', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:09:39'),
('17e9685df0d173dee2e5', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:15:15'),
('95c3cd48b25aa0a34e04', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:17:43'),
('92a72b3f87971a810d27', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:21:21'),
('a7d6e803ba7baec3599d', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 08:23:02'),
('df5ea07c901ad2d29053', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 08:24:43'),
('ccf30a504b3c1d806e4b', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 08:31:40'),
('cab9f4b629f098683df3', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 08:44:45'),
('b3582703d8d87bcb396c', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 09:36:53'),
('86ec828152eb722aeb0c', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 09:38:47'),
('43a7f293a2931fd7c1ec', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 09:49:43'),
('fae96a5017a6bb542250', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 10:34:29'),
('0cc5dd98d3bd20c44472', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 10:41:07'),
('2f3d5380b88592b6d74e', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 10:44:48'),
('d176efebddc1f2ab5956', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 10:48:54'),
('8e93b621ace01e65936c', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 12:17:00'),
('c811a0dec9faa1beb9d0', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 16:18:43'),
('536584a5832cfcfe2db4', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-28 07:31:24'),
('227fcbb91664f614379e', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 12:38:12'),
('c043fc22421f8a0bd625', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 12:41:39'),
('376c5905ce9cbd9d40a2', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 12:42:29'),
('cbcb82a5d1e9c5f90e42', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 12:52:55'),
('2591bf146433f0289d4d', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 13:21:50'),
('f6569b31de3d0cba8caa', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 14:02:07'),
('eaf9be0604839eaf0c2c', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 14:22:50'),
('75f06845cc8d4a03f208', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-28 14:46:22'),
('f11190439b9de2f96316', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-12-28 14:51:08'),
('7b5bfd1c214980a4d3e3', 'dichred_clientid1', 'mario.rossi@gmail.com', 'lettura_dati_anagrafici', '2014-12-28 14:51:39');

-- --------------------------------------------------------

--
-- Struttura della tabella `refresh_tokens_wrsets`
--

CREATE TABLE IF NOT EXISTS `refresh_tokens_wrsets` (
  `refresh_token` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `client_id` varchar(22) CHARACTER SET latin1 NOT NULL,
  `resource_owner_id` varchar(500) CHARACTER SET latin1 NOT NULL,
  `rsets` varchar(300) DEFAULT NULL,
  `scopes` varchar(200) CHARACTER SET latin1 NOT NULL,
  `generation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `refresh_tokens_wrsets`
--

INSERT INTO `refresh_tokens_wrsets` (`refresh_token`, `client_id`, `resource_owner_id`, `rsets`, `scopes`, `generation_timestamp`) VALUES
('a8a0c994b503165f23b1', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 17:46:27'),
('a9d3712dd771a4936007', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 17:47:31'),
('566ce79072f1e92aa4f4', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 17:48:18'),
('4bdd7b7c8783e12a615e', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 17:53:06'),
('e5323acfb99620c782e9', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 17:54:25'),
('39588e1f3fd1daf553a0', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 17:57:53'),
('8dc2c3f71ce00441e2dd', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 18:00:51'),
('0d7e36c6fa0a3d5ffc16', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 18:05:48'),
('c093c8c88f14e1ebace4', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 18:09:24'),
('1460910effa3f62c6add', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 18:11:30'),
('b022ed944d0da2b02ce4', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 18:17:07'),
('e4dc58c484090abc84a4', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 18:20:58'),
('09d48a70f10c26702b37', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 18:21:54'),
('304e01aafd9d971f2f9c', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-08-18 18:25:38'),
('c84c5697a9c1b031b4ad', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 18:28:38'),
('61e034216669cef33064', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 18:41:41'),
('5fa5e22a3737b18b9565', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:06:19'),
('de9081bd996ce58be241', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:21:13'),
('cef48e8b700d8f61ea3d', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:22:20'),
('dbd1163203537f03d837', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:24:10'),
('544e20e188a4722352a0', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:26:41'),
('bf76c8e544b2e3dfc2ac', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:31:07'),
('4e2c3b658aeccc6795d9', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:33:27'),
('ebe655ef468b869afed5', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:34:34'),
('cd4dbc448483b4e8291c', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:35:50'),
('049aef976f88613647aa', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:41:39'),
('99ddad41a75e9ad66341', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_fabbricati', '2014-08-18 19:43:01'),
('b3fb7b27350780c2df71', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:47:43'),
('19e95ebb09ae52b51a8f', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:48:26'),
('0b466669bcfe85397405', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:49:36'),
('6568dab78e303a640129', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 19:52:33'),
('08ae766d6adec6a9a72f', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 20:08:04'),
('582457dc65b66dc5c5e7', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 20:35:44'),
('d738ec7f10bd95eda995', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 20:36:42'),
('1e61a41694e065ce2daf', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-18 20:38:41'),
('0286257b585b3df5c1c2', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 08:11:25'),
('f3b1bdc533bc155df1c5', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 08:30:53'),
('8a10ba20854bd86d5bdc', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 09:03:13'),
('9349e41e469d839a8006', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 09:13:12'),
('31b67c1824a7f89cf8bd', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 11:25:06'),
('7a94f2dd430a0ed954d7', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 11:25:48'),
('b8a47db612f0f3874a4a', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 12:11:24'),
('6b4fdc8e9a4e01ef9c8c', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 12:38:38'),
('fca7f3c3827025d441fd', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-08-25 19:34:46'),
('828345661bf637900ace', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-12-20 19:26:20'),
('ca3224fd2e55a763c1b5', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-12-20 21:02:08'),
('5b9da19ac8829c4843fe', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 12:44:31'),
('c739b6eef521c30b1266', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 15:26:15'),
('c574837c1880e417c75c', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 15:36:36'),
('dea197dc8428ca4716cd', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 15:38:00'),
('a65528c43aa5a03568e9', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici', '2014-12-26 16:14:16'),
('a93c8309f51a9827b4f5', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 16:24:32'),
('3103df502ed3ede5c304', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 16:28:38'),
('cb3a312c61c1f95aa627', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 17:19:15'),
('0e14b579f62b49e71cb3', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta', '2014-12-26 17:49:53'),
('14ae89d5b69fad472b76', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-26 18:46:53'),
('c2f60d8163c8bda757d0', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 07:08:24'),
('95490e84cb0f6cc3f674', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:05:29'),
('cac1aa8a8fa195162654', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:09:39'),
('17e9685df0d173dee2e5', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:15:15'),
('95c3cd48b25aa0a34e04', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:17:43'),
('92a72b3f87971a810d27', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 08:21:21'),
('a7d6e803ba7baec3599d', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 08:23:02'),
('df5ea07c901ad2d29053', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 08:24:43'),
('ccf30a504b3c1d806e4b', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 08:31:40'),
('cab9f4b629f098683df3', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 08:44:45'),
('b3582703d8d87bcb396c', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 09:36:53'),
('86ec828152eb722aeb0c', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 09:38:47'),
('43a7f293a2931fd7c1ec', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 09:49:43'),
('fae96a5017a6bb542250', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 10:34:29'),
('0cc5dd98d3bd20c44472', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 10:41:07'),
('2f3d5380b88592b6d74e', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 10:44:48'),
('d176efebddc1f2ab5956', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati lettura_dati_cud lettura_dati_spese_mediche lettura_dati_fabbricati', '2014-12-27 10:48:54'),
('8e93b621ace01e65936c', 'dichred_clientid1', 'mario.rossi@gmail.com', NULL, 'lettura_dati_anagrafici lettura_dati_sostituto_imposta lettura_dati_contratti_locazione_fabbricati', '2014-12-27 12:17:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `resource_server`
--

CREATE TABLE IF NOT EXISTS `resource_server` (
  `resource_server_id` varchar(22) NOT NULL,
  `resource_server_secret` varchar(40) NOT NULL,
  `reference_type` set('cf','mail','nickname') NOT NULL,
  `resource_server_name` varchar(500) NOT NULL,
  `resource_server_endpoint_uri` varchar(1024) NOT NULL,
  PRIMARY KEY (`resource_server_id`),
  UNIQUE KEY `resource_server_secret` (`resource_server_secret`),
  UNIQUE KEY `resource_server_name` (`resource_server_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `resource_server`
--

INSERT INTO `resource_server` (`resource_server_id`, `resource_server_secret`, `reference_type`, `resource_server_name`, `resource_server_endpoint_uri`) VALUES
('agenziaentrate_rs_id', '59af05a9f4a1de9c4a6a3933a235dee4', 'cf', 'Agenzia delle Entrate Server', 'https://localhost/agenziaentrate/public/server/data'),
('agterritorio_rs_id', '535985ed1e2d6075b640b09481bebe7e', 'cf', 'Agenzia del Territorio (e Catasto) Server', 'https://localhost/agenziaterritorio/public/server/data'),
('comune_rs_id', 'fe57e2b903694aefc6b87c87190d533f', 'cf', 'Comune Resource Server', 'https://localhost/comune/public/server/data');

-- --------------------------------------------------------

--
-- Struttura della tabella `resource_set_registration`
--

CREATE TABLE IF NOT EXISTS `resource_set_registration` (
  `rset_id` varchar(200) NOT NULL,
  `rset_name` varchar(200) NOT NULL,
  `rset_description` varchar(200) NOT NULL,
  `rset_type` varchar(200) DEFAULT NULL,
  `rset_uri` varchar(200) NOT NULL,
  `rset_scopesuri` varchar(300) NOT NULL,
  PRIMARY KEY (`rset_id`),
  FULLTEXT KEY `rset_name` (`rset_name`,`rset_description`,`rset_uri`),
  FULLTEXT KEY `rset_name_2` (`rset_name`,`rset_description`,`rset_type`,`rset_uri`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `resource_set_registration`
--

INSERT INTO `resource_set_registration` (`rset_id`, `rset_name`, `rset_description`, `rset_type`, `rset_uri`, `rset_scopesuri`) VALUES
('eaef3051edbc958a0a379ba7eb2492d7', 'prova del nome', 'lettura', 'anagrafica', 'https://localhost/comune/public/resource/resource/endpoint?id=eaef3051edbc958a0a379ba7eb2492d7', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope'),
('c918e7111e1649ac5522aee8b587b534', 'rset nome', 'lettura del nome', 'http://schema.org/Person', 'https://localhost/comune/public/resource/resource/endpoint?id=c918e7111e1649ac5522aee8b587b534', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope'),
('8c2259ef5b8d5f96a385c869f22c7429', 'rset cognome nome', 'lettura del nominativo', 'http://schema.org/Person', 'https://localhost/comune/public/resource/resource/endpoint?id=8c2259ef5b8d5f96a385c869f22c7429', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope,https://localhost/comune/public/resource/resource/updatescope'),
('dcb964772abaef6d625734a14cca7229', 'rset nominativo indirizzo', 'indirizzo completo', '', 'https://localhost/comune/public/resource/resource/endpoint?id=dcb964772abaef6d625734a14cca7229', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope'),
('7d16aa15895b92e7c77c894fc94e6289', 'rset indirizzo anagrafica co', 'indirizzo anagrafica completo', '', 'https://localhost/comune/public/resource/resource/endpoint?id=7d16aa15895b92e7c77c894fc94e6289', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope'),
('fb8e11aaa929281b3ff5c9da13ec2f2d', 'name creation', '', '', 'https://localhost/comune/public/resource/resource/endpoint?id=fb8e11aaa929281b3ff5c9da13ec2f2d', 'https://localhost/comune/public/resource/resource/readscope'),
('b6b08b285854b56e1d2a611c765703e0', 'nome 6', '', '', 'https://localhost/comune/public/resource/resource/endpoint?id=b6b08b285854b56e1d2a611c765703e0', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope'),
('2c9b36ac90ec0417aef740ecb1874f63', 'prova dom dic', 'prova dom dic', 'anagrafica 5', 'https://localhost/comune/public/resource/resource/endpoint?id=2c9b36ac90ec0417aef740ecb1874f63', 'https://localhost/comune/public/resource/resource/writescope'),
('65cc808ea6a9d076be3f681683f04829', 'proof', 'prof', 'proof', 'https://localhost/comune/public/resource/resource/endpoint?id=65cc808ea6a9d076be3f681683f04829', 'https://localhost/comune/public/resource/resource/readscope'),
('27046957e60077cefe45220b0f995ebb', 'riempi anche oauth', 'dovrebbe inserirne 3', 'triplo uri', 'https://localhost/comune/public/resource/resource/endpoint?id=27046957e60077cefe45220b0f995ebb', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope,https://localhost/comune/public/resource/resource/updatescope'),
('0d78045d01a077fad16a9bcb0bab76eb', 'prova require once', 'rova req', 'once', 'https://localhost/comune/public/resource/resource/endpoint?id=0d78045d01a077fad16a9bcb0bab76eb', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope'),
('9fbeb20a2e960e143207b5e7397aebd4', 'prova non si sa', 'test test', 'test', 'https://localhost/comune/public/resource/resource/endpoint?id=9fbeb20a2e960e143207b5e7397aebd4', 'https://localhost/comune/public/resource/resource/updatescope,https://localhost/comune/public/resource/resource/deletescope'),
('a453da46e581f35d18de1dec2615dcf9', 'nome del resource set', 'la descrizione', 'concetto rdf', 'https://localhost/comune/public/resource/resource/endpoint?id=a453da46e581f35d18de1dec2615dcf9', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope'),
('8a77748c72023acc44f6458140dd9450', 'name 23', 'descr name 23', 'name 23', 'https://localhost/comune/public/resource/resource/endpoint?id=8a77748c72023acc44f6458140dd9450', 'https://localhost/comune/public/resource/resource/readscope,https://localhost/comune/public/resource/resource/writescope');

-- --------------------------------------------------------

--
-- Struttura della tabella `rsets_scopes`
--

CREATE TABLE IF NOT EXISTS `rsets_scopes` (
  `scope_uri` varchar(100) NOT NULL,
  `rset_id` varchar(100) NOT NULL,
  PRIMARY KEY (`scope_uri`,`rset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `rsets_scopes`
--

INSERT INTO `rsets_scopes` (`scope_uri`, `rset_id`) VALUES
('https://localhost/comune/public/resource/resource/deletescope', '9fbeb20a2e960e143207b5e7397aebd4'),
('https://localhost/comune/public/resource/resource/readscope', '0d78045d01a077fad16a9bcb0bab76eb'),
('https://localhost/comune/public/resource/resource/readscope', '27046957e60077cefe45220b0f995ebb'),
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
('https://localhost/comune/public/resource/resource/readscope', 'fb8e11aaa929281b3ff5c9da13ec2f2d'),
('https://localhost/comune/public/resource/resource/updatescope', '27046957e60077cefe45220b0f995ebb'),
('https://localhost/comune/public/resource/resource/updatescope', '8c2259ef5b8d5f96a385c869f22c7429'),
('https://localhost/comune/public/resource/resource/updatescope', '9fbeb20a2e960e143207b5e7397aebd4'),
('https://localhost/comune/public/resource/resource/updatescope', 'f7e558850636e5356e481d831c01ae7b'),
('https://localhost/comune/public/resource/resource/writescope', '0d78045d01a077fad16a9bcb0bab76eb'),
('https://localhost/comune/public/resource/resource/writescope', '27046957e60077cefe45220b0f995ebb'),
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
('https://localhost/comune/public/resource/resource/writescope', 'f7e558850636e5356e481d831c01ae7b');

-- --------------------------------------------------------

--
-- Struttura della tabella `scope`
--

CREATE TABLE IF NOT EXISTS `scope` (
  `resource_server_id` varchar(22) NOT NULL,
  `scope_id` varchar(100) NOT NULL,
  `scope_description` varchar(250) NOT NULL,
  PRIMARY KEY (`resource_server_id`,`scope_id`),
  UNIQUE KEY `scope_id` (`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `scope`
--

INSERT INTO `scope` (`resource_server_id`, `scope_id`, `scope_description`) VALUES
('agenziaentrate_rs_id', 'lettura_dati_contratti_locazione_fabbricati', 'Lettura dati dei contratti di locazione dei fabbricati'),
('agenziaentrate_rs_id', 'lettura_dati_cud', 'Lettura dati del CUD'),
('agenziaentrate_rs_id', 'lettura_dati_sostituto_imposta', 'Lettura dati del sostituto d''imposta'),
('agenziaentrate_rs_id', 'lettura_dati_spese_mediche', 'Lettura dati delle spese mediche'),
('agterritorio_rs_id', 'lettura_dati_fabbricati', 'Lettura dati dei fabbricati in possesso'),
('comune_rs_id', 'aggiornamento_dati_anagrafici', 'Aggiornamento dati anagrafici'),
('comune_rs_id', 'cancellazione_dati_anagrafici', 'Cancellazione dati anagrafici'),
('comune_rs_id', 'https://localhost/comune/public/resource/resource/deletescope', 'cancellazione dati anagrafici'),
('comune_rs_id', 'https://localhost/comune/public/resource/resource/readscope', 'lettura dati anagrafici'),
('comune_rs_id', 'https://localhost/comune/public/resource/resource/updatescope', 'modifica dati anagrafici'),
('comune_rs_id', 'https://localhost/comune/public/resource/resource/writescope', 'Scittura dati anagrafici'),
('comune_rs_id', 'lettura_dati_anagrafici', 'Lettura dati anagrafici'),
('comune_rs_id', 'scrittura_dati_anagrafici', 'Scittura dati anagrafici');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(500) NOT NULL,
  `user_password` char(32) NOT NULL,
  `creation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`user_id`, `user_password`, `creation_timestamp`) VALUES
('artur.tolstenco@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2014-08-18 16:34:08'),
('mario.rossi@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2014-08-18 16:34:08');

-- --------------------------------------------------------

--
-- Struttura della tabella `user_reference`
--

CREATE TABLE IF NOT EXISTS `user_reference` (
  `user_id` varchar(500) NOT NULL,
  `resource_server_id` varchar(22) NOT NULL,
  `user_reference` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`,`resource_server_id`),
  KEY `resource_server_id` (`resource_server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user_reference`
--

INSERT INTO `user_reference` (`user_id`, `resource_server_id`, `user_reference`) VALUES
('artur.tolstenco@gmail.com', 'comune_rs_id', 'aaaaaaaaaaaaaaaaaaaaaa'),
('mario.rossi@gmail.com', 'agenziaentrate_rs_id', 'RSSMRA85T10A562S'),
('mario.rossi@gmail.com', 'agterritorio_rs_id', 'RSSMRA85T10A562S'),
('mario.rossi@gmail.com', 'comune_rs_id', 'RSSMRA85T10A562S');

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `scope`
--
ALTER TABLE `scope`
  ADD CONSTRAINT `scope_ibfk_3` FOREIGN KEY (`resource_server_id`) REFERENCES `resource_server` (`resource_server_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `user_reference`
--
ALTER TABLE `user_reference`
  ADD CONSTRAINT `user_reference_ibfk_1` FOREIGN KEY (`resource_server_id`) REFERENCES `resource_server` (`resource_server_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_reference_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
