library(dplyr)
library(readxl)

getwd()

df <- read_excel("./Example data.xlsx")
head(df)

# filter 
filter(df, Midterm >= 80 & Grade == 'A')

# filter (Chaining)
df %>% filter(Midterm >= 80 & Grade == 'A')


# arrange
arrange(df, desc(Average))

# arrange (Chaining)
df %>% arrange(desc(Average))


# select
select(df, Student, Grade)

# select (Chaining)
df %>% select(Student, Grade)


# rename
df2 <- df
rename(df2, ID = Student)

# rename (Chaining)
df2 <- df
df2 %>% rename(ID = Student)


# distinct
distinct(df, Grade)

# distinct (Chaining)
df %>% distinct(Grade)


# mutate
df3 <- df
mutate(df3, Scholarship = ifelse(Average >= 98, 'Yes', ' '))

# mutate (Chaining)
df3 <- df
df3 %>% mutate(Scholarship = ifelse(Average >= 98, 'Yes', ' '))


# Practice
df4 <- df
df4 <- arrange(df4, desc(Average))
df4 <- mutate(df4, Scholarship = ifelse(Average >= 98, "Yes", " "))
df4 <- rename(df4, ID = Student)
df4 <- filter(df4, Scholarship == 'Yes')
df4

# Practice (chaining)
df5 <- df
df5 <- df5 %>% arrange(desc(Average)) %>% mutate(Scholarship = ifelse(Average >= 98, "Yes", " ")) %>% 
  rename(ID = Student) %>% filter(Scholarship == 'Yes')
df5