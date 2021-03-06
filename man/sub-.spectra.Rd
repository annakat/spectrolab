% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getters_and_setters.R
\name{[.spectra}
\alias{[.spectra}
\title{Subset spectra}
\usage{
\method{[}{spectra}(x, i, j, simplify = TRUE)
}
\arguments{
\item{x}{spectra object}

\item{i}{Sample names (preferred), index, or a logical vector of length nrow(x)}

\item{j}{Wavelength labels, as numeric or character
or a logical vector of length ncol(x). Do not use indexes!}

\item{simplify}{Boolean. If TRUE (default), single band selections
are returned as a named vector of reflectance values}
}
\value{
usually a spectra object, but see param `simplify`
}
\description{
\code{`[`} Subsets spectra by sample names (rows) or (and) wavelengths (columns)
}
\details{
Subset operations based on samples (first argument) will match sample
names or indexes, in that order. The spectra constructor ensures that names are
not numeric nor are coercible to numeric, such that x[1:2, ] will return the
first and second samples in the `spectra` object. Subsetting based on wavelengths
(second argument) matches the wavelength labels, not indices! That is, x[ , 600]
will give you the reflectance data for the 600nm wavelength and not the 600th
band. Boolean vectors of the appropriate length can be used to subset samples
and wavelengths.
}
\examples{
library(spectrolab)
spec = as.spectra(spec_matrix_example, name_idx = 1)
head(names(spec), n = 3)
# by name
spec1 = spec[ "species_7" , ]
spec1
# by band
spec2 = spec[ , 400:700 ]
spec2
}
\author{
Jose Eduardo Meireles
}
