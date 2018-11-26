library(readr)
library(here)
library(dplyr)

read_csv2(
  here::here("data/Basico_AC.csv"),
  locale = locale(encoding = "latin1")) %>% 
  filter(Nome_do_municipio == "RIO BRANCO") %>%
  write_csv(here::here("data/basico-censo-rio-branco-utf8.csv"))