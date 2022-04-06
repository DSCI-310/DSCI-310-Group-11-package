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
  if (!is.data.frame(data_frame)) {
    stop("data_frame must be a data frame")
  }

  GGally::ggpairs(data = dataframe)
}
