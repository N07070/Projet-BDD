#BD3, Nid d'espions
---
> Rapport sur le projet de base de données du cours de BD3

_David Bauer_ [david.bauer@etu.univ-paris-diderot.fr](mailto:david.bauer@etu.univ-paris-diderot.fr)  
_Nelson Perdriau_ [nelson.perdriau@etu.univ-paris-diderot.fr](mailto:nelson.perdriau@etu.univ-paris-diderot.fr)


## Préface

Le projet de base de donnée nous a avant tout parut extrêment complexe. La mise en place du projet ainsi que la réflexion sur la conception à ainsi commencé peu de temps après l'annonce du sujet. Même si il aurait été préférable d'avoir le sujet dès le début de l'année, nous avons pris les devant.

Pour nous permettre de travailler de façon collaborative, nous avons créer un projet sur GitHub, que nous avons volontairement laissé en accès libre. Ce choix peut paraître étrange, car il parait rendre extrêment facile le plagiat, mais il permet surtout d'aider nos camarades ayant des difficultés, tout en leur laissant la possibilité de se faire punir pour plagiat si l'envie leur en prennait. En effet, tout nos commits sont en ligne, et bonne chance pour faire des faux commits.

La conception de la structure de la base de donnée nous a demandé une journée, à l'issue de laquelle nous avons créer le schéma SQL qui sera présenté dans la suite du rapport. La structure subira par la suite de nombreux changements.

Ensuite, la partie la plus longue aura été d'entrer les données dans la base. Cette partie nous as confut, car à part nous faire mal aux doigts nous n'avons rien appris de particulier. Nous avons passé de très longues heures à écumer Wikipédia et à inventer des noms de joueurs, temps que nous aurions pu passer à affiner la structure de nos tables ou proposer des solutions plus élégantes.

Par rapport aux données sur lesquels nous avons travaillé, nous avions tout d'abord pensé importer des fichiers CSV trouvé sur le web contenant toutes les informations sur les jeux olympiques de Rio. Mais le temps qu'il nous aurait fallut pour adapter la structure des dits fichiers à notre base de donnée aurait été plus long que d'inventer une bonne parties des joueurs, des temps, des rencontres. Nous avons conservé la structure du déroulement des jeux olympiques et des sports, que nous avons eu en grande partie sur Wikipédia. Nous en avons d'ailleur profité pour contribuer aux pages consultées et ajouter des informations aux articles de l'encyclopédie libre.

Nous avons essaye de faire correspondre les "statistiques" à celles des jeux olympiques, l'age moyen, mais aussi essayé de garder une paritée h/f et un nombre d'athletes par pays à peu près égale.

Nous n'avons évidemment pas oublié les quelques données nécessaires pour les réponses aux questions qui demandaient des informations précises, comme celle sur Michael Phelps.

La table rencontres permet d'avoir les différentes manches d'une même épreuve, et en utilisant un NULL on peut signifier que c'est le résultat final. Permettra de facilement trouver les résultats finaux ! Nous n'avons toutefois pas proceder ainsi, car il semblait plus simple de simplement différencier les finales des autres résultats, à travers le nombre de rencontres.

Nous n'avons pas jugé utile de nommer nos contraintes, toutes celles presentes dans les fichiers sql sont nécessaires et ne devraient pas être modifiés quand la base de donnée à été créée.

Les réponses aux questions sont dans le fichier `requetes.sql`, qui est lui-même appelé par `run.sql` qui se charge de "nettoyer" la base de donnée, importer les données, et enfin éxecuter les requêtes.

Pour nous permettre de travailler sur la même base de donnée, nous avons mit en route un serveur avec pSQL chez nous, sur lequel nous avons travailler.

## Sommaire

* Structure de la base de donnée
	* Schéma
	* Commentaire sur la conception
* Réponses aux questions
	* Questions obligatoires
	* Questions facultatives
	* Questions réalisées à notre initiatives
	* Questions sur l'organisation et la prévision
