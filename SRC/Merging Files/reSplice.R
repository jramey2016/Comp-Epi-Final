#Enviroment Prep
rm(list = ls())
install.packages('writexl')
library(writexl)
library(readxl)
library(dplyr)

#Load in data: Path likely will need to be reset.
df <- read_excel("Desktop/EpidProject/US_2000-2019_influenza_Data.xlsx")
#View(df)

#Merge the Influenza data to its reported data, combining rows of different reporting measures.
summed_df <- df %>%
  group_by(Country, Code, Date) %>%
  summarize(INF_A = sum(INF_A), 
            INF_B = sum(INF_B), 
            INF_ALL = sum(INF_ALL))

# Print the summed data frame
print(summed_df)

#Write new output file
write_xlsx(summed_df, "Desktop/EpidProject/newUS.xlsx")