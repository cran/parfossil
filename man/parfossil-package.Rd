\name{parfossil-package}
\alias{parfossil-package}
\alias{parfossil}
\docType{package}
\title{
Parallelized functions for palaeoecological and palaeogeographical analysis
}
\description{
This package provides a number of functions from the \code{fossil} package that have been designed to be run on a parallel backend. The functions show a large speed up, even when just using a dual core versus single core set up, which can be very useful in situations with a large number of resampling replicates. 
}
\details{
The package requires some parallel backend to be loaded, using packages such as \code{multicore}, \code{Rmpi} or \code{snow}
}
\author{
Maintainer: Matthew Vavrek <matthew@matthewvavrek.com>
}
\keyword{package}
