## #############################################################################
## FIFTEEN
##
## Show how to import CSV and EXCEL files.
## These two bits of code result in the EXACT SAME data frame.
##
## #############################################################################

## IMPORT CSV ------------------------------------------------------------------
library(tidyverse)
fifteen <- read_csv("data/10 - Freshman 15.CSV")

## IMPORT EXCEL ----------------------------------------------------------------
library(openxlsx) ## NOT PART OF THE TIDYVERSE
fifteen <- read.xlsx("data/10 - Freshman 15.xlsx", sheet = "06 - Freshman 15")

## Where can we find package documentation/vignettes?

## MUNGE -----------------------------------------------------------------------
str(fifteen)
names(fifteen) <- tolower(names(fifteen))

fifteen <-
    fifteen %>%
    mutate(wt.delta = wt.april - wt.sept,
           bmi.delta = bmi.april - bmi.sept)

## SAVE ------------------------------------------------------------------------
save(list = "fifteen", file = "data/fifteen.rda")

## QUESTION: What other data import/export would be useful?
