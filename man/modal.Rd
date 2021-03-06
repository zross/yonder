% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modal.R
\name{modal}
\alias{modal}
\alias{showModal}
\alias{closeModal}
\title{Modal dialogs}
\usage{
modal(title = NULL, body = NULL, footer = NULL, ...,
  center = FALSE, size = NULL)

showModal(modal, session = getDefaultReactiveDomain())

closeModal(session = getDefaultReactiveDomain())
}
\arguments{
\item{title}{A character string or tag element specifying the title of the
modal.}

\item{body}{A character string or tag element specifying the body of the modal.}

\item{footer}{A character string or tag element specifying the footer of the
modal.}

\item{...}{Additional named arguments passed as HTML attributes to the
parent element.}

\item{center}{One of \code{TRUE} or \code{FALSE} specifying whether the modal is
vertically centered on the page, defaults to \code{FALSE}.}

\item{size}{One of \code{"small"} or \code{"large"} specifying whether to shrink or
grow the width of the modal, defaults to \code{NULL}, in which case the modal's
width is not adjusted.}

\item{modal}{A modal tag element created using \code{modal()}.}

\item{session}{A reactive context, defaults to \code{\link[=getDefaultReactiveDomain]{getDefaultReactiveDomain()}}.}
}
\description{
Modals are a flexible alert window, which disable interaction with the page
behind them. Modals may include inputs or buttons or simply text.
}
\section{Example application}{
\preformatted{ui <- container(
  buttonInput(
    id = "trigger",
    "Open modal",
    icon("plus")
  )
)

server <- function(input, output) {
  observeEvent(input$trigger, ignoreInit = TRUE, {
    showModal(
      modal(
        title = "A simple modal",
        body = paste(
          "Cras mattis consectetur purus sit amet fermentum.",
          "Cras justo odio, dapibus ac facilisis in, egestas",
          "eget quam. Morbi leo risus, porta ac consectetur",
          "ac, vestibulum at eros."
        )
      )
    )
  })
}

shinyApp(ui, server)
}
}

\examples{

### Simple modal

modal(
  title = "Title",
  body = "Cras placerat accumsan nulla.",
  footer = buttonInput(
    id = "closeModal",
    label = "Close"
  ) \%>\%
    background("blue")
)

### Modal with container body

modal(
  size = "large",
  title = "More complex",
  body = container(
    row(
      column("Cras placerat accumsan nulla."),
      column("Curabitur lacinia pulvinar nibh."),
      column(
        "Aliquam posuere.",
        "Praesent fermentum tempor tellus."
      )
    )
  )
)

}
\seealso{
Other content: \code{\link{alert}},
  \code{\link{blockquote}}, \code{\link{card}},
  \code{\link{collapsiblePane}}, \code{\link{d1}},
  \code{\link{dropdown}}, \code{\link{img}},
  \code{\link{jumbotron}}, \code{\link{navContent}},
  \code{\link{popover}}, \code{\link{pre}},
  \code{\link{progressOutlet}}, \code{\link{tooltip}}
}
\concept{content}
