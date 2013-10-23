\name{noe.compute.pv}
\alias{noe.compute.pv}

\title{Elements of the Noe Recursions for the Exact Coverage Probability of a Nonparametric 
Confidence Band for the Survivor Function}

\description{This function computes the probability vector at the heart of the Noe recursions for calculating the exact coverage probability of a nonparametric confidence band for the population survivor function, based on its single-sample
Kaplan-Meier estimate.}

\usage{noe.compute.pv(tn,tc)}

\arguments{
\item{tn}{a scalar quantity representing the total number of ordered uniform intervals
for which a joint probability is required}
\item{tc}{An ordered vector of endpoints between 0 and 1;  its length is 2\code{tn}+1}
}

\value{
   A probability vector of length 2\code{tn}+1 representing the partition of the
   rectangular distribution corresponding to the endpoints listed in the vector \code{tc}.
}

\author{David E. Matthews \email{dematthews@uwaterloo.ca}}

\seealso{\code{\link{confband}}, \code{\link{noe}}, \code{\link{noe.compute.cgh}}}

\examples{
## Check of Noe recursion calculations.

a<-c(0.001340,0.028958,0.114653,0.335379)
b<-c(0.664621,0.885347,0.971042,0.998660)
cgh.mat<-noe.compute.cgh(4,a,b)
x<-cgh.mat[,1]
noe.compute.pv(4,x[-10])
}
