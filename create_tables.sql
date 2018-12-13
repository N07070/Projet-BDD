-- Supprimer les anciennes tables
DROP TABLE IF EXISTS EquipesJoueurs;
DROP TABLE IF EXISTS Resultat;
DROP TABLE IF EXISTS Joueurs;
DROP TABLE IF EXISTS Epreuve;
DROP TABLE IF EXISTS Equipe;
DROP TABLE IF EXISTS Rencontres;
DROP TABLE IF EXISTS Sport;

--Les competiteurs individuels
CREATE TABLE Joueurs(
	id serial PRIMARY KEY,
	nom varchar(50) NOT NULL,
	prenom varchar(50) NOT NULL,
	age integer NOT NULL CHECK (age >= 16), --l'age minimal pour entrer aux JO est 16 ans
	sexe char(1) NOT NULL CHECK (sexe = 'm' OR sexe = 'f'),
	pays char(3) NOT NULL
);

-- Equipes, comprend les "equipes" individuelles
CREATE TABLE Equipe (
	id serial PRIMARY KEY,
	pays char(3) NOT NULL
);

-- Table de relation entre Equipe et joueurs
CREATE TABLE EquipesJoueurs (
	id serial PRIMARY KEY,
	joueur integer NOT NULL REFERENCES Joueurs (id) ON DELETE CASCADE ON UPDATE CASCADE,
	equipe integer NOT NULL REFERENCES Equipe (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Catégorie de sport, nous avons choisis de prendre un identifiant comme clé primaire pour simplifier l'entrée des données
CREATE TABLE Sport (
	id serial PRIMARY KEY,
	nom varchar(50) UNIQUE
);

-- Table Epreuve qui rassemble les "sports" ou "epreuves d'un sport" par exemple le 100 m hommes ou foot
CREATE TABLE Epreuve (
	id serial PRIMARY KEY,
	sexe char(1) CHECK (sexe = 'm' OR sexe = 'f'),
	nom varchar(50) NOT NULL,
	lieu varchar(25) DEFAULT NULL, --Null uniquement avant l'ajout des lieux
	sport integer NOT NULL REFERENCES Sport (id) ON DELETE CASCADE ON UPDATE CASCADE,
	collectif boolean NOT NULL DEFAULT false,
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
	equipe integer REFERENCES Equipe (id) ON DELETE CASCADE ON UPDATE CASCADE,
	epreuve integer REFERENCES Epreuve (id) ON DELETE CASCADE ON UPDATE CASCADE,
	rencontres integer REFERENCES Rencontres (id) ON DELETE CASCADE ON UPDATE CASCADE,
	position integer,
	temps time,
	points integer
);
