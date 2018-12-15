INSERT INTO epreuve (sexe,nom,sport,collectif) VALUES
--Pour les requetes necessaires
-- TODO : rajouter un vrai lieu
--Athletisme
('m','100 metres',3,false),
('m','200 metres',3,false),
('m','400 metres',3,false),
('f','100 metres',3,false),
('f','200 metres',3,false),
('f','400 metres',3,false),
('m','110 metres haies',3,false), -- 110m haies
('m','Marathon',3,false),-- Marathon

--Handball
--Nelson
('f','Handball',12,true),
--David
('m','Handball',12,true),

-- Natation
-- Phelps
--Nelson
('m','Relais 4x100 metres nage libre',2,true),
('m','200 metres papillon',2,false),
('m','Relais 4x200 metres nage libre',2,true),
('m','200 metres 4 nages',2,false),
('m','100 metres papillon',2,false),
('m','Relais 4x100 metres 4 nages',2,true),
('f','200 metres nage libre',2,false),
('m','200 metres nage libre',2,false),

--Tous les sports sauf 2 3 et 12
('f','Football',1,true),

('m','Badminton Individuel',4,false),

('m','K-1 200 metres',5,false), -- Canoe

('m','VTT',6,false),

('f','70kg',7,false),

('f','Beach',9,true), --equipes de 2

('f','Rugby 7s',8,true), --equipes a 7!

('m','Water polo',11,true), -- equipes de 7

('m','Individuel',10,false), -- Tennis

('m','Greco-Romain 59kg',13,false),

('m','Dressage Individuel',14,false),

('m','Épée',15,false),

('f','63kg',16,false),

('f','Tremplin 3m',17,true), --equipes de 2

('f','Pistolet 25m',18,false),

('f','Individuel',19,false); -- tir à l'arc
