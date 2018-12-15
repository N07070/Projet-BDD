-- CREATE TABLE Resultat (
-- 	id serial PRIMARY KEY,
-- 	epreuve integer NOT NULL REFERENCES Epreuve (id) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	rencontres integer REFERENCES Rencontres (id) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	position integer CHECK (position > 0),
-- 	temps time,
-- 	points integer
-- );

INSERT INTO Resultat (epreuve, rencontres, position, temps, points) VALUES

-- Football 1
-- Natation 2
-- Athletisme 3
-- Badminton 4
-- Canoe 5
-- Velo vtt 6
-- Judo 7
-- Rugby 8
-- Volleyball 9
-- Tennis 10
-- Waterpolo 11
-- Handball 12
-- Lutte 13
-- Equitation 14
-- Escrime 15
-- Halterophilie 16
-- Plongeon 17
-- Tir 18
-- Tir a larc 19
