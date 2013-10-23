\name{noe.compute.cgh}
\alias{noe.compute.cgh}

\title{Intermediate Steps in the Noe Recursions for the Exact Coverage Probability 
of a Nonparametric Confidence Band for the Survivor Function}

\description{
   This function computes the c, g, and h vectors at the heart of the Noe recursions for 
   computing the exact coverage probability of a nonparametric confidence band for 
   the population survivor function, based on its single-sample Kaplan-Meier
   estimate.}

\usage{
   noe.compute.cgh(tn,ta,tb)}

\arguments{
\item{tn}{a scalar representing the number of individual events that comprise the joint event}
\item{ta}{an ordered vector of lower endpoints;  its length is \code{tn}}
\item{tb}{an ordered vector of \code{tn} corresponding upper endpoints}
}

\value{
   A \eqn{tn \times 3} matrix.  The three columns of the matrix are the vectors
   c, g, and h, respectively, used in the Noe recursion formulae.}
   
\author{David E. Matthews \email{dematthews@uwaterloo.ca}}

\seealso{\code{\link{confband}}, \code{\link{noe}}}

\examples{
## Check of Noe recursion calculations.

a<-c(0.001340,0.028958,0.114653,0.335379)
b<-c(0.664621,0.885347,0.971042,0.998660)
noe.compute.cgh(4,a,b)
}
