\name{noe}
\alias{noe}

\title{Noe Recursions for the Exact Coverage Probability of a Nonparametric Confidence Band for the Survivor Function}

\description{
   This function executes the Noe recursion algorithm for computing the 
   exact coverage probability of a nonparametric confidence band for the 
   survivor function, derived from its single-sample Kaplan-Meier estimate.  
   The calculation relies on two related functions, 
   \code{\link{noe.compute.cgh}} and \code{\link{noe.compute.pv}} to execute 
   the necessary recursions.}

\usage{
   noe(tn,ta,tb)}

\arguments{
\item{tn}{a scalar representing the number of individual events that comprise the joint event}
\item{ta}{an ordered vector of lower endpoints;  its length is \code{tn}}
\item{tb}{an ordered vector of \code{tn} corresponding upper endpoints}
}

\value{
   The calculated probability of the joint event, based on the recursions of Noe
}

\references{
Jager, L. and Wellner, J.  (2005)
   ``A new goodness of fit test:  the reversed Berk-Jones statistic.''
   Technical Report 443, Department of Statistics, University of Washington

Noe, M.  (1972)
   ``The calculation of distributions of two-sided Kolmogorov-Smirnov-Type
   statistics.'' \emph{Ann Math Stat} \bold{43}, 58--64
   
Shorak, G. R. and Wellner, J. A.  (2008)  \emph{Empirical Processes with 
Applications to Statistics}.  Philadelphia, PA:  SIAM}

\author{David E. Matthews \email{dematthews@uwaterloo.ca}}

\seealso{\code{\link{confband}}, \code{\link{noe.compute.cgh}}, 
\code{\link{noe.compute.pv}}}

\examples{
## A check of the Noe recursion calculations.  This result is cited in 
## Jager and Wellner's 2005 technical report, Table 1, p. 13.
## The correct value is 0.95

a<-c(0.001340,0.028958,0.114653,0.335379)
b<-c(0.664621,0.885347,0.971042,0.998660)
print(noe(4,a,b))
}
