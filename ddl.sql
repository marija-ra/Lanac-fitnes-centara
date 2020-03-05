-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fitnesstudio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fitnesstudio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fitnesstudio` DEFAULT CHARACTER SET utf8 ;
USE `fitnesstudio` ;

-- -----------------------------------------------------
-- Table `fitnesstudio`.`mjesto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`mjesto` (
  `IDMjesta` INT(11) NOT NULL AUTO_INCREMENT,
  `Grad` VARCHAR(20) NULL DEFAULT NULL,
  `Regija` VARCHAR(20) NULL DEFAULT NULL,
  `Naziv` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`IDMjesta`))
ENGINE = InnoDB
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`osoba`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`osoba` (
  `JMBG` VARCHAR(13) NOT NULL,
  `Ime` VARCHAR(20) NULL DEFAULT NULL,
  `Prezime` VARCHAR(20) NULL DEFAULT NULL,
  `Adresa` VARCHAR(20) NULL DEFAULT NULL,
  `IDMjesta` INT(11) NOT NULL,
  PRIMARY KEY (`JMBG`),
  INDEX `R_20` (`IDMjesta` ASC),
  CONSTRAINT `osoba_ibfk_1`
    FOREIGN KEY (`IDMjesta`)
    REFERENCES `fitnesstudio`.`mjesto` (`IDMjesta`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`clan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`clan` (
  `JMBG` VARCHAR(13) NOT NULL,
  `ClanskiBroj` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`JMBG`),
  UNIQUE INDEX `ClanskiBroj_UNIQUE` (`ClanskiBroj` ASC),
  CONSTRAINT `clan_ibfk_1`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`osoba` (`JMBG`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`tip_treninga`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tip_treninga` (
  `IDTipaTreninga` INT(11) NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(20) NULL DEFAULT NULL,
  `TrajanjeUMinutama` INT(11) NULL DEFAULT NULL,
  `OpisTreninga` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`IDTipaTreninga`))
ENGINE = InnoDB
AUTO_INCREMENT = 1025
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`tip_clanarine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tip_clanarine` (
  `IDTipaClanarine` INT(11) NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(20) NULL DEFAULT NULL,
  `Cijena` INT(11) NULL DEFAULT NULL,
  `IDTipaTreninga` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`IDTipaClanarine`),
  INDEX `tip_clanarine_ibfk_1` (`IDTipaTreninga` ASC),
  CONSTRAINT `tip_clanarine_ibfk_1`
    FOREIGN KEY (`IDTipaTreninga`)
    REFERENCES `fitnesstudio`.`tip_treninga` (`IDTipaTreninga`))
