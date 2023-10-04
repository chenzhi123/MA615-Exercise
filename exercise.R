library(readr)
data<- read_csv("strawberry_oct4 (1).csv")


strwb_census <- subset(data, Program == "CENSUS")
strwb_survey <- subset(data, Program == "SURVEY")


unique_values_census = unique(strwb_census$Value)
unique_values_census


# Replace '(D)' with NA
strwb_census$Value[strwb_census$Value == "(D)"] <- NA

# Remove commas
strwb_census$Value <- gsub(",", "", strwb_census$Value)

# Convert to numeric
strwb_census$Value <- as.numeric(strwb_census$Value)


