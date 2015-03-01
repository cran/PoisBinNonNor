\name{intermediate.corr.PC}
\alias{intermediate.corr.PC}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Computes the pairwise entries of the intermediate normal correlation matrix for all Poisson-continuous combinations 
given the specified correlation matrix.}

\description{This function computes the pairwise entries of the intermediate normal correlation matrix for all Poisson-continuous 
combinations given the specified correlation matrix as formulated in Amatya and Demirtas (2015).}

\usage{intermediate.corr.PC(n.P, n.B, n.C, lambda.vec = NULL, prop.vec = NULL, coef.mat = NULL, 
corr.vec = NULL, corr.mat = NULL)}

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

\value{A correlation matrix of size n.P*n.C.}

\references{Amatya, A. and Demirtas, H. (2015). Simultaneous generation of multivariate mixed data with Poisson and normal
marginals. Journal of Statistical Computation and Simulation. In press.
}

\seealso{\code{\link{intermediate.corr.PP}}, \code{\link{intermediate.corr.CC}}}

\examples{
\dontrun{
n.P=2
n.C=4
lambda.vec=c(2,3)
coef.mat=matrix(rep(c(0,1,0,0),each=4),4,byrow=TRUE)
corr.vec = NULL
corr.mat=matrix(c(1.0,-0.3,-0.3,-0.3,-0.3,-0.3,
-0.3,1.0,-0.3,-0.3,-0.3,-0.3,
-0.3,-0.3,1.0,0.4,0.5,0.6,
-0.3,-0.3,0.4,1.0,0.7,0.8,
-0.3,-0.3,0.5,0.7,1.0,0.9,
-0.3,-0.3,0.6,0.8,0.9,1.0),6,byrow=TRUE)

intmatPC=intermediate.corr.PC(n.P, n.B=0, n.C, lambda.vec, prop.vec=NULL, 
coef.mat, corr.vec = NULL, corr.mat)

intmatPC

#See also cmat.star in  R package PoisNor 
#cmat.star(no.pois=2, no.norm=4, corMat=corr.mat, lamvec=lambda.vec)
}
}
