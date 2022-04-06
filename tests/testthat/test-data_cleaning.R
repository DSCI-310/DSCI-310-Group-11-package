library(testthat)
source("../../R/data_cleaning.R")

test_that("data_cleaning should output a data frame with the specified columns removed", {
  expect_equal(data_cleaning(df, col_ppl), df_gen_num_col, ignore_attr = TRUE)
  expect_equal(data_cleaning(df, col_gen_num), df_ppl_col, ignore_attr = TRUE)
  expect_equal(data_cleaning(df, col_all), empty_df, ignore_attr = TRUE)
})

test_that("data_cleaning should take in a data frame which also has observations", {
  expect_error(data_cleaning(not_df, col_num))
  expect_error(data_cleaning(text_in, col_ppl))
  expect_error(data_cleaning(empty_df, col_ppl))
  expect_error(data_cleaning(FALSE, col_all))
})

test_that("data_cleaning should report an error when multiple columns names are
          not quoted and/or in a column
          (input should be `c('<col_name>', '<col_name2>', ...)` )", {
  expect_error(data_cleaning(text_in, col_2str_in))
  expect_error(data_cleaning(df, col_str_in))
  expect_error(data_cleaning(df, col_2str_in))
})

test_that("data_cleaning should report an error when columns names are incorrect", {
  expect_error(data_cleaning(df_gen_col, col_ppl_num))
  expect_error(data_cleaning(df, col_incor))
  expect_error(data_cleaning(df, c("")))
  expect_error(data_cleaning(empty_df, col_ppl))
})
