context("fraudster")

test_that("fraudster works", {
  aa <- fraudster()

  expect_is(aa, "FraudsterClient")
  expect_equal(aa$locale, "en_US")
  expect_is(aa$beta, "function")
  expect_is(aa$color_name, "function")
  expect_is(aa$color_name(), "character")
})

test_that("fraudster locale support works", {
  bb <- fraudster(locale = "fr_FR")

  expect_is(bb, "FraudsterClient")
  expect_is(bb$locale, "character")
  expect_equal(bb$locale, "fr_FR")

  # some funs don't have support in certain locales
  expect_error(bb$color_name(), "fr_fr not in set of available locales")
})

test_that("fraudster - fails well", {
  expect_error(fraudster("foobar"), "foobar not in set of available locales")
})


context("FraudsterClient")

test_that("FraudsterClient works", {
  aa <- FraudsterClient$new()

  expect_is(aa, "FraudsterClient")
  expect_equal(aa$locale, "en_US")
  expect_is(aa$beta, "function")
  expect_is(aa$color_name, "function")
})

test_that("FraudsterClient - locale parameter", {
  bb <- FraudsterClient$new(locale = "fr_FR")

  expect_is(bb, "FraudsterClient")
  expect_is(bb$locale, "character")
  expect_equal(bb$locale, "fr_FR")

  # some funs don't have support in certain locales
  expect_error(bb$color_name(), "fr_fr not in set of available locales")
})

test_that("FraudsterClient - fails well", {
  expect_error(FraudsterClient$new(locale = "foobar"),
               "foobar not in set of available locales")
})
