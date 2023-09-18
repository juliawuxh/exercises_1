# Set-up your script ------------------------------------------------------

#install.packages(c("tidyverse", "gapminder", "pacman"))
pacman::p_load(tidyverse, gapminder)

# Load your Data into R ---------------------------------------------------

data(gapminder)
head(gapminder)

# Clean your Data ---------------------------------------------------------

gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap)

head(gapminder_clean)
