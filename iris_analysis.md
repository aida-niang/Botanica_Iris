---
title: "rapport_botanica_iris"
author: "Aida Niang"
date: "2025-06-10"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.


---
title: "🌸 Botanica Iris – Analyse Exploratoire"
author: "Aida BenHamath NIANG"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE, warning = FALSE, message = FALSE)
```

# 🌼 Étape 1 – Exploration et Préparation des Données  
**Objectif : Comprendre la structure et identifier les premières tendances.**  
🔹 Charger et observer le dataset IRIS  
🔹 Analyser les types de variables et leurs distributions  
🔹 Détecter des valeurs manquantes

## 📥 Chargement du dataset

```{r}
data(iris)
```

## 👀 Aperçu des données

```{r}
head(iris)       # Aperçu des premières lignes
str(iris)        # Structure des données
summary(iris)    # Statistiques globales
```

## 🔎 Colonnes et espèces uniques

```{r}
names(iris)
unique(iris$Species)
```

## 🧼 Vérification des valeurs manquantes

```{r}
any(is.na(iris))  # Doit retourner FALSE si pas de NA
```

---

# 📊 Étape 2 – Statistiques Descriptives et Corrélations  
**Objectif : Décrire les caractéristiques et identifier des relations entre variables.**  
🔹 Moyennes, médianes, écarts-types par espèce  
🔹 Analyse de la corrélation entre variables  
🔹 Heatmap des corrélations

## 📈 Statistiques par espèce

```{r}
library(dplyr)

iris %>%
  group_by(Species) %>%
  summarise(across(where(is.numeric),
                   list(moyenne = mean, mediane = median, ecart_type = sd),
                   .names = "{.col}_{.fn}"))
```

## 🔗 Matrice de corrélation

```{r}
cor_matrix <- cor(iris[, 1:4])
cor_matrix
```

## 🌈 Heatmap de corrélation

```{r}
library(corrplot)

corrplot(cor_matrix, method = "color", type = "upper",
         addCoef.col = "black", tl.col = "black")
```

---

# 📉 Étape 3 – Visualisation et Identification des Tendances  
**Objectif : Communiquer efficacement les résultats via des graphiques.**  
🔹 Histogrammes pour la répartition des valeurs  
🔹 Boxplots pour détecter les outliers  
🔹 Scatter Plot pour visualiser les relations entre variables

## 📊 Histogramme – Longueur des pétales

```{r}
library(ggplot2)

ggplot(iris, aes(x = Petal.Length, fill = Species)) +
  geom_histogram(bins = 20, alpha = 0.6, position = "identity") +
  theme_minimal() +
  labs(title = "Distribution de la longueur des pétales",
       x = "Longueur (cm)", y = "Nombre")
```

## 📦 Boxplot – Longueur des sépales par espèce

```{r}
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  theme_classic() +
  labs(title = "Longueur des sépales selon l'espèce",
       x = "Espèce", y = "Longueur du sépale (cm)")
```

## 🔍 Scatter Plot – Pétales (longueur vs largeur)

```{r}
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 3, alpha = 0.8) +
  theme_minimal() +
  labs(title = "Relation entre longueur et largeur des pétales",
       x = "Longueur du pétale (cm)", y = "Largeur du pétale (cm)")
```

---

# 🧠 Étape 4 – Synthèse et Communication des Résultats  
**Objectif : Présenter une analyse claire et exploitable.**  
🔹 Récapitulatif des observations clés  
🔹 Interprétations et implications  
🔹 Export des résultats

## 📝 Synthèse & Insights

- Les espèces sont globalement bien séparées dans l’espace Petal.Length vs Petal.Width.  
- Setosa est très distincte des autres.  
- Petal.Length et Petal.Width sont très fortement corrélées (r > 0.9).  
- Aucune valeur manquante dans le jeu de données.

## 💬 Interprétation

- Ces tendances permettent d’envisager des modèles de classification.  
- Les variables Petal.Length et Petal.Width sont des bons prédicteurs de l'espèce.

## 💾 Export du dataset nettoyé

```{r}
write.csv(iris, "iris_clean.csv", row.names = FALSE)
```

---

# ✅ Fin du Projet Botanica Iris  
N'oublie pas d'ajouter ce fichier `.Rmd`, les visualisations, un `README.md` et un petit rapport PDF dans ton repo GitHub public `Project_R1_Name`.

