-- Requetes

-- Exo 1


-- Exo 2


-- Exo 3

--- Testes

-- Récupère toutes les joueurs ayant eu des médailles
select * from joueurs where (select joueur from natural join EquipesJoueurs , Equipes on EquipesJoueurs.Equipes = Equipe.id where ( select * from resultats where position is 1 OR position is 2 OR position is 3))
