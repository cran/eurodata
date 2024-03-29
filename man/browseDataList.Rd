% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/core_search.R
\name{browseDataList}
\alias{browseDataList}
\title{Search Eurostat datasets and see the result as a table in a browser}
\usage{
browseDataList(subs)
}
\arguments{
\item{subs}{An expression to be passed to \code{\link[base]{subset}}.
The column names of the table of datasets can be used -- those with spaces should be
backtick (`) quoted. See the examples below. The names of the available columns are:
\itemize{
 \item \code{`Data subgroup, level 0`}
 \item \code{`Data subgroup, level 1`}
 \item \code{`Data subgroup, level 2`}
 \item \code{`Data subgroup, level 3`}
 \item \code{`Data subgroup, level 4`}
 \item \code{`Data subgroup, level 5`}
 \item \code{`Data subgroup, level 6`}
 \item \code{`Data subgroup, level 7`}
 \item \code{`Dataset name`}
 \item \code{`Code`}
 \item \code{`Type`}
 \item \code{`Last update of data`}
 \item \code{`Last table structure change`}
 \item \code{`Data start`}
 \item \code{`Data end`}
 \item \code{`Link`}
}}
}
\value{
\itemize{
  \item Side effect (via \code{print}) -- a table opened in a browser via \code{\link[utils]{browseURL}}.
  \item Value -- a list with:
  \itemize{
    \item criteria -- a string, search criteria,
    \item time -- the time of the query,
    \item df -- a data.frame, imported via \code{\link[eurodata]{importDataList}} and
    filtered based on the conditions specified in \code{subs}.
    \item html -- a string, with the HTML code that generated the table in a browser.
  }
}
}
\description{
Search Eurostat datasets and see the result as a table in a browser
}
\examples{
\dontrun{
browseDataList(grepl('servic',`Dataset name`))
browseDataList(grepl('bop',Code) & !grepl('its',Code))
}
\dontrun{
browseDataList(grepl('GDP',`Dataset name`) &
grepl('main',`Dataset name`) &
   grepl('international',`Dataset name`) &
   !grepl('quarterly',`Dataset name`))
browseDataList(grepl('bop',Code) & grepl('its',Code))
}
}
