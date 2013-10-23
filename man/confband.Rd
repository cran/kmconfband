\name{confband}
\alias{confband}

\title{Compute an Exact Nonparametric Confidence Band for the Population Survivor Function}

\description{
   This function computes an exact nonparametric confidence band for the population 
   survivor function, based on its one-sample Kaplan-Meier estimate.  The theory and methods used in 
   the computations are described in the 2013 article by \cite{Matthews}.  The confidence
   level required can be specified by the user.
}

\usage{
  confband(sobj,conf.level=0.95)}
  
\arguments{
\item{sobj}{a one-sample Kaplan-Meier estimate, provided in the form of a \code{\link{survfit.object}}.}
\item{conf.level}{confidence level, a proportion between 0 and 1;  the default value is 0.95.}
}

\details{
  The exact nonparametric confidence band is calculated as lower and upper estimates of the 
  survivor function derived from the \code{\link{survfit.object}}.
}

\value{
   There are two outputs.  The first is a scalar, the required quantile from the sample-specific,
   exact null distribution of the modified Berk-Jones (\acronym{B-J}) statistic.  Inverting this \acronym{B-J} statistic generates 
   a matrix of dimension \eqn{(k+1) \times 2}, where \eqn{k} represents the number of changes in the 
   Kaplan-Meier estimate, i.e., the number of distinct, complete observations in the original dataset.
   This matrix is the primary output of the function.  Its first column is the lower estimate;  
   the second column is the corresponding upper estimate.  If the smallest value of the Kaplan-Meier estimate 
   is 0, then so is the smallest value of the lower bound;  otherwise, it has a positive value.  
   Each row in the matrix represents a pair of lower and upper limits for one of the 
   \eqn{k+1} distinct values of the Kaplan-Meier estimate.  The ordering of these rows is the same 
   as the ordering of the original \code{\link{survfit.object}}.
}

\references{
Matthews, D.  (2013)
   ``Exact nonparametric confidence bands for the survivor function.''
   \emph{Int J Biostat} \bold{9}(1), doi: 10.1515/ijb-2012-0046}
   
\author{David E. Matthews \email{dematthews@uwaterloo.ca}}

\seealso{\code{\link{plotbands}}}

\examples{
## Calculate a nonparametric, exact, 95% confidence band for leukemia 
## patient remission experience based on data from 20 patients 
## receiving Treatment B
time<-c(1,1,2,2,3,4,5,8,8,9,11,12,14,16,18,21,27,31,38,44)
status<-c(rep(1,16),0,1,0,1)
fit<-survfit(Surv(time,status)~1)
bands<-confband(fit)

## Separately display the 95% (default) lower and upper confidence 
## band values 
bands[,1]
bands[,2]

## Repeat the same calculations, but for 80% confidence
bands<-confband(fit,0.80)

## Display the lower and upper confidence band values separately
bands[,1]
bands[,2]
}

\keyword{survival}
