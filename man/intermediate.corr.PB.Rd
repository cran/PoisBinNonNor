\name{intermediate.corr.PB}
\alias{intermediate.corr.PB}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Computes the pairwise entries of the intermediate normal correlation matrix for all Poisson-binary combinations 
given the specified correlation matrix.}

\description{This function computes the pairwise entries of the intermediate normal correlation matrix for all Poisson-binary 
combinations given the specified correlation matrix as formulated in Amatya and Demirtas (2015).}

\usage{intermediate.corr.PB(n.P, n.B, n.C, lambda.vec = NULL, prop.vec = NULL, 
coef.mat = NULL, corr.vec = NULL, corr.mat = NULL)}

\arguments{
  \item{n.P}{Number of Poisson variables.}
  \item{n.B}{Number of binary variables.}
  \item{n.C}{Number of continuous variables.}
  \item{lambda.vec}{Rate vector for Poisson variables.}
  \item{prop.vec}{Proportion vector for binary variables.}
  \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
  \item{corr.vec}{Vector of elements below the diagonal of correlation matrix ordered column-wise.}
  \item{corr.mat}{Specified correlation matrix.}
}

\value{A matrix of n.P*n.B.}

\references{
Amatya, A. and Demirtas, H. (2015). Simultaneous generation of multivariate mixed data with Poisson and normal
marginals. Journal of Statistical Computation and Simulation, (85)15, 3129-3139.
}

\seealso{\code{\link{intermediate.corr.PP}}, \code{\link{intermediate.corr.BB}}}


\examples{
\dontrun{
n.P<-2
n.B<-1
lambda.vec<-c(2,3)
prop.vec<-c(0.3)
corr.mat=matrix(c(1,0.2,0.1,0.2,1,0.5,0.1,0.5,1),3,3)

intmatPB=intermediate.corr.PB(n.P,n.B,n.C=0,lambda.vec,prop.vec,coef.mat=NULL, 
corr.vec=NULL,corr.mat)
intmatPB
}
}

