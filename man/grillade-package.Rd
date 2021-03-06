% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grillade-package.R
\docType{package}
\name{grillade-package}
\alias{grillade-package}
\title{Grid System for the Web}
\description{
Grid sytem for 'shiny' applications or 'rmarkdown'
 document and to create 'htmlwidgets' matrix.
}
\note{
CSS code used by \code{grillade} is from \href{https://www.knacss.com/doc.html#grids}{KNACSS}.
}
\section{Shiny}{

\code{\link{grillade}} can be used in UI but also in server with
 \code{grilladeOutput}/\code{renderGrillade}.
}

\section{Markdown}{

\code{\link{grillade}} can be used directly in a markdown document with
 \code{htmlwidget}s or HTML tags or with Pandoc's fenced div: \code{\:\:\:\:} and normal chunks.
}

\examples{

library(grillade)

box_example <- function(...) {
  tags$div(
    style = "box-sizing:border-box;border:5px solid #1C6EA4;height:100\%;",
    ...
  )
}

# Using autogrid: as many columns as elements
grillade(
  box_example("Column 1"),
  box_example("Column 2"),
  box_example("Column 3"),
  box_example("Column 4"),
  box_example("Column 5")
)

# Custom number of cols and elements
grillade(
  n_col = 3,
  knack(
    cols = 2,
    box_example("Column 1")
  ),
  box_example("Column 2"),
  box_example("Column 3"),
  knack(
    cols = 2,
    rows = 2,
    box_example("Column 4")
  ),
  box_example("Column 5")
)
}
\author{
Victor Perrier (@dreamRs_fr)
}
