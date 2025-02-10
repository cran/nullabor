## ----setup, include=FALSE-----------------------------------------------------
library(knitr)
opts_chunk$set(out.extra='style="display:block; margin: auto"', fig.align="center")

## ----message=FALSE------------------------------------------------------------
library(nullabor)

## ----message=FALSE------------------------------------------------------------
data(tips)
lineup_histograms(tips, "total_bill", dist = "normal")

## ----message=FALSE------------------------------------------------------------
lineup_histograms(tips, "total_bill", dist = "gamma")

## ----message=FALSE------------------------------------------------------------
example_data <- data.frame(x1 = runif(100, 0, 1),
                           x2 = rbeta(100, 1/2, 1/2))

## ----message=FALSE------------------------------------------------------------
lineup_histograms(example_data, "x1", dist = "uniform", params = list(min = 0, max = 1))

## ----message=FALSE------------------------------------------------------------
lineup_histograms(example_data, "x2", dist = "uniform", params = list(min = 0, max = 1))

## ----message=FALSE------------------------------------------------------------
lineup_qq(tips, "total_bill", dist = "normal")

## ----message=FALSE------------------------------------------------------------
lineup_qq(example_data, "x1", dist = "uniform", params = list(min = 0, max = 1))

## ----message=FALSE------------------------------------------------------------
library(ggplot2)
lineup_histograms(example_data, "x1",
                  dist = "uniform",
                  params = list(min = 0, max = 1),
                  color_bars = "white",
                  fill_bars = "#416B4B",
                  color_lines = "#7D5AAD"
                  ) + theme_minimal()

## ----message=FALSE------------------------------------------------------------
lineup_qq(tips, "total_bill",
          dist = "gamma",
          color_points = "cyan",
          color_lines = "#ED11B7",
          alpha_points = 0.25) +
  theme_minimal() + 
  theme(panel.background = element_rect(fill = "navy"),
        axis.title = element_text(family = "mono", size = 14))

