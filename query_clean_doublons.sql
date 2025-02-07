# Suppression doublons (villes et adresses identiques)

/*
SELECT adresse, ville, prix_sp95
FROM `fr_carburant.fr_carburant`
GROUP BY adresse, ville, prix_sp95
HAVING COUNT(adresse) > 1;
*/

/*
SELECT fr_c.id, fr_c.adresse, fr_c.prix_sp95, fr_c.ville, fr_c.code_departement
FROM `fr_carburant.fr_carburant` fr_c
JOIN (
  SELECT adresse, ville
  FROM `fr_carburant.fr_carburant`
  WHERE prix_sp95 IS NOT NULL
  AND code_departement IN (59, 62)
  GROUP BY adresse, ville
  HAVING COUNT(*) > 1
) fr_c2 ON fr_c.adresse = fr_c2.adresse AND fr_c.ville = fr_c2.ville
WHERE fr_c.prix_sp95 IS NOT NULL
AND fr_c.code_departement IN (59, 62);
*/

# ID à supprimer : 59246005 car le prix semble trop élevé par rapport à la moyenne
/*
DELETE FROM `fr_carburant.fr_carburant`
WHERE `id` = 59246005
*/
