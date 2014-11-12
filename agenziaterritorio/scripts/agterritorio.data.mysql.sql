/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

USE `agterritorio_dati`;

LOCK TABLES `titolare` WRITE;
/*!40000 ALTER TABLE `titolare` DISABLE KEYS */;
INSERT INTO `titolare` (`cf`) VALUES ('RSSMRA85T10A562S');
/*!40000 ALTER TABLE `titolare` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `fabbricato` WRITE;
/*!40000 ALTER TABLE `fabbricato` DISABLE KEYS */;
INSERT INTO `fabbricato` (`id`, `rendita`, `possesso_perc`, `possesso_giorni`, `codice_comune`, `cf_app`) VALUES (1, 500, 100, 365, 'D969', 'RSSMRA85T10A562S'), (2, 800, 100, 365, 'D969', 'RSSMRA85T10A562S'), (3, 200, 50, 365, 'D969', 'RSSMRA85T10A562S');
/*!40000 ALTER TABLE `fabbricato` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
