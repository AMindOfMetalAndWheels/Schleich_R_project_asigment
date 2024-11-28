#Day 7 
#Fabian Schleich
#26.11.24
########
library(tidyverse)
?geom_bar
?boxplot
set.seed(123)
students_data <- data.frame(
  ID = seq(1, 100),
  Age = rnorm(100, mean = 20, sd = 2),
  Score = rnorm(100, mean = 75, sd = 10),
  Subject = sample(c("Math", "English", "Science"), 100, replace = TRUE)
)


ggplot(students_data, aes(x = Age, y = Score, color = Subject)) +
  geom_point(size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed") +
  labs(
    title = "Student Performance",
    x = "Age",
    y = "Score",
    color = "Subject") +
  theme_classic()

?ggplot
?stat_errorbar()
?geom_errorbars()
?scale_x_continuous()
?coord_flip()
?geom_step()


library(readr)
data_plot1 <- read_csv("Day7/data_plot1.csv")

data_plot1 %>%
  group_by(name) %>% 
  summarise(n_missing = sum(is.na(value)))
#noting missing in the df
#
#

ggplot(data_plot1, aes(x = name, y = value, fill = name))+
  geom_violin()+
  geom_boxplot(width = 0.07)+
  scale_x_discrete(labels = c('A', 'B', 'C', 'D'), expand = c(0.1, 0))+
  scale_y_continuous(breaks = seq(0, 30, by = 10))+
  labs(
    title = "Boxplot + Violin",
    x = "",
    y = "Value",
    color = "name") +
   theme_bw()+
  theme(
    legend.position = "none",
    panel.grid.major = element_line(),
    panel.grid.minor = element_blank()
  )




