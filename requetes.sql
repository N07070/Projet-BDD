-- Requetes

-- Exo 1
\echo "DIFFICULTE ٭"
-- 1)
\echo "1) ------------"
-- Selectionne les joueurs italiens ayant eu une médaille
SELECT * FROM joueurs WHERE ( SELECT * FROM EquipesJoueurs WHERE
	-- Selection toutes les équipes qui ont eu une médaille
	(SELECT Equipes FROM resultats where position = 1 OR position = 2 OR position = 3
		-- Selectionne les équipes italiennes
		AND WHERE Equipes.pays = 'ITA'))
-- 2)
\echo "2) ------------"
CREATE VIEW v(Nom, Pays) AS SELECT Nom, Equipe.Pays FROM EquipesJoueurs WHERE Resultats.Equipes = EquipeJoueurs.id AND SELECT Pays FROM Equipes WHERE
	-- Selectionne tout les resultats du 100, 200 et 400m où y'a eu une médaille
	( SELECT * FROM resultats WHERE position = 1 OR position = 2 OR position = 3 AND Resultats.Epreuves.nom = "100 metres" OR Resultats.Epreuves.nom = "200 metres" OR Resultats.Epreuves.nom = "400 metres" )

-- 3)
\echo "3) ------------"

-- 4)
\echo "4) ------------"

-- 5)
\echo "5) ------------"

-- 6)
\echo "6) ------------"

-- Exo 2
\echo "DIFFICULTE ٭٭"
-- 1)
\echo "1) ------------"

-- 2)
\echo "2) ------------"

-- 3)
\echo "3) ------------"

-- 4)
\echo "4) ------------"

-- 5)
\echo "5) ------------"

-- 6)
\echo "6) ------------"

-- Exo 3
\echo "DIFFICULTE ٭٭٭"

-- 1)
\echo "1) ------------"

-- 2)
\echo "2) ------------"

-- 3)
\echo "3) ------------"

-- 4)
\echo "4) ------------"

-- 5)
\echo "5) ------------"

-- 6)
\echo "6) ------------"

--- Tests
\echo "TESTING - TESTING - TESTING - TESTING"
