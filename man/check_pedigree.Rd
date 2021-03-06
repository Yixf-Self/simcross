% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_pedigree.R
\name{check_pedigree}
\alias{check_pedigree}
\title{Check a pedigree for errors}
\usage{
check_pedigree(pedigree, ignore_sex = FALSE)
}
\arguments{
\item{pedigree}{Numeric matrix or data frame with four columns: ID,
mom ID, dad ID, sex. Sex is coded as \code{0}=female,
\code{1}=male. There can be additional columns, but they'll be
ignored.}

\item{ignore_sex}{If TRUE, ignore the sex values completely
(appropriate for hermaphroditic species.)}
}
\value{
TRUE (invisibly) if everything is okay; otherwise gives an
error.
}
\description{
Perform a series of checks on the tabular data for a pedigree,
checking for problems
}
\details{
The parents should be listed before any of their
offspring. Founders should have 0's for mother and father; all
others should have non-zero values for the parents, and the parents
should appear in the pedigree. Father should be male and mothers
should be female (unless \code{ignore_sex=TRUE}). Individual
identifiers should be unique and non-zero. There should be no
missing values anywhere. (\code{NA}s are allowed in the sex column
if \code{ignore_sex=TRUE}.)
}
\examples{
tab <- sim_ril_pedigree(7)
check_pedigree(tab)

}
\seealso{
\code{\link{sim_from_pedigree}},
\code{\link{sim_ril_pedigree}}
}
\keyword{utilities}

