\name{correlation.limits}
\alias{correlation.limits}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Computes lower and upper correlation bounds for each pair of variables}

\description{This function computes lower and upper limits for pairwise correlations of Poisson-Poisson, 
Poisson-binary, Poisson-continuous, binary-binary, binary-continuous, and continuous-continuous combinations.}

\usage{
correlation.limits(n.P, n.B, n.C, lambda.vec = NULL, prop.vec = NULL, 
coef.mat = NULL)}

\arguments{
  \item{n.P}{Number of Poisson variables.}
  \item{n.B}{Number of binary variables.}
  \item{n.C}{Number of continuous variables.}
  \item{lambda.vec}{Rate vector for Poisson variables.}
  \item{prop.vec}{Proportion vector for binary variables.}
  \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
}

\details{While the function computes the exact lower and upper bounds for pairwise correlations among
binary-binary variables as formulated in Demirtas et al. (2012), it computes approximate lower and
upper bounds for pairwise correlations among Poisson-Poisson, Poisson-binary, Poisson-continuous, 
binary-continuous, and continuous-continuous variables through the method suggested by Demirtas and Hedeker (2011).}

\value{The function returns a matrix of size (n.P + n.B + n.C)*(n.P + n.B + n.C), where the lower triangular
part of the matrix contains the lower bounds and the upper triangular part of the matrix contains the
upper bounds of the feasible correlations.}

\references{
Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper
correlation bounds. The American Statistician, 65(2), 104-109.

Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data
by power polynomials. Statistics in Medicine, 31(27), 3337-3346.
}

\seealso{\code{\link{validation.corr}}, \code{\link{correlation.bound.check}} }

\examples{
\dontrun{
n.P<-3
n.B<-2
n.C<-3
lambda.vec<-c(1,2,3)
prop.vec<-c(0.3,0.5)
coef.mat<-matrix(c(
-0.3137491,  0.0000000,  0.1004464, 
 0.8263239,  1.0857433,  1.1050196,  
 0.3137491,  0.0000000, -0.1004464,
 0.0227066, -0.0294495, -0.0400078),4,3,byrow=F)  

#Correlation limits among Poisson variables
correlation.limits(n.P,n.B=0,n.C=0, lambda.vec,prop.vec=NULL,coef.mat=NULL)

#See also Cor.PP.Limit in R package PoisNor 

#Correlation limits among binary variables
correlation.limits(n.P=0,n.B,n.C=0, lambda.vec=NULL,prop.vec,coef.mat=NULL)

#See also correlation.limits in R package BinNonNor 

#Correlation limits among continuous variables
correlation.limits(n.P=0,n.B=0,n.C,lambda.vec=NULL, prop.vec=NULL, coef.mat)

#Correlation limits among Poisson and binary variables and within themselves.
correlation.limits(n.P,n.B,n.C=0,lambda.vec, prop.vec, coef.mat=NULL)

#Correlation limits among Poisson and continuous variables and within themselves.
correlation.limits(n.P,n.B=0,n.C,lambda.vec, prop.vec=NULL, coef.mat)

#Correlation limits among binary and continuous variables and within themselves.
correlation.limits(n.P=0,n.B,n.C,lambda.vec=NULL, prop.vec, coef.mat)

#Correlation limits among Poisson, binary, and continuous variables and within themselves.
correlation.limits(n.P,n.B,n.C,lambda.vec, prop.vec, coef.mat)

n.P<-2
lambda.vec=c(-1,1)
correlation.limits(n.P,n.B=0,n.C=0, lambda.vec,prop.vec=NULL, coef.mat=NULL)

}
}
