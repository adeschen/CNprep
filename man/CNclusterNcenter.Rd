% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CNclusterNcenter.R
\name{CNclusterNcenter}
\alias{CNclusterNcenter}
\title{TODO}
\usage{
CNclusterNcenter(
  segrat,
  blsize,
  minJoin,
  nTrial,
  bestBIC,
  modelNames,
  cweight,
  bstimes,
  chromRange
)
}
\arguments{
\item{segrat}{a \code{list} containing information for one specific profile:
\itemize{
\item{\code{seg}}{ a \code{data.frame} with 3 columns:} \itemize{
    \item{\code{StartProbe}}{ a \code{numeric} that tabulates the (integer) 
    start position of each segment in internal units such as probe numbers.}
    \item{\code{EndProbe}}{ a \code{numeric} that tabulates the (integer) 
    end position of each segment in internal units such as probe numbers.}
    \item{\code{chrom}}{ a \code{numeric} representing the chromosome.}}
\item{\code{rat}}{ a \code{numeric} \code{vector} of elements that are 
    functions of copy number, most often log ratios of copy number to 
    the expected standard value, such as 2 in diploid genomes for a specific
    profile. }
\item{\code{stream}}{ a \code{character} \code{string} representing the 
    profile ID.}
\item{\code{sub}}{ a \code{numeric} representing the position of the current
    profile ID in a \code{vector} of profiles.}
}}

\item{blsize}{a single \code{integer} specifying the bootstrap 
sampling rate of segment medians to generate input for model-based 
clustering. The number of times a segment is sampled is then given by the 
(integer) division of the segment length in internal units by \code{blsize}.}

\item{minJoin}{a single \code{numeric} value between \code{0} and \code{1} 
specifying the degree of overlap above which two clusters will be joined 
into one.}

\item{nTrial}{a single \code{integer} specifying the number of times 
a model-based clustering is attempted for each profile in order to 
achieve the highest Bayesian information criterion (BIC).}

\item{bestBIC}{a single \code{numeric} value for initializing BIC 
maximization. A large negative value is recommended.}

\item{modelNames}{a \code{vector} of \code{character} strings specifying 
the names of models to be used in model-based clustering (see package 
\code{mclust} for further details).}

\item{cweight}{a single \code{numeric} value between \code{0} and \code{1} 
specifying the minimal share of the central cluster in each profile.}

\item{bstimes}{a single \code{double} value specifying the number of 
time the median of each segment is sampled in order to predict the cluster 
assignment for the segment.}

\item{chromRange}{a \code{integer} vector enumerating chromosomes from 
which segments are to be used for initial model-based clustering.}
}
\value{
a \code{matrix} with 9 columns:
\itemize{
\item{\code{untitled}}{ a \code{numeric}, the median value of the copy 
    number elements forming each segment}
\item{\code{untitled}}{ TODO}
\item{\code{mediandev}}{ a \code{numeric}, the median function of copy 
number relative to its central value for each segment}
\item{\code{segerr}}{ a \code{numeric}, the error estimate for the 
function of copy number for each segment}
\item{\code{centerz}}{ a \code{numeric} between \code{0} and \code{1}, the 
probability that the segment is in the central cluster}
\item{\code{cpb}}{ TODO}
\item{\code{maxz}}{ TODO}
\item{\code{maxzmean}}{ TODO}
\item{\code{maxzsigma}}{ TODO}
}
}
\description{
TODO
}
\examples{

# TODO

## Create a list that contain information about the segments and bins 
## related to one 



}
\author{
Alexander Krasnitz, Guoli Sun
}
\keyword{internal}
