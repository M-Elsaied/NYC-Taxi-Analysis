##read data
df = read_csv('capital_one_clean.csv')
#anova test foe difference in weeks
week_model = aov(speed~as.factor(week_of_month), data=df)
summary(week_model)
TukeyHSD(week_model,'speed')

#anova test for difference in hours
hour_model = aov(speed~as.factor(hour), data=df)
summary(hour_model)
TukeyHSD(hour_model, as.factor(df$hour))
