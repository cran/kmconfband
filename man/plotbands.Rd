\name{plotbands}
\alias{plotbands}

\title{Plot an Exact Nonparametric Confidence Band for the Population Survivor Function}

\description{
 Computes, and then plots, an exact nonparametric confidence 
     band for the population survivor function based on its one-sample 
     Kaplan-Meier estimate and the modified \acronym{B-J} statistic.
 The confidence level, which can be specified by the user, must be a proportion between
	 0 and 1.
}

\usage{
  plotbands(sobj,conf.level=0.95,\dots)
}
  
\arguments{
\item{sobj}{a one-sample Kaplan-Meier estimate, provided in the form of a \code{\link{survfit.object}}.}
\item{conf.level}{confidence level, a proportion between 0 and 1.  The default value is 0.95}
\item{\dots}{Additional arguments, such as axis labels, scaling, etc., to pass 
to the generic \code{plot} function used for a \code{\link{survfit.object}}}
}

\details{
  An exact nonparametric confidence band with the specified level of confidence is plotted as 
  lower and upper estimates of the 
  survivor function.  These estimates are calculated by the function \code{\link{confband}}.  Option
  \option{lty=2} in the display distinguishes the nonparametric confidence band from the Kaplan-Meier estimate which, by default,
  is plotted as a solid line (\code{lty=1})
}

\value{
   The function returns two outputs, a scalar, which is printed, and a plot.
   The scalar value is the required quantile from the exact null distribution 
   of the sample-specific modified \acronym{B-J} statistic derived from the
   single-sample nonparametric Kaplan-Meier estimate.}
   
\author{David E. Matthews \email{dematthews@uwaterloo.ca}}

\seealso{\code{\link{confband}}}

\examples{
## plot an exact, nonparametric, 95% confidence band for leukemia patient 
## remission experience based on data from 20 patients receiving 
## Treatment B
time<-c(1,1,2,2,3,4,5,8,8,9,11,12,14,16,18,21,27,31,38,44)
status<-c(rep(1,16),0,1,0,1)
fit<-survfit(Surv(time,status)~1)
plotbands(fit,xlab="Time (in months)",ylab="Probability")

## Repeat the same calculations, but require only 80% confidence
plotbands(fit,0.80,xlab="Time (in months)",ylab="Probability")
}

\keyword{survival}

\keyword{aplot}
