#' Creates a new data frame with selected columns dropped from the old data frame
#'
#' @param dataframe A data frame or data frame extension (e.g. a tibble).
#' @param columns Name(s) of column(s) from the data frame
#'
#' @return A new data frame with columns dropped from the old data frame.
#'   If all columns are to be removed, an empty data frame will be returned.
#'
#' @export
#'
#' @examples
#' data_cleaning(mtcars, c("mpg","disp","qsec"))
#' data_cleaning(mtcars, "disp")
data_cleaning <- function(dataframe, columns) {
  if (!is.data.frame(dataframe)) {
    stop("`dataframe` expects a data frame")
  }

  if (ncol(dataframe) == 0) {
    stop("`data_cleaning` expects a non-empty data frame")
  }

  col_names <- names(dataframe)

  if (setequal(col_names, columns)) {
    dataframe <- data.frame()
    return(dataframe)
  }

  for (c in columns) {
    if ({c} %in% col_names) {
      dataframe <- dataframe |> dplyr::select(-{c})
    } else {
      stop("column name does not exist in the data frame")
    }
  }
  return(dataframe)
}
