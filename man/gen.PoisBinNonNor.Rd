\name{gen.PoisBinNonNor}
\alias{gen.PoisBinNonNor}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Simulates a sample of size n from a set of multivariate Poisson, binary, and
continuous data}

\description{This function simulates a sample of size n from a set of multivariate Poisson, binary, and
continuous data with pre-specified marginals and a correlation matrix.}

\usage{gen.PoisBinNonNor(n, n.P, n.B, n.C, lambda.vec = NULL, prop.vec = NULL, 
mean.vec=NULL, variance.vec=NULL, coef.mat = NULL, final.corr.mat)}

\arguments{
  \item{n}{Number of variates.}
  \item{n.P}{Number of Poisson variables.}
  \item{n.B}{Number of binary variables.}
  \item{n.C}{Number of continuous variables.}
  \item{lambda.vec}{Rate vector for Poisson variables.}
  \item{prop.vec}{Proportion vector for binary variables.}
  \item{mean.vec}{Mean vector of continuous variables.}
  \item{variance.vec}{Variance vector of continuous variables.}
  \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
  \item{final.corr.mat}{Final correlation matrix produced from \code{\link{overall.corr.mat}}}
}


\value{A matrix of size n*(n.P + n.B + n.C), of which the first n.P 
columns are Poisson variables, the next n.B columns are binary variables, and the last n.C 
columns are continuous variables.}

\examples{
\dontrun{
n=100000
n.P<-2
n.B<-2
n.C<-2
lambda.vec<-c(2,3)
prop.vec<-c(0.3,0.5)
mean.vec<-c(0,0)
variance.vec<-c(1,1)
coef.mat=matrix(rep(c(0,1,0,0), each=2),4,2,byrow=T)
corr.mat=matrix(0.4,6,6)
diag(corr.mat)=1
final.corr.mat=overall.corr.mat(n.P,n.B,n.C,lambda.vec,prop.vec, 
coef.mat,corr.vec=NULL,corr.mat)

mymixdata=gen.PoisBinNonNor(n,n.P,n.B,n.C,lambda.vec,prop.vec, 
mean.vec,variance.vec,coef.mat,final.corr.mat)

#Check marginals
#apply(mymixdata,2,mean)
#cor(mymixdata)

n=100000
n.P<-2
n.B<-2
n.N<-2
lambda.vec<-c(2,3)
prop.vec<-c(0.3,0.5)
mean.vec=c(1,0.5)
variance.vec=c(1,0.02777778)
skewness.vec=c(2,0)
kurtosis.vec=c(6,-0.5455)
coef.mat=fleishman.coef(2,skewness.vec, kurtosis.vec)
corr.mat=matrix(0.3,6,6)
diag(corr.mat)=1
final.corr.mat=overall.corr.mat(n.P,n.B,n.N,lambda.vec,prop.vec,
coef.mat,corr.vec=NULL,corr.mat)
mymixdata=gen.PoisBinNonNor(n,n.P,n.B,n.N,lambda.vec,prop.vec,
mean.vec, variance.vec,coef.mat,final.corr.mat)

#Check marginals
#apply(mymixdata,2,mean)[4:5] 
#apply(mymixdata,2,var)[4:5]  
#cor(mymixdata)
}
}
