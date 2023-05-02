#README for Code files

Packages used throughout the code:

Python:
- pandas
- xlcd
- numpy
- datetime
- statsmodels
- sklearn
- tensorflow
- os
- matplotlib


R:
- writexl
- readxl
- dplyr



Guide:

- addPopulationData.R
This is a R code script to append the population a country to the end of every row in an excel file. This will only compare against the "Country" column, so data and code will not matter, but consistency of Country Names is vital. 

- DataSplice.ipynb
This splicing is for taking weekly reported Influenza data and averaging it into daily. This is important since policies are daily decisions and we need to capture changes within weeks.

- Covid_DataSplice.ipynb 
This is a slight variation of DataSpice.ipynb for the Covid data set.

- reSplice.R
This takes the raw influenza data that has various rows of the same data for various recording means and combines them into proper totals. This gives us one total per day for each country.

- setMerging.ipynb
Arguably the most important code, setMerging combines data sets that have matching information. When iterated for all of our data sets we are left with the final set where all fields have values. This is then used for the analysis phase.

-TrendAnalysis.ipynb
Loading in completed data sets for a country will then allow OLS and WLS modeling to find the influence of that independent variables have. 