\name{intermediate.corr.CC}
\alias{intermediate.corr.CC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes an intermediate correlation matrix for continuous variables given the specified correlation 
matrix}

\description{This function computes the intermediate correlation matrix for continuous-continuous 
combinations as formulated in Demirtas et al. (2012).}

\usage{
intermediate.corr.CC(n.P, n.B, n.C, coef.mat = NULL, corr.vec = NULL, corr.mat = NULL)
}

\arguments{
  \item{n.P}{Number of Poisson variables.}
  \item{n.B}{Number of binary variables.}
  \item{n.C}{Number of continuous variables.}
  \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
  \item{corr.vec}{Vector of elements below the diagonal of correlation matrix ordered column-wise.}
  \item{corr.mat}{Specified correlation matrix.}
}

\value{A correlation matrix of size n.C*n.C.}

\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.

Vale, C.D. and Maurelli, V.A. (1983). Simulating multivariate nonnormal distributions. Psychometrika, 48(3), 465-471.}

\seealso{\code{\link{intermediate.corr.PC}}, \code{\link{intermediate.corr.BC}}}

\examples{
\dontrun{
n.P=2
n.C=4
coef.mat=matrix(c(
 -0.31375,  0.00000,  0.10045, -0.10448,
  0.82632,  1.08574,  1.10502,  0.98085,
  0.31375,  0.00000, -0.10045,  0.10448,
  0.02271, -0.02945, -0.04001,  0.00272),4,byrow=TRUE)
corr.vec = NULL
corr.mat=matrix(c(1.0,-0.3,-0.3,-0.3,-0.3,-0.3,
-0.3,1.0,-0.3,-0.3,-0.3,-0.3,
-0.3,-0.3,1.0,0.4,0.5,0.6,
-0.3,-0.3,0.4,1.0,0.7,0.8,
-0.3,-0.3,0.5,0.7,1.0,0.9,
-0.3,-0.3,0.6,0.8,0.9,1.0),6,byrow=TRUE)

intmatCC=intermediate.corr.CC(n.P,n.B=0,n.C,coef.mat,corr.vec=NULL,corr.mat)
intmatCC
}
}