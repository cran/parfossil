\name{par.nmds}
\alias{par.nmds}
\title{A parallelized function for estimating species diversity}
\description{
Estimate the diversity of a sample(s) using a number of species diversity estimators.
}
\usage{
par.nmds(dmat, mindim = 1, maxdim = 2, nits = 10, iconf = 0, epsilon = 1e-12, maxit = 500, trace = FALSE) 
}
\arguments{
  \item{dmat}{Lower triangle distance matrix}
  \item{mindim}{optional, the minmum number of dimensions to use for an analysis; default is 1}
  \item{maxdim}{optional, the maximum number of dimensions to use for an analysis; default is 2}
  \item{nits}{optional, the number of iterations; how many times the data should be initially placed at random; default is 10}
  \item{iconf}{optional, initial configuration. If not specified, then a random configuration is used.}
  \item{epsilon}{optional, acceptable difference in stress.}
  \item{maxit}{optional, maximum number of iterations.}
  \item{trace}{if TRUE, will write progress indicator to the screen.}
}
\details{
Non-Metric Multidimensional Scaling (NMDS) is designed to find an optimal arrangement for a set of points in a reduced dimensional space. 
}
\value{
   conf : list of configurations.

 stress : list of final stress values.

     r2 : total variance explained by each configuration.
     The first results are for the lowest number of dimensions (total
     number is (mindim - maxdim + 1) * nits).
 
}
\references{
The original nmds function used as the basis for this parallelized version comes from the \code{ecodist} package.

Goslee, S.C., Urban, D.L. 2007. The ecodist Package for Dissimilarity-based Analysis of Ecological Data. Journal of Statistical Software. 22(7):1-19.

}
\author{Sarah Goslee with modifications from Matthew Vavrek}
\note{
This is slight modification of the nmds function found in the \code{ecodist} package, that has been changed to allow for parallelization of runs. This version of the function uses the \code{foreach()} function to parallelize the resampling loop, so any backend that can be used with that package can be used to enable the parallel processing with this package. 
}
\seealso{
\code{\link{ecol.dist}}
}
\examples{
\dontrun{
#comparison of run times between the serial and parallel versions on the estimator
#please note that this example is designed for a multicore OS X or Linux computer
library(doMC)
registerDoMC()
data(fdata.mat)
par.nmds(ecol.dist(fdata.mat))
}
}
