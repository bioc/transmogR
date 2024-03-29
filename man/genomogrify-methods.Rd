% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genomogrify.R
\name{genomogrify}
\alias{genomogrify}
\alias{genomogrify,XStringSet,GRanges-method}
\alias{genomogrify-methods}
\alias{genomogrify,BSgenome,GRanges-method}
\alias{genomogrify,BSgenome,VcfFile-method}
\alias{genomogrify,XStringSet,VcfFile-method}
\title{Mogrify a genome using a set of variants}
\usage{
genomogrify(x, var, ...)

\S4method{genomogrify}{XStringSet,GRanges}(
  x,
  var,
  alt_col = "ALT",
  mask = GRanges(),
  tag = NULL,
  sep = "_",
  var_tags = FALSE,
  var_sep = "_",
  verbose = TRUE,
  ...
)

\S4method{genomogrify}{BSgenome,GRanges}(
  x,
  var,
  alt_col = "ALT",
  mask = GRanges(),
  names,
  tag = NULL,
  sep = "_",
  var_tags = FALSE,
  var_sep = "_",
  verbose = TRUE,
  ...
)

\S4method{genomogrify}{BSgenome,VcfFile}(
  x,
  var,
  alt_col = "ALT",
  mask = GRanges(),
  names,
  tag = NULL,
  sep = "_",
  var_tags = FALSE,
  var_sep = "_",
  which,
  verbose = TRUE,
  ...
)

\S4method{genomogrify}{XStringSet,VcfFile}(
  x,
  var,
  alt_col = "ALT",
  mask = GRanges(),
  tag = NULL,
  sep = "_",
  var_tags = FALSE,
  var_sep = "_",
  which,
  verbose = TRUE,
  ...
)
}
\arguments{
\item{x}{A DNAStringSet or BSgenome}

\item{var}{GRanges object containing the variants, or a
\link[VariantAnnotation:VcfFile-class]{VariantAnnotation::VcfFile}}

\item{...}{Passed to \link[parallel:mclapply]{parallel::mclapply}}

\item{alt_col}{The name of the column with \code{var} containing alternate bases}

\item{mask}{Optional GRanges object defining regions to be masked with an 'N'}

\item{tag}{Optional tag to add to all sequence names which were modified}

\item{sep}{Separator to place between seqnames names & tag}

\item{var_tags}{logical(1) Add tags indicating which type of variant were
incorporated, with 's', 'i' and 'd' representing SNPs, Insertions and
Deletions respectively}

\item{var_sep}{Separator between any previous tags and variant tags}

\item{verbose}{logical(1) Print progress messages while running}

\item{names}{Sequence names to be mogrified}

\item{which}{GRanges object passed to \link[VariantAnnotation:ScanVcfParam-class]{VariantAnnotation::ScanVcfParam} if
using a VCF directly}
}
\value{
XStringSet with variant modified sequences
}
\description{
Use a set of SNPS, insertions and deletions to modify a reference genome
}
\details{
This function is designed to create a variant-modified reference genome,
intended to be included as a set of decoys when using salmon in selective
alignment mode.
Sequence lengths will change if InDels are included and any coordinate-based
information will be lost on the output of this function.

Tags are able to be added to any modified sequence to assist identifying any
changes that have been made to a sequence.
}
\examples{
library(GenomicRanges)
dna <- DNAStringSet(c(chr1 = "ACGT", chr2 = "AATTT"))
var <- GRanges(c("chr1:1", "chr1:3", "chr2:1-3"))
var$ALT <- c("C", "GG", "A")
dna
genomogrify(dna, var)
genomogrify(dna, var, tag = "mod")
genomogrify(dna, var, var_tags = TRUE)
genomogrify(dna, var, mask = GRanges("chr2:1-5"), var_tags = TRUE)


}
