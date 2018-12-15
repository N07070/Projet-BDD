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
("Quart De Final",20160803),
("Demi Final",20160804),
("Final",20160805),
-- Natation
("Relais 4x100 metres nage libre",20160803),
("200 metres papillon",20160804),
("Relais 4x200 metres nage libre",20160805),
("200 metres 4 nages",20160806),
("100 metres papillon",20160807),
("Relais 4x100 metres 4 nages",20160808),
("200 metres nage libre",20160809),
-- Athé
("Marathon",20160803),
("100 metres",20160804),
("200 metres",20160804),
("400 metres",20160804),
("110 metres haies",20160805),
-- Badminton
("Quart De Final",20160814),
("Demi Final",20160815),
("Final",20160816),
-- Canoe
("Quart De Final",20160817),
("Demi Final",20160818),
("Final",20160819),
-- VTT
("Quart De Final",20160810),
("Demi Final",20160811),
("Final",20160812),
-- Judo
("Quart De Final",20160811),
("Demi Final",20160812),
("Final",20160813),
-- Rugby
("Quart De Final",20160808),
("Demi Final",20160809),
("Final",20160810),
-- Volleyball
("Quart De Final",20160806),
("Demi Final",20160807),
("Final",20160808),
-- Tennis
("Quart De Final",20160812),
("Demi Final",20160813),
("Final",20160814),
-- Waterpolo
("Quart De Final",20160810),
("Demi Final",20160811),
("Final",20160812),
-- Handball
("Quart De Final",20160813),
("Demi Final",20160814),
("Final",20160815),
-- Lutte
("Quart De Final",20160819),
("Demi Final",20160820),
("Final",20160821),
-- Equitation
("Dressage",20160807),
("Saut d'obstacles",20160808),
("Cross-Country",20160809),
("Complet",201608010),
-- Escrime
("Epée 1/4",20160803),
("Fleuret 1/4",20160804),
("Sabre 1/4",20160805),
("Epée 1/2",20160806),
("Fleuret 1/2",20160807),
("Sabre 1/2",20160808),
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
("Quart De Final",20160810),
("Demi Final",20160811),
("Final",20160812),
