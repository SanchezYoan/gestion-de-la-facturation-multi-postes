-- CREATION DE LA BASE DE DONNEE Gestion
CREATE DATABASE IF NOT EXISTS Gestion;
-- UTILISATION DE LA BASE DE DONNEE Gestion
USE Gestion;
-- CREATION DE LA TABLE CLIENTS 
CREATE TABLE IF NOT EXISTS Clients
(
    id INTEGER PRIMARY KEY NOT NULL,
    TYPE_DE_CLIENT VARCHAR(100),
    RAISON_SOCIALE VARCHAR(100),
    EMAIL VARCHAR(255),
    TELEPHONE VARCHAR(12),
    ADRESSE VARCHAR(255),
    CODE_POSTAL VARCHAR(5),
    VILLE VARCHAR(255)
)
;
-- CREATION DE LA TABLE FACTURE POUR LES FACTURES CLIENTS
CREATE TABLE IF NOT EXISTS Facture
(
    id INTEGER PRIMARY KEY NOT NULL,
    id_Clients INTEGER,
    id_Lignes INTEGER,
    DATE_EMISSION DATE,
    REMISE INTEGER, 
    MONTANT_TOTAL INTEGER
)
;
-- CREATION DE LA TABLE LIGNES POUR LE DETAILS DES FACTURES
CREATE TABLE IF NOT EXISTS Lignes
(
    id INTEGER PRIMARY KEY NOT NULL,
    NOM_DU_PRODUIT VARCHAR(100),
    REFERENCE INTEGER,
    QUANTITE INTEGER,
    PRIX_UNITE INTEGER,
    N_FACTURE TEXT,
    CLIENT TEXT,
    TOTAL INTEGER
)
;

CREATE USER IF NOT EXISTS 'damien'@'192.168.1.44' IDENTIFIED WITH mysql_native_password BY 'AzErTy123*';
-- CREATION DU USER, METTRE SON NOM ET SON @IP DE MACHINE WINDOWS
GRANT ALL ON Gestion.* TO 'damien'@'192.168.1.44';
-- DONNE TOUS LES DROITS, METTRE SON NOM ET SON @IP DE MACHINE WINDOWS
FLUSH PRIVILEGES;
-- APPLIQUE LES DROITS QU'ON VIENT DE DONNER

SHOW DATABASES;
-- PERMET DE VOIR LES BASES DE DONNEES PRESENTES
SHOW TABLES;
-- PERMET DE VOIR LES TABLES DE LA BASE DE DONNEE UTILISER
select user,host from mysql.user;
-- PERMET DE VOIR LES USAGERS PRESENTS DANS LE SERVICE MYSQL