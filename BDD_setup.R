# Installation du package -------------------------------------------------

install.packages("RSQLite")


# Création de la BDD ------------------------------------------------------

library(RSQLite)

# Création d'une connexion à une base de données SQLite (dans un fichier)
con <- dbConnect(SQLite(), dbname = "ma_bdd.sqlite")


# Ajout de table à la BDD -------------------------------------------------

# Créer une table
dbWriteTable(con, "ma_table", data.frame(
  ID = c(1, 2, 3),
  Nom = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 28)
))




# Opérations sur BDD ------------------------------------------------------

# Exécuter une requête SQL
result <- dbGetQuery(con, "SELECT * FROM ma_table")

# Afficher les résultats
print(result)

# Fermer la connexion à la base de données
dbDisconnect(con)

