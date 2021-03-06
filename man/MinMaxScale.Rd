% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MinMaxScale.r
\name{MinMaxScale}
\alias{MinMaxScale}
\title{MinMaxScale}
\usage{
MinMaxScale(x.num, min.num = (0), max.num = 1)
}
\arguments{
\item{x.num}{<numeric>: Numerical vector}

\item{min.num}{<numeric>: Minimal value after scaling}

\item{max.num}{<numeric>: Maximal value after scaling}
}
\value{
Scaled numeric vector
}
\description{
Scale values on min max bounds.
}
\examples{
set.seed(655213)
x.num <- rnorm(500,500)
set.seed(522613)
y.num <- rnorm(500,100)
pdf(file=paste0(getwd(),"/Rplots.pdf"))
    plot(density(x.num),col="red",xlim=c(min(y.num),max(x.num )))
    lines(density(y.num),col="green")
    plot(density(MinMaxScale(x.num)),col="red",xlim=c(min(MinMaxScale(y.num)),max(MinMaxScale(x.num) )))
    lines(density(MinMaxScale(y.num)),col="green")
dev.off()
}
