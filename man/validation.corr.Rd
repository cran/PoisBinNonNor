\name{validation.corr}
\alias{validation.corr}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Validates the specified correlation matrix}

\description{This function validates the specified correlation vector and/or matrix for appropriate dimension,
symmetry, range, and positive definiteness. If both correlation matrix and correlation vector were
supplied, it checks whether the matrix and vector are conformable.}

\usage{validation.corr(n.P, n.B, n.C, corr.vec = NULL, corr.mat = NULL)}

\arguments{
  \item{n.P}{Number of Poisson variables.}
  \item{n.B}{Number of binary variables.}
  \item{n.C}{Number of continuous variables.}
  \item{corr.vec}{Vector of elements below the diagonal of correlation matrix ordered column-wise.}
  \item{corr.mat}{Specified correlation matrix.}
}

\value{The function returns TRUE if no specification problem is encountered. Otherwise, it returns an
error message.}

\seealso{\code{\link{correlation.limits}}, \code{\link{correlation.bound.check}} }

\examples{
n.P<-1
n.B<-1
n.C<-1
corr.vec=c(0.2,0.1,0.5)
validation.corr(n.P,n.B,n.C,corr.vec,corr.mat=NULL)

n.P<-2
n.B<-2
n.C<-2
corr.mat=matrix(0.5,6,6)
diag(corr.mat)=1
validation.corr(n.P,n.B,n.C,corr.vec=NULL,corr.mat)

\dontrun{
n.P<-2
n.B<-2
n.C<-1
corr.mat=matrix(0.5,6,6)
diag(corr.mat)=1
validation.corr(n.P,n.B,n.C,corr.vec=NULL,corr.mat)

n.P<-2
n.B<-2
n.C<-2
corr.mat=matrix(0.5,6,6)
corr.mat[1,2]=0.4
diag(corr.mat)=1
validation.corr(n.P,n.B,n.C,corr.vec=NULL,corr.mat)
}
}