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
  age integer NOT NULL,
  sex text NOT NULL
);

-- Equipes, comprend les "equipes" individuelles
/* Pour trouver les équipes dans laquelle il n'y a qu'un athlète il faut chercher
dans la table EquipesJoueurs les id d'équipes qui n'apparaissent qu'une fois
Celles qui apparaissent plusieurs fois pour les équipes collectifs */
CREATE TABLE Equipe (
  id serial PRIMARY KEY,
  pays varchar(30) NOT NULL
);

-- Table de relation entre Equipe et joueurs
CREATE TABLE EquipesJoueurs (
  id serial PRIMARY KEY,
  joueur integer NOT NULL REFERENCES Joueurs (id) ON DELETE CASCADE ON UPDATE CASCADE,
  equipe integer NOT NULL REFERENCES Equipe (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Catégorie de sport (à discuter si on fait une categorie par ligne de cette table ou un sport dans quel cas il faut ajouter une table pour le sport)
CREATE TABLE Sport (
  id serial PRIMARY KEY,
  nom varchar(50)
);

-- Table Epreuve qui rassemble les "sports" ou "epreuves d'un sport" par exemple le 100 m hommes ou foot
CREATE TABLE Epreuve (
  id serial PRIMARY KEY,
  sexe char(1),
  nom text NOT NULL,
  lieu text NOT NULL,
  sport integer NOT NULL REFERENCES Sport (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- table pour les rencontres precises comme la finale du 100 metres hommes si c'est nul il s'agit du resultat final de l'epreuve
CREATE TABLE Rencontres (
  id serial PRIMARY KEY,
  intitule varchar(50),
  date date
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
