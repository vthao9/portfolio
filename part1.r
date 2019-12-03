## ------------------------------------------------------------------------
install.packages("tidyverse", repos = "http://cran.us.r-project.org")
library("tidyverse")

drugs_survey <- read_csv("https://raw.githubusercontent.com/deepak525/Drug-Consumption/master/drug_consumption.csv")


## ------------------------------------------------------------------------
colnames(drugs_survey)[colnames(drugs_survey)=="SS"] <- "Sensation"


## ------------------------------------------------------------------------
library("dplyr")
library("tidyr")

drugs <- tibble(Age=drugs_survey$Age, Gender=drugs_survey$Gender, Education=drugs_survey$Education, Country=drugs_survey$Country, Ethnicity=drugs_survey$Ethnicity, Alcohol=drugs_survey$Alcohol, Amphet=drugs_survey$Amphet, Amyl=drugs_survey$Amyl, Benzos=drugs_survey$Benzos, Caff=drugs_survey$Caff, Cannabis=drugs_survey$Cannabis, Choc=drugs_survey$Choc, Coke=drugs_survey$Coke, Crack=drugs_survey$Crack, Ecstasy=drugs_survey$Ecstasy, Heroin=drugs_survey$Heroin, Ketamine=drugs_survey$Ketamine, Legalh=drugs_survey$Legalh, LSD=drugs_survey$LSD, Meth=drugs_survey$Meth, Mushrooms=drugs_survey$Mushrooms, Nicotine=drugs_survey$Nicotine, Semer=drugs_survey$Semer, VSA=drugs_survey$VSA)

scores <- tibble(Age=drugs_survey$Age, Gender=drugs_survey$Gender, Education=drugs_survey$Education, Country=drugs_survey$Country, Ethnicity=drugs_survey$Ethnicity, Nscore=drugs_survey$Nscore, Escore=drugs_survey$Escore, Oscore=drugs_survey$Oscore, Ascore=drugs_survey$Ascore, Cscore=drugs_survey$Cscore, Impulsive=drugs_survey$Impulsive, Sensation=drugs_survey$Sensation)


## ------------------------------------------------------------------------
drugs_survey$Gender <- as.factor(drugs_survey$Gender)
drugs_survey$Education <- as.factor(drugs_survey$Education)
drugs_survey$Country <- as.factor(drugs_survey$Country)
drugs_survey$Ethnicity <- as.factor(drugs_survey$Ethnicity)


## ------------------------------------------------------------------------
library("ggplot2")
ggplot(drugs, aes(Age, Cannabis)) + geom_col()
ggplot(drugs, aes(Gender, Cannabis)) +  geom_col()
ggplot(drugs, aes(Education, Cannabis)) +  geom_col()

