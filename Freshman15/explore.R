## #############################################################################
## EXPLORE
## #############################################################################

library(tidyverse)
load("data/fifteen.rda")

## -----------------------------------------------------------------------------
## Distribution of Weight
## -----------------------------------------------------------------------------
ggplot(data = fifteen, aes(x = wt.delta)) +
    geom_histogram()

ggplot(data = fifteen, aes(x = wt.delta)) +
    geom_density()

mean(fifteen$wt.delta)
sd(fifteen$wt.delta)*2

## It doesn't look real convincing
## The average is 

## -----------------------------------------------------------------------------
## Does Starting Weight Correlate With End Weight?
## -----------------------------------------------------------------------------
ggplot(data = fifteen, aes(x = wt.sept, y = wt.april)) +
    geom_point() +
    geom_smooth(method = "lm")

## -----------------------------------------------------------------------------
## Does Starting Weight Correlate With Weight Change?
## -----------------------------------------------------------------------------
ggplot(data = fifteen, aes(x = wt.sept, y = wt.delta)) +
    geom_point() +
    geom_smooth(method = "lm")


## Let's look at the linear regression model.
cor(x = fifteen$wt.sept, y = fifteen$wt.delta)
model <- lm(wt.delta~wt.sept, data = fifteen)
summary(model)
plot(model)

## -----------------------------------------------------------------------------
## Are Men Different From Women
## -----------------------------------------------------------------------------
ggplot(data = fifteen, aes(x = wt.sept, y = wt.delta)) +
    geom_point() +
    geom_smooth(method = "lm") +
    facet_wrap(~sex)

## HMMMMMM

model_f <- lm(wt.delta~wt.sept, data = fifteen %>% filter(sex == "F"))
summary(model_f)

model_m <- lm(wt.delta~wt.sept, data = fifteen %>% filter(sex == "M"))
summary(model_m)

## BUT I WOULD BE CAREFUL WITH THESE RESULTS!

table(fifteen$sex)
