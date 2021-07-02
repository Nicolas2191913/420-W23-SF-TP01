/* 
 Travail pratique 1
 --> Nicolas Lavigne
 Tristan Hamel
 
 Date  02-07-2021                                             
*/
DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------
DROP TABLE IF EXISTS poste;
CREATE TABLE IF NOT EXISTS poste;

DROP TABLE IF EXISTS `local`;
CREATE TABLE IF NOT EXISTS `local`;

DROP TABLE IF EXISTS peripherique;
CREATE TABLE IF NOT EXISTS peripherique;

DROP TABLE IF EXISTS fabricant;
CREATE TABLE IF NOT EXISTS fabricant;
