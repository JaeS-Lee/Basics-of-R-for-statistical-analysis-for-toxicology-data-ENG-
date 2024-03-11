library(readxl)

getwd()

df <- read_excel("./Example data.xlsx")
head(df)

str(df)

class(df$Level)
sapply(df, class)

df$`Attack type` <- as.factor(df$`Attack type`)
is.factor(df$`Attack type`)