* Commentaire sur les questions et les réponses apportées
* Conclusion


## Structure de la base de donnée

### Schéma SQL

Pour modéliser ce schéma, nous avons eu recourt à un outil en ligne qui nous permet de creer de façon visuelle la structure de la base de donnée. Une fois que le schéma nous semblait correspondre à ce qui nous était demandé, nous avons écrit à la main les requêtes SQL permettant de créer les tables dans le serveur pSQL.

![schema_sql.png](https://framapic.org/eZakGxGZRVVc/9DeBuT31J8PH.png)


* Lexique
	* *Jaune* : INT
	* *Rouge* : TEXT
	* *Vert* : TEMPS


### Commentaire sur le conception

Nous avons tout d'abord réfléchit en fonction des données que nous devions rentrer dans la base de donnée. C'était la première étape de notre travail. Toutefois, au fur et à mesure du remplissage de la base, nous nous sommes rendu compte qu'il y avait des complexité par rapport à la façon dont nous pensions écrire nos requêtes que nous n'avions pas anticipé. Cela nous as conduit à réécrire plusieurs fois la structure, et donc à devoir aussi modifier la façon dont nous avions structuré les données.

La base de donnée se centre principalement sur la table `Résultat`, qui dépend d'autres tables dont le rôle est d'affiner les informations. Nous avons aussi eu recourt à des jointures et à des requêtes imbriqué.

Pour faciliter énormement les résultats nous avons aussi eu recourt à la création de `views`. Elles sont beaucoup utilisé dans la création des requêtes.

Les données présentes dans la tables sont volontairement incomplète et ne reflètent pas les véritables rencontres ayant eu lieu lors des JOs.

Nous avons choisit de proceder ainsi pour nous permettre de nous concentrer sur les requêtes que l'on nous demande de creer, car sinon nous aurions passer près du triple du temps sur le remplissage de la base de donnée, ce qui n'est pas passionnant.

## Réponses aux questions

### Questions obligatoires

Nous reproduisons ici les réponses aux questions sous la forme de code SQL, avec nos commentaires en dessous de chacune des requêtes.


#### Difficulté *
* La liste des athlètes italiens ayant obtenu une médaille

```
-- Selectionne les joueurs italiens ayant eu une médaille
SELECT * FROM joueurs WHERE ( SELECT * FROM EquipesJoueurs WHERE
	-- Selection toutes les équipes qui ont eu une médaille
	(SELECT Equipes FROM resultats where position = 1 OR position = 2 OR position = 3
		-- Selectionne les équipes italiennes
		AND WHERE Equipes.pays = 'ITA'))
-- 2)
```

	Cette première requête n'a pas posé de grandes difficultés, mais nous a permis de mettre notre base de donnée à l'épreuve du feu, et de valider en partie notre modèle.

<!-- Finir les questions -->

```
SELECT nom, pays, m_or, m_ar,m_br FROM vue_brut
	WHERE epreuve LIKE '%100 metres%'
		OR epreuve LIKE '%200 metres%'
		OR epreuve LIKE '%400 metres%'
			AND sport LIKE '3';
```

```
SELECT * FROM joueurs WHERE age < 25;
SELECT * FROM Resultats WHERE (
	SELECT * FROM Epreuves WHERE sport = "Handball" AND Sexe = "f";)
```

```
SELECT nom, m_or, m_ar, m_br,epreuve,temps FROM vue_brut
	WHERE nom = 'Michael, Phelps';

```

```
SELECT Sport FROM Epreuve WHERE Collectif = "true";

```

```
SELECT temps FROM vue_brut
	WHERE epreuve ='8, Marathon, m'
	ORDER BY temps
	LIMIT 1;
```

#### Difficulté **

```
SELECT AVG(Temps) FROM Resultats WHERE Epreuve.Nom = "200 metres nage libre" GROUP BY Equipe.Pays;

```


```
SELECT COUNT(m_ar)+COUNT(m_br)+COUNT(M_or), pays FROM vue_brut GROUP BY pays;

```

```
SELECT DISTINCT nom, m_or
	FROM vue_brut
	WHERE m_or IS NULL;
```

```
SELECT nom FROM vue_brut
	WHERE sport = '3, Athletisme'
	AND epreuve LIKE '%4, 100 metres%'
	AND temps < '00:00:10.000';
```

### Difficulté \*\*\*

```
SELECT pays FROM vue_brut
	WHERE m_or IS NOT NULL
	OR m_ar IS NOT NULL
	OR m_br IS NOT NULL
		GROUP BY pays;
```

```
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
```

### Questions réalisé à notre initiative

Pour la question 3, nous avions 3 requêtes à inventer.

* Tout les joueurs qui ont mit plus d'une minute à finir et qui sont médaille d'or.

```
SELECT DISTINCT(nom), sport FROM vue_brut WHERE temps > '00:01:00.000' AND position > 2;
```eZakGxGZRVVc

* Les pays ayant la parité homme/femme.

```
WITH f AS (SELECT pays, count(*) AS nf FROM joueurs WHERE sexe = 'f' GROUP BY pays),
	   h AS (SELECT pays, count(*) AS nh FROM joueurs WHERE sexe = 'm' GROUP BY pays),
	   c AS (SELECT f.pays, nf, nh FROM h, f WHERE h.pays = f.pays)
SELECT pays AS pays_avec_parite/*, nf, nm */FROM c WHERE nf = nh;
```

* Les épreuves ayant eu lieu à la même date mais n'étant que des sport collectifs féminins.

```
SELECT DISTINCT(date), DISTINCT(sport) WHERE collectif = 'true' AND ep_sexe = 'f';
```

### Questions sur l'organisation et la prévision

Pour cette question, nous avons modifié notre base de donnée au niveau de `Épreuve` pour y ajouter le `lieu` dans lequel l'épreuve se déroule. Nous avons également créer un table `Lieu` qui contient les différents lieu qui sont référencés par `Épreuve`.

La modification de épreuve nous permet de récuprer directement le jour, et donc d'obtenir, par exemple, le nombre de joueurs ( participant à cette épreuve ) dans chaque lieu, pour chaque jour.

Cela nous permet de faire un indice qui indique le nombre de joueurs par rapport au nombre d'épreuves dans le lieu, et donc d'ajuster le nombre de volontaires nécessaires pour chaque jour.

```
Indice = ( Nombre Joueurs / Nombre Épreuves )
```

Cela n'empêchera pas les JO de Paris d'être extrêment compliqués à gérer.

## Commentaire sur les questions et les réponses apportées

La plupart de nos réponses ont été écrite grâce à la vue vue_brut, qui permet donc d'avoir une couche d'abstraction sur la base de donnée. Ce modèle permet de bien séparer les données d'un côté, mais d'avoir un accès plus simple d'autre part.

## Conclusion

Lors de ce projet, nous avons eu des difficulté dans la conception des tables, car c'était quelque chose de relativement nouveau pour nous, et que nous n'avions pas approfondit plus que ça en cours. Toutefois, nous avons réussit à aboutir à une conception qui est simple à utiliser, et permet de répondre aux questions. Elle est également facilement extensible, par exemple en rajoutant des données dans les sports, ou dans les rencontres.

La plus grosse difficulté à été de remplir les tables. C'était un travail long, peu motivant, sans réelle possibilité d'apprendre. Nous avions l'impression d'être des machines, à écumer le web pour trouver des informations des fois très abstraites.

Les requêtes ont été réalisée dans un temps moindre, et certaines ne sont pas du tout élégantes. Toutefois, nous les avons gardées en tête tout au long de la conception de notre base de donnée, dans le sens où nous avons conçu les tables en fonction des requêtes qui allaient y être faites. Encore une fois, ce n'est pas la meilleur façon de proceder, mais c'était un choix par défault.
