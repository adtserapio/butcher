context("ksvm")

test_that("ksvm + axe_() works", {
  skip_on_cran()
  skip_if_not_installed("parsnip")
  skip_if_not_installed("kernlab")
  # Load
  library(parsnip)
  library(kernlab)
  # Data
  data(spam)
  # Fit
  ksvm_class <- svm_poly(mode = "classification") %>%
    set_engine("kernlab", kernel = "rbfdot") %>%
    fit(type ~ ., data = spam)
  # Butcher
  x <- butcher(ksvm_class)
  # expect_equal(x@kcall, rlang::expr(dummy_call()))
  # expect_equal(x@fitted, numeric(0))
  # expect_equal(x@xmatrix, numeric(0))
  # Predict
  expected_output <- predict(ksvm_class$fit, spam[,-58])
  new_output <- predict(x, spam[,-58])
  expect_equal(new_output, expected_output)
})