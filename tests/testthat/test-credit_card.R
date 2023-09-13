context("CreditCardProvider works")

test_that("CreditCardProvider works", {
  aa <- CreditCardProvider$new()

  expect_is(aa, "CreditCardProvider")
  expect_is(aa, "R6")

  expect_is(aa$credit_card_number, "function")
  expect_is(aa$credit_card_number(), "character")
  expect_is(as.numeric(aa$credit_card_number()), "numeric")

  expect_is(aa$credit_card_provider, "function")
  expect_is(aa$credit_card_provider(), "character")

  expect_is(aa$credit_card_security_code, "function")
  expect_is(aa$credit_card_security_code(), "character")
  expect_is(as.numeric(aa$credit_card_security_code()), "numeric")
})

test_that("ColorProvider locale support works", {
  bb <- CreditCardProvider$new()$credit_card_type()

  expect_is(bb$length, "numeric")
  expect_is(bb$name, "character")
  expect_is(bb$prefixes, "character")
  expect_is(bb$security_code, "character")
  expect_is(bb$security_code_length, "numeric")
})


context("ch_credit_card_provider fxn works")
test_that("ch_credit_card_provider", {
  expect_is(ch_credit_card_provider(), "character")
  expect_equal(length(ch_credit_card_provider(3)), 3)
})


context("ch_credit_card_number fxn works")
test_that("ch_credit_card_number", {
  expect_is(ch_credit_card_number(), "character")
  expect_is(as.numeric(ch_credit_card_number()), "numeric")
  expect_equal(length(ch_credit_card_number(10)), 10)
})


context("ch_credit_card_security_code fxn works")
test_that("ch_credit_card_security_code", {
  expect_is(ch_credit_card_security_code(), "character")
  expect_is(as.numeric(ch_credit_card_security_code()), "numeric")
  expect_equal(length(ch_credit_card_security_code(30)), 30)
})
