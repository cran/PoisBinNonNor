\name{correlation.bound.check}
\alias{correlation.bound.check}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Checks if the pairwise correlation among variables are within the feasible range}

\description{This function checks if there are range violations among correlation of Poisson-Poisson, 
Poisson-binary, Poisson-continuous, binary-binary, binary-continuous, and continuous-continuous combinations.
}

\usage{correlation.bound.check(n.P, n.B, n.C, lambda.vec = NULL, prop.vec = NULL, 
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

\value{The function returns TRUE if no specification problem is encountered. Otherwise, it returns an error message.}

\references{
Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper
correlation bounds. The American Statistician, 65(2), 104-109.

Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data
by power polynomials. Statistics in Medicine, 31(27), 3337-3346.
}

\seealso{\code{\link{validation.corr}}, \code{\link{correlation.limits}} }

\examples{
\dontrun{
n.P<-1
n.B<-1
n.C<-1
lambda.vec<-c(1)
prop.vec<-c(0.3)
coef.mat<-matrix(c(-0.3137491,0.8263239,0.3137491,0.0227066),4,1,byrow=F) 
corr.mat=matrix(c(1,0.2,0.1,0.2,1,0.5,0.1,0.5,1),3,3)
correlation.bound.check(n.P, n.B, n.C, lambda.vec, prop.vec, coef.mat, corr.vec = NULL, 
corr.mat)

n.P<-2
n.B<-2
n.C<-2
lambda.vec<-c(1,2)
prop.vec<-c(0.3,0.5)
coef.mat<-matrix(c(
-0.3137491,  0.0000000,   
 0.8263239,  1.0857433,    
 0.3137491,  0.0000000,
 0.0227066, -0.0294495),4,2,byrow=F)  
corr.mat=matrix(0.8,6,6)
diag(corr.mat)=1
correlation.bound.check(n.P, n.B, n.C, lambda.vec, prop.vec, coef.mat, corr.vec = NULL, 
corr.mat)
}
}
