% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parY.R
\name{parY}
\alias{parY}
\alias{parY,Seqinfo-method}
\alias{parY-methods}
\alias{parY,character-method}
\title{Get the PAR-Y Regions From a Seqinfo Object}
\usage{
parY(x, ...)

\S4method{parY}{Seqinfo}(x, ...)

\S4method{parY}{character}(x, prefix = NULL, ...)
}
\arguments{
\item{x}{A Seqinfo object or any of named build. If passing
a character vector, \code{\link[=match.arg]{match.arg()}} will be used to match the build.}

\item{...}{Not used}

\item{prefix}{Optional prefix to place before chromosome names. Can only be
NULL, "" or "chr"}
}
\value{
A GenomicRanges object
}
\description{
Define the Pseudo-Autosomal Regions from a Seqinfo Object
}
\details{
Using a seqinfo object based on either hg38, hg19, CHM13.v2 or their
variations, create a GRanges object with the Pseudo-Autosomal Regions from
the Y chromosome for that build.
The length of the Y chromosome on the seqinfo object is used to determine
the correct genome build when passing a Seqinfo object.
Otherwise

An additional mcols column called PAR will indicate PAR1 and PAR2
}
\examples{
library(GenomeInfoDb)
sq <- Seqinfo(
    seqnames = "chrY", seqlengths = 59373566, genome = "hg19_only_chrY"
)
parY(sq)

## PAR regions for CHM13 are also available
sq <- Seqinfo(
    seqnames = "chrY", seqlengths = 62460029, genome = "CHM13"
)
parY(sq)

## Or just call by name
parY("GRCh38", prefix = "chr")


}
