-- Rencontres
-- -- CREATE TABLE Rencontres (
-- 	id serial PRIMARY KEY,
-- 	intitule varchar(50),
-- 	date date CHECK (date >= '20160803' AND date <= '20160821') --Verifie que la rencontre a lieu pendant les dates des JO
-- );

-- Les dates des rencontres ainsi que la plupart des rencontres ont été simplifiées,
-- de façon à gagner du temps et à rendre l'ensemble plus compréhensible.
-- Les tournois remplacent le format championnat pour simplifier

-- Fun fact : Les cérémonies olympiques ont lieu après le début des épreuves de foot

--Legende :

--H manches (selection de ceux qui vont concourrir pour la suite)
--1/4, 1/2 quarts et demies finales
--F Finales
--T tournois pour les sports ou les concurrents se rencontrent a 2

INSERT INTO Rencontres(intitule, date) VALUES

-- Athlé temps

--Fem
--100m autour de 10s
('F','20160805'),
--200m autour de 20s
('F','20160806'),
--400m wr 43s
('F','20160807'),

--M
--100m
('F','20160805'), --seulement les 4 premiers
--200m
('F','20160806'),
--400m
('F','20160807'),

--Marathon M F? plus de 2h
('F','20160810'),

--110m haies m
('F','20160809'),

-- 3000m obstacles
('F','20160804'),

--triple saut
('F','20160808'),

--Hand attention ici il faut que l'une des equipes feminines marque plus de point au total que chaque equipe masculine
--Hand m
('T1','20160804'), --ANGvPRK
('T2','20160806'), --ITAvPRK
('T3','20160808'), --ANGvITA

--Hand f
('T1','20160805'), --JPNvUSA
('T2','20160807'), --JPNvFRA
('T3','20160809'), --FRAvUSA

--Natation

--Natation Relais avec phelps or pour phelps et co a chaque fois, PRK devra pas etre dernier a chaque fois
('F','20160807'), --4x100 nagelibre
('F','20160808'), --4x200 nagelibre
('F','20160809'), --4x100 4nages

--Natation indiv avec phelps, PRK pas dernier a chaque fois
('F','20160806'), --200m pap   phelps or
('F','20160807'), --200m 4nages   phelps or
('F','20160808'), --100m pap    phelps argent

--Natation 200m nagelibre hom/fem, on se fiche des positiosn (cest pour faire la moyenne des temps), a remplir avec des nageurs desrelais(si phelps est dedans il na pas de medaille), PRK meme chose quavant
--Hom
('1/2','20160808'),
('F','20160809'),
--Fem
('1/2','20160809'),
('F','20160810'),

--Football fems
('T1','20160804'), --ITAvGBR
('T2','20160806'), --GBRvGER
('T3','20160808'), --ITAvGER

--Badminton hom
('T1','20160805'), --JPNvKOR
('T2','20160806'), --JPNvRSA -- Rencontre n°42
('T3','20160807'), --RSAvKOR

-- Canoe K1 hom
('F','20160810'),

-- VTT
('F','20160810'),

-- Judo f ici les points nindiquent pas forcement la victoire (100,110,101,010) sera le nmbr de points qui gagnent contre 000 ou 001
('T1','20160809'), --KORvUKR
('T2','20160809'), --KORvBRA
('T3','20160809'), --BRAvUKR

-- Beachvolley
('T1','20160804'), -- GREvRSA
('T2','20160804'), -- GREvANG
('T2','20160804'), -- RSAvANG
-- Rugby
('T1','20160804'), -- POLvGBR
('T2','20160805'), -- POLvBRA
('T3','20160806'), -- GBRvBRA
-- Waterpolo
('T1','20160804'), -- GBRvUSA
('T2','20160805'), -- GBRvBRA
('T3','20160806'), -- BRAvUSA
-- Tennis
('1/2 1','20160811'), -- NGRvKOR
('1/2 2','20160811'), -- NEDvITA
('F','20160812'), --KORvNED
('F 2','20160812'), --NGRvITA
-- Lutte
('1/2 1','20160809'), --UKRvSUI
('1/2 1','20160809'), --FRAvITA
('F','20160809'), --UKRvFRA
('F 2','20160809'), --ITAvSUI
-- Equitation
('F','20160807'), -- autour de 90
-- Escrime --max 15
('F','20160809'),
-- Halter max 379
('F','20160811'),
-- Plongeon max 547
('F','20160813'),
-- Tir 500
('F','20160815'),
-- Tir à l'arc 700
('F','20160812'); --59
