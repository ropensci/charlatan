context("NumericsProvider")

test_that("NumericsProvider works", {
  aa <- NumericsProvider$new()

  expect_is(aa, "R6")
  expect_is(aa, "NumericsProvider")

  expect_is(aa$double, "function")
  expect_type(aa$double(), "double")

  expect_is(aa$integer, "function")
  expect_type(aa$integer(), "double")
  expect_is(aa$integer(), "numeric")

  expect_is(aa$unif, "function")
  expect_type(aa$unif(), "double")
  expect_is(aa$unif(), "numeric")

  expect_is(aa$norm, "function")
  expect_type(aa$norm(), "double")

  expect_is(aa$lnorm, "function")
  expect_type(aa$lnorm(), "double")

  expect_is(aa$beta, "function")
  expect_type(aa$beta(10, 1, 1), "double")
})

# ch_double
# ch_integer
# ch_unif
# ch_norm
# ch_lnorm
# ch_beta

context("ch_double")
test_that("ch_double works", {
  expect_type(ch_double(), "double")
  expect_equal(length(ch_double(n = 10)), 10)
  expect_equal(length(ch_double(n = 100)), 100)
  expect_equal(length(ch_double(n = 500)), 500)
})

context("ch_integer")
test_that("ch_integer works", {
  expect_type(ch_integer(), "double")
  expect_equal(length(ch_integer(n = 10)), 10)
  expect_equal(length(ch_integer(n = 100)), 100)
  expect_equal(length(ch_integer(n = 500)), 500)
})

context("ch_unif")
test_that("ch_unif works", {
  expect_type(ch_unif(), "double")
  expect_equal(length(ch_unif(n = 10)), 10)
  expect_equal(length(ch_unif(n = 100)), 100)
  expect_equal(length(ch_unif(n = 500)), 500)
})

context("ch_norm")
test_that("ch_norm works", {
  expect_type(ch_norm(), "double")
  expect_equal(length(ch_norm(n = 10)), 10)
  expect_equal(length(ch_norm(n = 100)), 100)
  expect_equal(length(ch_norm(n = 500)), 500)
})

context("ch_lnorm")
test_that("ch_lnorm works", {
  expect_type(ch_lnorm(), "double")
  expect_equal(length(ch_lnorm(n = 10)), 10)
  expect_equal(length(ch_lnorm(n = 100)), 100)
  expect_equal(length(ch_lnorm(n = 500)), 500)
})


context("ch_beta")
test_that("ch_beta works", {
  expect_type(ch_beta(shape1 = 10, shape2 = 1), "double")
  expect_equal(length(ch_beta(n = 10, shape1 = 10, shape2 = 1)), 10)
  expect_equal(length(ch_beta(n = 100, shape1 = 10, shape2 = 1)), 100)
  expect_equal(length(ch_beta(n = 500, shape1 = 10, shape2 = 1)), 500)
})
