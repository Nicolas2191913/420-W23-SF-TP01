/* 
 Travail pratique 1
 --> Nicolas Lavigne
 Tristan Hamel
 
 Date  02-07-2021                                             
*/
DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------

SET foreign_key_checks = 0;

DROP TABLE IF EXISTS poste;
CREATE TABLE IF NOT EXISTS poste(
	id_poste INT UNSIGNED NOT NULL PRIMARY KEY,
    desc_poste VARCHAR(45),
    desc_processeur VARCHAR(45),
    nb_ram_mo VARCHAR(45),
    tail_disque_giga INT UNSIGNED,
    id_fabricant INT UNSIGNED,
    id_local INT UNSIGNED,
    FOREIGN KEY (id_fabricant)
		REFERENCES fabricant (id_fabricant),
	FOREIGN KEY (id_local)
		REFERENCES `local` (id_local))
ENGINE=InnoDB;

DROP TABLE IF EXISTS `local`;
CREATE TABLE IF NOT EXISTS `local`(
	id_local INT UNSIGNED NOT NULL PRIMARY KEY,
    nom_local VARCHAR(45))
ENGINE=InnoDB DEFAULT CHARSET = latin1;

DROP TABLE IF EXISTS peripherique;
CREATE TABLE IF NOT EXISTS peripherique(
	id_peripherique INT UNSIGNED NOT NULL PRIMARY KEY,
    nom_peripherique VARCHAR(45),
    id_poste INT UNSIGNED,
    id_fabricant INT UNSIGNED,
    FOREIGN KEY (id_poste)
		REFERENCES poste (id_poste),
	FOREIGN KEY (id_fabricant)
		REFERENCES fabricant(id_fabricant))
ENGINE=InnoDB;

DROP TABLE IF EXISTS fabricant;
CREATE TABLE IF NOT EXISTS fabricant(
	id_fabricant INT UNSIGNED NOT NULL PRIMARY KEY,
    nom_fabricant VARCHAR(45))
ENGINE=InnoDB;

SET foreign_key_checks = 1;