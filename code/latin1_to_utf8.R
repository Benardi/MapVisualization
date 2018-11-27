library(readr)
library(here)
library(dplyr)

oldw <- getOption("warn")
options(warn = -1)

read_csv2(
  here::here("data/PB/Basico_PB.csv"),
  locale = locale(encoding = "latin1")) %>% 
  select(-X34) %>%
  filter(Nome_do_municipio == "JOÃO PESSOA") %>%
  write_csv(here::here("data/PB/basico-joao-pessoa-utf8.csv"))

options(warn = oldw)

