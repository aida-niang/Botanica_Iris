# analyse_iris.R
# Analyse exploratoire du dataset IRIS avec R

# Chargement des packages nécessaires
library(dplyr)
library(ggplot2)
library(corrplot)

# 1. Chargement et exploration du dataset
data(iris)
head(iris)
str(iris)
summary(iris)
cat("Nombre de valeurs manquantes :", sum(is.na(iris)), "\n")

# 2. Statistiques descriptives par espèce
stats_species <- iris %>%
  group_by(Species) %>%
  summarise(across(where(is.numeric), list(mean = mean, sd = sd), .names = "{col}_{fn}"))
print(stats_species)

# 3. Analyse des corrélations entre variables numériques
cor_matrix <- cor(iris[,1:4])
print(cor_matrix)

# Visualisation de la matrice de corrélation
corrplot(cor_matrix, method = "color", addCoef.col = "black",
         tl.cex=0.8, number.cex=0.7, tl.col="black",
         title = "Heatmap des Corrélations")

# 4. Visualisations

# Histogrammes par espèce
ggplot(iris, aes(x=Sepal.Length, fill=Species)) +
  geom_histogram(bins=20, alpha=0.7, position="identity") +
  theme_minimal() +
  ggtitle("Histogramme de Sepal.Length par espèce")

ggplot(iris, aes(x=Petal.Length, fill=Species)) +
  geom_histogram(bins=20, alpha=0.7, position="identity") +
  theme_minimal() +
  ggtitle("Histogramme de Petal.Length par espèce")

# Boxplots pour détecter outliers et différences
ggplot(iris, aes(x=Species, y=Sepal.Length, fill=Species)) +
  geom_boxplot() +
  theme_classic() +
  ggtitle("Boxplot de Sepal.Length selon l'espèce")

ggplot(iris, aes(x=Species, y=Petal.Width, fill=Species)) +
  geom_boxplot() +
  theme_classic() +
  ggtitle("Boxplot de Petal.Width selon l'espèce")

# Scatter plot Sepal Length vs Sepal Width coloré par espèce
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point(size=3, alpha=0.7) +
  theme_minimal() +
  ggtitle("Scatter Plot : Sepal Length vs Sepal Width")

# 5. Sauvegarde des graphiques au format PNG (exemple)
ggsave("histogram_sepal_length.png")
ggsave("boxplot_sepal_length.png")
ggsave("scatterplot_sepal.png")

# Fin du script

