# 🌸 Botanica Iris – Exploratory Data Analysis in R

**Author:** Aida BenHamath Niang  
**Date:** June 2025  
**Project Type:** Data Exploration & Visualization using R

---

## 📌 Project Overview

This project is an exploratory data analysis (EDA) of the classic **Iris dataset**, conducted as part of a data science course. The goal is to extract insights, identify patterns, and prepare the dataset for future modeling or classification tasks.

---

## 🧪 Objectives

1. **Explore** the structure and characteristics of the dataset
2. **Perform** descriptive statistics and correlation analysis
3. **Visualize** relationships between features using advanced plots
4. **Summarize** findings and provide actionable recommendations

---

## 📁 Dataset Description

The dataset includes **150 observations** of **Iris flowers** from three species:
- *Iris setosa*
- *Iris versicolor*
- *Iris virginica*

### Variables:
- `Sepal.Length` (cm)
- `Sepal.Width` (cm)
- `Petal.Length` (cm)
- `Petal.Width` (cm)
- `Species` (categorical)

---

## 📊 Key Steps

### 1. Data Preparation
- Load the dataset using `data(iris)`
- Inspect structure (`str()`), head (`head()`), and summary (`summary()`)
- Check for missing values: ✅ *No missing values detected*

### 2. Descriptive Statistics
- Compute mean, median, and standard deviation by species
- Summarize distributions and identify key differences

### 3. Correlation Analysis
- Calculate correlation matrix
- Generate a **heatmap** using `corrplot`

### 4. Visualization
- **Histograms**: Distribution of petal length by species
- **Boxplots**: Sepal length grouped by species
- **Scatter plots**: Petal Length vs Width with color-coded species

### 5. Interpretation & Recommendations
- Setosa is clearly distinguishable in petal dimensions
- Petal.Length and Petal.Width are highly correlated (r > 0.96)
- Best predictors for classification: **Petal.Length & Petal.Width**

---

## 📁 Files

- `rapport_botanica_iris.Rmd`: Main R Markdown script with code and narrative
- `iris_clean.csv`: Clean version of the dataset
- `slides_google.R`: Summary presentation structure for oral defense (optional)

---

## 📌 Conclusion

This EDA confirms that the Iris dataset is clean, structured, and rich in patterns. Key features such as **Petal.Length** and **Petal.Width** offer strong predictive potential, making this dataset ideal for supervised learning exercises like classification.

---

## 🚀 Next Steps

- Implement classification models (e.g., k-NN, Decision Tree)
- Perform PCA for dimensionality reduction
- Build a simple Shiny app for interactive exploration

---

## 🧠 Skills Applied

- R (tidyverse, ggplot2, dplyr, corrplot)
- Data wrangling & cleaning
- Statistical analysis & visualization
- Data storytelling

---

## 📬 Contact

For questions, feedback, or collaboration opportunities:  
📧 aida.niang@example.com  
🌐 [LinkedIn](https://linkedin.com/in/aida-niang) | [GitHub](https://github.com/aida-ni)
