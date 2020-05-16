#' shiny app
#'
#' @return a app
#' @export
#'
#' @examples
run_exam1 <- function() {
    shiny::runApp(appDir = system.file("shinyapps", package="nCov2019"))
}
