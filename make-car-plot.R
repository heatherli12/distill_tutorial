library(tidyverse)
car_plot <- mtcars %>% 
  select(mpg, wt) %>% 
  ggplot(mapping = aes(x = wt, y = mpg))+
  geom_point() +
  geom_smooth(method = "lm", formula = y~x, se = FALSE)+
  theme_clean() +
  labs(title = "Fuel Efficiency and Weight",
       subtitle = "Heavier cars are less fuel efficient",
       caption = "Henderson and Vellerman (1981)",
       x = "Weight (in 1000s of lbs)",
       y = "MPG")
write_rds(car_plot, "car_plot.rds")
