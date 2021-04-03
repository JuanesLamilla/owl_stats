library(dslabs)
library(tidyverse)    # includes readr
library(ggrepel)
library(readxl)
library(dplyr)


# read file in CSV format
dat_1 <- read_csv("phs_2020_1.csv") %>% 
         mutate(start_time, start_time = as.POSIXct(start_time, format="%m/%d/%Y %H:%M",tz="America/Los_Angeles"))
        # start_time needs to be converted to datetime type

dat_2 <- read_csv("phs_2020_2.csv")

complete_data <- full_join(dat_1, dat_2) # Complete OWL2020 data set