INSERT INTO epreuve (sexe,nom,sport,collectif) VALUES
--Pour les requetes necessaires

--Athletisme
--100m, 200m, 400m athletisme M
('m','100 metres',3,false),
('m','200 metres',3,false),
('m','400 metres',3,false),
--100,200,400 F
('f','100 metres',3,false),
('f','200 metres',3,false),
('f','400 metres',3,false),
-- Marathon
('m','Marathon',3,false),

--Handball
('f','Handball',12,true),
('m','Handball',12,true),

-- Natation
-- Phelps
('m','Relais 4x100 metres nage libre',2,true),
('m','200 metres papillon',2,false),
('m','Relais 4x200 metres nage libre',2,true),
('m','200 metres 4 nages',2,false),
('m','100 metres papillon',2,false),
('m','Relais 4x100 metres 4 nages',2,true),
--Autres
('f','200 metres nage libre',2,false),
('m','200 metres nage libre',2,false),

-- Pour remplir le reste
--Tous les sports sauf 2 3 et 12

('f','Football',1,true),
('m','Badminton Individuel',4,false),
('f','K-1 200 metres',5,false),
('m','BMX',6,false),
('f','70kg',7,false),
('m','Rugby 7s',8,true), --equipes a 7!
('f','Beach',9,true), --equipes de 2
('m','Individuel',10,false),
('f','Water polo',11,true), -- equipes de 7
('m','Greco-Romain 59kg',13,false),
('f','Dressage Individuel',14,false),
('m','Épée',15,false),
('f','63kg',16,false),
('m','Tremplin 3m',17,true), --equipes de 2
('f','Pistolet 25m',18,false),
('m','Individuel',19,false);
