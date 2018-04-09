sendUpdateMessage <- function(id, type, data) {
  if (all(names2(data) == "")) {
    data <- vapply(data, as.character, character(1), USE.NAMES = FALSE)
  }

  msg <- list(
    type = paste0("update:", type),
    data = data
  )

  getDefaultReactiveDomain()$sendInputMessage(id, msg)
}

#' Update choices, values, selected choices
#'
#' Functions to update choices, values, and selected choices.
#'
#' @export
updateChoices <- function(id, ...) {
  args <- dots_list(...)

  sendUpdateMessage(id, "choices", args)
}

#' @rdname updateChoices
#' @export
updateValues <- function(id, ...) {
  args <- dots_list(...)

  sendUpdateMessage(id, "values", args)
}

#' @rdname updateChoices
#' @export
updateSelected <- function(id, ...) {
  args <- dots_list(...)

  stop("`updateSelected` is not yet implemented")
}