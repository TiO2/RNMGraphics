\name{Graphical Subsetting}
\alias{graphSubset}
\alias{graphSubset<-}

\title{Change and Retrieve Graphical Subsets}
\description{
 NONMEM data objects and data frames can have "graphical subsets" associated to them.  
 These subsets will be applied whenever a graphing function is called on the object.  
 This functionality is intended to facilitate the plotting of "standard" subsets, i.e. subsets without dosing information.  
}
\usage{
graphSubset(x)
graphSubset(x) <- value
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{An object of class \code{NMRun}, \code{NMProblem} or \code{data.frame}.}
  \item{value}{A vector of (character) subsets.}
}

\details{
Subsets assigned to an object are obtained using \code{graphSubset}. Subsets will be a set a vector of strings
which are converted to R expressions and then executed. They can be assigned using \code{graphSubset<-}.
}

\value{
For \code{graphSubset}, a character vector representing the subsets to be applied to \code{x} before plotting. 
For \code{graphSubset<-}, the updated object, i.e. with additional or removed subsets.
}
\author{Mango Solutions <support@mango-solutions>}

\examples{
	x <- importNm("TestData1.ctl", "TestData1.lst", path  = system.file(package = "RNMImport", "unittests/testdata/TestRun"))
	graphSubset(x) <- c("MDV != 1", "EVID == 0", "AMT <= 0")
	graphSubset(x)
}

\keyword{ environment }
