/* 
 Travail pratique 1
 Nicolas Lavigne
 --> Tristan Hamel
 
 Date  06-07-2021                                            
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------
SET foreign_key_checks = 0;

UPDATE `local`
SET nom_local = 'p-409', nb_bureau = 27, nb_prise_ethernet = 27, imprimante_id_peripherique = 678
WHERE id_local = 1;

UPDATE `local`
SET nom_local = 'p-416', nb_bureau = 5, nb_prise_ethernet = 6, imprimante_id_peripherique = 673
WHERE id_local = 6;

UPDATE `local`
SET nom_local = 'p-418', nb_bureau = 27, nb_prise_ethernet = 27, imprimante_id_peripherique = 679
WHERE id_local = 2;

UPDATE peripherique
SET id_type_peripherique= 4
WHERE id_peripherique < 213;

UPDATE peripherique
SET id_type_peripherique= 1
WHERE id_peripherique > 671;

UPDATE peripherique
SET id_type_peripherique= 3
WHERE id_peripherique > 443 AND id_peripherique < 672;

UPDATE peripherique
SET id_type_peripherique= 2
WHERE id_peripherique < 444 AND id_peripherique > 212;


SET foreign_key_checks = 1;