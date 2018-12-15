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

-- Foot
('Tournoi',20160803),
('Tournoi',20160804),
('Tournoi',20160805),
-- Natation
("Relais 4x100 metres nage libre",20160803),
("200 metres papillon",20160804),
("Relais 4x200 metres nage libre",20160805),
("200 metres 4 nages",20160806),
("100 metres papillon",20160807),
("Relais 4x100 metres 4 nages",20160808),
("200 metres nage libre",20160809),
-- Athé
("Preliminaires 100m", 20160803),
("Preliminaires 200m", 20160804)
("100 metres",20160805),
("200 metres",20160806),
("400 metres",20160807),
("110 metres haies",20160808),
("Marathon",20160809),
-- Badminton
("Final",20160816),
-- Canoe
("Final",20160819),
-- VTT
("Final",20160812),
-- Judo
("Final",20160813),
-- Rugby
("Final",20160810),
-- Volleyball
("Final",20160808),
-- Tennis
("Final",20160814),
-- Waterpolo
("Final",20160812),
-- Handball
("Final",20160815),
-- Lutte
("Final",20160821),
-- Equitation
("Dressage",20160807),
("Saut d'obstacles",20160808),
("Cross-Country",20160809),
("Complet",201608010),
-- Escrime
("Epée Final",20160809),
("Fleuret Final",20160810),
("Sabre Final",20160811),
-- Halter
("-50kg",20160816),
("-100kg",20160817),
("-120kg",20160818),
-- Plongeon
("Tremplin",20160813),
("Haut Vol",20160814),
-- Tir
("Carabine",20160814),
("Pistolet",20160815),
-- Tir à l'arc
("Final",20160812);
