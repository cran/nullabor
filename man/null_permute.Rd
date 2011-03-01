\name{null_permute}
\alias{null_permute}
\title{Generate null data by permuting a variable.}
\usage{null_permute(var)}

\description{
  Generate null data by permuting a variable.
}

\details{
  Null hypothesis: variable is independent of others
}
\value{a function that given \code{data} generates a null data set.  
For use with \code{\link{lineup}} or \code{\link{rorschach}}}
\arguments{
  \item{var}{name of variable to permute}
}
