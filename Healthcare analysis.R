
# Load in the data
df = read.csv('insurance.csv', header=TRUE)
num_cols <- unlist(lapply(df, is.numeric))  
plot(df[,num_cols])

round(cor(df[,num_cols]),2)

smoker = as.factor(df$smoker)
sex = as.factor(df$sex)
region = as.factor(df$region)

boxplot(df$charges ~ smoker, main ='Smoker')
boxplot(df$charges ~ sex, main ='sex')
boxplot(df$charges ~ region, main ='region')

model1 = lm(charges ~. , data =df)

summary(model1)

