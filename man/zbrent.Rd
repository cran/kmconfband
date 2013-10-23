\name{zbrent}
\alias{zbrent}

\title{Van Wijngaarden-Decker-Brent Root-finding Algorithm}

\description{
   The function \code{zbrent} searches the interval \code{int}
   for a root, i.e., a zero, with respect to the first argument
   of a one-dimensional user-supplied function \code{func}.
}   

\usage{
   zbrent(func,int,tol)
}

\arguments{
\item{func}{the function for which the root is sought}
\item{int}{a vector representing the interval in which the required root is located}
\item{tol}{the desired accuracy (convergence tolerance)}
}

\details{
   The values of \code{func} at the two endpoints of \code{int} must have opposite signs.
}

\value{
   The algorithm returns the required root unless there is none, or the algorithm
   exceeds 100 iterations.  In the latter case, an error message is displayed, and
   the current approximation is returned.
}

\references{
Press W.H., Flannery B.P., Teukolsky S.A., Vetterling W.T.  (1988)  \emph{Numerical Recipes:  
The Art of Scientific Computing}.  Cambridge: Cambridge University Press.
}

\author{David E. Matthews \email{dematthews@uwaterloo.ca}}

\seealso{\code{\link{confband}}, \code{\link{exact}}}

\examples{
f<-function(x) x*(x^2-1)+0.5
x<-seq(-2,2,length=100)
plot(x,f(x),type="l")
zbrent(f,c(-2,2),1.0e-10)
}
