/* 
 Travail pratique 1
 Nicolas Lavigne
 --> Tristan Hamel
 
 Date  02-07-2021                                             
*/
 -- DROP DATABASE IF EXISTS PosteClientDFC;
 -- CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------
SET foreign_key_checks = 0;

DROP TABLE IF EXISTS logiciel;
CREATE TABLE logiciel (
	id_logiciel INT UNSIGNED NOT NULL PRIMARY KEY,
    nom_logiciel VARCHAR(45),
    nb_license INT UNSIGNED,
    id_editeur INT UNSIGNED NOT NULL,
    FOREIGN KEY(id_editeur)
		REFERENCES editeur (id_editeur)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

DROP TABLE IF EXISTS editeur;
CREATE TABLE editeur (
	id_editeur INT UNSIGNED PRIMARY KEY,
    nom_lediteur VARCHAR(45)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

DROP TABLE IF EXISTS poste_has_logiciel;
CREATE TABLE poste_has_logiciel (
	id_poste INT UNSIGNED,
    id_logiciel INT UNSIGNED
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

DROP TABLE IF EXISTS usager;
CREATE TABLE usager (
	id_usager INT UNSIGNED PRIMARY KEY,
    nom_usager VARCHAR(45),
    prenom_usager VARCHAR(45),
    telephone_usager VARCHAR(15),
    local_id_local INT,
    FOREIGN KEY(local_id_local)
		REFERENCES `local` (id_local)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;;

DROP TABLE IF EXISTS usager_has_poste;
CREATE TABLE usager_has_poste (
	id_usager INT UNSIGNED,
    id_poste INT UNSIGNED
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
