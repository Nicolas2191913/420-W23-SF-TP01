/* 
 Travail pratique 1
 Nicolas Lavigne
 --> Tristan Hamel
 
 Date  04-07-2021                                          
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------
DROP TABLE IF EXISTS typeusager;
CREATE TABLE IF NOT EXISTS typeusager(
	id_typeUsager INT UNSIGNED PRIMARY KEY,
    nom_statut VARCHAR(45)
)ENGINE  = InnoDB;

INSERT INTO typeusager (id_typeUsager, nom_statut)
	VALUES
    (1, "Professeur"),
	(2, "Employé"),
	(3, "Étudiant");
	
    
ALTER TABLE usager
	ADD COLUMN Id_typeUsager INT UNSIGNED,
		ADD CONSTRAINT fk_Id_typeUsager FOREIGN KEY (Id_typeUsager)
		REFERENCES typeusager (id_typeUsager);
        

-- Version ajout de Unique not Null comme Nico    
 ALTER TABLE logiciel
	 MODIFY nom_logiciel VARCHAR(45) NOT NULL,
     ADD CONSTRAINT uk_nom_logiciel UNIQUE (nom_logiciel);
	
    ALTER TABLE editeur
		MODIFY nom_editeur VARCHAR(45) NOT NULL,
		ADD CONSTRAINT uk_nom_editeur UNIQUE (nom_editeur);
        
-- Version alternative       
-- ALTER TABLE logiciel
	-- MODIFY nom_logiciel VARCHAR(45) UNIQUE NOT NULL;
    
-- ALTER TABLE editeur 
	-- MODIFY nom_editeur VARCHAR(45) UNIQUE NOT NULL;
    
-- Test doublons
  -- INSERT INTO logiciel (id_logiciel, nom_logiciel, nb_license , id_editeur )
  -- VALUES 
  -- (87,'libre Office',100,6);
