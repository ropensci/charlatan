test_that("PhoneNumberProvider works", {
  aa <- PhoneNumberProvider_en_US$new()

  expect_s3_class(aa, "PhoneNumberProvider")
  expect_s3_class(aa, "R6")

  expect_type(aa$render, "closure")
  expect_type(aa$render(), "character")

  expect_type(PhoneNumberProvider_fr_FR$new()$render(), "character")
  expect_type(PhoneNumberProvider_sk_SK$new()$render(), "character")
  expect_type(PhoneNumberProvider_en_AU$new()$render(), "character")
  expect_type(PhoneNumberProvider_es_PE$new()$render(), "character")
})
