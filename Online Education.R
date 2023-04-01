library(dplyr)
library(ggplot2)
library(corrplot)
library(caret)
library(caretEnsemble)
library(doParallel)

setwd("D:/R programming")
a=read.csv("Online_Education.csv")
str(a)
summary(a)
head(a)

#Visualization

hist(a$Age)
hist(a$Rate.your.perception.about.particular.knowledge.and.skill.development.during.online.class.)

#plot

plot(a$Age,a$Rate.your.perception.about.particular.knowledge.and.skill.development.during.online.class.)

#ggplot

ggplot(a, aes(Age,Area, fill = Education))+geom_bar(stat = "identity")
ggplot(a, aes(Age,Gender, fill = Education))+geom_bar(stat = "identity")
ggplot(a, aes(Age,Education, fill = Gender))+geom_bar(stat = "identity")

ggplot(a, aes(Area,Gender, fill = Education))+geom_bar(stat = "identity")
ggplot(a, aes(Area,Education, fill = Gender))+geom_bar(stat = "identity")

ggplot(a, aes(Age,Is.Online.Classes.are.more.effective.than.offline.classes. , fill = Gender))+geom_bar(stat = "identity")
ggplot(a, aes(Education,Is.Online.Classes.are.more.effective.than.offline.classes. , fill = Gender))+geom_bar(stat = "identity")
ggplot(a, aes(Area,Is.Online.Classes.are.more.effective.than.offline.classes. , fill = Gender))+geom_bar(stat = "identity")

ggplot(a, aes(Age,Do.you.think.that.the.online.classes.provide.better.knowledge.comparing.to.offline.classes., fill = Gender))+geom_bar(stat = "identity")
ggplot(a, aes(Education,Do.you.think.that.the.online.classes.provide.better.knowledge.comparing.to.offline.classes., fill = Gender))+geom_bar(stat = "identity")
ggplot(a, aes(Area,Do.you.think.that.the.online.classes.provide.better.knowledge.comparing.to.offline.classes., fill = Gender))+geom_bar(stat = "identity")

