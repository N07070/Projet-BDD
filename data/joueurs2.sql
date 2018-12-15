INSERT INTO joueurs (prenom,nom,sexe,age,pays) VALUES

--Athletisme
--F
--100m autour de 10 secs
('Rhona', 'Truss','f',23,'ITA'), --moins de 10s
('Yado', 'Meluch','f',25,'NGR'),
('Laurice','Wheatley','f',34,'JPN'), --plus de 10s
--200m
('Beverly','Lindell','f',25,'BRA'),
('Vickey','Batterton','f',27,'ITA'),
('Harmony','Wagener','f',30,'SUI'),
--400m
('Elsa','McFaceFacey','f',23,'SUI'),
('Liana','Lucia','f',32,'USA'),
('Padmé','Debussy','f',24,'ITA'),
--M
--100m autour de 10secs
('Wendel','Leflore','m',26,'ITA'),
('Tom','Ellington','m',28,'NGR'),
('Brian','Waltman','m',19,'JPN'),--plus de 10s
--200m
('Jean','Luo Chang','m',24,'GBR'),
('Reyes','Kingsley','m',18,'USA'),
('Jean','Nader','m',34,'BRA'),
--400m
('Phillipe','El-Machin','m',23,'POL');
--Plus simple avec pays d'abord
INSERT INTO joueurs (pays,sexe,prenom,nom,age) VALUES
('NED','m','Juy','Al',27),
('UKR','m','Maxime','Xi',18),
-- Marathon
('ITA','m','Dani','Suitt',17),
('RSA','m','Max','Lemaitre',34),
('GRE','m','Macao','Layton',22),

--Athlete 7 jours consecutifs meme epreuve avec au moins une rencontre finale 110m haies M

('ITA','m','Deniri','Deniro',28),

-- Hand M 7 par equipes
('ANG','m','Tabatha','Layton',23),
('ANG','m','Mallie','Moultrie',24),
('ANG','m','Paige','Matheson',29),
('ANG','m','Carry','Hudak',31),
('ANG','m','Lucas','Hoeft',26),
('ANG','m','Lorean','Mercier',18),
('ANG','m','Sana','Hansen',21),

('PRK','m','Kyong','Standifer',32),
('PRK','m','Dorene','Brunmsey',25),
('PRK','m','Palmer','Houchens',23),
('PRK','m','Asa','Alvidrez',27),
('PRK','m','Craig','Paschke',29),
('PRK','m','Ronnie','Tatum',27),
('PRK','m','Tommy','Austria',22),

('ITA','m','Billy','Nakamoto',24),
('ITA','m','Logan','Blakeman',36),
('ITA','m','Wally','Weigle',28),
('ITA','m','Mauro','Hileman',31),
('ITA','m','Nathan','Sedlak',17),
('ITA','m','Esteban','Harmer',20),
('ITA','m','Timothy','Burkart',21),

-- Hand Femmes
('JPN','f','Elna','Kubacki',23),
('JPN','f','Arlean','Burling',26),
('JPN','f','Ettie','Slawson',28),
('JPN','f','Harriett','Lovato',24),
('JPN','f','Eladia','Antrim',31),
('JPN','f','Brandi','Nesby',21),
('JPN','f','Karey','Timmins',20),

('USA','f','Aja','Coble',20),
('USA','f','Kemberly','Mccullar',31),
('USA','f','Dione','Richburg',19),
('USA','f','Oneida','Friar',18),
('USA','f','Cher','Widell',22),
('USA','f','Conchita','Dozal',24),
('USA','f','Larisa','Lighty',26),

('FRA','f','Larissa','See',21),
('FRA','f','Clarice','Canda',25),
('FRA','f','Etta','Giberson',18),
('FRA','f','Felicidad','Benner',20),
('FRA','f','Matha','Portman',22),
('FRA','f','Helene','Mast',27),
('FRA','f','Florence','Arp',28),

