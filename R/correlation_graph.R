#' Create a ggpair scatter plot
#'
#' A short-cut function for creating 2 dimensional ggpair scatterplots
#'
#' @param dataframe A data frame or tibble.
#'
#' @return A ggpairs scatterplot representing a correlation matrix between pairs
#'  of variables
#'
#' @export
#'
#' @examples
#' correlation_graph(mtcars)
correlation_graph <- function(dataframe) {
  if (!is.data.frame(dataframe)) {
    stop("`dataframe` must be a data frame")
  }

  GGally::ggpairs(
    data = dataframe,
    lower = list(continuous = GGally::wrap("points", size = 0.45, color = "steelblue", alpha = 0.5)),
    diag = list(continuous = GGally::wrap("densityDiag", fill = "steelblue"))
  ) +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 40, size = 7))
}
