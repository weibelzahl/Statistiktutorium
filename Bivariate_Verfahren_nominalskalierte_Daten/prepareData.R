# original data: https://www.kaggle.com/datasets/rxnach/student-stress-factors-a-comprehensive-analysis/data
# data set was modified for educational purposes, 
# e.g., selected and translated variables, created factors, set labels
# This script was used to prepare the data, it is not part of the lesson

# Datenvorbereitung
library(readr)
library(dplyr)
daten <- read_csv("Bivariate_Verfahren/StressLevelDataset.csv")
daten <- daten[,c(1,2,3,4,5,7,13)]
str(daten)
daten %>%
  mutate(angst = anxiety_level, 
         selbstwert = self_esteem, 
         vorerkrankung_psy = factor(mental_health_history, 
                                       levels = 0:1, 
                                       labels = c("nein", "ja")),
         kopfschmerz = factor(headache, levels = 1:5,
                              labels = c("nie", "selten", "manchmal", "häufig", "sehr häufig"),
                              ordered = TRUE),
         schlafqualitaet = factor(sleep_quality, levels = 1:5, ordered = TRUE),
         schulleistung = factor(academic_performance, levels = 1:5, ordered = TRUE)) %>%
  select(8, 4, 9:13) -> stress
saveRDS(stress, file = "stress.rds")
