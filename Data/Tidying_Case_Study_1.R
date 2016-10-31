# Phillip Efthimion
# Intro to Data Science
# Case Study 1

# We will be cleaning data with this code

# First we will be making copies of the original downloaded files

# This is so we do not change the originals. We will not be using the originals anymore after this

GDP2 <- GDP
Edu2 <- Edu

# Remove blank rows and columns from the data of GDP2

# The first 4 rows that are all blank
GDPdata <- GDP2[5:330,]

# Remove empty column
GDPdata <- GDPdata[,1:5]
GDPdata <- GDPdata[,-3]

# Name the columns
names(GDPdata) <- c("CountryCode", "Ranking", "Table.Name", "GDP")

# Remove more NAs and empty spaces from the data
# This will also remove the listed countries that do not have a GDP or a ranking

GDPdata2<-subset(GDPdata, GDPdata$Ranking !="")
GDPdata2 <- GDPdata[!is.na(GDPdata$Ranking),]
GDPdata2<-subset(GDPdata, GDPdata$CountryCode !="")
GDPdata2 <- GDPdata[!is.na(GDPdata$CountryCode),]
GDPdata2<-subset(GDPdata, GDPdata$Table.Name !="")
GDPdata2 <- GDPdata[!is.na(GDPdata$Table.Name),]
GDPdata2<-subset(GDPdata, GDPdata$GDP !="")
GDPdata2 <- GDPdata[!is.na(GDPdata$GDP),]

GDPdata2<-subset(GDPdata, GDPdata$Ranking !="")
GDPdata2 <- GDPdata[!is.na(GDPdata$Ranking),]
GDPdata2<-GDPdata2[1:190,]

# Begin tidying Edu2 data set

# Remove excess columns that we will not be using in our analysis

Edu2<-Edu2[,-5:-29]
Edu2<-Edu2[,-4]
Edu2<-Edu2[,-5]
Edu2<-Edu2[,-2]

# Remove any NAs or blank spaces in the remaining columns

Edu2<-subset(Edu2, Edu2$Income.Group !="")
Edu2 <- Edu2[!is.na(Edu2$Income.Group),]
Edu2<-subset(Edu2, Edu2$CountryCode !="")
Edu2 <- Edu2[!is.na(Edu2$CountryCode),]
Edu2<-subset(Edu2, Edu2$Table.Name !="")
Edu2 <- Edu2[!is.na(Edu2$Table.Name),]
