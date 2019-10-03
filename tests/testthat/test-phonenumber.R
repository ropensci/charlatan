context("PhoneNumberProvider works")

test_that("PhoneNumberProvider works", {
  aa <- PhoneNumberProvider$new()

  expect_is(aa, "PhoneNumberProvider")
  expect_is(aa, "R6")

  expect_is(aa$render, "function")
  expect_is(aa$render(), "character")

  expect_is(PhoneNumberProvider$new("fr_FR")$render(), "character")
  expect_is(PhoneNumberProvider$new("sk_SK")$render(), "character")
  expect_is(PhoneNumberProvider$new("en_AU")$render(), "character")
  expect_is(PhoneNumberProvider$new("es_PE")$render(), "character")

  expect_error(PhoneNumberProvider$new("ex_EX"), 
    "ex_EX not in set of available locales")
})

