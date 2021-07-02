/* 
 Travail pratique 1
 Nicolas Lavigne
 --> Tristan Hamel
 
 Date  02-07-2021                                             
*/
 DROP DATABASE IF EXISTS PosteClientDFC;
 CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------
DROP TABLE IF EXISTS logiciel;
DROP TABLE IF EXISTS editeur;
DROP TABLE IF EXISTS poste_has_logiciel;
DROP TABLE IF EXISTS usager;
DROP TABLE IF EXISTS usager_has_poste;

CREATE TABLE logiciel (
	id_logiciel INT,
    nom_logiciel VARCHAR(45),
    nb_license INT,
    id_editeur INT
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE editeur (
	id_editeur INT,
    nom_lediteur VARCHAR(45)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE poste_has_logiciel (
	id_poste INT,
    id_logiciel INT
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE usager (
	id_usager INT,
    nom_usager VARCHAR(45),
    prenom_usager VARCHAR(45),
    telephone_usager VARCHAR(15)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE usager_has_poste (
	id_usager INT,
    id_poste INT
) ENGINE = InnoDB DEFAULT CHARSET = latin1;


