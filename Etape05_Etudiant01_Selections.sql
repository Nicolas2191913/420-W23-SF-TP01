/* 
 Travail pratique 1
 --> Nicolas Lavigne
Tristan Hamel
 
 Date  06-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------

SELECT
	l.nom_local AS "No. local",
	l.nb_bureau AS "Nb. Bureau",
	l.nb_prise_ethernet AS "Nb.prise ethernet",
	l.imprimante_id_peripherique AS "No. Imprimante",
    p.nom_peripherique AS "Nom de l'imprimante"
FROM `local` AS l
	INNER JOIN peripherique AS p
    ON l.imprimante_id_peripherique = p.id_peripherique
    INNER JOIN type_peripherique AS t
    ON p.id_type_peripherique = t.id_type_peripherique
    ORDER BY p.nom_peripherique;
    
SELECT
	l.nom_logiciel AS 'Logiciel',
    COUNT(p.id_poste) AS 'Nb. d''installation sur poste'
FROM logiciel AS l
	INNER JOIN poste_has_logiciel AS p
    ON l.id_logiciel = p.id_logiciel
	GROUP BY p.id_logiciel
    ORDER BY COUNT(p.id_poste) DESC;
