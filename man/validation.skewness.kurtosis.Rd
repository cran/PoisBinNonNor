\name{validation.skewness.kurtosis}
\alias{validation.skewness.kurtosis}
\title{Validates the marginal specification of the continuous variables}

\description{Checks whether the marginal specification of the continuous part is valid and consistent.}

\usage{validation.skewness.kurtosis(n.C, skewness.vec = NULL, kurtosis.vec = NULL)}

\arguments{
  \item{n.C}{Number of continuous variables.}
  \item{skewness.vec}{Skewness vector for continuous variables.}
  \item{kurtosis.vec}{Kurtosis vector for continuous variables.}
}

\value{The function returns TRUE if no specification problem is encountered. Otherwise, it returns an error message.}

\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}

\examples{
n.C<-3
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,8)
validation.skewness.kurtosis(n.C,skewness.vec,kurtosis.vec)

\dontrun{
n.C<--1
skewness.vec=c(0)
kurtosis.vec=c(-1.2)
validation.skewness.kurtosis(n.C,skewness.vec,kurtosis.vec)

n.C<-3
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,5)
validation.skewness.kurtosis(3)

n.C<-3
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,5)
validation.skewness.kurtosis(n.C,skewness.vec)
validation.skewness.kurtosis(n.C,kurtosis.vec)

n.C<-0
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,8)
validation.skewness.kurtosis(n.C,skewness.vec,kurtosis.vec)

n.C<-2
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,8)
validation.skewness.kurtosis(n.C,skewness.vec,kurtosis.vec)

n.C<-2
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6)
validation.skewness.kurtosis(n.C,skewness.vec,kurtosis.vec)

skewness.vec=c(2,3)
kurtosis.vec=c(1,5)
validation.skewness.kurtosis(n.C,skewness.vec,kurtosis.vec)
}
}