-- NAtation
--Relais
('USA','m','Michael','Phelps',31),
('USA','m','Nathan','Fake',28),
('USA','m','Bobby','Fischer',25),
('USA','m','Leonel','Diva',32),

('PRK','m','Hikura','Nakamura',34),
('PRK','m','John','Son',31),
('PRK','m','Kim','Irun',23),
('PRK','m','Killian','Deark',21),

('POL','m','Viroslav','Polenski',23),
('POL','m','Alexei','Tarpov',27),
('POL','m','Keun','Relatik',31),
('POL','m','Bob','Thali',30),

-- Individuel 200mpap 200m 4 nages 100m pap le PRK devra faire le pire temps au moins une fois
--Phelps
('RSA','m','Golano','Pirret',24),
('ANG','m','Patrick','Polits','34'),
('SUI','m','Thomas','Jealis',17),
('GBR','m','James','Tabroon',20),
('PRK','m','Terry','Wallert',35),
('GRE','m','Colae','Palapodoulos',23),
--200m nage libre F/M
('GER','f','Klara','Schalem',37),
('FRA','f','Julie','Fachet',24),
('POL','f','Larry','Piage',26),
('NED','f','Rielen','Thopmer',20),
('ANG','f','Marler','Talpeq',27),
('JPN','f','Hichii','Delosa',21),
--M
('GER','m','Rick','Perti',23),
('POL','m','Timi','Partrige',26),
('NED','m','Quill','Tarp',21),

--Football JPN,FRA,GER   F
('ITA','f','Renty','Balbao',25),
('ITA','f','Angeline','Meyers',23),
('ITA','f','Tonja','Eakin',17),
('ITA','f','Wenona','Guttierrez',21),
('ITA','f','Dara','Bachelder',20),
('ITA','f','Elizbeth','Harnish',24),
('ITA','f','Dalene','Screws',22),
('ITA','f','Lilia','Hulse',24),
('ITA','f','Jannette','Zufelt',25),
('ITA','f','Jenuse','Armstrong',21),
('ITA','f','Jacklyn','Munson',18),

('GBR','f','Betadina','Romps',20),
('GBR','f','Toma','Bjaneti',22),
('GBR','f','Sophie','Hateps',35),
('GBR','f','Trisha','Takananoa',28),
('GBR','f','Carolina','Dempsey',27),
('GBR','f','Danyell','Wick',18),
('GBR','f','Noemi','Lagunas',24),
('GBR','f','Britta','Malin',31),
('GBR','f','Hedwig','Hargrove',21),
('GBR','f','Khadijah','Filip',17),
('GBR','f','Donette','Ziemer',26),

('GER','f','Shirlene','Birdsall',20),
('GER','f','Terese','Shrout',32),
('GER','f','Fonda','Moman',30),
('GER','f','Kathaleen','Coolbaugh',31),
('GER','f','Lashell','Gover',28),
('GER','f','Loreta','Ontiveros',24),
('GER','f','Voncile','Ramsden',21),
('GER','f','Justine','Savage',23),
('GER','f','Vera','Prigge',25),
('GER','f','Lyla','Hoggan',20),
('GER','f','Latrice','Haddock',17),

-- Badminton indiv M

('JPN','m','Tom','Mccullum',21),
('KOR','m','Johann','Schmidt',24),
('RSA','m','Brett','Kanava',23),

-- K1 200m M

('POL','m','Mikhail','Tal',20),
('PRK','m','Thomas','Tanky',26),
('RSA','m','Simon','Pigger',34),

-- BMX M

('UKR','m','Geraldo','Bonnet',21),
('SUI','m','Fabian','Headen',22),
('GRE','m','Ezequiel','Urquhart','22'),

-- Judo f 70kg

('KOR','f','Franziska','Karls',22),
('UKR','f','Kendri','Nails',22),
('BRA','f','Kevea','Kulinski',22),

