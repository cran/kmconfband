\name{exact}
\alias{exact}

\title{Calculate an Exact Nonparametric Confidence Band for the Survivor Function}

\description{
   This function computes exact nonparametric confidence limits for the population 
   survivor function, based on its one-sample Kaplan-Meier estimate, when the quantile
   of the cumulative distribution function, a value of the modified 
\acronym{B-J} statistic, is \code{x}.
}

\usage{
   exact(sobj, x)}

\arguments{
\item{sobj}{a one-sample Kaplan-Meier estimate, provided in the form of a \code{\link{survfit.object}}.}
\item{x}{scalar, a quantile of the exact null distribution.}
}

\details{
   If the number of times the Kaplan-Meier estimate derived from the sample changes value is \eqn{k},
   the function returns a matrix of \eqn{(k+1) \times 2} values.  These are the lower
   and upper limits that correspond to the \eqn{k+1} different values for the sample-specific 
   Kaplan-Meier estimate. 

   For the specified, fixed choice of \code{x}, each lower and upper limit is calculated using the 
   Van Wijngaarden-Decker-Brent root-finding algorithm, \code{\link{zbrent}}.  The tolerance required
   for convergence to each required root/limit is 1.0e-10.
}


\value{ 
   A matrix containing the lower and upper confidence band when the value of the modified \acronym{B-J} statistic
   is \code{x}.  The first column of the matrix represents the lower estimate of the population survivor
   function, and the second column of the matrix provides the corresponding upper estimate.
}

\author{David E. Matthews \email{dematthews@uwaterloo.ca}}

\seealso{\code{\link{confband}}, \code{\link{zbrent}}}

\examples{
## Calculate the exact, nonparametric lower and upper estimates of
## leukemia patient remission experience based on data from 20 patients 
## receiving Treatment B when the value of x is 0.3
time<-c(1,1,2,2,3,4,5,8,8,9,11,12,14,16,18,21,27,31,38,44)
status<-c(rep(1,16),0,1,0,1)
fit<-survfit(Surv(time,status)~1)
exact(fit,0.3)
}
