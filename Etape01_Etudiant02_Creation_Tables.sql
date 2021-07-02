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
    



) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE espece (
  id smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  nom_courant varchar(40) NOT NULL,
  nom_latin varchar(40) NOT NULL,
  description text,
  prix decimal(7,2) unsigned DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY nom_latin (nom_latin)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;