% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sequences.R
\name{ch_gene_sequence}
\alias{ch_gene_sequence}
\title{Create fake gene sequences}
\usage{
ch_gene_sequence(n = 1, length = 30)
}
\arguments{
\item{n}{(integer) number of things to get, any non-negative integer}

\item{length}{(integer) length of sequence to create}
}
\description{
Create fake gene sequences
}
\examples{
ch_gene_sequence()
ch_gene_sequence(10)
ch_gene_sequence(100)

ch_gene_sequence(length = 500)
ch_gene_sequence(10, length = 500)
}
\seealso{
\link{SequenceProvider}
}
