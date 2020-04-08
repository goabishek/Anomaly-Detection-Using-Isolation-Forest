#####################################
###Isolation Forest
#################################
setwd("/Users/abishek/My Documents/R_files")

#Load Package
library(solitude)

#Model
isf = isolationForest$new() # initiate
isf$num_trees <- 500
isf$fit(sample) # fit on 80% data
isf$scores # obtain anomaly scores

#Density plot of scores
plot(density(isf$scores$anomaly_score))

#Save Model for Predictions
saveRDS(rm_model1, file = "rm_model1.rds")

#Read Model
isf_1 <- readRDS(file = "rm_model1.rds")
