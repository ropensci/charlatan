test_that("CreditCardProvider works", {
  aa <- CreditCardProvider$new()

  expect_s3_class(aa, "CreditCardProvider")
  expect_s3_class(aa, "R6")

  expect_type(aa$credit_card_number, "closure")
  expect_type(aa$credit_card_number(), "character")
  expect_type(as.numeric(aa$credit_card_number()), "double")

  expect_type(aa$credit_card_provider, "closure")
  expect_type(aa$credit_card_provider(), "character")

  expect_type(aa$credit_card_security_code, "closure")
  expect_type(aa$credit_card_security_code(), "character")
  expect_type(as.numeric(aa$credit_card_security_code()), "double")
})

test_that("ColorProvider locale support works", {
  bb <- CreditCardProvider$new()$credit_card_type()

  expect_type(bb$length, "double")
  expect_type(bb$name, "character")
  expect_type(bb$prefixes, "character")
  expect_type(bb$security_code, "character")
  expect_type(bb$security_code_length, "double")
})


test_that("ch_credit_card_provider", {
  expect_type(ch_credit_card_provider(), "character")
  expect_equal(length(ch_credit_card_provider(3)), 3)
})


test_that("ch_credit_card_number", {
  expect_type(ch_credit_card_number(), "character")
  expect_type(as.numeric(ch_credit_card_number()), "double")
  expect_equal(length(ch_credit_card_number(10)), 10)
})


test_that("ch_credit_card_security_code", {
  expect_type(ch_credit_card_security_code(), "character")
  expect_type(as.numeric(ch_credit_card_security_code()), "double")
  expect_equal(length(ch_credit_card_security_code(30)), 30)
})
