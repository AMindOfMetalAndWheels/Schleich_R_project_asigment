#########
#19/11/24
#Fabian Schleich
#Asingment 1:
#
#Install tidyverse
#then
#install.packages("tidyverse")
#load
library(tidyverse)
#load
library(renv)
#make snapshot
renv::snapshot()
# load data 
data(iris)
#explore structure
head(iris)
summary(iris)
str(iris)


#data manipulation:

#summary of the dataset
summary <- summary(iris) 

#summerises numeric columns (not the species)
iris %>% summarize_if(is.numeric, mean) 

#filterers data with drop_na function then removes duplicated rows
clean.data <- iris %>% drop_na() %>% unique() 

#summary of filtered data
summary(clean.data)

#mean per species calculated
iris %>% group_by(Species) %>% summarize_all(mean)

#random sampling
sample(c("A", "B", "C"), size = 10, replace = TRUE)


#Visualization: 
library(GGally)
ggpairs(iris, aes(color = Species))

#save liberary state

renv::snapshot()
