-- Creer les tables et importes les donneés
\i clear
\echo 'Creation des tables...'
\i create_tables.sql
\echo 'Importation des données...'
\i import_data.sql
\echo 'Execution des requetes...'
\i requetes.sql
