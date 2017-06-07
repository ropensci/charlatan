context("CompanyProvider works")

test_that("CompanyProvider works", {
  aa <- CompanyProvider$new()

  expect_is(aa, "CompanyProvider")
  expect_is(aa, "R6")

  expect_is(aa$company, "function")
  expect_is(aa$company(), "character")

  # company_prefix not supported by en_US
  expect_is(aa$company_prefix, "function")
  expect_error(aa$company_prefix(), "not supported for en_US")

  expect_is(aa$company_suffix, "function")
  expect_is(aa$company_suffix(), "character")

  expect_is(aa$catch_phrase, "function")
  expect_is(aa$catch_phrase(), "character")

  expect_is(aa$bs, "function")
  expect_is(aa$bs(), "character")

  # company_prefix not supported by en_US
  expect_is(aa$siren, "function")
  expect_error(aa$siren(), "not supported for en_US")
})

context("ch_company works")

test_that("ch_company", {
  aa <- ch_company()

  expect_is(aa, "character")
  expect_gt(nchar(aa), 0)
})

test_that("ch_company - n parameter", {
  expect_equal(length(ch_company(n = 10)), 10)
  expect_equal(length(ch_company(n = 100)), 100)
  expect_equal(length(ch_company(n = 500)), 500)
})

test_that("ch_company - locale parameter", {
  expect_is(ch_company(locale = "fr_FR"), "character")
  expect_is(ch_company(locale = "de_DE"), "character")
  expect_is(ch_company(locale = "bg_BG"), "character")
})

