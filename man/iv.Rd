\name{iv}
\alias{iv}

\title{Initial Value Calculation for Deriving an Exact Nonparametric Confidence Band for the Survivor Function}

\description{
   This function computes an initial value that very roughly approximates the 
   0.95-quantile from the exact null distribution of the modified \acronym{B-J}   statistic from which a nonparametric confidence 
   band for the population survivor function, based on its one-sample 
   Kaplan-Meier estimate, can be derived.
}

\usage{
  iv(sobj)
}
  
\arguments{
\item{sobj}{a one-sample Kaplan-Meier estimate, provided in the form of a 
\code{\link{survfit.object}}.}
}

\details{
  The initial value approximation uses the 0.95-quantile formula from \cite{Jager, L. and Wellner, 
  J.A.  (2005) \dQuote{A new goodness of fit test:  the reversed Berk-Jones statistic.}  Technical report 443.  
  University of Washington, Department of Statistics.}  The accuracy of the approximation
  depends on the presence and location of right-censored responses in the original dataset, since
  the Jager-Wellner formulae were developed for deriving a confidence band 
  for the cumulative distribution function, based on the single-sample 
  ecdf estimator.
}

\value{
   An approximate 0.95-quantile from the sample-specific exact
   null distribution of the modified \acronym{B-J} statistic derived from 
   the single-sample Kaplan-Meier estimate.
}

\author{David E. Matthews \email{dematthews@uwaterloo.ca}}

\seealso{\code{\link{confband}}}

\examples{
## Calculate an initial value from the exact null distribution of the 
## modified Berk-Jones statistic leading to an exact confidence band for 
## leukemia patient remission experience based on data from 20 patients 
## receiving Treatment B
time<-c(1,1,2,2,3,4,5,8,8,9,11,12,14,16,18,21,27,31,38,44)
status<-c(rep(1,16),0,1,0,1)
fit<-survfit(Surv(time,status)~1)
iv(fit)
}

