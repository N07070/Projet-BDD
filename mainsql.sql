DROP TABLE IF EXISTS EquipesJoueurs;
DROP TABLE IF EXISTS Resultat;
DROP TABLE IF EXISTS Joueurs;
DROP TABLE IF EXISTS Epreuve;
DROP TABLE IF EXISTS Equipe;
DROP TABLE IF EXISTS Rencontres;
DROP TABLE IF EXISTS Sport;

CREATE TABLE Joueurs(
  id serial PRIMARY KEY,
  nom varchar(50) NOT NULL,
  prenom varchar(50) NOT NULL,
  age integer NOT NULL
);


CREATE TABLE Equipe (
  id serial PRIMARY KEY,
  pays varchar(30) NOT NULL
);


CREATE TABLE EquipesJoueurs (
  id serial PRIMARY KEY,
  joueur integer NOT NULL REFERENCES Joueurs (id) ON DELETE CASCADE ON UPDATE CASCADE,
  equipe integer NOT NULL REFERENCES Equipe (id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Sport (
  id serial PRIMARY KEY,
  nom varchar(50)
);


CREATE TABLE Epreuve (
  id serial PRIMARY KEY,
  sexe char(1),
  nom text NOT NULL,
  lieu text NOT NULL,
  sport integer NOT NULL REFERENCES Sport (id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Rencontres (
  id serial PRIMARY KEY,
  date date
)

CREATE TABLE Resultat (
  id serial PRIMARY KEY,
  equipe integer REFERENCES Equipe (id) ON DELETE CASCADE ON UPDATE CASCADE,
  epreuve integer REFERENCES Epreuve (id) ON DELETE CASCADE ON UPDATE CASCADE,
  rencontres integer REFERENCES Rencontres (id) ON DELETE CASCADE ON UPDATE CASCADE,
  position integer,
  temps time,
  points integer
);
