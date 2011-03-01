\name{rorschach}
\alias{rorschach}
\title{The Rorschach protocol.}
\usage{rorschach(method, true, n=20, p=0)}

\description{
  The Rorschach protocol.
}
\arguments{
  \item{method}{method for generating null data sets}
  \item{true}{true data set. If \code{NULL}, \code{\link{find_plot_data}}
will attempt to extract it from the current ggplot2 plot.}
  \item{n}{total number of samples to generate (including true data)}
  \item{p}{probability of including true data with null data.}
}
