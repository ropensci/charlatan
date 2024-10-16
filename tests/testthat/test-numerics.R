test_that("NumericsProvider works", {
  aa <- NumericsProvider$new()

  expect_s3_class(aa, "R6")
  expect_s3_class(aa, "NumericsProvider")

  expect_type(aa$double, "closure")
  expect_type(aa$double(), "double")

  expect_type(aa$integer, "closure")
  expect_type(aa$integer(), "double")
  expect_type(aa$integer(), "double")

  expect_type(aa$unif, "closure")
  expect_type(aa$unif(), "double")
  expect_type(aa$unif(), "double")

  expect_type(aa$norm, "closure")
  expect_type(aa$norm(), "double")

  expect_type(aa$lnorm, "closure")
  expect_type(aa$lnorm(), "double")

  expect_type(aa$beta, "closure")
  expect_type(aa$beta(10, 1, 1), "double")
})

# ch_double
# ch_integer
# ch_unif
# ch_norm
# ch_lnorm
# ch_beta

test_that("ch_double works", {
  expect_type(ch_double(), "double")
  expect_equal(length(ch_double(n = 10)), 10)
  expect_equal(length(ch_double(n = 100)), 100)
  expect_equal(length(ch_double(n = 500)), 500)
})

test_that("ch_integer works", {
  expect_type(ch_integer(), "double")
  expect_equal(length(ch_integer(n = 10)), 10)
  expect_equal(length(ch_integer(n = 100)), 100)
  expect_equal(length(ch_integer(n = 500)), 500)
})

test_that("ch_unif works", {
  expect_type(ch_unif(), "double")
  expect_equal(length(ch_unif(n = 10)), 10)
  expect_equal(length(ch_unif(n = 100)), 100)
  expect_equal(length(ch_unif(n = 500)), 500)
})

test_that("ch_norm works", {
  expect_type(ch_norm(), "double")
  expect_equal(length(ch_norm(n = 10)), 10)
  expect_equal(length(ch_norm(n = 100)), 100)
  expect_equal(length(ch_norm(n = 500)), 500)
})

test_that("ch_lnorm works", {
  expect_type(ch_lnorm(), "double")
  expect_equal(length(ch_lnorm(n = 10)), 10)
  expect_equal(length(ch_lnorm(n = 100)), 100)
  expect_equal(length(ch_lnorm(n = 500)), 500)
})


test_that("ch_beta works", {
  expect_type(ch_beta(shape1 = 10, shape2 = 1), "double")
  expect_equal(length(ch_beta(n = 10, shape1 = 10, shape2 = 1)), 10)
  expect_equal(length(ch_beta(n = 100, shape1 = 10, shape2 = 1)), 100)
  expect_equal(length(ch_beta(n = 500, shape1 = 10, shape2 = 1)), 500)
})
