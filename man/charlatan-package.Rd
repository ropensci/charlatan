% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/charlatan-package.R
\docType{package}
\name{charlatan-package}
\alias{charlatan-package}
\alias{charlatan}
\title{charlatan}
\description{
Make fake data, supporting addresses, person names, dates,
times, colors, coordinates, currencies, digital object identifiers
(DOIs), jobs, phone numbers, DNA sequences, doubles and integers
from distributions and within a range.
}
\section{Package API}{

\itemize{
\item \code{\link[=ch_generate]{ch_generate()}}: generate a data.frame with fake data
\item \code{\link[=fraudster]{fraudster()}}: single interface to all fake data methods
\item High level interfaces: There are high level functions prefixed with
\code{ch_} that wrap low level interfaces, and are meant to be easier
to use and provide easy way to make many instances of a thing.
\item Low level interfaces: All of these are R6 objects that a user can
initialize and then call methods on the them.
}
}

\examples{
# generate individual types of data
ch_name()
ch_phone_number()
ch_job()

# generate a data.frame
ch_generate()

# one interface to all data types - generate the class first
#  reports the locale to be used, can change optionally
(x <- fraudster())
x$job()
x$name()
x$color_name()
x$hex_color()

# low level interfaces to "data providers"
# these are exported by hidden from package man page
# as most users will likely not interact with these
x <- ColorProvider_en_US$new()
x$color_name()
x$hex_color()
}
\author{
Roel M. Hogervorst \email{hogervorst.rm@gmail.com}

Scott Chamberlain

Kyle Voytovich

Martin Pedersen
}
\keyword{package}
