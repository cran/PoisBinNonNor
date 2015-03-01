\name{overall.corr.mat}
\alias{overall.corr.mat}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Computes the final intermediate correlation matrix}

\description{This function computes the final correlation matrix by combining pairwise intermediate correlation matrix entries for Poisson-Poisson, 
Poisson-binary, Poisson-continuous, binary-binary, binary-continuous, and continuous-continuous combinations. If
the resulting correlation matrix is not positive definite, a nearest positive matrix will be used.}

\usage{
overall.corr.mat(n.P, n.B, n.C, lambda.vec = NULL, prop.vec = NULL, coef.mat = NULL, 
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

\value{A correlation matrix of size (n.P+N.B+n.C)*(n.P+N.B+n.C).}

\seealso{
\code{\link{intermediate.corr.PP}}, \code{\link{intermediate.corr.BB}}, \code{\link{intermediate.corr.CC}},

\code{\link{intermediate.corr.PB}}, \code{\link{intermediate.corr.PC}}, \code{\link{intermediate.corr.BC}}

}

\examples{
\dontrun{
n.P<-1
n.B<-1
n.C<-1
lambda.vec<-c(1)
prop.vec<-c(0.3)
coef.mat<-matrix(c(0,1,0,0),4,1)
corr.vec=NULL
corr.mat=matrix(c(1,0.2,0.1,0.2,1,0.5,0.1,0.5,1),3,3)

finalmat=overall.corr.mat(n.P, n.B, n.C, lambda.vec, prop.vec, coef.mat, 
corr.vec = NULL, corr.mat)
finalmat
}
}
