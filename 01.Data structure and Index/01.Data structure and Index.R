# Practice 1

Student_Names <- c('James', 'Tom', 'Jack', 'Kim', 'Yamaoka', 'Liu')
Student_Scores <- c(100, 94, 85, 97, 95, 85)

df <- data.frame(Student_Names, Student_Scores)
df

###################################################################

# Practice 2-1

df['Student_Scores']
df[2]

# Practice 2-2

df[['Student_Scores']][1]
df[[2]][1]
df$Student_Scores[1]

# Practice 2-3

df['Student_Names']
df[1]

# Practice 2-4

df[['Student_Scores']]
df[[2]]
df$Student_Scores