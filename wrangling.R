# Introduction to Open Data Science 2017
# 18/12/2017, by Anton Saressalo
# Final Assignment: Data wrangling to make the Boston dataset more easily usable.

# The library dplyr is needed for some dataframe operations
library(dplyr)
# Library MASS includes the dataset Boston
library(MASS)

# Loading the dataset
data("Boston")

# Changing the variable names to a bit more easily recognizable
colnames(Boston)
colnames(Boston)[1] = "crime_rate"
colnames(Boston)[2] = "large_zones"
colnames(Boston)[3] = "industrialization"
colnames(Boston)[4] = "by_river"
colnames(Boston)[5] = "NOx_ppm"
colnames(Boston)[6] = "rooms_mean"
colnames(Boston)[7] = "old_buildings"
colnames(Boston)[8] = "dist_to_centre"
colnames(Boston)[9] = "near_highways"
colnames(Boston)[10] = "property_tax_rate"
colnames(Boston)[11] = "pupil_teacher_ratio"
colnames(Boston)[12] = "black_ratio"
colnames(Boston)[13] = "lower_status_ratio"
colnames(Boston)[14] = "home_median_value"

# Scale the Boston values values for PCA and make it a data frame
Boston_std <- as.data.frame(scale(Boston))

# Make sure that the results are as expected
summary(Boston)
summary(Boston_std)

# Save both datasets as csv for reading without extra libraries
write.csv(Boston,file="Boston.csv",row.names=FALSE)
write.csv(Boston_std,file="Boston_std.csv",row.names=FALSE)

# Make sure that the files are also readable
str(read.csv("Boston.csv",header=TRUE))
str(read.csv("Boston_std.csv",header=TRUE))
