INSERT INTO epreuve (sexe,nom,sport,collectif,lieu) VALUES
--Pour les requetes necessaires
-- TODO : rajouter un vrai lieu
--Athletisme
('m','100 metres',3,false,7),
('m','200 metres',3,false,7),
('m','400 metres',3,false,7),
('f','100 metres',3,false,7),
('f','200 metres',3,false,7),
('f','400 metres',3,false,7),
('m','110 metres haies',3,false,7), -- 110m haies
('m','Marathon',3,false,7),-- Marathon
('m','3000m course aux obstacles',3,false,7),
('m','Triple Saut',3,false,7),

--Handball
--Nelson
('f','Handball',12,true,14),
--David
('m','Handball',12,true,14),

-- Natation
-- Phelps
--Nelson

('m','Relais 4x100 metres nage libre',2,true,3), -- USA first
('m','200 metres papillon',2,false,3),

('m','Relais 4x200 metres nage libre',2,true,3),  -- USA first
('m','200 metres 4 nages',2,false,3),

('m','100 metres papillon',2,false,3), -- Pas phelps Argent
('m','Relais 4x100 metres 4 nages',2,true,3),  -- USA first

('f','200 metres nage libre',2,false,3),
('m','200 metres nage libre',2,false,3),

--Tous les sports sauf 2 3 et 12
('f','Football',1,true,7),

('m','Badminton Individuel',4,false,11),

('m','K-1 200 metres',5,false,5), -- Canoe

('m','VTT',6,false,15),

('f','70kg',7,false,1), -- judo

('f','Beach',9,true,12), --equipes de 2

('f','Rugby 7s',8,true,13), --equipes a 7!

('m','Water polo',11,true,3), -- equipes de 7

('m','Individuel',10,false,4), -- Tennis

('m','Greco-Romain 59kg',13,false,1),

('m','Dressage Individuel',14,false,9),

('m','Épée',15,false,2),

('f','63kg',16,false,16), --Halter

('f','Tremplin 3m',17,true,8), --equipes de 2

('f','Pistolet 25m',18,false,10),

('f','Individuel',19,false,17); -- tir à l'arc -- 34
