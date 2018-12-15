-- Rencontres
-- -- CREATE TABLE Rencontres (
-- 	id serial PRIMARY KEY,
-- 	intitule varchar(50),
-- 	date date CHECK (date >= '20160803' AND date <= '20160821') --Verifie que la rencontre a lieu pendant les dates des JO
-- );

-- Les dates des rencontres ainsi que la plupart des rencontres ont été simplifiées,
-- de façon à gagner du temps et à rendre l'ensemble plus compréhensible.
-- Fun fact : Les cérémonies olympiques ont lieu après le début des épreuves de foot

INSERT INTO Rencontres(intitule, date) VALUES

-- Athé
("Preliminaires 100m", 20160803),
("Preliminaires 200m", 20160804)
("100 metres",20160805),
("200 metres",20160806),
("400 metres",20160807),
("110 metres haies",20160808),
("Marathon",20160809),
-- Handball
("Final",20160815), -- Homme
("Final",20160816), -- Femme
-- Natation
("Final",20160803) -- Relais 4*100 m libre
("Final",20160804) -- 200 m pap
("Final",20160805) -- Relais 4*200 m libre
("Final",20160806) -- 200 m 4 nages
("Final",20160807) -- 100 m pap
("Final",20160808) -- 4*100m 4 nages
("Final",20160809) -- 200 m libre f
("Final",20160810) -- 200 m libre m
-- Foot
('Tournoi',20160803),
('Tournoi',20160804),
('Tournoi',20160805),
-- Badminton
("Final",20160816),
-- Canoe
("Final",20160819),
-- VTT
("Final",20160812),
-- Judo
("Final",20160813),
-- BeachVolley
("Final",20160808),
-- Rugby
("Final",20160810),
-- Waterpolo
("Final",20160812),
-- Tennis
("Final",20160814),
-- Lutte
("Final",20160821),
-- Equitation
("Dressage",20160807),
-- Escrime
("Final",20160809),
-- Halter
("63Kg",20160816),
-- Plongeon
("Tremplin",20160813),
-- Tir
("Pistolet",20160815),
-- Tir à l'arc
("Final",20160812);
