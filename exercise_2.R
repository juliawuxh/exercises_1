pacman::p_load(tidyverse, gapminder)
data(gapminder)
head(gapminder)
gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap)

#install.packages("dplyr")
library(dplyr)
gapminder_america <- select(filter(gapminder_clean, continent == 'Americas'),
                            c(country:gdp_per_cap))
print(gapminder_america, n=10)

gapminder_america %>%
  mutate(country, continent, year, rich_indicator = 
           if_else(gdp_per_cap < 15000, "not rich", "rich"), .keep = "used") 
