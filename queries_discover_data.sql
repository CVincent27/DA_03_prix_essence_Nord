# 1. Afficher toute la table

/* 
SELECT *
FROM `fr_carburant.fr_carburant`
*/

# 2. Afficher seulement quelques colonnes de la table

/*
SELECT adresse, prix_sp95, ville, code_departement, clean_latitude, clean_longitude
FROM `fr_carburant.fr_carburant`
*/

# 3. Trouver le prix min/max du SP95

/*
SELECT 
  MIN(prix_sp95) as prix_min_sp95, 
  MAX(prix_sp95) as prix_max_sp95
FROM `fr_carburant.fr_carburant`
*/

# 4. Afficher les stations essence du département: 59

/*
SELECT adresse,ville, code_departement
FROM `fr_carburant.fr_carburant`
WHERE code_departement = 59
*/

# 5. Compter les stations essence du département: 59

/*
SELECT COUNT(*) as nbr_stations_59
FROM `fr_carburant.fr_carburant`
WHERE code_departement = 59
*/

# 6. Afficher les stations essence du département 59 qui ont du SP95

/*
SELECT 
  adresse,
  ville,
  code_departement,
  prix_sp95
FROM `fr_carburant.fr_carburant`
WHERE code_departement = 59
  AND prix_sp95 IS NOT NULL
*/

# 7. Trouver la station la moins chère pour le SP95 du département 59

/*
SELECT 
  adresse,
  ville,
  prix_sp95,
  DATE(prix_sp95_maj_le) as maj_prix_sp95
FROM `fr_carburant.fr_carburant`
WHERE code_departement = 59
  AND prix_sp95 IS NOT NULL
ORDER BY prix_sp95 ASC
*/
