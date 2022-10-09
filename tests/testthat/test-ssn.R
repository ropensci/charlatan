context("SSNProvider works")

test_that("SSNProvider works", {
  aa <- SSNProvider$new()

  expect_is(aa, "SSNProvider")
  expect_is(aa, "R6")

  expect_is(aa$render, "function")
  expect_is(aa$render(), "character")
  expect_match(aa$render(), "\\d\\d\\d-\\d\\d-\\d\\d\\d\\d") # :(

  expect_error(SSNProvider$new("ex_EX"),
    "ex_EX not in set of available locales")
})

context("ch_ssn works")

test_that("ch_ssn", {
  expect_is(ch_ssn(), "character")
  expect_match(ch_ssn(), "\\d\\d\\d-\\d\\d-\\d\\d\\d\\d") # :(
  expect_equal(length(ch_ssn(3)), 3)
})

