\name{intermediate.corr.BB}
\alias{intermediate.corr.BB}
\title{Computes an intermediate normal correlation matrix for binary variables given 
the specified correlation matrix}
\description{Computes an intermediate normal correlation matrix for binary variables before 
dichotomization given the specified correlation matrix.}

\usage{intermediate.corr.BB(n.P, n.B, n.C, prop.vec, corr.vec = NULL, corr.mat = NULL)}

\arguments{
  \item{n.P}{Number of Poisson variables.}
  \item{n.B}{Number of binary variables.}
  \item{n.C}{Number of continuous variables.}
  \item{prop.vec}{Proportion vector for binary variables.}
  \item{corr.vec}{Vector of elements below the diagonal of correlation matrix ordered column-wise.}
  \item{corr.mat}{Specified correlation matrix.}
}

\value{A correlation matrix of size n.B*n.B.}

\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}

\seealso{\code{\link{intermediate.corr.PB}}, \code{\link{intermediate.corr.BC}}}

\examples{
\dontrun{
n.P<-2
n.B<-2
n.C<-2
prop.vec=c(0.4,0.7)
corr.vec = NULL
corr.mat=matrix(c(1.0,-0.3,-0.3,-0.3,-0.3,-0.3,
-0.3,1.0,-0.3,-0.3,-0.3,-0.3,
-0.3,-0.3,1.0,0.4,0.5,0.6,
-0.3,-0.3,0.4,1.0,0.7,0.8,
-0.3,-0.3,0.5,0.7,1.0,0.9,
-0.3,-0.3,0.6,0.8,0.9,1.0),6,by=TRUE)

intmatBB=intermediate.corr.BB(n.P,n.B,n.C,prop.vec,corr.vec=NULL,corr.mat)
intmatBB
}
}
