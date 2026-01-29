# ======================================================================
# TITRE : EXERCICE 1 : Calculs et Variables
# AUTEUR : Jasmin MICHEL
# DATE : 2026-01-26
# DESCRIPTION : Manipuler les variables et effectuer des calculs de base
# =======================================================================

# get the current working directory (folder) with this command:

getwd()

#[1] "C:/Users/GIPAD/Documents"

# set a new folder:

setwd("C:/Users/GIPAD/Documents/R_Workspace")
getwd()

#[1] "C:/Users/GIPAD/Documents/R_Workspace"

# Création d’une variable prix avec la valeur 100 

prix <- 100

# Création d'une variable quantité avec la valeur 5

quantite <- 5


# Calculer le total (prix x quantite)

total<-prix*quantite

# Appliquer une remise de 10% sur le total

remise=total*0.10

#Calculer la taxe (15% du total après remise)

taxe<-(total-remise)*0.15

#Calculer et afficher le prix final

prix_final<-(total-remise)+taxe
print(prix_final)

#Comment verifier le type de chaque variable ?

class(prix)
class(quantite)
class(total)
class(remise)
class(prix_final)

# Que se passe-t-il si on divise par zero ?
# [1] Inf



# ======================================================================
# TITRE : EXERCICE 2 : Analyse de Température
# AUTEUR : Jasmin MICHEL
# DATE : 2026-01-27
# DESCRIPTION : Créer et manipuler des vecteurs, effectuer des calculs statistiques
# ======================================================================


# Créer un vecteur temperature

temperature <- c(22,24,19,25,23,26,21)

# Calculer la temperature moyenne

mean(temperature)
min(temperature)
max(temperature)

# Créer un nouveau vecteur avec uniquement les temperatures > 23C 

nouveau_vecteur <- temperature[temperature>23]

#Convertissez toutes les temperature en Fahrenheit

temperature <- (temperature * 9/5) + 32

#Nommez les éléments du vecteur (Lundi, Mardi, etc)

names(temperature) <- c("Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche")



# ======================================================================
# TITRE : EXERCICE 3 : Base de Données Etudiants
# AUTEUR : Jasmin MICHEL
# DATE : 2026-01-27
# DESCRIPTION : Créer et manipuler un data frame, effectuer des analyses
# ======================================================================

# Créer un data frame etudiants avec les informations suivantes : 

etudiants <- data.frame(
  Nom = c("Alice", "Bob", "Charlie", "Diana"),
  'Note Maths' = c(85, 90, 78, 95),
  'Note Info' = c(88, 85, 92, 90),
  Present = c(TRUE, TRUE, FALSE, TRUE)
)

# Afficher le dataframe

etudiants

# Ajouter une colonne Moyenne (Moyenne des deux notes)

etudiants$Moyenne <- (etudiants$Note.Maths + etudiants$Note.Info) / 2

# Afficher le dataframe à nouveau

etudiants 

# Trouver l'étudiant avec la meilleure Moyenne

etudiants[which.max(etudiants$Moyenne), c("Nom", "Moyenne")]

# Filtrer Uniquement les étudiants Present

etudiants[etudiants$Present==TRUE,c("Nom", "Present")]

# Calculer la moyenne de classe en maths

mean(etudiants$Note.Maths)

# Ajouter une colonne mention (>=90: "Excellent", >=80: "Bien", sinon: "Passable")

etudiants$Mention <- ifelse(
  etudiants$Moyenne >= 90, "Excellent",
  ifelse(etudiants$Moyenne >= 80, "Bien", "Passable")
) 

# Afficher le dataframe

etudiants 

