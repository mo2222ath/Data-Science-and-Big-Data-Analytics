
# read csv file “zipincome.csv”
file <- read.csv('C:/Users/Moaaz Hasan/Documents/_FCI YEAR 4_/_Term 2_/ERP/task2/zipincome.csv')

# what is the column names?
head(file)

# how many columns is the data?
length(file)

# how many rows is the data?
length(file$MeanHouseholdIncome)

# for each column, what are the MIN, MAX, and Mean values?
summary(file)

