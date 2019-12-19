## ----echo=FALSE, message=FALSE, error=FALSE, warning=FALSE, results='hide'----
install.packages("tidyverse", repos = "http://cran.us.r-project.org")
library("tidyverse")
library("knitr")
purl("portfolio.Rmd", output = "part1.r")
source("part1.r")


## ------------------------------------------------------------------------
library("rjson")
json_file <- "https://raw.githubusercontent.com/dariusk/corpora/master/data/medicine/drugs.json"
json_data <- fromJSON(file=json_file)


## ------------------------------------------------------------------------
pharmaceutical <- as.data.frame(json_data["drugs"])


## ------------------------------------------------------------------------
library("dplyr")
colnames(drugs)
only_drugs <- drugs %>% select(-Age, -Gender, -Education, -Country, -Ethnicity)
abused_drugs <- as.data.frame(colnames(only_drugs))
colnames(abused_drugs)[colnames(abused_drugs)=="colnames(only_drugs)"] <- "abused_drug"


## ------------------------------------------------------------------------
abused_drugs %in% pharmaceutical


## ------------------------------------------------------------------------
ll <- lm(data = drugs, Age ~ Coke + Meth + Crack + Mushrooms)
summary(ll)

