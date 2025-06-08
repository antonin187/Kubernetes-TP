
-- Create database (to be executed outside of a transaction block if needed)
CREATE DATABASE gestion_produits;

\c gestion_produits;

-- Table: produits
DROP TABLE IF EXISTS produits CASCADE;
CREATE TABLE produits (
    PRO_id SERIAL PRIMARY KEY,
    PRO_lib VARCHAR(200) NOT NULL,
    PRO_prix NUMERIC(10,2) NOT NULL,
    PRO_description TEXT
);

INSERT INTO produits (PRO_id, PRO_lib, PRO_prix, PRO_description) VALUES
(1,'Pédales Shimano XT M8040 M/L',74.99,'Les pédales plates SHIMANO XT PD-M8040 sont destinées à un usage All Mountain/Enduro...'),
(2,'Selle FIZIK ARIONE VERSUS Rails Kium',59.99,'Modèle confortable avant tout...'),
(3,'Chaussures VTT MAVIC CROSSMAX SL PRO THERMO Noir',164.99,'Les chaussures Cross Max SL Pro Thermo créées par la marque MAVIC...'),
(4,'Pack GPS GARMIN EDGE 1030 + Ceinture Cardio',519.99,'Le Pack GPS Edge 1030 plus la ceinture cardio de Garmin est fait pour les compétiteurs...'),
(5,'Fourche DVO SAPPHIRE 29',549.99,'Dérivée de la Diamond, la fourche DVO Sapphire 29" marque l''entrée de la marque...');

-- Réaligner la séquence produits_pro_id_seq
SELECT setval('produits_pro_id_seq', (SELECT MAX(pro_id) FROM produits));


-- Table: ressources
DROP TABLE IF EXISTS ressources CASCADE;
CREATE TABLE ressources (
    RE_id SERIAL PRIMARY KEY,
    RE_type VARCHAR(100) NOT NULL,
    RE_url VARCHAR(1000) NOT NULL,
    RE_nom VARCHAR(100),
    PRO_id INTEGER NOT NULL REFERENCES produits(PRO_id)
);

INSERT INTO ressources (RE_id, RE_type, RE_url, RE_nom, PRO_id) VALUES
(40,'img','uploads/3-ad201839b2ed3d2e4dae6c4f60c4b351.jpg',NULL,3),
(41,'img','uploads/3-7e147d9390a77334782851729ed8384f.jpg',NULL,3),
(42,'img','uploads/3-82fde3218e6f64fa94e8139fe80f7917.jpg',NULL,3),
(43,'img','uploads/5-19b235d023eef2281304433f0d4438b6.jpg',NULL,5),
(44,'img','uploads/5-b02cbdbc96d5c9a20526763576f56a11.jpg',NULL,5),
(45,'img','uploads/5-8e258524bf0f2aae28647a1aa8a77a8c.jpg',NULL,5),
(46,'img','uploads/4-a21d716bdfda2004d50171559c4b1b92.jpg',NULL,4),
(47,'img','uploads/4-1cb57a6c1de5c2573679654054a2b3b0.jpg',NULL,4),
(48,'img','uploads/4-438b7f4eec56d20aca694793882909ac.jpg',NULL,4),
(49,'img','uploads/1-707116622e5d4fe50dfc6391af4a5421.jpg',NULL,1),
(50,'img','uploads/1-7f8aacccd9c522281c58e5eb90cbb6a8.jpg',NULL,1),
(51,'img','uploads/1-987e17d65fb62e5fece343304d7be827.jpg',NULL,1),
(52,'img','uploads/2-e2b9f326909fe34dc9f73e515d0e5633.jpg',NULL,2),
(53,'img','uploads/2-5dfd065b9d05455732d122cdc3b64e27.jpg',NULL,2),
(54,'img','uploads/2-7e38160b643cf0e21ff445c9594e77d7.jpg',NULL,2),
(55,'img','uploads/2-2228cc7d3b9f647bfa31dd4ebf0f3885.jpg',NULL,2);

-- Réaligner la séquence ressources_re_id_seq
SELECT setval('ressources_re_id_seq', (SELECT MAX(re_id) FROM ressources));


-- Table: utilisateurs
DROP TABLE IF EXISTS utilisateurs CASCADE;
CREATE TABLE utilisateurs (
    US_id SERIAL PRIMARY KEY,
    US_login VARCHAR(100) NOT NULL UNIQUE,
    US_password VARCHAR(100) NOT NULL
);

INSERT INTO utilisateurs (US_id, US_login, US_password) VALUES
(1,'admin','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');

-- Réaligner la séquence utilisateurs_us_id_seq
SELECT setval('utilisateurs_us_id_seq', (SELECT MAX(us_id) FROM utilisateurs));
