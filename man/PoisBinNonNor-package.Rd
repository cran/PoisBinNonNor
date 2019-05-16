\name{PoisBinNonNor-package}
\alias{PoisBinNonNor-package}
\alias{PoisBinNonNor}
\docType{package}
\title{Data Generation with Count, Binary and Continuous Components}
\description{Provides R functions for generation of multiple count, binary and continuous variables 
simultaneously given the marginal characteristics and association structure. Continuous variables can be 
of any nonnormal shape allowed by the Fleishman polynomials, taking the normal distribution as a special case.}
\details{
\tabular{ll}{
Package: \tab PoisBinNonNor\cr
Type: \tab Package\cr
Version: \tab 1.3.1\cr
Date: \tab 2019-05-16\cr
License: \tab GPL-2 | GPL-3 \cr
}
The package consists of fourteen functions. The functions \code{\link{validation.bin}}, \code{\link{validation.corr}}, and 
\code{\link{validation.skewness.kurtosis}} validate the specified quantities. \code{\link{correlation.limits}} returns the lower and upper bounds of pairwise correlations of 
Poisson, binary and continuous variables. \code{\link{correlation.bound.check}}
validates pairwise correlation values.
\cr \code{\link{intermediate.corr.PP}}, \code{\link{intermediate.corr.BB}}, \code{\link{intermediate.corr.CC}}, 
\cr \code{\link{intermediate.corr.PB}}, \code{\link{intermediate.corr.PC}}, and \code{\link{intermediate.corr.BC}} 
compute intermediate correlation matrix for Poisson-Poisson combinations, binary-binary, 
continuous-continuous, Poisson-binary, Poisson-continuous,
binary-continuous combinations, respectively.  The function \code{\link{overall.corr.mat}} assembles 
the final correlation matrix. The engine function \code{\link{gen.PoisBinNonNor}}
generates mixed data in accordance with the specified marginal and correlational quantities.
Throughout the package, variables are supposed to be inputted in a certain order, namely, 
first count variables, next binary variables, and then continuous variables should be placed. 
}

\author{Gul Inan, Hakan Demirtas, Ran Gao 

Maintainer: Ran Gao <rgao8@uic.edu>}

\references{Amatya, A. and Demirtas, H. (2015). Simultaneous generation of multivariate mixed data with Poisson and normal
marginals. Journal of Statistical Computation and Simulation, (85)15, 3129-3139.

Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper
correlation bounds. The American Statistician, 65(2), 104-109.

Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data
by power polynomials. Statistics in Medicine, 31(27), 3337-3346.
}

\keyword{concurrent generation of Poisson, binary and continuous variables}
\keyword{generating multivariate Poisson variables}
\keyword{generating multivariate binary variables}
\keyword{generating multivariate continuous variables}