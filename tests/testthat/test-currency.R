test_that("CurrencyProvider works", {
  aa <- CurrencyProvider$new()

  expect_s3_class(aa, "CurrencyProvider")
  expect_s3_class(aa, "R6")

  expect_type(aa$render, "closure")
  expect_type(aa$render(), "character")
  expect_equal(nchar(aa$render()), 3)
  expect_match(aa$render(), "[A-Z]")
})


test_that("ch_currency works", {
  expect_type(ch_currency(), "character")
  expect_equal(length(ch_currency(3)), 3)
})
