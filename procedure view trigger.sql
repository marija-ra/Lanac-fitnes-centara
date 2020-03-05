
-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`aktivne_grupe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`aktivne_grupe` (`IDTipaTreninga` INT, `IDGrupe` INT, `TrenutniBrojClanova` INT, `IDFitnesCentra` INT, `Kapacitet` INT, `OpisTreninga` INT, `JMBGTrenera` INT, `ime` INT, `prezime` INT, `adresa` INT, `strucnaSprema` INT, `idmjesta` INT, `grad` INT, `regija` INT, `naziv` INT, `nazivTreninga` INT, `trajanjeUMinutama` INT, `DatumKreiranja` INT, `DatumDeaktiviranja` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`aktivni_individualni_treninzi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`aktivni_individualni_treninzi` (`IDTipaTreninga` INT, `IDIndividualnogTreninga` INT, `JMBGClana` INT, `OpisTreninga` INT, `JMBGTrenera` INT, `ime` INT, `prezime` INT, `adresa` INT, `strucnaSprema` INT, `idmjesta` INT, `grad` INT, `regija` INT, `naziv` INT, `nazivTreninga` INT, `trajanjeUMinutama` INT, `DatumKreiranja` INT, `DatumDeaktiviranja` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`clanarine_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`clanarine_pogled` (`DatumPrijave` INT, `DatumIsteka` INT, `IDClanarine` INT, `Naziv clanarine` INT, `Cijena` INT, `Naziv treninga` INT, `JMBG` INT, `OpisTreninga` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`clanovi_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`clanovi_pogled` (`jmbg` INT, `ime` INT, `prezime` INT, `adresa` INT, `clanskibroj` INT, `idmjesta` INT, `grad` INT, `regija` INT, `naziv` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`clanovi_u_grupama_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`clanovi_u_grupama_pogled` (`jmbg` INT, `ime` INT, `prezime` INT, `adresa` INT, `clanskibroj` INT, `idmjesta` INT, `grad` INT, `regija` INT, `nazivMjesta` INT, `IDGrupe` INT, `Aktivan` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`fitnes_centri_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`fitnes_centri_pogled` (`idfCentra` INT, `email` INT, `radnovrijeme` INT, `idmjesta` INT, `grad` INT, `regija` INT, `naziv` INT, `jmbg` INT, `ime` INT, `prezime` INT, `adresa` INT, `StrucnaSprema` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`koordinatori_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`koordinatori_pogled` (`jmbg` INT, `ime` INT, `prezime` INT, `adresa` INT, `strucnaSprema` INT, `idmjesta` INT, `grad` INT, `regija` INT, `naziv` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`raspored_sala_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`raspored_sala_pogled` (`IDSale` INT, `DanUSedmici` INT, `Od` INT, `Do` INT, `Grupa` INT, `IDDana` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`raspored_treneri_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`raspored_treneri_pogled` (`Od` INT, `Do` INT, `JMBG` INT, `IdDana` INT, `IDIndividualnogTreninga` INT, `IDGrupe` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`tip_grupa_trener_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tip_grupa_trener_pogled` (`IDTipaTreninga` INT, `IDGrupe` INT, `TrenutniBrojClanova` INT, `IDFitnesCentra` INT, `Kapacitet` INT, `OpisTreninga` INT, `JMBGTrenera` INT, `ime` INT, `prezime` INT, `adresa` INT, `strucnaSprema` INT, `idmjesta` INT, `grad` INT, `regija` INT, `naziv` INT, `nazivTreninga` INT, `trajanjeUMinutama` INT, `DatumKreiranja` INT, `DatumDeaktiviranja` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`tip_individualni_trening_trener_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tip_individualni_trening_trener_pogled` (`IDTipaTreninga` INT, `IDIndividualnogTreninga` INT, `JMBGClana` INT, `OpisTreninga` INT, `JMBGTrenera` INT, `ime` INT, `prezime` INT, `adresa` INT, `strucnaSprema` INT, `idmjesta` INT, `grad` INT, `regija` INT, `naziv` INT, `nazivTreninga` INT, `trajanjeUMinutama` INT, `DatumKreiranja` INT, `DatumDeaktiviranja` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`tipovi_grupni_trening_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tipovi_grupni_trening_pogled` (`idTipaTreninga` INT, `naziv` INT, `trajanjeUMinutama` INT, `kapacitet` INT, `opisTreninga` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`tipovi_individualni_trening_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`tipovi_individualni_trening_pogled` (`idTipaTreninga` INT, `naziv` INT, `trajanjeUMinutama` INT, `opisTreninga` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`treneri_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`treneri_pogled` (`jmbg` INT, `ime` INT, `prezime` INT, `adresa` INT, `strucnaSprema` INT, `idmjesta` INT, `grad` INT, `regija` INT, `naziv` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fitnesstudio`.`zaposlenik_pogled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fitnesstudio`.`zaposlenik_pogled` (`jmbg` INT, `ime` INT, `prezime` INT, `adresa` INT, `strucnaSprema` INT, `idmjesta` INT, `grad` INT, `regija` INT, `naziv` INT);

-- -----------------------------------------------------
-- procedure brisanjaClana
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `brisanjaClana`(in jmbgclana varchar(13))
BEGIN
delete from clan where jmbg = jmbgclana;
delete from osoba where jmbg = jmbgclana;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure brisanjaIndividualnogTreninga
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `brisanjaIndividualnogTreninga`(in idTipaTreningaTip int(11))
BEGIN
delete from tip_individualni_trening where idTipaTreninga = idTipaTreningaTip;
delete from tip_treninga where idTipaTreninga = idTipaTreningaTip;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure brisanjaTipGrupnogTreninga
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `brisanjaTipGrupnogTreninga`(in idTipaTreningaTip int(11))
BEGIN
delete from tip_treninga where idTipaTreninga = idTipaTreningaTip;
delete from tip_grupni_trening where idTipaTreninga = idTipaTreningaTip;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure brisanjeZaposlenika
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `brisanjeZaposlenika`(in jmbgzaposlenog varchar(13))
BEGIN
delete from trener where jmbg = jmbgzaposlenog;
delete from koordinator where jmbg = jmbgzaposlenog;
delete from zaposlenik where jmbg = jmbgzaposlenog;
delete from osoba where jmbg = jmbgzaposlenog;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dodajClana
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodajClana`(in jmbg varchar(13), in ime varchar(20), in prezime varchar(20), in adresa varchar(20), in idmjesta int(11), in clanskibroj int(11) )
BEGIN
	insert into osoba values(jmbg,ime,prezime,adresa,idmjesta);
    insert into clan values(jmbg,clanskibroj);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dodajKoordinatora
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodajKoordinatora`(in jmbg varchar(13), in ime varchar(20), in prezime varchar(20), in adresa varchar(20), in idmjesta int(11), in strucnaSprema varchar(20) )
BEGIN
insert into osoba values(jmbg,ime,prezime,adresa,idmjesta);
insert into zaposlenik values(strucnaSprema, jmbg);
insert into koordinator values(jmbg);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dodajTipaGrupnogTreninga
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodajTipaGrupnogTreninga`(in nazivTip varchar(20), in trajanjeUMinutamaTip int(11), in kapacitetTip int(11), in opisTreningaTip VARCHAR(1000))
BEGIN
	insert into tip_treninga values(null,nazivTip,trajanjeUMinutamaTip,opisTreningaTip);
    
    insert into tip_grupni_trening values((SELECT LAST_INSERT_ID()),kapacitetTip);  

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dodajTipaIndividualnogTreninga
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodajTipaIndividualnogTreninga`(in nazivTip varchar(20), in trajanjeUMinutamaTip int(11), in opisTreningaTip VARCHAR(1000))
BEGIN
	insert into tip_treninga values(null,nazivTip,trajanjeUMinutamaTip,opisTreningaTip);
    
    insert into tip_individualni_trening values((SELECT LAST_INSERT_ID()));  

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dodajTrenera
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodajTrenera`(in jmbg varchar(13), in ime varchar(20), in prezime varchar(20), in adresa varchar(20), in idmjesta int(11), in strucnaSprema varchar(20) )
BEGIN
insert into osoba values(jmbg,ime,prezime,adresa,idmjesta);
insert into zaposlenik values(strucnaSprema,jmbg);
insert into trener values(jmbg);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dodavanjeClanarine
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodavanjeClanarine`(in datumPrijave DATE, in datumIsteka DATE, in IdGrupe int(11), in JMBGClana VARCHAR(13), in IDTipaClanarine int(11), in IDFCentra int(11), in JMBGRecepcionera VARCHAR(13))
BEGIN
if (IDFCentra IS NOT NULL) OR (LENGTH(IDFCentra)> 0) then	
		INSERT INTO `fitnesstudio`.`clanarina` (`DatumPrijave`, `DatumIsteka`, `JMBGClana`, `IDTipaClanarine`, `JMBGRecepcionera`, `IDFCentra`) VALUES (datumPrijave, datumIsteka, JMBGClana, IDTipaClanarine, JMBGRecepcionera, IDFCentra);
	else
		INSERT INTO `fitnesstudio`.`clanarina` (`DatumPrijave`, `DatumIsteka`, `JMBGClana`, `IDTipaClanarine`, `JMBGRecepcionera`) VALUES (datumPrijave, datumIsteka, JMBGClana, IDTipaClanarine, JMBGRecepcionera);

end if;


if ((IdGrupe IS NOT NULL) OR (LENGTH(IdGrupe) > 0)) then

	insert into grupa_clan values(IDGrupe,JMBGClana,1);

end if;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dodavanjeTermina
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodavanjeTermina`(in KoordinatorJMBG VARCHAR(13), in vrijemeOd time(6), in idSale int(11), in idGrupe int(11), in idDana int(11), out zauzetTermin bit )
BEGIN
	declare vrijemeDo time(6);
	declare brojPreklopljenihTermina int;
    
    set vrijemeDo = (
		select vrijemeOd + interval tt.TrajanjeUMinutama minute
		from grupa g
		join tip_treninga tt on tt.IDTipaTreninga = g.IDTipaTreninga
		where g.IDGrupe = idGrupe);
    
    
	set brojPreklopljenihTermina = (
		select count(*)
		from raspored_sala_pogled rs
		where rs.IDSale = idSale
			and rs.IDDana = idDana
			and ((vrijemeOd <= rs.Od and vrijemeDo >= rs.Od )
				  or (vrijemeOd <= rs.Do and vrijemeDo >= rs.Do)
                  or (vrijemeOd >= rs.Od and vrijemeDo <= rs.Do)));
                  
	if (brojPreklopljenihTermina > 0) then
		set zauzetTermin = 1;
	else 
    begin
		set zauzetTermin = 0;
        insert into termin values(IdTermina,KoordinatorJMBG,vrijemeOd,idSale,idGrupe, null,idDana);
	end;
	end if;

	
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure provjeraZauzetostiTerminaZaTrenera
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `provjeraZauzetostiTerminaZaTrenera`(in vrijemeOd time(6),in idGrupe int(11),in idIndTreninga int(11), in idDana int(11), out zauzetTermin bit)
BEGIN
	declare vrijemeDo time(6);
	declare brojPreklopljenihTermina int;
    
	if(idGrupe is not null) then
    begin
		set vrijemeDo = (
			select vrijemeOd + interval tt.TrajanjeUMinutama minute
			from grupa g
			join tip_treninga tt on tt.IDTipaTreninga = g.IDTipaTreninga
			where g.IDGrupe = idGrupe);
    
    
		set brojPreklopljenihTermina = (
			select count(*)
			from raspored_treneri_pogled rtp
			join grupa g on g.IdGrupe = idGrupe
			where rtp.JMBG = g.JMBGTrenera
				and rtp.IDDana = idDana
			and ((vrijemeOd <= rtp.Od and vrijemeDo >= rtp.od)
				  or (vrijemeOd <= rtp.Do and vrijemeDo >= rtp.Do)
				  or (vrijemeOd >= rtp.od and vrijemeDo <= rtp.Do)));
					  
    end;
    elseif(idIndTreninga is not null) then
    begin
		set vrijemeDo = (
			select vrijemeOd + interval tt.TrajanjeUMinutama minute
			from individualni_trening it 
			join tip_treninga tt on tt.IDTipaTreninga = it.IDTipaTreninga
			where it.IDIndividualnogTreninga = idIndTreninga);
    
		set brojPreklopljenihTermina = (
			select count(*)
			from raspored_treneri_pogled rtp
			join individualni_trening it on it.IDIndividualnogTreninga = idIndTreninga
			where rtp.JMBG = it.JMBGTrenera
				and rtp.IDDana = idDana
			and ((vrijemeOd <= rtp.Od and vrijemeDo >= rtp.od)
				  or (vrijemeOd <= rtp.Do and vrijemeDo >= rtp.Do)
				  or (vrijemeOd >= rtp.od and vrijemeDo <= rtp.Do)));
    end;
	end if;
    
    if (brojPreklopljenihTermina > 0) then
		set zauzetTermin = 1;
	else 
		set zauzetTermin = 0;
	end if;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure urediClana
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `urediClana`(in jmbgClana varchar(13), in imeClana varchar(20), in prezimeClana varchar(20), in adresaClana varchar(20), in idmjestaClana int(11), in clanskibrojClana int(11), in starijmbgClana varchar(13)  )
BEGIN
update clan set clanskibroj = clanskibrojClana where jmbg = starijmbgClana;
update osoba set jmbg = jmbgClana, ime = imeClana, prezime = prezimeClana, adresa = adresaClana, idmjesta = idmjestaClana where jmbg = starijmbgClana; 

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure urediGrupu
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `urediGrupu`(in idTipaTreningaGrupe int(11), in IDGrupeGrupe int(11), in JMBGTreneraGrupe varchar(20), in IDFitnesCentraGrupe int(11))
BEGIN

declare  noviFitnesCentar int;

set noviFitnesCentar = (
		select count(*)
		from grupa g
		where ( g.IDGrupe = IDGrupeGrupe and g.IDFitnesCentra != IDFitnesCentraGrupe));

if(noviFitnesCentar > 0) then
delete from termin where IDGrupe = IDGrupeGrupe;
end if;

update grupa set IDTipaTreninga=idTipaTreningaGrupe, JMBGTrenera=JMBGTreneraGrupe, IDFitnesCentra=IDFitnesCentraGrupe  where IDGrupe=IDGrupeGrupe;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure urediKoordinatora
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `urediKoordinatora`(in jmbgKoordinatora varchar(13), in imeKoordinatora varchar(20), in prezimeKoordinatora varchar(20), in adresaKoordinatora varchar(20), in idmjestaKoordinatora int(11), in strucnaSpremaKoordinatora varchar(20), in starijmbgKoordinatora varchar(13)  )
BEGIN
update zaposlenik set strucnaSprema = strucnaSpremaKoordinatora where jmbg = starijmbgKoordinatora;
update osoba set jmbg = jmbgKoordinatora, ime = imeKoordinatora, prezime = prezimeKoordinatora, adresa = adresaKoordinatora, idmjesta = idmjestaKoordinatora where jmbg = starijmbgKoordinatora; 

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure urediTipGrupnogTreninga
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `urediTipGrupnogTreninga`(in idTipaTreningaTip int(11), in nazivTip varchar(20), in trajanjeUMinutamaTip int(11), in kapacitetTip int(11), in opisTreningaTip VARCHAR(1000))
BEGIN
update tip_grupni_trening set kapacitet = kapacitetTip where idTipaTreninga = idTipaTreningaTip;
update tip_treninga set naziv = nazivTip, trajanjeUMinutama = trajanjeUMinutamaTip, opisTreninga = opisTreningaTip where idTipaTreninga = idTipaTreningaTip; 
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure urediTrenera
-- -----------------------------------------------------

DELIMITER $$
USE `fitnesstudio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `urediTrenera`(in jmbgTrenera varchar(13), in imeTrenera varchar(20), in prezimeTrenera varchar(20), in adresaTrenera varchar(20), in idmjestaTrenera int(11), in strucnaSpremaTrenera varchar(20), in starijmbgTrenera varchar(13)  )
BEGIN
update zaposlenik set strucnaSprema = strucnaSpremaTrenera where jmbg = starijmbgTrenera;
update osoba set jmbg = jmbgTrenera, ime = imeTrenera, prezime = prezimeTrenera, adresa = adresaTrenera, idmjesta = idmjestaTrenera where jmbg = starijmbgTrenera; 

END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `fitnesstudio`.`aktivne_grupe`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`aktivne_grupe`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`aktivne_grupe` AS select `g`.`IDTipaTreninga` AS `IDTipaTreninga`,`g`.`IDGrupe` AS `IDGrupe`,`g`.`TrenutniBrojClanova` AS `TrenutniBrojClanova`,`g`.`IDFitnesCentra` AS `IDFitnesCentra`,`g`.`Kapacitet` AS `Kapacitet`,`g`.`OpisTreninga` AS `OpisTreninga`,`g`.`JMBGTrenera` AS `JMBGTrenera`,`g`.`ime` AS `ime`,`g`.`prezime` AS `prezime`,`g`.`adresa` AS `adresa`,`g`.`strucnaSprema` AS `strucnaSprema`,`g`.`idmjesta` AS `idmjesta`,`g`.`grad` AS `grad`,`g`.`regija` AS `regija`,`g`.`naziv` AS `naziv`,`g`.`nazivTreninga` AS `nazivTreninga`,`g`.`trajanjeUMinutama` AS `trajanjeUMinutama`,`g`.`DatumKreiranja` AS `DatumKreiranja`,`g`.`DatumDeaktiviranja` AS `DatumDeaktiviranja` from `fitnesstudio`.`tip_grupa_trener_pogled` `g` where isnull(`g`.`DatumDeaktiviranja`);

-- -----------------------------------------------------
-- View `fitnesstudio`.`aktivni_individualni_treninzi`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`aktivni_individualni_treninzi`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`aktivni_individualni_treninzi` AS select `i`.`IDTipaTreninga` AS `IDTipaTreninga`,`i`.`IDIndividualnogTreninga` AS `IDIndividualnogTreninga`,`i`.`JMBGClana` AS `JMBGClana`,`i`.`OpisTreninga` AS `OpisTreninga`,`i`.`JMBGTrenera` AS `JMBGTrenera`,`i`.`ime` AS `ime`,`i`.`prezime` AS `prezime`,`i`.`adresa` AS `adresa`,`i`.`strucnaSprema` AS `strucnaSprema`,`i`.`idmjesta` AS `idmjesta`,`i`.`grad` AS `grad`,`i`.`regija` AS `regija`,`i`.`naziv` AS `naziv`,`i`.`naziv` AS `nazivTreninga`,`i`.`trajanjeUMinutama` AS `trajanjeUMinutama`,`i`.`DatumKreiranja` AS `DatumKreiranja`,`i`.`DatumDeaktiviranja` AS `DatumDeaktiviranja` from `fitnesstudio`.`tip_individualni_trening_trener_pogled` `i` where isnull(`i`.`DatumDeaktiviranja`);

-- -----------------------------------------------------
-- View `fitnesstudio`.`clanarine_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`clanarine_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`clanarine_pogled` AS select `cl`.`DatumPrijave` AS `DatumPrijave`,`cl`.`DatumIsteka` AS `DatumIsteka`,`cl`.`IDClanarine` AS `IDClanarine`,`tc`.`Naziv` AS `Naziv clanarine`,`tc`.`Cijena` AS `Cijena`,`tt`.`Naziv` AS `Naziv treninga`,`c`.`JMBG` AS `JMBG`,`tt`.`OpisTreninga` AS `OpisTreninga` from (((`fitnesstudio`.`clanarina` `cl` join `fitnesstudio`.`clan` `c` on((`c`.`JMBG` = `cl`.`JMBGClana`))) join `fitnesstudio`.`tip_clanarine` `tc` on((`cl`.`IDTipaClanarine` = `tc`.`IDTipaClanarine`))) left join `fitnesstudio`.`tip_treninga` `tt` on((`tt`.`IDTipaTreninga` = `tc`.`IDTipaTreninga`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`clanovi_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`clanovi_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`clanovi_pogled` AS select `o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`c`.`ClanskiBroj` AS `clanskibroj`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv` from ((`fitnesstudio`.`osoba` `o` join `fitnesstudio`.`clan` `c` on((`c`.`JMBG` = `o`.`JMBG`))) join `fitnesstudio`.`mjesto` `m` on((`o`.`IDMjesta` = `m`.`IDMjesta`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`clanovi_u_grupama_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`clanovi_u_grupama_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`clanovi_u_grupama_pogled` AS select `c`.`jmbg` AS `jmbg`,`c`.`ime` AS `ime`,`c`.`prezime` AS `prezime`,`c`.`adresa` AS `adresa`,`c`.`clanskibroj` AS `clanskibroj`,`c`.`idmjesta` AS `idmjesta`,`c`.`grad` AS `grad`,`c`.`regija` AS `regija`,`c`.`naziv` AS `nazivMjesta`,`gc`.`IDGrupe` AS `IDGrupe`,`gc`.`Aktivan` AS `Aktivan` from (`fitnesstudio`.`clanovi_pogled` `c` join `fitnesstudio`.`grupa_clan` `gc` on((`c`.`jmbg` = `gc`.`JMBGClana`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`fitnes_centri_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`fitnes_centri_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`fitnes_centri_pogled` AS select `f`.`IDFCentra` AS `idfCentra`,`f`.`Email` AS `email`,`f`.`RadnoVrijeme` AS `radnovrijeme`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv`,`o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`z`.`StrucnaSprema` AS `StrucnaSprema` from (((`fitnesstudio`.`fitnes_centar` `f` join `fitnesstudio`.`mjesto` `m` on((`f`.`IDMjesta` = `m`.`IDMjesta`))) join `fitnesstudio`.`zaposlenik` `z` on((`f`.`JMBGDirektora` = `z`.`JMBG`))) join `fitnesstudio`.`osoba` `o` on((`z`.`JMBG` = `o`.`JMBG`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`koordinatori_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`koordinatori_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`koordinatori_pogled` AS select `o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`z`.`StrucnaSprema` AS `strucnaSprema`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv` from (((`fitnesstudio`.`osoba` `o` join `fitnesstudio`.`zaposlenik` `z` on((`z`.`JMBG` = `o`.`JMBG`))) join `fitnesstudio`.`koordinator` `k` on((`k`.`JMBG` = `o`.`JMBG`))) join `fitnesstudio`.`mjesto` `m` on((`o`.`IDMjesta` = `m`.`IDMjesta`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`raspored_sala_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`raspored_sala_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`raspored_sala_pogled` AS select `s`.`IDSale` AS `IDSale`,`d`.`Naziv` AS `DanUSedmici`,`t`.`Vrijeme` AS `Od`,(`t`.`Vrijeme` + interval `tt`.`TrajanjeUMinutama` minute) AS `Do`,concat(`tt`.`Naziv`,' ',`g`.`IDGrupe`) AS `Grupa`,`d`.`IDDana` AS `IDDana` from (((((`fitnesstudio`.`sala` `s` join `fitnesstudio`.`termin` `t` on((`t`.`IDSale` = `s`.`IDSale`))) join `fitnesstudio`.`dani` `d` on((`t`.`IDDana` = `d`.`IDDana`))) join `fitnesstudio`.`grupa` `g` on((`t`.`IDGrupe` = `g`.`IDGrupe`))) join `fitnesstudio`.`tip_grupni_trening` `tgt` on((`g`.`IDTipaTreninga` = `tgt`.`IDTipaTreninga`))) join `fitnesstudio`.`tip_treninga` `tt` on((`tt`.`IDTipaTreninga` = `tgt`.`IDTipaTreninga`))) where isnull(`g`.`DatumDeaktiviranja`);

-- -----------------------------------------------------
-- View `fitnesstudio`.`raspored_treneri_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`raspored_treneri_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`raspored_treneri_pogled` AS select `t`.`Vrijeme` AS `Od`,(`t`.`Vrijeme` + interval `tt`.`TrajanjeUMinutama` minute) AS `Do`,`tr`.`JMBG` AS `JMBG`,`d`.`IDDana` AS `IdDana`,`it`.`IDIndividualnogTreninga` AS `IDIndividualnogTreninga`,`g`.`IDGrupe` AS `IDGrupe` from (((((`fitnesstudio`.`termin` `t` join `fitnesstudio`.`dani` `d` on((`d`.`IDDana` = `t`.`IDDana`))) left join `fitnesstudio`.`individualni_trening` `it` on((`it`.`IDIndividualnogTreninga` = `t`.`IDIndividualnogTreninga`))) join `fitnesstudio`.`trener` `tr`) left join `fitnesstudio`.`grupa` `g` on((`g`.`IDGrupe` = `t`.`IDGrupe`))) join `fitnesstudio`.`tip_treninga` `tt`) where (((`tt`.`IDTipaTreninga` = `it`.`IDTipaTreninga`) or (`tt`.`IDTipaTreninga` = `g`.`IDTipaTreninga`)) and ((`tr`.`JMBG` = `it`.`JMBGTrenera`) or (`tr`.`JMBG` = `g`.`JMBGTrenera`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`tip_grupa_trener_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`tip_grupa_trener_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`tip_grupa_trener_pogled` AS select `g`.`IDTipaTreninga` AS `IDTipaTreninga`,`g`.`IDGrupe` AS `IDGrupe`,`g`.`TrenutniBrojClanova` AS `TrenutniBrojClanova`,`g`.`IDFitnesCentra` AS `IDFitnesCentra`,`t`.`Kapacitet` AS `Kapacitet`,`p`.`OpisTreninga` AS `OpisTreninga`,`g`.`JMBGTrenera` AS `JMBGTrenera`,`k`.`ime` AS `ime`,`k`.`prezime` AS `prezime`,`k`.`adresa` AS `adresa`,`k`.`strucnaSprema` AS `strucnaSprema`,`k`.`idmjesta` AS `idmjesta`,`k`.`grad` AS `grad`,`k`.`regija` AS `regija`,`k`.`naziv` AS `naziv`,`p`.`Naziv` AS `nazivTreninga`,`p`.`TrajanjeUMinutama` AS `trajanjeUMinutama`,`g`.`DatumKreiranja` AS `DatumKreiranja`,`g`.`DatumDeaktiviranja` AS `DatumDeaktiviranja` from (((`fitnesstudio`.`grupa` `g` join `fitnesstudio`.`tip_grupni_trening` `t` on((`g`.`IDTipaTreninga` = `t`.`IDTipaTreninga`))) join `fitnesstudio`.`treneri_pogled` `k` on((`g`.`JMBGTrenera` = `k`.`jmbg`))) join `fitnesstudio`.`tip_treninga` `p` on((`g`.`IDTipaTreninga` = `p`.`IDTipaTreninga`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`tip_individualni_trening_trener_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`tip_individualni_trening_trener_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`tip_individualni_trening_trener_pogled` AS select `i`.`IDTipaTreninga` AS `IDTipaTreninga`,`i`.`IDIndividualnogTreninga` AS `IDIndividualnogTreninga`,`i`.`JMBGClana` AS `JMBGClana`,`p`.`OpisTreninga` AS `OpisTreninga`,`i`.`JMBGTrenera` AS `JMBGTrenera`,`k`.`ime` AS `ime`,`k`.`prezime` AS `prezime`,`k`.`adresa` AS `adresa`,`k`.`strucnaSprema` AS `strucnaSprema`,`k`.`idmjesta` AS `idmjesta`,`k`.`grad` AS `grad`,`k`.`regija` AS `regija`,`k`.`naziv` AS `naziv`,`p`.`Naziv` AS `nazivTreninga`,`p`.`TrajanjeUMinutama` AS `trajanjeUMinutama`,`i`.`DatumKreiranja` AS `DatumKreiranja`,`i`.`DatumDeaktiviranja` AS `DatumDeaktiviranja` from (((`fitnesstudio`.`individualni_trening` `i` join `fitnesstudio`.`tip_individualni_trening` `t` on((`i`.`IDTipaTreninga` = `t`.`IDTipaTreninga`))) join `fitnesstudio`.`treneri_pogled` `k` on((`i`.`JMBGTrenera` = `k`.`jmbg`))) join `fitnesstudio`.`tip_treninga` `p` on((`i`.`IDTipaTreninga` = `p`.`IDTipaTreninga`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`tipovi_grupni_trening_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`tipovi_grupni_trening_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`tipovi_grupni_trening_pogled` AS select `t`.`IDTipaTreninga` AS `idTipaTreninga`,`t`.`Naziv` AS `naziv`,`t`.`TrajanjeUMinutama` AS `trajanjeUMinutama`,`g`.`Kapacitet` AS `kapacitet`,`t`.`OpisTreninga` AS `opisTreninga` from (`fitnesstudio`.`tip_treninga` `t` join `fitnesstudio`.`tip_grupni_trening` `g` on((`t`.`IDTipaTreninga` = `g`.`IDTipaTreninga`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`tipovi_individualni_trening_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`tipovi_individualni_trening_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`tipovi_individualni_trening_pogled` AS select `t`.`IDTipaTreninga` AS `idTipaTreninga`,`t`.`Naziv` AS `naziv`,`t`.`TrajanjeUMinutama` AS `trajanjeUMinutama`,`t`.`OpisTreninga` AS `opisTreninga` from (`fitnesstudio`.`tip_treninga` `t` join `fitnesstudio`.`tip_individualni_trening` `i` on((`t`.`IDTipaTreninga` = `i`.`IDTipaTreninga`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`treneri_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`treneri_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`treneri_pogled` AS select `o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`z`.`StrucnaSprema` AS `strucnaSprema`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv` from (((`fitnesstudio`.`osoba` `o` join `fitnesstudio`.`zaposlenik` `z` on((`z`.`JMBG` = `o`.`JMBG`))) join `fitnesstudio`.`trener` `t` on((`t`.`JMBG` = `o`.`JMBG`))) join `fitnesstudio`.`mjesto` `m` on((`o`.`IDMjesta` = `m`.`IDMjesta`)));

-- -----------------------------------------------------
-- View `fitnesstudio`.`zaposlenik_pogled`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitnesstudio`.`zaposlenik_pogled`;
USE `fitnesstudio`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fitnesstudio`.`zaposlenik_pogled` AS select `o`.`JMBG` AS `jmbg`,`o`.`Ime` AS `ime`,`o`.`Prezime` AS `prezime`,`o`.`Adresa` AS `adresa`,`z`.`StrucnaSprema` AS `strucnaSprema`,`m`.`IDMjesta` AS `idmjesta`,`m`.`Grad` AS `grad`,`m`.`Regija` AS `regija`,`m`.`Naziv` AS `naziv` from ((`fitnesstudio`.`osoba` `o` join `fitnesstudio`.`zaposlenik` `z` on((`z`.`JMBG` = `o`.`JMBG`))) join `fitnesstudio`.`mjesto` `m` on((`o`.`IDMjesta` = `m`.`IDMjesta`)));
USE `fitnesstudio`;

DELIMITER $$
USE `fitnesstudio`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `fitnesstudio`.`azuriranje_trenutnog_br_clanova`
AFTER INSERT ON `fitnesstudio`.`grupa_clan`
FOR EACH ROW
update grupa set TrenutniBrojClanova = TrenutniBrojClanova + 1
    where IDGrupe = new.IDGrupe$$

USE `fitnesstudio`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `fitnesstudio`.`grupa_clan_AFTER_UPDATE`
AFTER UPDATE ON `fitnesstudio`.`grupa_clan`
FOR EACH ROW
BEGIN
	if (new.Aktivan = 0 and old.Aktivan = 1) then
    
		update grupa set TrenutniBrojClanova = TrenutniBrojClanova - 1
		where IDGrupe = new.IDGrupe;	
	end if;
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
