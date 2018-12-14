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
SELECT * FROM joueurs WHERE age < 25;
SELECT * FROM Resultats WHERE (
	SELECT * FROM Epreuves WHERE sport = "Handball" AND Sexe = "f";)


-- 4)
\echo "4) ------------"
SELECT Temps FROM Resultats WHERE Equipe

-- 5)
\echo "5) ------------"
SELECT Sport FROM Epreuve WHERE Collectif = "true";

-- 6)
\echo "6) ------------"
SELECT Temps FROM Resultats WHERE (
	SELECT * FROM Epreuve WHERE (
		SELECT * FROM Sport WHERE Nom = "Marathon")
	)
ORDER BY Temps LIMIT 1;

-- Exo 2
\echo "DIFFICULTE ٭٭"
-- 1)
\echo "1) ------------"
SELECT AVG(Temps) FROM Resultats WHERE Epreuve.Nom = "200 metres nage libre" GROUP BY Equipe.Pays;

-- 2)
\echo "2) ------------"
SELECT COUNT(*) FROM Resultat WHERE Position = 1 OR Position = 2 OR Position = 3 GROUP BY Equipe.Pays;


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
