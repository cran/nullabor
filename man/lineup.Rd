\name{lineup}
\alias{lineup}
\title{The line-up protocol.}
\usage{lineup(method, true, n=20, pos=sample(n, 1), samples)}

\description{
  The line-up protocol.
}

\details{
  Generate n - 1 null datasets and randomly position the
  true data.  If you pick the real data as being noticeably
  different, then you have formally established that it is
  different to with p-value 1/n.
}
\arguments{
  \item{method}{method for generating null data sets}
  \item{true}{true data set. If \code{NULL}, \code{\link{find_plot_data}}
will attempt to extract it from the current ggplot2 plot.}
  \item{n}{total number of samples to generate (including true data)}
  \item{pos}{position of true data.  Leave missing to pick position at 
random.  Encryped position will be printed on the command line,
\code{\link{decrypt}} to understand.}
  \item{samples}{samples generated under the null hypothesis. Only specify
this if you don't want lineup to generate the data for you.}
}
\examples{if (require("ggplot2")) {
qplot(mpg, wt, data = mtcars) \%+\% 
lineup(null_permute("mpg"), mtcars) + 
facet_wrap(~ .sample)
qplot(mpg, .sample, data = lineup(null_permute("cyl"), mtcars), 
colour = factor(cyl))
}}
