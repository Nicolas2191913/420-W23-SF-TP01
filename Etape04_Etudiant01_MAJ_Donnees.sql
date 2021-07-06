/* 
 Travail pratique 1
 --> Nicolas Lavigne
 Tristan Hamel
 
 Date  06-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------

UPDATE `local`
SET nb_bureau = 16
,	nb_prise_ethernet = 16
,    imprimante_id_peripherique = 674
WHERE nom_local = 'P-210';

UPDATE `local`
SET nb_bureau = 27,
	nb_prise_ethernet = 27,
    imprimante_id_peripherique = 676
WHERE nom_local = 'P-308';

UPDATE `local`
SET nb_bureau = 27,
	nb_prise_ethernet = 27,
    imprimante_id_peripherique = 677
WHERE nom_local = 'P-309';

UPDATE usager
SET Id_typeUsager = 1
WHERE id_usager <= 9;

UPDATE usager
SET Id_typeUsager = 2
WHERE (id_usager > 99 AND id_usager < 1000);

UPDATE usager
SET Id_typeUsager = 3
WHERE id_usager >= 1000;
