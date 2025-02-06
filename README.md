# Projet d'analyse du prix du carburant dans le département du Nord
![background](https://github.com/user-attachments/assets/09ac6969-8e78-4910-a7cd-1d8fcd8d2f65)

Ressources :
* Données : https://data.economie.gouv.fr/explore/dataset/prix-des-carburants-en-france-flux-instantane-v2/information/
* Lien BigQuery : https://console.cloud.google.com/bigquery?sq=958002423793:9a9dc784e2574adf827e1edab83b712f

Étapes de réalisation:
- Récupération des données sur le site du gouvernement
- Importation du CSV sur Google Sheet et nettoyage des données
- Chargement des données dans BigQuery
- Requêtage des données afin de répondre à ces questions:
  * 1. Afficher toute la table
  * 2. Afficher seulement quelques colonnes de la table
  * 3. Trouver le prix min/max du SP95
  * 4. Afficher les stations essence du département: 59
  * 5. Compter les stations essence du département: 59
  * 6. Afficher les stations essence du département 59 qui ont du SP95
  * 7. Trouver la station la moins chère pour le SP95 du département 59


