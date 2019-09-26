##' Add a loader message to a UI element
##' @export
##' @param ui_element UI element
##' @param message message
withLoaderMessage <- function(ui_element, message = "Loading...") {
  shiny::tagList(
    shiny::singleton(
      shiny::tags$head(shiny::tags$link(rel = "stylesheet", href = "shinyloadermessage/loader.css"))
    ),
    shiny::div(
      ui_element,
      shiny::p(message, class = "shinyloadermessage-message"),
      class = "shinyloadermessage-container"
    )
  )
}

.onLoad <- function(lib, pkg) {
  shiny::addResourcePath("shinyloadermessage", system.file("css", package = "shinyloadermessage"))
}
