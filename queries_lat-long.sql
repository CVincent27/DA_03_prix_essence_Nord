# Latitude et longitude de mon adresse: 50.616310001638, 3.021993014506
# 1. Adresse complète et distance entre mon adresse

SELECT
  CONCAT(adresse, ' ', code_postal, ' ', ville) as adresse_complete,
  ville,
  ROUND(prix_sp95, 2) as prix_sp95,
  ROUND(ST_DISTANCE(ST_GEOGPOINT(3.021993014506, 50.616310001638), ST_GEOGPOINT(clean_longitude, clean_latitude))/1000, 2) AS distance_kms,
FROM `fr_carburant.fr_carburant`
WHERE code_departement = 59
  AND prix_sp95 IS NOT NULL
ORDER BY distance_kms ASC

/*
SELECT 
  adresse,
  ville,
  ROUND(ST_DISTANCE(ST_GEOGPOINT(3.021993014506, 50.616310001638), ST_GEOGPOINT(clean_longitude, clean_latitude))/1000, 2) AS distance_kms,
  prix_sp95
FROM `fr_carburant.fr_carburant`
WHERE code_departement = 59
  AND prix_sp95 IS NOT NULL
ORDER BY prix_sp95 ASC
*/