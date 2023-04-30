#Envirment Prep
rm(list = ls())
install.packages('writexl')
library(writexl)
library(readxl)

#Load in Flu data
Flu1 <- read_excel("FLU_Only.xlsx")

#Load in Population data
policy1 <- read_excel("Population_Data.xlsx")

#Add population to each country
full_dataset <- merge(Flu1, policy1, by="Country")


#Output as new file
write_xlsx(summed_df, "testFlu_Pop.xlsx")