-- CREATE TABLE Resultat (
-- 	id serial PRIMARY KEY,
-- 	epreuve integer NOT NULL REFERENCES Epreuve (id) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	rencontres integer REFERENCES Rencontres (id) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	position integer CHECK (position > 0),
-- 	temps time,
-- 	points integer
-- );

INSERT INTO Resultat (epreuve, rencontres, position, temps, points) VALUES

-- Athletisme 1
-- Handball 2
-- Natation 3
-- Football 4
-- Badminton 6
-- Canoe 6
-- Velo vtt 7
-- Judo 8
-- Volleyball 9
-- Rugby 10
-- Waterpolo 11
-- Tennis 12
-- Lutte 13
-- Equitation 14
-- Escrime 15
-- Halterophilie 16
-- Plongeon 17
-- Tir 18
-- Tir a larc 19
