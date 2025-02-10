## ----setup, include=FALSE-----------------------------------------------------
library(knitr)
opts_chunk$set(out.extra='style="display:block; margin: auto"', fig.align="center")

## ----message=FALSE------------------------------------------------------------
library(nullabor)

## ----message=FALSE------------------------------------------------------------
data(tips)
x <- lm(tip ~ total_bill, data = tips)

## ----message=FALSE------------------------------------------------------------
lineup_residuals(x, type = 1)

## ----message=FALSE------------------------------------------------------------
lineup_residuals(x, type = 2)

## ----message=FALSE------------------------------------------------------------
lineup_residuals(x, type = 3)

## ----message=FALSE------------------------------------------------------------
lineup_residuals(x, type = 4)

## ----message=FALSE------------------------------------------------------------
library(ggplot2)
lineup_residuals(x, type = 3,
                color_points = "skyblue",
                color_trends = "darkorange") +
    theme_minimal()