-- BeachVolley equipes de 2 F

('GRE','f','Roxana','Deniz',22),
('GRE','f','Xenia','Berends',22),

('RSA','f','Lavonda','Danko',23),
('RSA','f','Linda','Filer',18),

('ANG','f','Celina','Balas',19),
('ANG','f','Jeturaj','Gouin',29),

--Autres equipes
--Rugby equipes a 7 f

('POL','f','Leonore','Mcarthur',25),
('POL','f','Sheron','Kirby',24),
('POL','f','Helene','Gartrell',21),
('POL','f','Ellamae','Judge',24),
('POL','f','Ignacia','Goddard',26),
('POL','f','Margo','Verhoeven',27),
('POL','f','Shellie','Heft',19),

('GBR','f','Portia','Denicola',20),
('GBR','f','Beatris','Huskins',24),
('GBR','f','Vi','Digreforio',20),
('GBR','f','Velva','Petermann',30),
('GBR','f','Ashlyn','Gaughan',34),
('GBR','f','Marlo','Bongiovanni',23),
('GBR','f','Kelsey','Schuld',19),

('BRA','f','Waneta','Flournoy',17),
('BRA','f','Teriie','Fritze',23),
('BRA','f','Roxann','Gilpatrick',20),
('BRA','f','Charlott','Aybar',22),
('BRA','f','Leanne','Kimbell',21),
('BRA','f','Adrien','Black',22),
('BRA','f','Brenna','McFarland',36),

--waterpolo 7 M

('GBR','m','Robin','Montoya',23),
('GBR','m','Darren','Hoffmann',22),
('GBR','m','Rueben','Greenpsan',27),
('GBR','m','Clemente','Wageman',41),
('GBR','m','Blake','Yerian',40),
('GBR','m','Lyndon','Faireu',38),
('GBR','m','Chas','Bufler',30),

('USA','m','Roger','Leiker',31),
('USA','m','Gene','Mcmurry',32),
('USA','m','Cesar','Pardini',27),
('USA','m','Dwain','Eptin',21),
('USA','m','Joey','Mango',20),
('USA','m','Denver','Polley',19),
('USA','m','Jay','Elson',20),

('BRA','m','Ivory','Ingwersen',30),
('BRA','m','Ruben','Lawry',31),
('BRA','m','Marcellus','Swinehart',34),
('BRA','m','Dewey','Catalano',16),
('BRA','m','Ernesto','Ester',25),
('BRA','m','Daron','Adames',27),
('BRA','m','Mauricio','Warfel',33),

-- tennis M

('NGR','m','Monroe','Woltz',32),
('KOR','m','Tracy','Bascombe',20),
('NED','m','Jacques','Batts',29),

-- lutte grecoromain M

('UKR','m','Man','Loring',27),
('SUI','m','Cyril','Kolman',26),
('FRA','m','Norberto','Dore',24),

-- equitation M

('FRA','m','Anderson','Meiser',30),
('GRE','m','Edwin','Mcnett',35),
('NGR','m','Sammy','Spore',22),

-- epee M

('KOR','m','Johnathon','Saulsberry',32),
('NED','m','Darin','Gove',23),
('UKR','m','Gavin','Sipe',22),

-- halter F

('FRA','f','Margareta','Yaple',21),
('NGR','f','Brandie','Filson',25),
('KOR','f','Makeda','Cauez',33),

-- plonge F

('FRA','f','Kristle','Zoll',31),
('UKR','f','Sheena','Wile',28),
('NED','f','Marth','Plunkett',27),

-- tir F

('SUI','f','Lynette','Sayer',22),
('NGR','f','Spring','Huddle',24),
('KOR','f','Alfreda','Vila',29),

-- tir a larc F

('FRA','f','Shenika','Alvidrez',32),
('SUI','f','Vivienne','Dudding',26),
('KOR','f','Onie','Hollmann',22);
