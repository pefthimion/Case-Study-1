# Phillip Efthimion
# Intro to Data Science
# Case Study 1

# First, we will prepare our data to merge. 

# Need to change the types some of the data

# Change type of data in GDPdata. Make CountryCode and Table.name characters

GDPdata$CountryCode <- as.character(GDPdata$CountryCode)
GDPdata$'Table.Name' <- as.character(GDPdata$'Table.Name')

# To change change the column GDP into a number we need to remove the commas
# Example: 1,000 -> 1000
# Otherwise it cannot be treated as a number
# This code make the GDP column a character, removes the comas, then finally changes it into a number

GDPdata2$GDP <- as.numeric(gsub(",", "", as.character(GDPdata2$GDP)))



# Change EDU2 columns into character

Edu2$CountryCode <- as.character(Edu2$CountryCode)
# Edu2$Long.Name <- as.character(Edu2$Long.Name)
Edu2$Table.Name <- as.character(Edu2$Table.Name)

# Now ready to merge
# Will be merging by CountryCode
# Have all = TRUE to include any rows that are not matched

Merge1 <- merge(GDPdata2, Edu2, by = "CountryCode", all = TRUE)

# We need to tidy up the Merge, 
# We have a duplicate column
names(Merge1)
names(Merge1) <- c("CountryCode", "Ranking", "Table.Name", "GDP", "Income.Group")
Merge1 <- Merge1[,-6]

head(Merge1)
