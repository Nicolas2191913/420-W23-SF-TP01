/* 
 Travail pratique 1
 --> Nicolas Lavigne
 Tristan Hamel
 
 Date  02-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------

DROP TABLE IF EXISTS type_peripherique;
CREATE TABLE IF NOT EXISTS type_peripherique(
	id_type_peripherique INT UNSIGNED NOT NULL PRIMARY KEY,
	nom_type_peripherique VARCHAR(25))
ENGINE=InnoDB;

INSERT INTO type_peripherique (id_type_peripherique, nom_type_peripherique)
	VALUES (1, 'Imprimantes'),
			(2, 'Souris'),
			(3,	'Clavier'),
			(4,	'Écran');
            
ALTER TABLE peripherique
	ADD COLUMN id_type_peripherique INT UNSIGNED,
    ADD CONSTRAINT fk_id_type_peripherique FOREIGN KEY (id_type_peripherique)
		REFERENCES type_peripherique (id_type_peripherique);

ALTER TABLE `local`
	ADD COLUMN nb_bureau INT UNSIGNED,
	ADD COLUMN nb_prise_ethernet INT UNSIGNED,
	ADD COLUMN imprimante_id_peripherique INT UNSIGNED,
		MODIFY nom_local VARCHAR(45) NOT NULL,
		ADD CONSTRAINT fkimprimante FOREIGN KEY (imprimante_id_peripherique)
        REFERENCES peripherique (id_peripherique),
		ADD CONSTRAINT uk_nom_local UNIQUE (nom_local);

ALTER TABLE fabricant
	MODIFY nom_fabricant VARCHAR(45) NOT NULL,
    ADD CONSTRAINT uk_nom_fabricant UNIQUE (nom_fabricant);
