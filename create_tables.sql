-- Supprimer les anciennes tables
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
