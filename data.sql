-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: fitnesstudio
-- ------------------------------------------------------
-- Server version	5.7.17-log

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

--
-- Temporary view structure for view `aktivne_grupe`
--

DROP TABLE IF EXISTS `aktivne_grupe`;
/*!50001 DROP VIEW IF EXISTS `aktivne_grupe`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aktivne_grupe` AS SELECT 
 1 AS `IDTipaTreninga`,
 1 AS `IDGrupe`,
 1 AS `TrenutniBrojClanova`,
 1 AS `IDFitnesCentra`,
 1 AS `Kapacitet`,
 1 AS `OpisTreninga`,
 1 AS `JMBGTrenera`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `strucnaSprema`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `naziv`,
 1 AS `nazivTreninga`,
 1 AS `trajanjeUMinutama`,
 1 AS `DatumKreiranja`,
 1 AS `DatumDeaktiviranja`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aktivni_individualni_treninzi`
--

DROP TABLE IF EXISTS `aktivni_individualni_treninzi`;
/*!50001 DROP VIEW IF EXISTS `aktivni_individualni_treninzi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aktivni_individualni_treninzi` AS SELECT 
 1 AS `IDTipaTreninga`,
 1 AS `IDIndividualnogTreninga`,
 1 AS `JMBGClana`,
 1 AS `OpisTreninga`,
 1 AS `JMBGTrenera`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `strucnaSprema`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `naziv`,
 1 AS `nazivTreninga`,
 1 AS `trajanjeUMinutama`,
 1 AS `DatumKreiranja`,
 1 AS `DatumDeaktiviranja`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clan`
--

DROP TABLE IF EXISTS `clan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clan` (
  `JMBG` varchar(13) NOT NULL,
  `ClanskiBroj` int(11) DEFAULT NULL,
  PRIMARY KEY (`JMBG`),
  UNIQUE KEY `ClanskiBroj_UNIQUE` (`ClanskiBroj`),
  CONSTRAINT `clan_ibfk_1` FOREIGN KEY (`JMBG`) REFERENCES `osoba` (`JMBG`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clan`
--

LOCK TABLES `clan` WRITE;
/*!40000 ALTER TABLE `clan` DISABLE KEYS */;
INSERT INTO `clan` (`JMBG`, `ClanskiBroj`) VALUES ('3231181387262',2),('9612382921002',8),('2379006962562',45),('9286072854239',66),('3010058640831',74),('4971470323262',94),('4780938429571',99),('9151344920356',100);
/*!40000 ALTER TABLE `clan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clanarina`
--

DROP TABLE IF EXISTS `clanarina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clanarina` (
  `DatumPrijave` date DEFAULT NULL,
  `DatumIsteka` date DEFAULT NULL,
  `JMBGClana` varchar(13) NOT NULL,
  `IDTipaClanarine` int(11) NOT NULL,
  `IDClanarine` int(11) NOT NULL AUTO_INCREMENT,
  `JMBGRecepcionera` varchar(13) NOT NULL,
  `IDFCentra` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDClanarine`),
  KEY `R_38` (`JMBGClana`),
  KEY `R_80` (`IDTipaClanarine`),
  KEY `R_40` (`JMBGRecepcionera`),
  KEY `clanarina_ibfk_4` (`IDFCentra`),
  CONSTRAINT `clanarina_ibfk_1` FOREIGN KEY (`JMBGClana`) REFERENCES `clan` (`JMBG`),
  CONSTRAINT `clanarina_ibfk_2` FOREIGN KEY (`IDTipaClanarine`) REFERENCES `tip_clanarine` (`IDTipaClanarine`),
  CONSTRAINT `clanarina_ibfk_3` FOREIGN KEY (`JMBGRecepcionera`) REFERENCES `recepcioner` (`JMBG`),
  CONSTRAINT `clanarina_ibfk_4` FOREIGN KEY (`IDFCentra`) REFERENCES `fitnes_centar` (`IDFCentra`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clanarina`
--

LOCK TABLES `clanarina` WRITE;
/*!40000 ALTER TABLE `clanarina` DISABLE KEYS */;
INSERT INTO `clanarina` (`DatumPrijave`, `DatumIsteka`, `JMBGClana`, `IDTipaClanarine`, `IDClanarine`, `JMBGRecepcionera`, `IDFCentra`) VALUES ('2019-05-20','2019-05-20','3231181387262',24,24,'Recepcioner',10),('2019-05-20','2019-06-20','9612382921002',25,25,'Recepcioner',9),('2019-04-19','2019-05-19','3231181387262',26,26,'Recepcioner',9),('2019-01-20','2019-02-20','2379006962562',42,27,'Recepcioner',NULL),('2019-01-20','2019-02-20','2379006962562',39,28,'Recepcioner',NULL),('2019-05-20','2019-06-20','2379006962562',39,29,'Recepcioner',NULL),('2019-05-20','2019-06-20','2379006962562',43,30,'Recepcioner',NULL);
/*!40000 ALTER TABLE `clanarina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clanarine_pogled`
--

DROP TABLE IF EXISTS `clanarine_pogled`;
/*!50001 DROP VIEW IF EXISTS `clanarine_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `clanarine_pogled` AS SELECT 
 1 AS `DatumPrijave`,
 1 AS `DatumIsteka`,
 1 AS `IDClanarine`,
 1 AS `Naziv clanarine`,
 1 AS `Cijena`,
 1 AS `Naziv treninga`,
 1 AS `JMBG`,
 1 AS `OpisTreninga`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clanovi_pogled`
--

DROP TABLE IF EXISTS `clanovi_pogled`;
/*!50001 DROP VIEW IF EXISTS `clanovi_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `clanovi_pogled` AS SELECT 
 1 AS `jmbg`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `clanskibroj`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `naziv`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clanovi_u_grupama_pogled`
--

DROP TABLE IF EXISTS `clanovi_u_grupama_pogled`;
/*!50001 DROP VIEW IF EXISTS `clanovi_u_grupama_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `clanovi_u_grupama_pogled` AS SELECT 
 1 AS `jmbg`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `clanskibroj`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `nazivMjesta`,
 1 AS `IDGrupe`,
 1 AS `Aktivan`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dani`
--

DROP TABLE IF EXISTS `dani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dani` (
  `IDDana` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(13) NOT NULL,
  PRIMARY KEY (`IDDana`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dani`
--

LOCK TABLES `dani` WRITE;
/*!40000 ALTER TABLE `dani` DISABLE KEYS */;
INSERT INTO `dani` (`IDDana`, `Naziv`) VALUES (1,'ponedjeljak'),(2,'utorak'),(3,'srijeda'),(4,'četvrtak'),(5,'petak'),(6,'subota'),(7,'nedjelja');
/*!40000 ALTER TABLE `dani` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dijagnosticke_procedure`
--

DROP TABLE IF EXISTS `dijagnosticke_procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dijagnosticke_procedure` (
  `IDTipaUsluge` int(11) NOT NULL,
  `JMBG` varchar(13) NOT NULL,
  `IDDijagnostickeProcedure` int(11) NOT NULL AUTO_INCREMENT,
  `DatumUsluge` date DEFAULT NULL,
  `IDFitnesKartona` int(11) NOT NULL,
  `IDStavkaRacun` int(11) NOT NULL,
  PRIMARY KEY (`IDDijagnostickeProcedure`),
  KEY `R_114` (`IDTipaUsluge`),
  KEY `R_119` (`JMBG`),
  KEY `R_123` (`IDFitnesKartona`),
  KEY `R_127` (`IDStavkaRacun`),
  CONSTRAINT `dijagnosticke_procedure_ibfk_1` FOREIGN KEY (`IDTipaUsluge`) REFERENCES `tip_dijagnosticarske_procedure` (`IDTipaUsluge`),
  CONSTRAINT `dijagnosticke_procedure_ibfk_2` FOREIGN KEY (`JMBG`) REFERENCES `trener` (`JMBG`),
  CONSTRAINT `dijagnosticke_procedure_ibfk_3` FOREIGN KEY (`JMBG`) REFERENCES `clan` (`JMBG`),
  CONSTRAINT `dijagnosticke_procedure_ibfk_4` FOREIGN KEY (`IDFitnesKartona`) REFERENCES `fitnes_karton` (`IDFitnesKartona`),
  CONSTRAINT `dijagnosticke_procedure_ibfk_5` FOREIGN KEY (`IDStavkaRacun`) REFERENCES `racun_stavka` (`IDStavkaRacun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dijagnosticke_procedure`
--

LOCK TABLES `dijagnosticke_procedure` WRITE;
/*!40000 ALTER TABLE `dijagnosticke_procedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `dijagnosticke_procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitnes_centar`
--

DROP TABLE IF EXISTS `fitnes_centar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fitnes_centar` (
  `IDFCentra` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(20) DEFAULT NULL,
  `RadnoVrijeme` varchar(20) DEFAULT NULL,
  `IDMjesta` int(11) NOT NULL,
  `JMBGDirektora` varchar(13) NOT NULL,
  PRIMARY KEY (`IDFCentra`),
  KEY `R_48` (`IDMjesta`),
  KEY `R_66` (`JMBGDirektora`),
  CONSTRAINT `fitnes_centar_ibfk_1` FOREIGN KEY (`IDMjesta`) REFERENCES `mjesto` (`IDMjesta`),
  CONSTRAINT `fitnes_centar_ibfk_2` FOREIGN KEY (`JMBGDirektora`) REFERENCES `zaposlenik` (`JMBG`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitnes_centar`
--

LOCK TABLES `fitnes_centar` WRITE;
/*!40000 ALTER TABLE `fitnes_centar` DISABLE KEYS */;
INSERT INTO `fitnes_centar` (`IDFCentra`, `Email`, `RadnoVrijeme`, `IDMjesta`, `JMBGDirektora`) VALUES (6,'fit@gmail.com','08:00 - 22:00',16,'Direktor2'),(7,'fit2@gmail.com','08:00 - 22:00',17,'Direktor1'),(8,'fit3@gmail.com','08:00 - 22:00',15,'Direktor3'),(9,'fit4@gmail.com','08:00 - 22:00',18,'Direktor1'),(10,'fit5@gmail.com','08:00 - 22:00',9,'Direktor4');
/*!40000 ALTER TABLE `fitnes_centar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitnes_centar_osoba`
--

DROP TABLE IF EXISTS `fitnes_centar_osoba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fitnes_centar_osoba` (
  `IDFCentra` int(11) NOT NULL,
  `JMBG` varchar(13) NOT NULL,
  PRIMARY KEY (`IDFCentra`,`JMBG`),
  KEY `R_95` (`JMBG`),
  CONSTRAINT `fitnes_centar_osoba_ibfk_1` FOREIGN KEY (`IDFCentra`) REFERENCES `fitnes_centar` (`IDFCentra`),
  CONSTRAINT `fitnes_centar_osoba_ibfk_2` FOREIGN KEY (`JMBG`) REFERENCES `osoba` (`JMBG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitnes_centar_osoba`
--

LOCK TABLES `fitnes_centar_osoba` WRITE;
/*!40000 ALTER TABLE `fitnes_centar_osoba` DISABLE KEYS */;
/*!40000 ALTER TABLE `fitnes_centar_osoba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fitnes_centri_pogled`
--

DROP TABLE IF EXISTS `fitnes_centri_pogled`;
/*!50001 DROP VIEW IF EXISTS `fitnes_centri_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `fitnes_centri_pogled` AS SELECT 
 1 AS `idfCentra`,
 1 AS `email`,
 1 AS `radnovrijeme`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `naziv`,
 1 AS `jmbg`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `StrucnaSprema`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fitnes_karton`
--

DROP TABLE IF EXISTS `fitnes_karton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fitnes_karton` (
  `JMBGClana` varchar(13) NOT NULL,
  `Datum` date DEFAULT NULL,
  `IDFitnesKartona` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDFitnesKartona`),
  KEY `R_50` (`JMBGClana`),
  CONSTRAINT `fitnes_karton_ibfk_1` FOREIGN KEY (`JMBGClana`) REFERENCES `clan` (`JMBG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitnes_karton`
--

LOCK TABLES `fitnes_karton` WRITE;
/*!40000 ALTER TABLE `fitnes_karton` DISABLE KEYS */;
/*!40000 ALTER TABLE `fitnes_karton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupa`
--

DROP TABLE IF EXISTS `grupa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupa` (
  `IDTipaTreninga` int(11) NOT NULL,
  `IDGrupe` int(11) NOT NULL AUTO_INCREMENT,
  `TrenutniBrojClanova` int(11) DEFAULT NULL,
  `JMBGTrenera` varchar(13) NOT NULL,
  `IDFitnesCentra` int(11) NOT NULL,
  `DatumKreiranja` date DEFAULT NULL,
  `DatumDeaktiviranja` date DEFAULT NULL,
  PRIMARY KEY (`IDGrupe`),
  KEY `R_102` (`IDTipaTreninga`),
  KEY `R_107` (`JMBGTrenera`),
  KEY `grupa_ibfk_3_idx` (`IDFitnesCentra`),
  CONSTRAINT `grupa_ibfk_1` FOREIGN KEY (`IDTipaTreninga`) REFERENCES `tip_grupni_trening` (`IDTipaTreninga`),
  CONSTRAINT `grupa_ibfk_2` FOREIGN KEY (`JMBGTrenera`) REFERENCES `trener` (`JMBG`),
  CONSTRAINT `grupa_ibfk_3` FOREIGN KEY (`IDFitnesCentra`) REFERENCES `fitnes_centar` (`IDFCentra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupa`
--

LOCK TABLES `grupa` WRITE;
/*!40000 ALTER TABLE `grupa` DISABLE KEYS */;
INSERT INTO `grupa` (`IDTipaTreninga`, `IDGrupe`, `TrenutniBrojClanova`, `JMBGTrenera`, `IDFitnesCentra`, `DatumKreiranja`, `DatumDeaktiviranja`) VALUES (1017,9,1,'8927576856177',6,'2019-05-01',NULL),(1017,10,0,'8753342266861',10,'2019-05-01',NULL),(1017,11,2,'7915725727804',9,'2019-05-01',NULL),(1020,12,0,'6009912178151',6,'2019-03-03','2019-05-03'),(1017,13,0,'1336968839171',6,'2019-05-06',NULL);
/*!40000 ALTER TABLE `grupa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupa_clan`
--

DROP TABLE IF EXISTS `grupa_clan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupa_clan` (
  `IDGrupe` int(11) NOT NULL,
  `JMBGClana` varchar(13) NOT NULL,
  `Aktivan` tinyint(1) NOT NULL,
  PRIMARY KEY (`IDGrupe`,`JMBGClana`),
  KEY `R_110` (`JMBGClana`),
  CONSTRAINT `grupa_clan_ibfk_1` FOREIGN KEY (`IDGrupe`) REFERENCES `grupa` (`IDGrupe`),
  CONSTRAINT `grupa_clan_ibfk_2` FOREIGN KEY (`JMBGClana`) REFERENCES `clan` (`JMBG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupa_clan`
--

LOCK TABLES `grupa_clan` WRITE;
/*!40000 ALTER TABLE `grupa_clan` DISABLE KEYS */;
INSERT INTO `grupa_clan` (`IDGrupe`, `JMBGClana`, `Aktivan`) VALUES (9,'3231181387262',1),(11,'3231181387262',1),(11,'9612382921002',1);
/*!40000 ALTER TABLE `grupa_clan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individualni_trening`
--

DROP TABLE IF EXISTS `individualni_trening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individualni_trening` (
  `IDTipaTreninga` int(11) NOT NULL,
  `IDIndividualnogTreninga` int(11) NOT NULL AUTO_INCREMENT,
  `JMBGTrenera` varchar(13) NOT NULL,
  `JMBGClana` varchar(13) NOT NULL,
  `DatumKreiranja` date DEFAULT NULL,
  `DatumDeaktiviranja` date DEFAULT NULL,
  PRIMARY KEY (`IDIndividualnogTreninga`),
  KEY `R_105` (`IDTipaTreninga`),
  KEY `R_108` (`JMBGTrenera`),
  KEY `R_112` (`JMBGClana`),
  CONSTRAINT `individualni_trening_ibfk_1` FOREIGN KEY (`IDTipaTreninga`) REFERENCES `tip_individualni_trening` (`IDTipaTreninga`),
  CONSTRAINT `individualni_trening_ibfk_2` FOREIGN KEY (`JMBGTrenera`) REFERENCES `trener` (`JMBG`),
  CONSTRAINT `individualni_trening_ibfk_3` FOREIGN KEY (`JMBGClana`) REFERENCES `clan` (`JMBG`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individualni_trening`
--

LOCK TABLES `individualni_trening` WRITE;
/*!40000 ALTER TABLE `individualni_trening` DISABLE KEYS */;
INSERT INTO `individualni_trening` (`IDTipaTreninga`, `IDIndividualnogTreninga`, `JMBGTrenera`, `JMBGClana`, `DatumKreiranja`, `DatumDeaktiviranja`) VALUES (1024,1,'8753342266861','2379006962562','2019-01-04','2019-05-04'),(1022,2,'1336968839171','2379006962562','2019-05-04',NULL),(1022,3,'8927576856177','2379006962562','2019-05-10',NULL),(1024,4,'8927576856177','2379006962562','2019-05-10',NULL);
/*!40000 ALTER TABLE `individualni_trening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koordinator`
--

DROP TABLE IF EXISTS `koordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koordinator` (
  `JMBG` varchar(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `koordinator_ibfk_1` FOREIGN KEY (`JMBG`) REFERENCES `zaposlenik` (`JMBG`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koordinator`
--

LOCK TABLES `koordinator` WRITE;
/*!40000 ALTER TABLE `koordinator` DISABLE KEYS */;
INSERT INTO `koordinator` (`JMBG`) VALUES ('1774208045810'),('2340825641910');
/*!40000 ALTER TABLE `koordinator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `koordinatori_pogled`
--

DROP TABLE IF EXISTS `koordinatori_pogled`;
/*!50001 DROP VIEW IF EXISTS `koordinatori_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `koordinatori_pogled` AS SELECT 
 1 AS `jmbg`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `strucnaSprema`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `naziv`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mjesto`
--

DROP TABLE IF EXISTS `mjesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mjesto` (
  `IDMjesta` int(11) NOT NULL AUTO_INCREMENT,
  `Grad` varchar(20) DEFAULT NULL,
  `Regija` varchar(20) DEFAULT NULL,
  `Naziv` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDMjesta`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mjesto`
--

LOCK TABLES `mjesto` WRITE;
/*!40000 ALTER TABLE `mjesto` DISABLE KEYS */;
INSERT INTO `mjesto` (`IDMjesta`, `Grad`, `Regija`, `Naziv`) VALUES (9,'Banja Luka','Banjalučka','Budžak'),(15,'Poreč','Poreština','Baderna'),(16,'Poreč','Poreština','Brčići'),(17,'Poreč','Poreština','Fuškulin'),(18,'Poreč','Poreština','Červar-Porat'),(19,'Banja Luka','Banjalučka','Starčevica');
/*!40000 ALTER TABLE `mjesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutricionista`
--

DROP TABLE IF EXISTS `nutricionista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nutricionista` (
  `JMBG` varchar(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `nutricionista_ibfk_1` FOREIGN KEY (`JMBG`) REFERENCES `zaposlenik` (`JMBG`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutricionista`
--

LOCK TABLES `nutricionista` WRITE;
/*!40000 ALTER TABLE `nutricionista` DISABLE KEYS */;
/*!40000 ALTER TABLE `nutricionista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oprema`
--

DROP TABLE IF EXISTS `oprema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oprema` (
  `IDOpreme` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(20) DEFAULT NULL,
  `DatumNabavke` date DEFAULT NULL,
  `Dobavljac` varchar(20) DEFAULT NULL,
  `IDFCentra` int(11) NOT NULL,
  PRIMARY KEY (`IDOpreme`),
  KEY `R_23` (`IDFCentra`),
  CONSTRAINT `oprema_ibfk_1` FOREIGN KEY (`IDFCentra`) REFERENCES `fitnes_centar` (`IDFCentra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oprema`
--

LOCK TABLES `oprema` WRITE;
/*!40000 ALTER TABLE `oprema` DISABLE KEYS */;
/*!40000 ALTER TABLE `oprema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osoba`
--

DROP TABLE IF EXISTS `osoba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osoba` (
  `JMBG` varchar(13) NOT NULL,
  `Ime` varchar(20) DEFAULT NULL,
  `Prezime` varchar(20) DEFAULT NULL,
  `Adresa` varchar(20) DEFAULT NULL,
  `IDMjesta` int(11) NOT NULL,
  PRIMARY KEY (`JMBG`),
  KEY `R_20` (`IDMjesta`),
  CONSTRAINT `osoba_ibfk_1` FOREIGN KEY (`IDMjesta`) REFERENCES `mjesto` (`IDMjesta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osoba`
--

LOCK TABLES `osoba` WRITE;
/*!40000 ALTER TABLE `osoba` DISABLE KEYS */;
INSERT INTO `osoba` (`JMBG`, `Ime`, `Prezime`, `Adresa`, `IDMjesta`) VALUES ('1336968839171','Biljana','Marković','Krfska 33',9),('1774208045810','Marija','Račić','Rovinjska 18',17),('2340825641910','Dario','Račić','Jovana Jančića 4',19),('2379006962562','Sanja','Subotć','Braće Kukrika 4',9),('2743858205853','Vesna ','Marčeta','Bože Varićaka 2',19),('3010058640831','Ana','Rodić','Sarajevska 8',9),('3231181387262','Jovana','Radulović','Ive Andrića 9',18),('4780938429571','Mersiha','Gozić','Miloša Obilića 3',9),('4971470323262','Sanja','Vadić','Filipini 6',15),('6009912178151','Nina','Pupić','Karla Huguesa',17),('6282372299956','Milana','Smiljanić','Kordunaška 5',19),('7915725727804','Vuka','Vučković','Primorska 6',15),('8753342266861','Marija','Pejić','Materada 10',16),('8927576856177','Brankica','Lolić','Srednjoškolska 2',9),('9151344920356','Dragan','Čobanović','Brune Valentija',17),('9286072854239','Tanja','Budimir','Vrsarska 6',17),('9612382921002','Dragica','Pejić','Tuzlanska 1',19),('Direktor1','Dino','Dvornik','Primorska 22',15),('Direktor2','Oliver','Dragojević','Ročka 6',17),('Direktor3','Zlatan ','Stipišić','Anke Butorac 51b',18),('Direktor4','Romana ','Panić','Krfska 3',9),('Recepcioner','Jozo ','Lipovac','Lendrin mlin 10',9);
/*!40000 ALTER TABLE `osoba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_ishrane`
--

DROP TABLE IF EXISTS `plan_ishrane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_ishrane` (
  `IDTipaUsluge` int(11) NOT NULL,
  `JMBGNutricioniste` varchar(13) NOT NULL,
  `IDPlanIshrane` int(11) NOT NULL AUTO_INCREMENT,
  `DatumUsluge` date DEFAULT NULL,
  `JMBG` varchar(13) NOT NULL,
  `IDFitnesKartona` int(11) NOT NULL,
  `IDStavkaRacun` int(11) NOT NULL,
  PRIMARY KEY (`IDPlanIshrane`),
  KEY `R_113` (`IDTipaUsluge`),
  KEY `R_116` (`JMBGNutricioniste`),
  KEY `R_120` (`JMBG`),
  KEY `R_124` (`IDFitnesKartona`),
  KEY `R_126` (`IDStavkaRacun`),
  CONSTRAINT `plan_ishrane_ibfk_1` FOREIGN KEY (`IDTipaUsluge`) REFERENCES `tip_plan_ishrane` (`IDTipaUsluge`),
  CONSTRAINT `plan_ishrane_ibfk_2` FOREIGN KEY (`JMBGNutricioniste`) REFERENCES `nutricionista` (`JMBG`),
  CONSTRAINT `plan_ishrane_ibfk_3` FOREIGN KEY (`JMBG`) REFERENCES `clan` (`JMBG`),
  CONSTRAINT `plan_ishrane_ibfk_4` FOREIGN KEY (`IDFitnesKartona`) REFERENCES `fitnes_karton` (`IDFitnesKartona`),
  CONSTRAINT `plan_ishrane_ibfk_5` FOREIGN KEY (`IDStavkaRacun`) REFERENCES `racun_stavka` (`IDStavkaRacun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_ishrane`
--

LOCK TABLES `plan_ishrane` WRITE;
/*!40000 ALTER TABLE `plan_ishrane` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_ishrane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racun`
--

DROP TABLE IF EXISTS `racun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racun` (
  `BrojRacuna` int(11) NOT NULL AUTO_INCREMENT,
  `JMBGClana` varchar(13) NOT NULL,
  `Iznos` float DEFAULT NULL,
  `JMBGRecepcionera` varchar(13) NOT NULL,
  PRIMARY KEY (`BrojRacuna`),
  KEY `R_68` (`JMBGClana`),
  KEY `R_83` (`JMBGRecepcionera`),
  CONSTRAINT `racun_ibfk_1` FOREIGN KEY (`JMBGClana`) REFERENCES `clan` (`JMBG`),
  CONSTRAINT `racun_ibfk_2` FOREIGN KEY (`JMBGRecepcionera`) REFERENCES `recepcioner` (`JMBG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racun`
--

LOCK TABLES `racun` WRITE;
/*!40000 ALTER TABLE `racun` DISABLE KEYS */;
/*!40000 ALTER TABLE `racun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racun_stavka`
--

DROP TABLE IF EXISTS `racun_stavka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racun_stavka` (
  `IDStavkaRacun` int(11) NOT NULL AUTO_INCREMENT,
  `BrojRacuna` int(11) NOT NULL,
  `IDClanarine` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDStavkaRacun`),
  KEY `R_87` (`IDClanarine`),
  KEY `R_90` (`BrojRacuna`),
  CONSTRAINT `racun_stavka_ibfk_1` FOREIGN KEY (`IDClanarine`) REFERENCES `clanarina` (`IDClanarine`),
  CONSTRAINT `racun_stavka_ibfk_2` FOREIGN KEY (`BrojRacuna`) REFERENCES `racun` (`BrojRacuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racun_stavka`
--

LOCK TABLES `racun_stavka` WRITE;
/*!40000 ALTER TABLE `racun_stavka` DISABLE KEYS */;
/*!40000 ALTER TABLE `racun_stavka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `raspored_sala_pogled`
--

DROP TABLE IF EXISTS `raspored_sala_pogled`;
/*!50001 DROP VIEW IF EXISTS `raspored_sala_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `raspored_sala_pogled` AS SELECT 
 1 AS `IDSale`,
 1 AS `DanUSedmici`,
 1 AS `Od`,
 1 AS `Do`,
 1 AS `Grupa`,
 1 AS `IDDana`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `raspored_treneri_pogled`
--

DROP TABLE IF EXISTS `raspored_treneri_pogled`;
/*!50001 DROP VIEW IF EXISTS `raspored_treneri_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `raspored_treneri_pogled` AS SELECT 
 1 AS `Od`,
 1 AS `Do`,
 1 AS `JMBG`,
 1 AS `IdDana`,
 1 AS `IDIndividualnogTreninga`,
 1 AS `IDGrupe`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `recepcioner`
--

DROP TABLE IF EXISTS `recepcioner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recepcioner` (
  `JMBG` varchar(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `recepcioner_ibfk_1` FOREIGN KEY (`JMBG`) REFERENCES `zaposlenik` (`JMBG`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcioner`
--

LOCK TABLES `recepcioner` WRITE;
/*!40000 ALTER TABLE `recepcioner` DISABLE KEYS */;
INSERT INTO `recepcioner` (`JMBG`) VALUES ('Recepcioner');
/*!40000 ALTER TABLE `recepcioner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sala` (
  `IDSale` int(11) NOT NULL AUTO_INCREMENT,
  `Kapacitet` int(11) NOT NULL,
  `IDFCentra` int(11) NOT NULL,
  PRIMARY KEY (`IDSale`),
  KEY `R_21` (`IDFCentra`),
  CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`IDFCentra`) REFERENCES `fitnes_centar` (`IDFCentra`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` (`IDSale`, `Kapacitet`, `IDFCentra`) VALUES (6,10,6),(7,10,7),(8,10,8),(9,30,9),(10,30,10),(11,30,6),(12,40,7),(13,30,8),(14,10,6),(15,20,6);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefon_fc`
--

DROP TABLE IF EXISTS `telefon_fc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefon_fc` (
  `BrojTelefona` int(11) NOT NULL,
  `IDFCentra` int(11) NOT NULL,
  PRIMARY KEY (`BrojTelefona`,`IDFCentra`),
  KEY `R_17` (`IDFCentra`),
  CONSTRAINT `telefon_fc_ibfk_1` FOREIGN KEY (`IDFCentra`) REFERENCES `fitnes_centar` (`IDFCentra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefon_fc`
--

LOCK TABLES `telefon_fc` WRITE;
/*!40000 ALTER TABLE `telefon_fc` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefon_fc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefon_osoba`
--

DROP TABLE IF EXISTS `telefon_osoba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefon_osoba` (
  `BrojTelefona` int(11) NOT NULL,
  `JMBG` varchar(13) NOT NULL,
  PRIMARY KEY (`BrojTelefona`,`JMBG`),
  KEY `R_18` (`JMBG`),
  CONSTRAINT `telefon_osoba_ibfk_1` FOREIGN KEY (`JMBG`) REFERENCES `osoba` (`JMBG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefon_osoba`
--

LOCK TABLES `telefon_osoba` WRITE;
/*!40000 ALTER TABLE `telefon_osoba` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefon_osoba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termin`
--

DROP TABLE IF EXISTS `termin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termin` (
  `IDTermina` int(11) NOT NULL AUTO_INCREMENT,
  `JMBGKoordinatora` varchar(13) NOT NULL,
  `Vrijeme` time(6) DEFAULT NULL,
  `IDSale` int(11) DEFAULT NULL,
  `IDGrupe` int(11) DEFAULT NULL,
  `IDIndividualnogTreninga` int(11) DEFAULT NULL,
  `IDDana` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDTermina`),
  KEY `R_60` (`JMBGKoordinatora`),
  KEY `R_91` (`IDSale`),
  KEY `R_104` (`IDGrupe`),
  KEY `R_106` (`IDIndividualnogTreninga`),
  KEY `termin_ibfk_5_idx` (`IDDana`),
  CONSTRAINT `termin_ibfk_1` FOREIGN KEY (`JMBGKoordinatora`) REFERENCES `koordinator` (`JMBG`),
  CONSTRAINT `termin_ibfk_2` FOREIGN KEY (`IDSale`) REFERENCES `sala` (`IDSale`),
  CONSTRAINT `termin_ibfk_3` FOREIGN KEY (`IDGrupe`) REFERENCES `grupa` (`IDGrupe`),
  CONSTRAINT `termin_ibfk_4` FOREIGN KEY (`IDIndividualnogTreninga`) REFERENCES `individualni_trening` (`IDIndividualnogTreninga`),
  CONSTRAINT `termin_ibfk_5` FOREIGN KEY (`IDDana`) REFERENCES `dani` (`IDDana`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termin`
--

LOCK TABLES `termin` WRITE;
/*!40000 ALTER TABLE `termin` DISABLE KEYS */;
INSERT INTO `termin` (`IDTermina`, `JMBGKoordinatora`, `Vrijeme`, `IDSale`, `IDGrupe`, `IDIndividualnogTreninga`, `IDDana`) VALUES (20,'1774208045810','20:00:00.000000',10,10,NULL,2),(21,'1774208045810','20:00:00.000000',10,10,NULL,4),(22,'2340825641910','20:00:00.000000',10,10,NULL,7),(23,'2340825641910','20:00:00.000000',9,11,NULL,1),(24,'1774208045810','20:00:00.000000',9,11,NULL,3),(25,'1774208045810','08:00:00.000000',9,11,NULL,7),(26,'1774208045810','08:00:00.000000',10,10,NULL,7),(29,'1774208045810','20:00:00.000000',15,9,NULL,1),(30,'1774208045810','20:00:00.000000',11,9,NULL,3),(31,'2340825641910','20:00:00.000000',15,9,NULL,5),(32,'2340825641910','20:00:00.000000',NULL,NULL,1,1),(33,'1774208045810','18:00:00.000000',NULL,NULL,2,1),(34,'1774208045810','21:00:00.000000',NULL,NULL,2,1),(35,'1774208045810','18:00:00.000000',NULL,NULL,2,2),(36,'1774208045810','15:00:00.000000',NULL,NULL,2,1),(37,'2340825641910','06:00:00.000000',NULL,NULL,2,1);
/*!40000 ALTER TABLE `termin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_clanarine`
--

DROP TABLE IF EXISTS `tip_clanarine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_clanarine` (
  `IDTipaClanarine` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(20) DEFAULT NULL,
  `Cijena` int(11) DEFAULT NULL,
  `IDTipaTreninga` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDTipaClanarine`),
  KEY `tip_clanarine_ibfk_1` (`IDTipaTreninga`),
  CONSTRAINT `tip_clanarine_ibfk_1` FOREIGN KEY (`IDTipaTreninga`) REFERENCES `tip_treninga` (`IDTipaTreninga`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_clanarine`
--

LOCK TABLES `tip_clanarine` WRITE;
/*!40000 ALTER TABLE `tip_clanarine` DISABLE KEYS */;
INSERT INTO `tip_clanarine` (`IDTipaClanarine`, `Naziv`, `Cijena`, `IDTipaTreninga`) VALUES (24,'1x sedmično',30,1017),(25,'2x sedmično',50,1017),(26,'3x sedmično',60,1017),(27,'3x sedmično popust',50,1017),(28,'20 dolazaka',40,1017),(29,'2x sedmično',60,1018),(30,'2x sedmično popust',50,1018),(31,'3x sedmično',30,1019),(32,'3x sedmično popust',25,1019),(33,'drop in',5,1019),(34,'drop in 5',10,1017),(35,'2x sedmično ',60,1020),(36,'2x sedmično popust',50,1020),(38,'1x sedmično',25,1021),(39,'1x sedmično',40,1022),(40,'2x sedmično',35,1022),(41,'1x sedmično',200,1023),(42,'3x sedmično',300,1024),(43,'3x sedmično popust',260,1024);
/*!40000 ALTER TABLE `tip_clanarine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_dijagnosticarske_procedure`
--

DROP TABLE IF EXISTS `tip_dijagnosticarske_procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_dijagnosticarske_procedure` (
  `IDTipaUsluge` int(11) NOT NULL,
  `OpisProcedure` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IDTipaUsluge`),
  CONSTRAINT `tip_dijagnosticarske_procedure_ibfk_1` FOREIGN KEY (`IDTipaUsluge`) REFERENCES `tip_usluge` (`IDTipaUsluge`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_dijagnosticarske_procedure`
--

LOCK TABLES `tip_dijagnosticarske_procedure` WRITE;
/*!40000 ALTER TABLE `tip_dijagnosticarske_procedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `tip_dijagnosticarske_procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tip_grupa_trener_pogled`
--

DROP TABLE IF EXISTS `tip_grupa_trener_pogled`;
/*!50001 DROP VIEW IF EXISTS `tip_grupa_trener_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tip_grupa_trener_pogled` AS SELECT 
 1 AS `IDTipaTreninga`,
 1 AS `IDGrupe`,
 1 AS `TrenutniBrojClanova`,
 1 AS `IDFitnesCentra`,
 1 AS `Kapacitet`,
 1 AS `OpisTreninga`,
 1 AS `JMBGTrenera`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `strucnaSprema`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `naziv`,
 1 AS `nazivTreninga`,
 1 AS `trajanjeUMinutama`,
 1 AS `DatumKreiranja`,
 1 AS `DatumDeaktiviranja`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tip_grupni_trening`
--

DROP TABLE IF EXISTS `tip_grupni_trening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_grupni_trening` (
  `IDTipaTreninga` int(11) NOT NULL,
  `Kapacitet` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDTipaTreninga`),
  CONSTRAINT `tip_grupni_trening_ibfk_1` FOREIGN KEY (`IDTipaTreninga`) REFERENCES `tip_treninga` (`IDTipaTreninga`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_grupni_trening`
--

LOCK TABLES `tip_grupni_trening` WRITE;
/*!40000 ALTER TABLE `tip_grupni_trening` DISABLE KEYS */;
INSERT INTO `tip_grupni_trening` (`IDTipaTreninga`, `Kapacitet`) VALUES (1017,18),(1018,10),(1019,35),(1020,3),(1021,10);
/*!40000 ALTER TABLE `tip_grupni_trening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_individualni_trening`
--

DROP TABLE IF EXISTS `tip_individualni_trening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_individualni_trening` (
  `IDTipaTreninga` int(11) NOT NULL,
  PRIMARY KEY (`IDTipaTreninga`),
  CONSTRAINT `tip_individualni_trening_ibfk_1` FOREIGN KEY (`IDTipaTreninga`) REFERENCES `tip_treninga` (`IDTipaTreninga`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_individualni_trening`
--

LOCK TABLES `tip_individualni_trening` WRITE;
/*!40000 ALTER TABLE `tip_individualni_trening` DISABLE KEYS */;
INSERT INTO `tip_individualni_trening` (`IDTipaTreninga`) VALUES (1022),(1023),(1024);
/*!40000 ALTER TABLE `tip_individualni_trening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tip_individualni_trening_trener_pogled`
--

DROP TABLE IF EXISTS `tip_individualni_trening_trener_pogled`;
/*!50001 DROP VIEW IF EXISTS `tip_individualni_trening_trener_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tip_individualni_trening_trener_pogled` AS SELECT 
 1 AS `IDTipaTreninga`,
 1 AS `IDIndividualnogTreninga`,
 1 AS `JMBGClana`,
 1 AS `OpisTreninga`,
 1 AS `JMBGTrenera`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `strucnaSprema`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `naziv`,
 1 AS `nazivTreninga`,
 1 AS `trajanjeUMinutama`,
 1 AS `DatumKreiranja`,
 1 AS `DatumDeaktiviranja`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tip_plan_ishrane`
--

DROP TABLE IF EXISTS `tip_plan_ishrane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_plan_ishrane` (
  `OpisPlana` varchar(1000) DEFAULT NULL,
  `IDTipaUsluge` int(11) NOT NULL,
  PRIMARY KEY (`IDTipaUsluge`),
  CONSTRAINT `tip_plan_ishrane_ibfk_1` FOREIGN KEY (`IDTipaUsluge`) REFERENCES `tip_usluge` (`IDTipaUsluge`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_plan_ishrane`
--

LOCK TABLES `tip_plan_ishrane` WRITE;
/*!40000 ALTER TABLE `tip_plan_ishrane` DISABLE KEYS */;
/*!40000 ALTER TABLE `tip_plan_ishrane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_treninga`
--

DROP TABLE IF EXISTS `tip_treninga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_treninga` (
  `IDTipaTreninga` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(20) DEFAULT NULL,
  `TrajanjeUMinutama` int(11) DEFAULT NULL,
  `OpisTreninga` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IDTipaTreninga`)
) ENGINE=InnoDB AUTO_INCREMENT=1025 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_treninga`
--

LOCK TABLES `tip_treninga` WRITE;
/*!40000 ALTER TABLE `tip_treninga` DISABLE KEYS */;
INSERT INTO `tip_treninga` (`IDTipaTreninga`, `Naziv`, `TrajanjeUMinutama`, `OpisTreninga`) VALUES (1017,'Joga',90,'Joga označava sustavan pristup duhovnim vježbama unutar Indijskih i religijskih tradicija u njenoj sferi utjecaja. Joga se sastoji od niza poza, meditacija, kontrole disanja, napjeva i drugih tehnika za pomoć pojedincima u izgrađivanju samoostvarenja, olakšavanja bilo kakve patnje i omogućavanju stanja oslobođenja.'),(1018,'Pilates',60,'Pilates filozofija vježbi, osigurat će svakom profesionalnom triatloncu efikasnije plivanje, snažniji biciklizam i brže trčanje, a da pritom izgradi i održi dobar mišićni balans, razvije fleksibilnost, osigura pravilno držanje, te smanji napetost u kralježnici i donjem dijelu leđa.'),(1019,'Aerobik ',55,'Aerobik trening traje 55 minuta i za to vreme potroši se oko 400 kalorija. Odvijaju se u grupi od 15 do 35 osoba, a mogu da učestvuju i muškarci i žene. Počinje se obaveznim zagrevanjem i razgibavanjem mišića, čime se telo priprema za aktivnost. Nakon zagrevanja rade se aerobne vežbe umerenog intenziteta, koje podižu puls na odgovarajući nivo za proces sagorevanja i topljenja masti. Intenzitet treninga svaki vežbač može da prilagodi svojoj kondiciji, tj. da usporava i ubrzava tempo. Ukoliko nemate pulsmetar, možete i sami voditi računa o pulsu – važno je da ne budete previše zadihani (toliko da ne možete doći do vazduha) ali, s druge strane, dobro je da osećate izvestan napor tokom treninga.'),(1020,'Trening snage',60,'Većini muškaraca su poznati pozitivni efekti treninga snage i treninga sa opterećenjem. Kod određenog broja žena još uvijek postoji strah od suviše mišićavog izgleda pa u vezi sa tim vježbaju u velikoj komfornoj zoni i izbjegavaju rad sa opterećenjnjem.\r\n\r\nTrening snage sa opterećenjem je metod kojim se postiže estetsko oblikovanje tijela i prestruktupiranje tkiva.'),(1021,'Visokointenzivni ',30,'U glavnom dijelu se oslanjamo na TABATA princip a u daljem tekstu I opisu samog principa videćete I zašto. Naziv Tabata je dobio po čovjeku koji ga je osmislio- dr Izumi Tabata, japanski ljekar I naučnik. Dr Izumi je sproveo istraživanje u okviru kojeg je kao model koristio intervalni trening. Cilj istraživanja je bio da se ustanovi koje koristi će ispitanici imati od 8 puta ponovljenih sesija tipa 20/10 (20 se odnosi na 20 sekundi tzv. all out vježbanja a 10 se odnosi na 10 sekundi odmora koje se smjenjuju).'),(1022,'Redukcija tj. težine',60,'tatistika pokazuje da 60-70% populacije razvijenih zemalja ne ostvaruje ni minimalan nivo fizičke aktivnosti preporučen u cilju održavanja zdravlja i energetskog balansa\r\n\r\n(Sport Council and Health Education Authority, 1992; WHO, 1995; USDHHS, 1996).\r\n\r\nTakav stav prema životu i higijeni života kao posljedicu ima značajan porast masovnih nezaraznih bolesti (dijabetes melitus, gojaznost, koronarne bolesti, maligna oboljenja,…).'),(1023,'Rekreativno vj.',60,'Biološki status čovjeka današnjice je značajno pogođen posljedicama naglog  industrijskog razvoja u proteklih par decenija; koji se negativno odrazio na čovjekovu potrebu za kretanjem I samim tim na biološki I zdravstveni status, hronološku I biološku starost, radnu sposobnost, vitalnost a samim tim na kvalitet I dužinu čovjekovog života.'),(1024,'terapeutsko vj.',90,'Često kažemo da na mladima svijet ostaje. U vremenu u kojem  živimo, brz životni tempo, zahtijevi sredine, obrazovanja I svih ostalih aspekata života, su djeci oduzeli  ono vrijeme koje im je neophodno za igui I kretanje koje bi im omogućilo pravilan psiho- fizički rast I razvoj.\r\n\r\nNaš tim se bavi prevencijom I saniranjem poremećaja I deformiteta koji su uslovljeni hipokinezijom kod djece, bilo da se radi o posturalnim poremećajima ili je riječ o suficitu I nagomilavanju masnog tkiva. Prilagođavanjem režima ishrane I programiranjem trenažnog procesa, usmjereno djelujemo u cilju neutral');
/*!40000 ALTER TABLE `tip_treninga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_usluge`
--

DROP TABLE IF EXISTS `tip_usluge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_usluge` (
  `IDTipaUsluge` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(20) DEFAULT NULL,
  `Cijena` float DEFAULT NULL,
  PRIMARY KEY (`IDTipaUsluge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_usluge`
--

LOCK TABLES `tip_usluge` WRITE;
/*!40000 ALTER TABLE `tip_usluge` DISABLE KEYS */;
/*!40000 ALTER TABLE `tip_usluge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tipovi_grupni_trening_pogled`
--

DROP TABLE IF EXISTS `tipovi_grupni_trening_pogled`;
/*!50001 DROP VIEW IF EXISTS `tipovi_grupni_trening_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tipovi_grupni_trening_pogled` AS SELECT 
 1 AS `idTipaTreninga`,
 1 AS `naziv`,
 1 AS `trajanjeUMinutama`,
 1 AS `kapacitet`,
 1 AS `opisTreninga`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tipovi_individualni_trening_pogled`
--

DROP TABLE IF EXISTS `tipovi_individualni_trening_pogled`;
/*!50001 DROP VIEW IF EXISTS `tipovi_individualni_trening_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tipovi_individualni_trening_pogled` AS SELECT 
 1 AS `idTipaTreninga`,
 1 AS `naziv`,
 1 AS `trajanjeUMinutama`,
 1 AS `opisTreninga`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `trener`
--

DROP TABLE IF EXISTS `trener`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trener` (
  `JMBG` varchar(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `trener_ibfk_1` FOREIGN KEY (`JMBG`) REFERENCES `zaposlenik` (`JMBG`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trener`
--

LOCK TABLES `trener` WRITE;
/*!40000 ALTER TABLE `trener` DISABLE KEYS */;
INSERT INTO `trener` (`JMBG`) VALUES ('1336968839171'),('2743858205853'),('6009912178151'),('6282372299956'),('7915725727804'),('8753342266861'),('8927576856177');
/*!40000 ALTER TABLE `trener` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `treneri_pogled`
--

DROP TABLE IF EXISTS `treneri_pogled`;
/*!50001 DROP VIEW IF EXISTS `treneri_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `treneri_pogled` AS SELECT 
 1 AS `jmbg`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `strucnaSprema`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `naziv`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zaposlenik`
--

DROP TABLE IF EXISTS `zaposlenik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaposlenik` (
  `StrucnaSprema` varchar(20) DEFAULT NULL,
  `JMBG` varchar(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `zaposlenik_ibfk_1` FOREIGN KEY (`JMBG`) REFERENCES `osoba` (`JMBG`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaposlenik`
--

LOCK TABLES `zaposlenik` WRITE;
/*!40000 ALTER TABLE `zaposlenik` DISABLE KEYS */;
INSERT INTO `zaposlenik` (`StrucnaSprema`, `JMBG`) VALUES ('trener','1336968839171'),('koordinator','1774208045810'),('koordinator','2340825641910'),('trener','2743858205853'),('trener','6009912178151'),('trener','6282372299956'),('trener','7915725727804'),('trener','8753342266861'),('trener','8927576856177'),('pjevač ','Direktor1'),('pjevač ','Direktor2'),('pjevač ','Direktor3'),('pjevač ','Direktor4'),('Recepcioner','Recepcioner');
/*!40000 ALTER TABLE `zaposlenik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `zaposlenik_pogled`
--

DROP TABLE IF EXISTS `zaposlenik_pogled`;
/*!50001 DROP VIEW IF EXISTS `zaposlenik_pogled`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `zaposlenik_pogled` AS SELECT 
 1 AS `jmbg`,
 1 AS `ime`,
 1 AS `prezime`,
 1 AS `adresa`,
 1 AS `strucnaSprema`,
 1 AS `idmjesta`,
 1 AS `grad`,
 1 AS `regija`,
 1 AS `naziv`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `aktivne_grupe`
--

/*!50001 DROP VIEW IF EXISTS `aktivne_grupe`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aktivne_grupe` AS select `g`.`IDTipaTreninga` AS `IDTipaTreninga`,`g`.`IDGrupe` AS `IDGrupe`,`g`.`TrenutniBrojClanova` AS `TrenutniBrojClanova`,`g`.`IDFitnesCentra` AS `IDFitnesCentra`,`g`.`Kapacitet` AS `Kapacitet`,`g`.`OpisTreninga` AS `OpisTreninga`,`g`.`JMBGTrenera` AS `JMBGTrenera`,`g`.`ime` AS `ime`,`g`.`prezime` AS `prezime`,`g`.`adresa` AS `adresa`,`g`.`strucnaSprema` AS `strucnaSprema`,`g`.`idmjesta` AS `idmjesta`,`g`.`grad` AS `grad`,`g`.`regija` AS `regija`,`g`.`naziv` AS `naziv`,`g`.`nazivTreninga` AS `nazivTreninga`,`g`.`trajanjeUMinutama` AS `trajanjeUMinutama`,`g`.`DatumKreiranja` AS `DatumKreiranja`,`g`.`DatumDeaktiviranja` AS `DatumDeaktiviranja` from `tip_grupa_trener_pogled` `g` where isnull(`g`.`DatumDeaktiviranja`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aktivni_individualni_treninzi`
--

/*!50001 DROP VIEW IF EXISTS `aktivni_individualni_treninzi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aktivni_individualni_treninzi` AS select `i`.`IDTipaTreninga` AS `IDTipaTreninga`,`i`.`IDIndividualnogTreninga` AS `IDIndividualnogTreninga`,`i`.`JMBGClana` AS `JMBGClana`,`i`.`OpisTreninga` AS `OpisTreninga`,`i`.`JMBGTrenera` AS `JMBGTrenera`,`i`.`ime` AS `ime`,`i`.`prezime` AS `prezime`,`i`.`adresa` AS `adresa`,`i`.`strucnaSprema` AS `strucnaSprema`,`i`.`idmjesta` AS `idmjesta`,`i`.`grad` AS `grad`,`i`.`regija` AS `regija`,`i`.`naziv` AS `naziv`,`i`.`naziv` AS `nazivTreninga`,`i`.`trajanjeUMinutama` AS `trajanjeUMinutama`,`i`.`DatumKreiranja` AS `DatumKreiranja`,`i`.`DatumDeaktiviranja` AS `DatumDeaktiviranja` from `tip_individualni_trening_trener_pogled` `i` where isnull(`i`.`DatumDeaktiviranja`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clanarine_pogled`
--

/*!50001 DROP VIEW IF EXISTS `clanarine_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clanarine_pogled` AS select `cl`.`DatumPrijave` AS `DatumPrijave`,`cl`.`DatumIsteka` AS `DatumIsteka`,`cl`.`IDClanarine` AS `IDClanarine`,`tc`.`Naziv` AS `Naziv clanarine`,`tc`.`Cijena` AS `Cijena`,`tt`.`Naziv` AS `Naziv treninga`,`c`.`JMBG` AS `JMBG`,`tt`.`OpisTreninga` AS `OpisTreninga` from (((`clanarina` `cl` join `clan` `c` on((`c`.`JMBG` = `cl`.`JMBGClana`))) join `tip_clanarine` `tc` on((`cl`.`IDTipaClanarine` = `tc`.`IDTipaClanarine`))) left join `tip_treninga` `tt` on((`tt`.`IDTipaTreninga` = `tc`.`IDTipaTreninga`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clanovi_pogled`
--

/*!50001 DROP VIEW IF EXISTS `clanovi_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clanovi_pogled` AS select `o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`c`.`ClanskiBroj` AS `clanskibroj`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv` from ((`osoba` `o` join `clan` `c` on((`c`.`JMBG` = `o`.`JMBG`))) join `mjesto` `m` on((`o`.`IDMjesta` = `m`.`IDMjesta`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clanovi_u_grupama_pogled`
--

/*!50001 DROP VIEW IF EXISTS `clanovi_u_grupama_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clanovi_u_grupama_pogled` AS select `c`.`jmbg` AS `jmbg`,`c`.`ime` AS `ime`,`c`.`prezime` AS `prezime`,`c`.`adresa` AS `adresa`,`c`.`clanskibroj` AS `clanskibroj`,`c`.`idmjesta` AS `idmjesta`,`c`.`grad` AS `grad`,`c`.`regija` AS `regija`,`c`.`naziv` AS `nazivMjesta`,`gc`.`IDGrupe` AS `IDGrupe`,`gc`.`Aktivan` AS `Aktivan` from (`clanovi_pogled` `c` join `grupa_clan` `gc` on((`c`.`jmbg` = `gc`.`JMBGClana`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fitnes_centri_pogled`
--

/*!50001 DROP VIEW IF EXISTS `fitnes_centri_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fitnes_centri_pogled` AS select `f`.`IDFCentra` AS `idfCentra`,`f`.`Email` AS `email`,`f`.`RadnoVrijeme` AS `radnovrijeme`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv`,`o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`z`.`StrucnaSprema` AS `StrucnaSprema` from (((`fitnes_centar` `f` join `mjesto` `m` on((`f`.`IDMjesta` = `m`.`IDMjesta`))) join `zaposlenik` `z` on((`f`.`JMBGDirektora` = `z`.`JMBG`))) join `osoba` `o` on((`z`.`JMBG` = `o`.`JMBG`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `koordinatori_pogled`
--

/*!50001 DROP VIEW IF EXISTS `koordinatori_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `koordinatori_pogled` AS select `o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`z`.`StrucnaSprema` AS `strucnaSprema`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv` from (((`osoba` `o` join `zaposlenik` `z` on((`z`.`JMBG` = `o`.`JMBG`))) join `koordinator` `k` on((`k`.`JMBG` = `o`.`JMBG`))) join `mjesto` `m` on((`o`.`IDMjesta` = `m`.`IDMjesta`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `raspored_sala_pogled`
--

/*!50001 DROP VIEW IF EXISTS `raspored_sala_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `raspored_sala_pogled` AS select `s`.`IDSale` AS `IDSale`,`d`.`Naziv` AS `DanUSedmici`,`t`.`Vrijeme` AS `Od`,(`t`.`Vrijeme` + interval `tt`.`TrajanjeUMinutama` minute) AS `Do`,concat(`tt`.`Naziv`,' ',`g`.`IDGrupe`) AS `Grupa`,`d`.`IDDana` AS `IDDana` from (((((`sala` `s` join `termin` `t` on((`t`.`IDSale` = `s`.`IDSale`))) join `dani` `d` on((`t`.`IDDana` = `d`.`IDDana`))) join `grupa` `g` on((`t`.`IDGrupe` = `g`.`IDGrupe`))) join `tip_grupni_trening` `tgt` on((`g`.`IDTipaTreninga` = `tgt`.`IDTipaTreninga`))) join `tip_treninga` `tt` on((`tt`.`IDTipaTreninga` = `tgt`.`IDTipaTreninga`))) where isnull(`g`.`DatumDeaktiviranja`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `raspored_treneri_pogled`
--

/*!50001 DROP VIEW IF EXISTS `raspored_treneri_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `raspored_treneri_pogled` AS select `t`.`Vrijeme` AS `Od`,(`t`.`Vrijeme` + interval `tt`.`TrajanjeUMinutama` minute) AS `Do`,`tr`.`JMBG` AS `JMBG`,`d`.`IDDana` AS `IdDana`,`it`.`IDIndividualnogTreninga` AS `IDIndividualnogTreninga`,`g`.`IDGrupe` AS `IDGrupe` from (((((`termin` `t` join `dani` `d` on((`d`.`IDDana` = `t`.`IDDana`))) left join `individualni_trening` `it` on((`it`.`IDIndividualnogTreninga` = `t`.`IDIndividualnogTreninga`))) join `trener` `tr`) left join `grupa` `g` on((`g`.`IDGrupe` = `t`.`IDGrupe`))) join `tip_treninga` `tt`) where (((`tt`.`IDTipaTreninga` = `it`.`IDTipaTreninga`) or (`tt`.`IDTipaTreninga` = `g`.`IDTipaTreninga`)) and ((`tr`.`JMBG` = `it`.`JMBGTrenera`) or (`tr`.`JMBG` = `g`.`JMBGTrenera`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tip_grupa_trener_pogled`
--

/*!50001 DROP VIEW IF EXISTS `tip_grupa_trener_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tip_grupa_trener_pogled` AS select `g`.`IDTipaTreninga` AS `IDTipaTreninga`,`g`.`IDGrupe` AS `IDGrupe`,`g`.`TrenutniBrojClanova` AS `TrenutniBrojClanova`,`g`.`IDFitnesCentra` AS `IDFitnesCentra`,`t`.`Kapacitet` AS `Kapacitet`,`p`.`OpisTreninga` AS `OpisTreninga`,`g`.`JMBGTrenera` AS `JMBGTrenera`,`k`.`ime` AS `ime`,`k`.`prezime` AS `prezime`,`k`.`adresa` AS `adresa`,`k`.`strucnaSprema` AS `strucnaSprema`,`k`.`idmjesta` AS `idmjesta`,`k`.`grad` AS `grad`,`k`.`regija` AS `regija`,`k`.`naziv` AS `naziv`,`p`.`Naziv` AS `nazivTreninga`,`p`.`TrajanjeUMinutama` AS `trajanjeUMinutama`,`g`.`DatumKreiranja` AS `DatumKreiranja`,`g`.`DatumDeaktiviranja` AS `DatumDeaktiviranja` from (((`grupa` `g` join `tip_grupni_trening` `t` on((`g`.`IDTipaTreninga` = `t`.`IDTipaTreninga`))) join `treneri_pogled` `k` on((`g`.`JMBGTrenera` = `k`.`jmbg`))) join `tip_treninga` `p` on((`g`.`IDTipaTreninga` = `p`.`IDTipaTreninga`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tip_individualni_trening_trener_pogled`
--

/*!50001 DROP VIEW IF EXISTS `tip_individualni_trening_trener_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tip_individualni_trening_trener_pogled` AS select `i`.`IDTipaTreninga` AS `IDTipaTreninga`,`i`.`IDIndividualnogTreninga` AS `IDIndividualnogTreninga`,`i`.`JMBGClana` AS `JMBGClana`,`p`.`OpisTreninga` AS `OpisTreninga`,`i`.`JMBGTrenera` AS `JMBGTrenera`,`k`.`ime` AS `ime`,`k`.`prezime` AS `prezime`,`k`.`adresa` AS `adresa`,`k`.`strucnaSprema` AS `strucnaSprema`,`k`.`idmjesta` AS `idmjesta`,`k`.`grad` AS `grad`,`k`.`regija` AS `regija`,`k`.`naziv` AS `naziv`,`p`.`Naziv` AS `nazivTreninga`,`p`.`TrajanjeUMinutama` AS `trajanjeUMinutama`,`i`.`DatumKreiranja` AS `DatumKreiranja`,`i`.`DatumDeaktiviranja` AS `DatumDeaktiviranja` from (((`individualni_trening` `i` join `tip_individualni_trening` `t` on((`i`.`IDTipaTreninga` = `t`.`IDTipaTreninga`))) join `treneri_pogled` `k` on((`i`.`JMBGTrenera` = `k`.`jmbg`))) join `tip_treninga` `p` on((`i`.`IDTipaTreninga` = `p`.`IDTipaTreninga`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tipovi_grupni_trening_pogled`
--

/*!50001 DROP VIEW IF EXISTS `tipovi_grupni_trening_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tipovi_grupni_trening_pogled` AS select `t`.`IDTipaTreninga` AS `idTipaTreninga`,`t`.`Naziv` AS `naziv`,`t`.`TrajanjeUMinutama` AS `trajanjeUMinutama`,`g`.`Kapacitet` AS `kapacitet`,`t`.`OpisTreninga` AS `opisTreninga` from (`tip_treninga` `t` join `tip_grupni_trening` `g` on((`t`.`IDTipaTreninga` = `g`.`IDTipaTreninga`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tipovi_individualni_trening_pogled`
--

/*!50001 DROP VIEW IF EXISTS `tipovi_individualni_trening_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tipovi_individualni_trening_pogled` AS select `t`.`IDTipaTreninga` AS `idTipaTreninga`,`t`.`Naziv` AS `naziv`,`t`.`TrajanjeUMinutama` AS `trajanjeUMinutama`,`t`.`OpisTreninga` AS `opisTreninga` from (`tip_treninga` `t` join `tip_individualni_trening` `i` on((`t`.`IDTipaTreninga` = `i`.`IDTipaTreninga`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `treneri_pogled`
--

/*!50001 DROP VIEW IF EXISTS `treneri_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `treneri_pogled` AS select `o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`z`.`StrucnaSprema` AS `strucnaSprema`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv` from (((`osoba` `o` join `zaposlenik` `z` on((`z`.`JMBG` = `o`.`JMBG`))) join `trener` `t` on((`t`.`JMBG` = `o`.`JMBG`))) join `mjesto` `m` on((`o`.`IDMjesta` = `m`.`IDMjesta`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zaposlenik_pogled`
--

/*!50001 DROP VIEW IF EXISTS `zaposlenik_pogled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zaposlenik_pogled` AS select `o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`z`.`StrucnaSprema` AS `strucnaSprema`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv` from ((`osoba` `o` join `zaposlenik` `z` on((`z`.`JMBG` = `o`.`JMBG`))) join `mjesto` `m` on((`o`.`IDMjesta` = `m`.`IDMjesta`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-20 23:06:26
