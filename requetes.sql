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
SELECT nom, pays, "or",ar,br FROM vue_brut
	WHERE epreuve LIKE '%100 metres%'
		OR epreuve LIKE '%200 metres%'
		OR epreuve LIKE '%400 metres%'
			AND sport LIKE '3';
-- 3)
\echo "3) ------------"
SELECT * FROM joueurs WHERE age < 25;
SELECT * FROM Resultats WHERE (
	SELECT * FROM Epreuves WHERE sport = "Handball" AND Sexe = "f";)


-- 4)
\echo "4) ------------"
SELECT nom,"or",ar,br,epreuve,temps FROM vue_brut
	WHERE nom = 'Michael, Phelps';

-- 5)
\echo "5) ------------"
SELECT Sport FROM Epreuve WHERE Collectif = "true";

-- 6)
\echo "6) ------------"
SELECT temps FROM vue_brut
	WHERE epreuve ='8, Marathon, m'
	ORDER BY temps
	LIMIT 1;

-- Exo 2
\echo "DIFFICULTE ٭٭"
-- 1)
\echo "1) ------------"
SELECT AVG(Temps) FROM Resultats WHERE Epreuve.Nom = "200 metres nage libre" GROUP BY Equipe.Pays;

-- 2)
\echo "2) ------------"
SELECT COUNT(ar)+COUNT(br)+COUNT("or"), pays FROM vue_brut GROUP BY pays;
-- 3)
\echo "3) ------------"

-- 4)
\echo "4) ------------"
SELECT DISTINCT nom, "or"
	FROM vue_brut
	WHERE "or" IS NULL;
-- 5)
\echo "5) ------------"

-- 6)
\echo "6) ------------"
SELECT nom FROM vue_brut
	WHERE sport = '3, Athletisme'
	AND epreuve LIKE '%4, 100 metres%'
	AND temps < '00:00:10.000';

-- Exo 3
\echo "DIFFICULTE ٭٭٭"

-- 1)
\echo "1) ------------"

-- 2)
\echo "2) ------------"
SELECT pays FROM vue_brut
	WHERE "or" IS NOT NULL
	OR ar IS NOT NULL
	OR br IS NOT NULL
		GROUP BY pays;
-- 3)
\echo "3) ------------"

-- 4)
\echo "4) ------------"
WITH med_f AS (
        SELECT COUNT(*) 
        FROM resultat JOIN epreuve ON resultat.epreuve = epreuve.id 
        WHERE position BETWEEN 1 and 3 AND sexe = 'f'
), med_h AS (
        SELECT COUNT(*) 
        FROM resultat JOIN epreuve ON resultat.epreuve = epreuve.id 
        WHERE position BETWEEN 1 and 3 AND sexe = 'm'
)
SELECT CAST(med_f.count AS float) / CAST (med_f.count + med_h.count AS FLOAT) * 100 FROM med_f, med_h;

-- 5)
\echo "5) ------------"

-- 6)
\echo "6) ------------"

-- Requête inventé 1
SELECT DISTINCT(nom), sport FROM vue_brut WHERE temps > '00:01:00.000' AND position > 2;
-- Requête inventé 2
SELECT 
-- Requête inventé 3
SELECT DISTINCT(date), DISTINCT(sport) WHERE collectif = 'true' AND ep_sexe = 'f';
--- Tests
\echo "TESTING - TESTING - TESTING - TESTING"
