context("PhoneNumberProvider works")

test_that("PhoneNumberProvider works", {
  aa <- PhoneNumberProvider_en_US$new()

  expect_is(aa, "PhoneNumberProvider")
  expect_is(aa, "R6")

  expect_is(aa$render, "function")
  expect_is(aa$render(), "character")

  expect_is(PhoneNumberProvider_fr_FR$new()$render(), "character")
  expect_is(PhoneNumberProvider_sk_SK$new()$render(), "character")
  expect_is(PhoneNumberProvider_en_AU$new()$render(), "character")
  expect_is(PhoneNumberProvider_es_PE$new()$render(), "character")
})
