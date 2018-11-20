-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Joueurs'
-- 
-- ---

DROP TABLE IF EXISTS `Joueurs`;
		
CREATE TABLE `Joueurs` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Epreuve` INTEGER NOT NULL DEFAULT NULL,
  `Nom` VARCHAR NULL DEFAULT NULL,
  `Prenom` VARCHAR NULL DEFAULT NULL,
  `Age` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Rencontres'
-- 
-- ---

DROP TABLE IF EXISTS `Rencontres`;
		
CREATE TABLE `Rencontres` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Equipe'
-- 
-- ---

DROP TABLE IF EXISTS `Equipe`;
		
CREATE TABLE `Equipe` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Pays` VARCHAR NULL DEFAULT NULL COMMENT 'par exemple FRA',
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Sport'
-- 
-- ---

DROP TABLE IF EXISTS `Sport`;
		
CREATE TABLE `Sport` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Nom` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Epreuve'
-- 
-- ---

DROP TABLE IF EXISTS `Epreuve`;
		
CREATE TABLE `Epreuve` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Sexe` CHAR NULL DEFAULT NULL,
  `Nom` VARCHAR NULL DEFAULT NULL,
  `Lieu` VARCHAR NULL DEFAULT NULL,
  `Sport` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Résultats'
-- 
-- ---

DROP TABLE IF EXISTS `Résultats`;
		
CREATE TABLE `Résultats` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Equipes` INTEGER NULL DEFAULT NULL,
  `Epreuves` INTEGER NULL DEFAULT NULL,
  `Rencontre` INTEGER NULL DEFAULT NULL COMMENT 'NULL si c''est le résultat final et pas juste une rencontre',
  `Position` INTEGER NULL DEFAULT NULL,
  `Temps` TIME NULL DEFAULT NULL,
  `Points` DECIMAL NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'EquipesJoueurs'
-- 
-- ---

DROP TABLE IF EXISTS `EquipesJoueurs`;
		
CREATE TABLE `EquipesJoueurs` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Joueur` INTEGER NULL DEFAULT NULL,
  `Equipe` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Joueurs` ADD FOREIGN KEY (Epreuve) REFERENCES `Epreuve` (`id`);
ALTER TABLE `Epreuve` ADD FOREIGN KEY (Sport) REFERENCES `Sport` (`id`);
ALTER TABLE `Résultats` ADD FOREIGN KEY (Equipes) REFERENCES `Equipe` (`id`);
ALTER TABLE `Résultats` ADD FOREIGN KEY (Epreuves) REFERENCES `Epreuve` (`id`);
ALTER TABLE `Résultats` ADD FOREIGN KEY (Rencontre) REFERENCES `Rencontres` (`id`);
ALTER TABLE `EquipesJoueurs` ADD FOREIGN KEY (Joueur) REFERENCES `Joueurs` (`id`);
ALTER TABLE `EquipesJoueurs` ADD FOREIGN KEY (Equipe) REFERENCES `Equipe` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Joueurs` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Rencontres` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Equipe` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Sport` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Epreuve` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Résultats` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `EquipesJoueurs` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Joueurs` (`id`,`Epreuve`,`Nom`,`Prenom`,`Age`) VALUES
-- ('','','','','');
-- INSERT INTO `Rencontres` (`id`,`Date`) VALUES
-- ('','');
-- INSERT INTO `Equipe` (`id`,`Pays`) VALUES
-- ('','');
-- INSERT INTO `Sport` (`id`,`Nom`) VALUES
-- ('','');
-- INSERT INTO `Epreuve` (`id`,`Sexe`,`Nom`,`Lieu`,`Sport`) VALUES
-- ('','','','','');
-- INSERT INTO `Résultats` (`id`,`Equipes`,`Epreuves`,`Rencontre`,`Position`,`Temps`,`Points`) VALUES
-- ('','','','','','','');
-- INSERT INTO `EquipesJoueurs` (`id`,`Joueur`,`Equipe`) VALUES
-- ('','','');