ENGINE = InnoDB
AUTO_INCREMENT = 44
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`zaposlenik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`zaposlenik` (
  `StrucnaSprema` VARCHAR(20) NULL DEFAULT NULL,
  `JMBG` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `zaposlenik_ibfk_1`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`osoba` (`JMBG`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`recepcioner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`recepcioner` (
  `JMBG` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `recepcioner_ibfk_1`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`zaposlenik` (`JMBG`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`fitnes_centar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`fitnes_centar` (
  `IDFCentra` INT(11) NOT NULL AUTO_INCREMENT,
  `Email` VARCHAR(20) NULL DEFAULT NULL,
  `RadnoVrijeme` VARCHAR(20) NULL DEFAULT NULL,
  `IDMjesta` INT(11) NOT NULL,
  `JMBGDirektora` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`IDFCentra`),
  INDEX `R_48` (`IDMjesta` ASC),
  INDEX `R_66` (`JMBGDirektora` ASC),
  CONSTRAINT `fitnes_centar_ibfk_1`
    FOREIGN KEY (`IDMjesta`)
    REFERENCES `fitnesstudio`.`mjesto` (`IDMjesta`),
  CONSTRAINT `fitnes_centar_ibfk_2`
    FOREIGN KEY (`JMBGDirektora`)
    REFERENCES `fitnesstudio`.`zaposlenik` (`JMBG`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`clanarina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`clanarina` (
  `DatumPrijave` DATE NULL DEFAULT NULL,
  `DatumIsteka` DATE NULL DEFAULT NULL,
  `JMBGClana` VARCHAR(13) NOT NULL,
  `IDTipaClanarine` INT(11) NOT NULL,
  `IDClanarine` INT(11) NOT NULL AUTO_INCREMENT,
  `JMBGRecepcionera` VARCHAR(13) NOT NULL,
  `IDFCentra` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`IDClanarine`),
  INDEX `R_38` (`JMBGClana` ASC),
  INDEX `R_80` (`IDTipaClanarine` ASC),
  INDEX `R_40` (`JMBGRecepcionera` ASC),
  INDEX `clanarina_ibfk_4` (`IDFCentra` ASC),
  CONSTRAINT `clanarina_ibfk_1`
    FOREIGN KEY (`JMBGClana`)
    REFERENCES `fitnesstudio`.`clan` (`JMBG`),
  CONSTRAINT `clanarina_ibfk_2`
    FOREIGN KEY (`IDTipaClanarine`)
    REFERENCES `fitnesstudio`.`tip_clanarine` (`IDTipaClanarine`),
  CONSTRAINT `clanarina_ibfk_3`
    FOREIGN KEY (`JMBGRecepcionera`)
    REFERENCES `fitnesstudio`.`recepcioner` (`JMBG`),
  CONSTRAINT `clanarina_ibfk_4`
    FOREIGN KEY (`IDFCentra`)
    REFERENCES `fitnesstudio`.`fitnes_centar` (`IDFCentra`))
ENGINE = InnoDB
AUTO_INCREMENT = 29
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`dani`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`dani` (
  `IDDana` INT(11) NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`IDDana`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`tip_usluge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tip_usluge` (
  `IDTipaUsluge` INT(11) NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(20) NULL DEFAULT NULL,
  `Cijena` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`IDTipaUsluge`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`tip_dijagnosticarske_procedure`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tip_dijagnosticarske_procedure` (
  `IDTipaUsluge` INT(11) NOT NULL,
  `OpisProcedure` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`IDTipaUsluge`),
  CONSTRAINT `tip_dijagnosticarske_procedure_ibfk_1`
    FOREIGN KEY (`IDTipaUsluge`)
    REFERENCES `fitnesstudio`.`tip_usluge` (`IDTipaUsluge`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`trener`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`trener` (
  `JMBG` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `trener_ibfk_1`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`zaposlenik` (`JMBG`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`fitnes_karton`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`fitnes_karton` (
  `JMBGClana` VARCHAR(13) NOT NULL,
  `Datum` DATE NULL DEFAULT NULL,
  `IDFitnesKartona` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDFitnesKartona`),
  INDEX `R_50` (`JMBGClana` ASC),
  CONSTRAINT `fitnes_karton_ibfk_1`
    FOREIGN KEY (`JMBGClana`)
    REFERENCES `fitnesstudio`.`clan` (`JMBG`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`racun`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`racun` (
  `BrojRacuna` INT(11) NOT NULL AUTO_INCREMENT,
  `JMBGClana` VARCHAR(13) NOT NULL,
  `Iznos` FLOAT NULL DEFAULT NULL,
  `JMBGRecepcionera` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`BrojRacuna`),
  INDEX `R_68` (`JMBGClana` ASC),
  INDEX `R_83` (`JMBGRecepcionera` ASC),
  CONSTRAINT `racun_ibfk_1`
    FOREIGN KEY (`JMBGClana`)
    REFERENCES `fitnesstudio`.`clan` (`JMBG`),
  CONSTRAINT `racun_ibfk_2`
    FOREIGN KEY (`JMBGRecepcionera`)
    REFERENCES `fitnesstudio`.`recepcioner` (`JMBG`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`racun_stavka`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`racun_stavka` (
  `IDStavkaRacun` INT(11) NOT NULL AUTO_INCREMENT,
  `BrojRacuna` INT(11) NOT NULL,
  `IDClanarine` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`IDStavkaRacun`),
  INDEX `R_87` (`IDClanarine` ASC),
  INDEX `R_90` (`BrojRacuna` ASC),
  CONSTRAINT `racun_stavka_ibfk_1`
    FOREIGN KEY (`IDClanarine`)
    REFERENCES `fitnesstudio`.`clanarina` (`IDClanarine`),
  CONSTRAINT `racun_stavka_ibfk_2`
    FOREIGN KEY (`BrojRacuna`)
    REFERENCES `fitnesstudio`.`racun` (`BrojRacuna`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`dijagnosticke_procedure`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`dijagnosticke_procedure` (
  `IDTipaUsluge` INT(11) NOT NULL,
  `JMBG` VARCHAR(13) NOT NULL,
  `IDDijagnostickeProcedure` INT(11) NOT NULL AUTO_INCREMENT,
  `DatumUsluge` DATE NULL DEFAULT NULL,
  `IDFitnesKartona` INT(11) NOT NULL,
  `IDStavkaRacun` INT(11) NOT NULL,
  PRIMARY KEY (`IDDijagnostickeProcedure`),
  INDEX `R_114` (`IDTipaUsluge` ASC),
  INDEX `R_119` (`JMBG` ASC),
  INDEX `R_123` (`IDFitnesKartona` ASC),
  INDEX `R_127` (`IDStavkaRacun` ASC),
  CONSTRAINT `dijagnosticke_procedure_ibfk_1`
    FOREIGN KEY (`IDTipaUsluge`)
    REFERENCES `fitnesstudio`.`tip_dijagnosticarske_procedure` (`IDTipaUsluge`),
  CONSTRAINT `dijagnosticke_procedure_ibfk_2`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`trener` (`JMBG`),
  CONSTRAINT `dijagnosticke_procedure_ibfk_3`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`clan` (`JMBG`),
  CONSTRAINT `dijagnosticke_procedure_ibfk_4`
    FOREIGN KEY (`IDFitnesKartona`)
    REFERENCES `fitnesstudio`.`fitnes_karton` (`IDFitnesKartona`),
  CONSTRAINT `dijagnosticke_procedure_ibfk_5`
    FOREIGN KEY (`IDStavkaRacun`)
    REFERENCES `fitnesstudio`.`racun_stavka` (`IDStavkaRacun`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`fitnes_centar_osoba`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`fitnes_centar_osoba` (
  `IDFCentra` INT(11) NOT NULL,
  `JMBG` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`IDFCentra`, `JMBG`),
  INDEX `R_95` (`JMBG` ASC),
  CONSTRAINT `fitnes_centar_osoba_ibfk_1`
    FOREIGN KEY (`IDFCentra`)
    REFERENCES `fitnesstudio`.`fitnes_centar` (`IDFCentra`),
  CONSTRAINT `fitnes_centar_osoba_ibfk_2`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`osoba` (`JMBG`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`tip_grupni_trening`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tip_grupni_trening` (
  `IDTipaTreninga` INT(11) NOT NULL,
  `Kapacitet` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`IDTipaTreninga`),
  CONSTRAINT `tip_grupni_trening_ibfk_1`
    FOREIGN KEY (`IDTipaTreninga`)
    REFERENCES `fitnesstudio`.`tip_treninga` (`IDTipaTreninga`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`grupa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`grupa` (
  `IDTipaTreninga` INT(11) NOT NULL,
  `IDGrupe` INT(11) NOT NULL AUTO_INCREMENT,
  `TrenutniBrojClanova` INT(11) NULL DEFAULT NULL,
  `JMBGTrenera` VARCHAR(13) NOT NULL,
  `IDFitnesCentra` INT(11) NOT NULL,
  `DatumKreiranja` DATE NULL DEFAULT NULL,
  `DatumDeaktiviranja` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`IDGrupe`),
  INDEX `R_102` (`IDTipaTreninga` ASC),
  INDEX `R_107` (`JMBGTrenera` ASC),
  INDEX `grupa_ibfk_3_idx` (`IDFitnesCentra` ASC),
  CONSTRAINT `grupa_ibfk_1`
    FOREIGN KEY (`IDTipaTreninga`)
    REFERENCES `fitnesstudio`.`tip_grupni_trening` (`IDTipaTreninga`),
  CONSTRAINT `grupa_ibfk_2`
    FOREIGN KEY (`JMBGTrenera`)
    REFERENCES `fitnesstudio`.`trener` (`JMBG`),
  CONSTRAINT `grupa_ibfk_3`
    FOREIGN KEY (`IDFitnesCentra`)
    REFERENCES `fitnesstudio`.`fitnes_centar` (`IDFCentra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`grupa_clan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`grupa_clan` (
  `IDGrupe` INT(11) NOT NULL,
  `JMBGClana` VARCHAR(13) NOT NULL,
  `Aktivan` TINYINT(1) NOT NULL,
  PRIMARY KEY (`IDGrupe`, `JMBGClana`),
  INDEX `R_110` (`JMBGClana` ASC),
  CONSTRAINT `grupa_clan_ibfk_1`
    FOREIGN KEY (`IDGrupe`)
    REFERENCES `fitnesstudio`.`grupa` (`IDGrupe`),
  CONSTRAINT `grupa_clan_ibfk_2`
    FOREIGN KEY (`JMBGClana`)
    REFERENCES `fitnesstudio`.`clan` (`JMBG`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`tip_individualni_trening`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tip_individualni_trening` (
  `IDTipaTreninga` INT(11) NOT NULL,
  PRIMARY KEY (`IDTipaTreninga`),
  CONSTRAINT `tip_individualni_trening_ibfk_1`
    FOREIGN KEY (`IDTipaTreninga`)
    REFERENCES `fitnesstudio`.`tip_treninga` (`IDTipaTreninga`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`individualni_trening`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`individualni_trening` (
  `IDTipaTreninga` INT(11) NOT NULL,
  `IDIndividualnogTreninga` INT(11) NOT NULL AUTO_INCREMENT,
  `JMBGTrenera` VARCHAR(13) NOT NULL,
  `JMBGClana` VARCHAR(13) NOT NULL,
  `DatumKreiranja` DATE NULL DEFAULT NULL,
  `DatumDeaktiviranja` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`IDIndividualnogTreninga`),
  INDEX `R_105` (`IDTipaTreninga` ASC),
  INDEX `R_108` (`JMBGTrenera` ASC),
  INDEX `R_112` (`JMBGClana` ASC),
  CONSTRAINT `individualni_trening_ibfk_1`
    FOREIGN KEY (`IDTipaTreninga`)
    REFERENCES `fitnesstudio`.`tip_individualni_trening` (`IDTipaTreninga`),
  CONSTRAINT `individualni_trening_ibfk_2`
    FOREIGN KEY (`JMBGTrenera`)
    REFERENCES `fitnesstudio`.`trener` (`JMBG`),
  CONSTRAINT `individualni_trening_ibfk_3`
    FOREIGN KEY (`JMBGClana`)
    REFERENCES `fitnesstudio`.`clan` (`JMBG`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`koordinator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`koordinator` (
  `JMBG` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `koordinator_ibfk_1`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`zaposlenik` (`JMBG`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`nutricionista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`nutricionista` (
  `JMBG` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`JMBG`),
  CONSTRAINT `nutricionista_ibfk_1`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`zaposlenik` (`JMBG`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`oprema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`oprema` (
  `IDOpreme` INT(11) NOT NULL AUTO_INCREMENT,
  `Naziv` VARCHAR(20) NULL DEFAULT NULL,
  `DatumNabavke` DATE NULL DEFAULT NULL,
  `Dobavljac` VARCHAR(20) NULL DEFAULT NULL,
  `IDFCentra` INT(11) NOT NULL,
  PRIMARY KEY (`IDOpreme`),
  INDEX `R_23` (`IDFCentra` ASC),
  CONSTRAINT `oprema_ibfk_1`
    FOREIGN KEY (`IDFCentra`)
    REFERENCES `fitnesstudio`.`fitnes_centar` (`IDFCentra`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`tip_plan_ishrane`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tip_plan_ishrane` (
  `OpisPlana` VARCHAR(1000) NULL DEFAULT NULL,
  `IDTipaUsluge` INT(11) NOT NULL,
  PRIMARY KEY (`IDTipaUsluge`),
  CONSTRAINT `tip_plan_ishrane_ibfk_1`
    FOREIGN KEY (`IDTipaUsluge`)
    REFERENCES `fitnesstudio`.`tip_usluge` (`IDTipaUsluge`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`plan_ishrane`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`plan_ishrane` (
  `IDTipaUsluge` INT(11) NOT NULL,
  `JMBGNutricioniste` VARCHAR(13) NOT NULL,
  `IDPlanIshrane` INT(11) NOT NULL AUTO_INCREMENT,
  `DatumUsluge` DATE NULL DEFAULT NULL,
  `JMBG` VARCHAR(13) NOT NULL,
  `IDFitnesKartona` INT(11) NOT NULL,
  `IDStavkaRacun` INT(11) NOT NULL,
  PRIMARY KEY (`IDPlanIshrane`),
  INDEX `R_113` (`IDTipaUsluge` ASC),
  INDEX `R_116` (`JMBGNutricioniste` ASC),
  INDEX `R_120` (`JMBG` ASC),
  INDEX `R_124` (`IDFitnesKartona` ASC),
  INDEX `R_126` (`IDStavkaRacun` ASC),
  CONSTRAINT `plan_ishrane_ibfk_1`
    FOREIGN KEY (`IDTipaUsluge`)
    REFERENCES `fitnesstudio`.`tip_plan_ishrane` (`IDTipaUsluge`),
  CONSTRAINT `plan_ishrane_ibfk_2`
    FOREIGN KEY (`JMBGNutricioniste`)
    REFERENCES `fitnesstudio`.`nutricionista` (`JMBG`),
  CONSTRAINT `plan_ishrane_ibfk_3`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`clan` (`JMBG`),
  CONSTRAINT `plan_ishrane_ibfk_4`
    FOREIGN KEY (`IDFitnesKartona`)
    REFERENCES `fitnesstudio`.`fitnes_karton` (`IDFitnesKartona`),
  CONSTRAINT `plan_ishrane_ibfk_5`
    FOREIGN KEY (`IDStavkaRacun`)
    REFERENCES `fitnesstudio`.`racun_stavka` (`IDStavkaRacun`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`sala`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`sala` (
  `IDSale` INT(11) NOT NULL AUTO_INCREMENT,
  `Kapacitet` INT(11) NOT NULL,
  `IDFCentra` INT(11) NOT NULL,
  PRIMARY KEY (`IDSale`),
  INDEX `R_21` (`IDFCentra` ASC),
  CONSTRAINT `sala_ibfk_1`
    FOREIGN KEY (`IDFCentra`)
    REFERENCES `fitnesstudio`.`fitnes_centar` (`IDFCentra`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`telefon_fc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`telefon_fc` (
  `BrojTelefona` INT(11) NOT NULL,
  `IDFCentra` INT(11) NOT NULL,
  PRIMARY KEY (`BrojTelefona`, `IDFCentra`),
  INDEX `R_17` (`IDFCentra` ASC),
  CONSTRAINT `telefon_fc_ibfk_1`
    FOREIGN KEY (`IDFCentra`)
    REFERENCES `fitnesstudio`.`fitnes_centar` (`IDFCentra`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`telefon_osoba`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`telefon_osoba` (
  `BrojTelefona` INT(11) NOT NULL,
  `JMBG` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`BrojTelefona`, `JMBG`),
  INDEX `R_18` (`JMBG` ASC),
  CONSTRAINT `telefon_osoba_ibfk_1`
    FOREIGN KEY (`JMBG`)
    REFERENCES `fitnesstudio`.`osoba` (`JMBG`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fitnesstudio`.`termin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`termin` (
  `IDTermina` INT(11) NOT NULL AUTO_INCREMENT,
  `JMBGKoordinatora` VARCHAR(13) NOT NULL,
  `Vrijeme` TIME(6) NULL DEFAULT NULL,
  `IDSale` INT(11) NULL DEFAULT NULL,
  `IDGrupe` INT(11) NULL DEFAULT NULL,
  `IDIndividualnogTreninga` INT(11) NULL DEFAULT NULL,
  `IDDana` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`IDTermina`),
  INDEX `R_60` (`JMBGKoordinatora` ASC),
  INDEX `R_91` (`IDSale` ASC),
  INDEX `R_104` (`IDGrupe` ASC),
  INDEX `R_106` (`IDIndividualnogTreninga` ASC),
  INDEX `termin_ibfk_5_idx` (`IDDana` ASC),
  CONSTRAINT `termin_ibfk_1`
    FOREIGN KEY (`JMBGKoordinatora`)
    REFERENCES `fitnesstudio`.`koordinator` (`JMBG`),
  CONSTRAINT `termin_ibfk_2`
    FOREIGN KEY (`IDSale`)
    REFERENCES `fitnesstudio`.`sala` (`IDSale`),
  CONSTRAINT `termin_ibfk_3`
    FOREIGN KEY (`IDGrupe`)
    REFERENCES `fitnesstudio`.`grupa` (`IDGrupe`),
  CONSTRAINT `termin_ibfk_4`
    FOREIGN KEY (`IDIndividualnogTreninga`)
    REFERENCES `fitnesstudio`.`individualni_trening` (`IDIndividualnogTreninga`),
  CONSTRAINT `termin_ibfk_5`
    FOREIGN KEY (`IDDana`)
    REFERENCES `fitnesstudio`.`dani` (`IDDana`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 37
DEFAULT CHARACTER SET = utf8;

USE `fitnesstudio` ;
