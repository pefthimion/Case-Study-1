# Phillip Efthimion
#Intro to Data Science
#Case Study 1

# Required packages

library(dplyr)
library(ggplot2)

# Downloading the data files



# First we have to set our working directory so we know where to call and files we use from 
# getwd()
# cat("File is read")
# When coding on my computer
# setwd("/Users/Phillip/Documents/SMU/Intro to Data Science/Case Study 1")

# On Github
setwd("https://github.com/pefthimion/Case-Study-1/tree/master/Data")
cat("Directory is set")

# Download the files from the internet and save them into our workspace

GDP <- read.csv("getdata%2Fdata%2FGDP.csv", sep = ",", header = TRUE)
Edu <- read.csv("getdata%2Fdata%2FEDSTATS_Country.csv", sep = ",", header = TRUE)

cat("files read")
