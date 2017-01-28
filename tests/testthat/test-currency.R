context("CurrencyProvider works")

test_that("CurrencyProvider works", {
  aa <- CurrencyProvider$new()

  expect_is(aa, "CurrencyProvider")
  expect_is(aa, "R6")

  expect_is(aa$render, "function")
  expect_is(aa$render(), "character")
  expect_equal(nchar(aa$render()), 3)
  expect_match(aa$render(), "[A-Z]")
})


context("ch_currency fxn")
test_that("ch_currency works", {
  expect_is(ch_currency(), "character")
  expect_equal(length(ch_currency(3)), 3)
})
