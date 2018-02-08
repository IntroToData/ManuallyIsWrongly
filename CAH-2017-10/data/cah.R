## #############################################################################
## CAH
## #############################################################################

## INIT ------------------------------------------------------------------------
library(tidyverse)

## DATA ------------------------------------------------------------------------
survey <- read_csv("data/201710-CAH_PulseOfTheNation_Raw.csv")
survey_names <- names(survey)
names(survey) <- c("income",
                   "gender",
                   "age",
                   "age_range",
                   "political_affiliation",
                   "approve_donald",
                   "highest_level_education",
                   "education_other",
                   "race",
                   "race_other",
                   "agree_white_nationalists",
                   "republicans_agree_white_nationalists",
                   "republicans_agree_white_nationalists_other",
                   "do_you_love_america",
                   "democrats_love_america",
                   "democrats_love_america_other",
                   "gov_should_help_poor",
                   "republicans_gov_should_help_poor",
                   "most_white_people_racist",
                   "demogracts_agree_most_white_people_racist",
                   "lost_friendship_2016_election",
                   "civil_war_likely",
                   "ever_gone_hunting",
                   "ever_eaten_kale_salad",
                   "the_rock_for_pres",
                   "who_would_you_prefer")

## MUNGE -----------------------------------------------------------------------
str(survey)

## Is there anything we should add to this table?
## Hint: Look at the first few columns.

## SAVE ------------------------------------------------------------------------
save(list = c("survey", "survey_names"), file = "data/survey.rda")
