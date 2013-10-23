\name{cover}
\alias{cover}

\title{Calculate the Exact Coverage Probability of a Nonparametric Confidence Band for the Survivor Function}

\description{
   This function computes the exact coverage probability of a specified nonparametric confidence band for the population survivor function derived from a single-sample Kaplan-Meier estimate}

\usage{
  cover(x,sobj)}
  
\arguments{
\item{x}{scalar, a quantile of the exact null distribution.}
\item{sobj}{a one-sample Kaplan-Meier estimate, provided in the form of a \code{\link{survfit.object}}.}
}

\details{
   The function uses the current value of the scalar \code{x} to calculate the    lower
   and upper limits corresponding to each distinct value of the sample-specific Kaplan-Meier estimate, via the
   function \code{\link{exact}}.   If there are \eqn{k} changes of value in the Kaplan-Meier estimate, 
   there will be \eqn{k+1} pairs of limits.  Then, using \eqn{k} ordered, uniform intervals 
   derived from these \eqn{k+1} pairs, the coverage probability that corresponds to the current 
   value of \code{x} is evaluated using Noe's recursions, via the function \code{\link{noe}}
}
   
\value{
   The function returns the calculated value of the coverage probability 
   for the exact nonparametric confidence band, derived from the single-sample 
   Kaplan-Meier estimate, that corresponds to quantile \code{x}
}
   
\author{David E. Matthews \email{dematthews@uwaterloo.ca}}


\seealso{\code{\link{confband}}, \code{\link{exact}}, \code{\link{noe}}}

\examples{
## Calculate the coverage probability for an exact, nonparametric confidence 
## band for leukemia patient remission experience based on data from 20 
## patients receiving Treatment B when the value of x is 0.3
time<-c(1,1,2,2,3,4,5,8,8,9,11,12,14,16,18,21,27,31,38,44)
status<-c(rep(1,16),0,1,0,1)
fit<-survfit(Surv(time,status)~1)
cover(0.3,fit)
}
