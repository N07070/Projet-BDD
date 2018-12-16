--e pour epreuve r pour rencontre
INSERT INTO resultat(epreuve,rencontres,position,temps,points) VALUES

--Athletisme
--F
--100m e 4 r 1
(4,1,1,'00:00:09.789',null),
(4,1,2,'00:00:09.885',null),
(4,1,3,'00:00:10.002',null),
--200m e 5 r 2
(5,2,1,'00:00:20.600',null),
(5,2,2,'00:00:21.140',null),
(5,2,3,'00:00:21.340',null);
--400m e 6 r 3
<<<<<<< HEAD

=======
(6,3,1,'00:00:40.600',null),
(6,3,2,'00:00:41.140',null),
(6,3,3,'00:00:41.340',null),
-- Non gagant
(6,3,4,'00:10:00.000',null), -- Abandon
>>>>>>> 53c7a4aea0f6d5516689cfd824af1c9c3cc323e8
--M
--100m e 1 r 4
(1,4,1,'00:00:08.789',null),
(1,4,2,'00:00:08.885',null),
(1,4,3,'00:00:11.002',null),
--200m e 2 r 5
(2,5,1,'00:00:19.600',null),
(2,5,2,'00:00:20.140',null),
(2,5,3,'00:00:21.740',null),
--400m e 3 r 6
(3,6,1,'00:00:41.600',null),
(3,6,2,'00:00:42.140',null),
(3,6,3,'00:00:43.340',null),

--Marathon e 8 r 7
(8,7,1,'01:10:43.340',null),
(8,7,2,'01:11:43.323',null),
(8,7,2,'01:12:10.340',null),
--110m haies e 7 r 8
(7,8,1,'00:00:10.789',null),
(7,8,2,'00:00:11.389',null),
(7,8,3,'00:00:11.789',null),
--3000m obstacles e 9 r 9
(9,9,1,'00:10:11.789',null),
(9,9,2,'00:10:49.789',null),
(9,9,3,'00:11:17.789',null),
--triple saut e 10 r 10
(10,10,1,null,7),
(10,10,2,null,6),
(10,10,3,null,5),

--hand M e 12
--T1 ANGvPRK r 11
(12,11,1,null,2), -- ANG
(12,11,2,null,1), -- PRK
--T2 ITAvPRK r 12
(12,12,1,null,3), -- PRK
(12,12,2,null,1), -- ITA
--T3 ANGvITA r 13
(12,13,1,null,1),
(12,13,2,null,0),
--hand F e 11
--T1 JPNvUSA r 14
(11,14,1,null,3), -- R38
(11,14,2,null,0),
--T2 FRAvJPN r 15
(11,15,1,null,2),
(11,15,2,null,0),
--T3 FRAvUSA r 16
(11,16,1,null,1),
(11,16,2,null,0),

--Natation
-- Relais  -- Faire un résultat par équipe
--4x100nagelibre e 13 r 17
(13,17,1,'00:02:10.789',null), -- USA
(13,17,2,'00:02:57.789',null), -- PRK
--4x200nl e 15 r 18
(15,18,1,'00:04:10.789',null), -- USA
(15,18,2,'00:04:57.789',null), -- PRK
--4x100m 4nages e 18 r 19
(18,19,1,'00:03:10.789',null), -- USA
(18,19,2,'00:04:57.789',null), -- PRK

--200mpap e 14 r 20
(14,20,1,'00:02:10.789',null),
(14,20,2,'00:02:13.789',null),
(14,20,3,'00:02:15.789',null),
--200m4n e 16 r 21
(16,21,1,'00:02:15.789',null),
(16,21,2,'00:02:20.789',null),
(16,21,3,'00:02:23.789',null),
--100mpap e 17 r 22
(17,22,1,'00:01:23.789',null),
(17,22,2,'00:01:24.789',null),
(17,22,3,'00:01:26.789',null),

--200m nl H e 20
--1/2 r 23
(20,23,1,'00:01:23.789',null),
(20,23,2,'00:01:25.789',null),
(20,23,3,'00:01:27.789',null),
--F r 24
(20,24,1,'00:01:24.789',null),
(20,24,2,'00:01:26.789',null),
(20,24,3,'00:01:29.789',null),

--200m nl F e 19
--1/2 r 25
(20,25,1,'00:01:21.789',null),
(20,25,2,'00:01:22.789',null),
(20,25,3,'00:01:23.789',null),
--F r 26
(20,26,1,'00:01:21.189',null),
(20,26,2,'00:01:21.789',null),
(20,26,3,'00:01:22.389',null),

--Football f e 21
--T1 ITAvGBR r 27
--T2 GERvGBR r 28
--T3 ITAvGER r 29

-- Bad H e 22
--T1 ITAvGER r 30
--T2 GBRvGER r 31
--T3 ITAvGER r 32

-- Canoe e 23 r 33

-- VTT e 24 r 34

-- judo F e 25
--T1 KORvUKR r 35
--T2 KORvBRA r 36
--T3 BRAvUKR r 37

-- beach e 26
--t1 GREvRSA r 38
--t2 GREvANG r 39
--t3 RSAvANG r 40

-- rugby e 27
--t1 POLvGBR r41
--t2 POLvBRA r42
--t3 GBRvBRA r 43

-- waterpolo e 28
--t1 GBRvUSA r 44
--t2 GBRvBRA r 45
--t3 BRAvUSA r 46

-- tennis e 29
--1/2 1 NGRvKOR r 47
--1/2 2 NEDvITA r 48
--F KORvNED r 49
--F 2 NGRvITA r 50

-- lutte e 30
--1/2 1 UKRvSUI r 51
--1/2 2 FRAvITA r 52
--F UKRvFRA r 53
--F 2 ITAvSUI r 54


--equitation e 31 r55

-- escrime e 32 r56

-- halter e 33 r57

--plongeon e 34 r58

-- tir e 35 r59


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

-- arc e 36 r60
(36,60,1,NULL,100),
(36,60,2,NULL,95),
(36,60,3,NULL,92)
