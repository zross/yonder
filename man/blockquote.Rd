% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tags.R
\name{blockquote}
\alias{blockquote}
\title{Cleaner blockquotes}
\usage{
blockquote(..., source = NULL, align = "left")
}
\arguments{
\item{...}{Any number of tags elements or character strings passed as child
elements or named arguments passed as HTML attributes to the parent
element.}

\item{source}{The quote source, use \code{tags$cite} to format the source title,
defaults to \code{NULL}.}

\item{align}{One of \code{"left"} or \code{"right"}, defaults to \code{"left"}.}
}
\description{
Stylized blockquotes, an updated builder function for \code{<blockquote>}.
}
\examples{

### Simple example

blockquote(
  "Anyone can love a thing because.",
  "That's as easy as putting a penny in your pocket.",
  "But to love something despite.",
  "To know the flaws and love them too.",
  "That is rare and pure and perfect.",
  source = tags$span(
    "Patrick Rothfuss,", tags$cite("The Wise Man's Fear")
  )
)

}
\seealso{
Other content: \code{\link{alert}}, \code{\link{card}},
  \code{\link{collapsiblePane}}, \code{\link{d1}},
  \code{\link{dropdown}}, \code{\link{img}},
  \code{\link{jumbotron}}, \code{\link{modal}},
  \code{\link{navContent}}, \code{\link{popover}},
  \code{\link{pre}}, \code{\link{progressOutlet}},
  \code{\link{tooltip}}
}
\concept{content}
