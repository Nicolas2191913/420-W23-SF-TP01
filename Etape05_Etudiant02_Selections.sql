/* 
 Travail pratique 1
  Nicolas Lavigne
 --> Tristan Hamel
 
 Date  6-07-2021                                            
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------
SELECT 
	nom_local AS "No. local",
	nb_bureau AS "Nb. Bureau",
	nb_prise_ethernet AS "Nb.prise ethernet",
	imprimante_id_peripherique AS "No. Imprimante"
FROM `local`;


SELECT 
	CONCAT (nom_usager,", ", prenom_usager) AS "Nom d'usager",
    nom_local AS "Local",
    desc_poste AS "Description du poste"
FROM USAGER AS U
    INNER JOIN usager_has_poste AS UHP
		ON U.id_usager = UHP.id_usager
	INNER JOIN poste AS P
		ON UHP.id_poste = P.id_poste
        
	INNER JOIN `local` AS L
		ON U.local_id_local = L.id_local
ORDER BY nom_usager;