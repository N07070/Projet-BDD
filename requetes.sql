-- Requetes

-- Exo 1
\echo "DIFFICULTE ٭"
-- 1)
\echo "1) ------------"
-- Selectionne les joueurs italiens ayant eu une médaille
SELECT id, prenom, nom, sexe, age FROM vue_brut_full WHERE pays = 'ITA' AND position BETWEEN 1 AND 3;

-- 2)
\echo "2) ------------"
SELECT DISTINCT nom, pays, m_or, m_ar,m_br FROM vue_brut
 WHERE epreuve LIKE '%100 metres%'
  OR epreuve LIKE '%200 metres%'
  OR epreuve LIKE '%400 metres%'
   AND sport = '3';

-- 3)
\echo "3) ------------"
SELECT id, prenom, nom, age, pays FROM vue_brut_full WHERE sp_id = 12 AND pays = 'FRA' AND sexe = 'f' AND age < 25;


-- 4)
\echo "4) ------------"
SELECT nom, m_or, m_ar, m_br,epreuve,temps FROM vue_brut
	WHERE nom = 'Michael, Phelps';

-- 5)
\echo "5) ------------"
SELECT DISTINCT Sport.nom, epreuve.nom FROM Epreuve JOIN sport ON sport.id = epreuve.sport WHERE Collectif = true;

-- 6)
\echo "6) ------------"
SELECT temps FROM vue_brut_full
 WHERE ep_id = 8
 ORDER BY temps ASC
 LIMIT 1;

-- Exo 2
\echo "DIFFICULTE ٭٭"
-- 1)
\echo "1) ------------"
SELECT pays, AVG(temps) FROM vue_brut_full WHERE ep_id = 20 GROUP BY pays;
-- 2)
\echo "2) ------------"
WITH propre AS (SELECT DISTINCT resultat, pays, position FROM vue_pays WHERE position BETWEEN 1 AND 3),
        m_or AS (SELECT pays, Count(*) AS "or" FROM propre WHERE position = 1 GROUP BY pays),
        m_ar AS (SELECT pays, Count(*) AS "ar" FROM propre WHERE position = 2 GROUP BY pays),
        m_br AS (SELECT pays, Count(*) AS br FROM propre WHERE position = 3 GROUP BY pays)
SELECT DISTINCT propre.pays, "or", ar, br FROM propre
        LEFT JOIN m_or ON propre.pays = m_or.pays
        LEFT JOIN m_ar ON propre.pays = m_ar.pays
        LEFT JOIN m_br ON propre.pays = m_br.pays;

-- 3)
\echo "3) ------------"

-- 4)
\echo "4) ------------"
SELECT DISTINCT nom, m_or
	FROM vue_brut
	WHERE m_or IS NULL;
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
	WHERE m_or IS NOT NULL
	OR m_ar IS NOT NULL
	OR m_br IS NOT NULL
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
 WITH f AS (SELECT pays, count(*) AS nf FROM joueurs WHERE sexe = 'f' GROUP BY pays),
        h AS (SELECT pays, count(*) AS nh FROM joueurs WHERE sexe = 'm' GROUP BY pays),
        c AS (SELECT f.pays, nf, nh FROM h, f WHERE h.pays = f.pays)
SELECT pays AS pays_avec_parite/*, nf, nm */FROM c WHERE nf = nh;

-- Requête inventé 3
SELECT DISTINCT(date), DISTINCT(sport) WHERE collectif = 'true' AND ep_sexe = 'f';
--- Tests
\echo "TESTING - TESTING - TESTING - TESTING"
