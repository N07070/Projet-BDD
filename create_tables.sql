-- Supprimer les anciennes tables
DROP VIEW IF EXISTS complet;
DROP TABLE IF EXISTS joueurs_resultat;
DROP TABLE IF EXISTS Resultat;
DROP TABLE IF EXISTS Joueurs;
DROP TABLE IF EXISTS Epreuve;
DROP TABLE IF EXISTS Rencontres;
DROP TABLE IF EXISTS Sport;
DROP TABLE IF EXISTS Lieu;

--Les competiteurs individuels
CREATE TABLE joueurs(
	id serial PRIMARY KEY,
	nom varchar(50) NOT NULL,
	prenom varchar(50) NOT NULL,
	age integer NOT NULL CHECK (age >= 16), --l'age minimal pour entrer aux JO est 16 ans
	sexe char(1) NOT NULL CHECK (sexe = 'm' OR sexe = 'f'),
	pays char(3) NOT NULL
);

-- Catégorie de sport, nous avons choisis de prendre un identifiant comme clé primaire pour simplifier l'entrée des données
CREATE TABLE Sport (
	id serial PRIMARY KEY,
	nom varchar(50) NOT NULL UNIQUE
);

--Lieux
CREATE TABLE Lieu (
	id serial PRIMARY KEY,
	nom varchar(50) NOT NULL UNIQUE
);

-- Table Epreuve qui rassemble les "sports" ou "epreuves d'un sport" par exemple le 100 m hommes ou foot
CREATE TABLE Epreuve (
	id serial PRIMARY KEY,
	sexe char(1) CHECK (sexe = 'm' OR sexe = 'f'),
	nom varchar(50) NOT NULL,
	sport integer NOT NULL REFERENCES Sport (id) ON DELETE CASCADE ON UPDATE CASCADE,
	collectif boolean NOT NULL DEFAULT false,
	lieu integer DEFAULT NULL REFERENCES Lieu (id) ON DELETE CASCADE ON UPDATE CASCADE,
	UNIQUE (sexe,nom,sport)
);

-- table pour les rencontres precises comme la finale du 100 metres hommes si c'est nul il s'agit du resultat final de l'epreuve
CREATE TABLE Rencontres (
	id serial PRIMARY KEY,
	intitule varchar(50),
	date date CHECK (date >= '20160803' AND date <= '20160821') --Verifie que la rencontre a lieu pendant les dates des JO
);

-- Table avec le resultat d'une equipe à pour une rencontre d'une épreuce
CREATE TABLE Resultat (
	id serial PRIMARY KEY,
	epreuve integer NOT NULL REFERENCES Epreuve (id) ON DELETE CASCADE ON UPDATE CASCADE,
	rencontres integer REFERENCES Rencontres (id) ON DELETE CASCADE ON UPDATE CASCADE,
	position integer CHECK (position > 0),
	temps time,
	points integer
);

-- Table de relation entre resultat et joueurs
CREATE TABLE joueurs_resultat (
	id serial PRIMARY KEY,
	joueurs integer NOT NULL REFERENCES joueurs (id) ON DELETE CASCADE ON UPDATE CASCADE,
	resultat integer NOT NULL REFERENCES resultat (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Fin de la creation des tables

CREATE OR REPLACE VIEW complet AS
WITH RECURSIVE
    med_or AS (SELECT id, COUNT(position) AS m_or FROM complet WHERE position = '1' GROUP BY id),
	med_ar AS (SELECT id, COUNT (position) AS m_ar FROM complet WHERE position = '2' GROUP BY id),
	med_br AS (SELECT id, COUNT (position) AS m_br FROM complet WHERE position = '3' GROUP BY id),
    complet AS (SELECT joueurs.id AS id,
        prenom, 
        joueurs.nom AS nom, 
        pays, 
        joueurs.sexe AS sexe, 
        age, 
        epreuve.nom AS epreuve, 
        epreuve.sexe AS s, 
        sport.nom AS sport, 
        rencontres.intitule AS rencontre, 
        rencontres.date AS date, 
	    lieu.nom AS lieu, 
	    resultat.id AS resultat,
	    resultat.position AS position, 
	    resultat.temps AS temps, 
	    resultat.points AS points
    FROM joueurs, resultat, epreuve, sport, lieu, rencontres, joueurs_resultat 
    WHERE (joueurs.id = joueurs_resultat.joueurs AND joueurs_resultat.resultat = resultat.id) 
	    AND (resultat.epreuve = epreuve.id) 
	    AND (resultat.rencontres = rencontres.id)
	    AND (epreuve.sport = sport.id)
	    AND (epreuve.lieu = lieu.id))
SELECT complet.id,
        prenom, 
        nom, 
        pays, 
        sexe, 
        age, 
        epreuve, 
        s, 
        sport, 
        rencontre, 
        date, 
	    lieu, 
	    m_or, m_ar, m_br,
	    resultat,
	    position, 
	    temps, 
	    points
	    FROM complet 
	LEFT JOIN med_or ON complet.id = med_or.id 
	LEFT JOIN med_ar ON med_or.id = med_ar.id 
	LEFT JOIN med_br ON med_ar.id = med_br.id;
