\name{timeEventDPlot}
\alias{timeEventDPlot}
\alias{timeEventDPlot}
\title{NONMEM Time to Event Dot Plot}
\usage{timeEventDPlot(obj, tVar="TIME", doseVar="AMT", evtVar="EVID", iVar="ID", title="Time to event", xLab="TIME", yLab="ID", addLegend=TRUE, problemNum=1,
    subProblems=1, ...)
}
\description{Generates dot plots of dosing events against time for each individual in a NONMEM object.}
\value{Multitrellis class object containing the plot.}
\author{Mango Solutions}
\keyword{hplot}
\arguments{\item{obj}{An object of class \code{NMRun}, \code{NMProblem}, or \code{data.frame}. The object from which data will be plotted.}
\item{tVar}{Time variable.}
\item{doseVar}{Dosing amount identifier variable.}
\item{evtVar}{Event identifier variable.}
\item{iVar}{Subject identifier variable.}
\item{title}{Main title}
\item{xLab}{x-axis label}
\item{yLab}{y-axis label}
\item{addLegend}{Should legends be added?}
\item{...}{}
}
\examples{Theoph2 <- as.data.frame(transform(Theoph, Evt = as.numeric((Time == 0)) ))
timeEventDPlot(Theoph2, tVar = "Time", concVar = "conc", doseVar = "Dose", evtVar = "Evt", iVar = "Subject")}

