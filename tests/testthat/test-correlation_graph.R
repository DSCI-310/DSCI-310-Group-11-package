library(vdiffr)
library(testthat)

correlation_graph_matrix <- correlation_graph(mtcars[1:3, 1:3])

test_that("refactoring the code should not change the plot", {
  expect_doppelganger("ggpairs plot",
                      correlation_graph_matrix)
})
