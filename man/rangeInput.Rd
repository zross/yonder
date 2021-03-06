% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/range.R
\name{rangeInput}
\alias{rangeInput}
\alias{intervalInput}
\alias{sliderInput}
\title{Ranges, intervals, and custom sliders}
\usage{
rangeInput(id, min = 0, max = 100, default = min, step = 1,
  ticks = TRUE, fill = TRUE, labels = 4, snap = FALSE,
  prefix = NULL, suffix = NULL, ...)

intervalInput(id, min = 0, max = 100, default = c(min, max),
  step = 1, draggable = FALSE, ticks = TRUE, labels = 4,
  snap = FALSE, prefix = NULL, suffix = NULL, ...)

sliderInput(id, choices, values = choices, selected = NULL,
  ticks = TRUE, fill = FALSE, prefix = NULL, suffix = NULL, ...)
}
\arguments{
\item{id}{A character string specifying the id of the range input or \code{NULL}.}

\item{min}{A number specifying the minimum value of the range input, defaults
to \code{0}.}

\item{max}{A number specifying the maximum value of the range input, defaults
to \code{100}.}

\item{default}{A numeric vector between \code{min} and \code{max} specifying the
default value of the range input.

For \strong{rangeInput}, a single number, defaults to \code{min}.

For \strong{intervalInput}, a vector of two numbers specifying the minimum and
maximum of the slider interval, defaults to \code{c(min, max)}.}

\item{step}{A number specifying the interval step of the range input,
defaults to \code{1}.}

\item{ticks}{One of \code{TRUE} or \code{FALSE} specifying if tick marks are added to
the range input, defaults to \code{FALSE}. If \code{TRUE} tick marks are added,
otherwise if \code{FALSE} tick marks are not added.}

\item{fill}{One of \code{TRUE} or \code{FALSE} specifying whether the filled portion of
a range or slider input is shown. If \code{FALSE} the filled porition is hidden.

For \strong{rangeInput} the default is \code{TRUE}.

For \strong{sliderInput} the default is \code{FALSE}.}

\item{labels}{A number specifying how many ticks are labeled, defaults to
\code{4}. If \code{snap} is \code{TRUE}, this argument is ignored and tick labels are
based on \code{step}.}

\item{snap}{One of \code{TRUE} or \code{FALSE} specifying how the range input tick
marks are labeled, defaults to \code{FALSE}. If \code{TRUE} the range input tick
marks are adjusted to align with a multiple of \code{step}. If \code{FALSE} the range
input tick marks are calculeted using \code{labels}.}

\item{prefix}{A character string specifying a prefix for the range input
slider value, defaults to \code{NULL}, in which case a prefix is not prepended.}

\item{suffix}{A character string specifying a suffix for the range input
slider value, defaults to \code{NULL}, in which case a prefix is not appended.}

\item{...}{Additional named arguments passed as HTML attributes to the parent
element.}

\item{draggable}{One of \code{TRUE} or \code{FALSE} specifying if the user can drag the
interval between an interval input's two sliders defaults to \code{FALSE}. If
\code{TRUE} the slider interval may be dragged with the cursor, otherwise the
interval is not draggable.}

\item{choices}{A character vector specifying the labels along the slider
input.}

\item{values}{A character vector specifying the values of the slider input,
defaults to \code{choices}.}

\item{selected}{One of \code{values} specifying the initial value of the slider
input, defaults to \code{NULL}, in which case the slider input defaults to the
first choice.}
}
\description{
A take on shiny's \code{sliderInput}.
}
\examples{

### Range inputs

# Select from a range of numeric values.

rangeInput(id = NULL) \%>\%
  background("yellow")

### Increase the number of labels

rangeInput(
  id = NULL,
  default = 30,
  labels = 8
) \%>\%
  background("purple")

### Increase thumb step

# We'll hide the filled portion of the input with `fill` and change how
# tick marks are placed with `snap`.

rangeInput(
  id = NULL,
  step = 10,  # <-
  snap = TRUE,
  fill = FALSE
) \%>\%
  background("red")

### Interval inputs

# Select an interval from a range of numeric values. Intervals are draggable
# by default, this can be toggled off with `draggable = FALSE`.

intervalInput(
  id = NULL,
  default = c(45, 65)
) \%>\%
    background("blue")

### sliderInput

# Select a value from a set of choices using a slider.

sliderInput

sliderInput(
  id = NULL,
  choices = paste("Choice", 1:6)
)

}
\seealso{
Other inputs: \code{\link{addressInput}},
  \code{\link{buttonGroupInput}},
  \code{\link{buttonInput}}, \code{\link{checkboxInput}},
  \code{\link{dateInput}}, \code{\link{fileInput}},
  \code{\link{formInput}}, \code{\link{groupInput}},
  \code{\link{loginInput}}, \code{\link{navInput}},
  \code{\link{radioInput}}, \code{\link{selectInput}},
  \code{\link{textInput}}
}
\concept{inputs}
