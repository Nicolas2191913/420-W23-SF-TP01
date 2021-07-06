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

SET foreign_key_checks = 1;