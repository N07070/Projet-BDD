-- CREATE TABLE Resultat (
-- 	id serial PRIMARY KEY,
-- 	epreuve integer NOT NULL REFERENCES Epreuve (id) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	rencontres integer REFERENCES Rencontres (id) ON DELETE CASCADE ON UPDATE CASCADE,
-- 	position integer CHECK (position > 0),
-- 	temps time,
-- 	points integer
-- );


-- On mets un résultat par équipe,
-- Sachant que pour les sport Individuel, 1 joueur = 1 équipe
INSERT INTO Resultat (epreuve, rencontres, position, temps, points) VALUES

-- Athletisme 1
-- Handball 2
-- Natation 3

-- Football 
(19,38,1,,NULL,3),
(19,38,2,NULL,2),

(19,39,NULL,2),
(19,39,NULL,1),

(19,40,NULL,1),
(19,40,NULL,0),
-- Badminton 6
(20,41,1,NULL,6),
(20,41,2,NULL,5),

(20,42,1,NULL,9),
(20,42,2,NULL,8),

(20,43,1,NULL,10),
(20,43,2,NULL,8),

-- Canoe 6
(21,44,1,'10:55:06.689',NULL),
(21,44,2,'11:35:08.700',NULL),
(21,44,3,'11:44:06.739',NULL),

-- Velo vtt 7
(22,45,1,'04:05:06.689',NULL),
(22,45,2,'04:35:08.700',NULL),
(22,45,3,'04:44:06.739',NULL),

-- Judo 8
(23,46,1,NULL,NULL),
(23,46,2,NULL,NULL),

(23,47,1,NULL,NULL),
(23,47,2,NULL,NULL),

(23,48,1,NULL,NULL),
(23,48,2,NULL,NULL),

-- Volleyball 9
(24,49,1,NULL,10),
(24,49,2,NULL,9),
(23,49,3,NULL,6),
-- Rugby 10
(25,50,1,NULL,13),
(25,50,2,NULL,10),
(25,50,3,NULL,9),
-- Waterpolo 11
(26,51,1,NULL,15),
(26,51,2,NULL,14),
(26,51,3,NULL,13);
-- Tennis 12
(27,52,1,NULL,6),
(27,52,2,NULL,3),
(27,52,3,NULL,3),
(27,52,4,NULL,0),
-- Lutte 13
(28,53,1,NULL,824),
(28,53,2,NULL,724),
(28,53,3,NULL,624),
(28,53,4,NULL,624)
-- Equitation 14
(29,54,1,NULL,80),
(29,54,2,NULL,77),
(29,54,3,NULL,69),
(29,54,4,NULL,67)
-- Escrime 15
(30,55,1,NULL,9),
(30,55,2,NULL,8),
(30,55,3,NULL,6),
-- Halterophilie 16
(31,56,1,NULL,140),
(31,56,2,NULL,135),
(31,56,3,NULL,120),
-- Plongeon 17
(32,57,1, NULL,9),
(32,57,2,NULL,8),
(32,57,NULL,7),
-- Tir 18
(33,58,1, NULL,15),
(33,58,2,NULL,8),
(33,58,3,NULL,2)

-- Tir a larc 19
(34,59,1,NULL,100),
(34,59,2,NULL,95),
(34,59,3,NULL,92)
