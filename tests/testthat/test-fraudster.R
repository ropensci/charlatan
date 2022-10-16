context("fraudster")

test_that("fraudster works", {
  aa <- fraudster()

  expect_is(aa, "FraudsterClient")
  expect_equal(aa$locale, "en_US")
  expect_is(aa$beta, "function")
  expect_is(aa$color_name, "function")
  expect_is(aa$color_name(), "character")
})

test_that("fraudster - all the things work", {
  aa <- fraudster()

  expect_is(aa$job(), "character")
  expect_is(aa$name(), "character")
  expect_is(aa$color_name(), "character")
  expect_is(aa$safe_color_name(), "character")
  expect_is(aa$hex_color(), "character")
  expect_is(aa$safe_hex_color(), "character")

  # rgb_color() returns a list of RGB vectors
  expect_is(aa$rgb_color(), "list")
  expect_is(aa$rgb_color()[[1]], "integer")
  expect_is(aa$rgb_css_color(), "character")

  expect_type(aa$lat(), "double")
  expect_type(aa$lon(), "double")
  expect_type(aa$position(), "double")
  expect_is(aa$doi(), "character")
  expect_is(aa$timezone(), "list")
  expect_type(aa$unix_time(), "double")
  expect_is(aa$date_time(), "POSIXct")
  expect_is(aa$genus(), "character")
  expect_is(aa$epithet(), "character")
  expect_is(aa$species(), "character")
  expect_is(aa$sequence(), "character")
  expect_is(aa$phone_number(), "character")
  expect_type(aa$double(), "double")
  expect_type(aa$integer(), "double")
  expect_type(aa$uniform(), "double")
  expect_type(aa$norm(), "double")
  expect_type(aa$lnorm(), "double")
  expect_type(aa$beta(), "double")
  expect_is(aa$currency(), "character")
  expect_is(aa$credit_card_number(), "character")
  expect_is(aa$credit_card_provider(), "character")
  expect_is(aa$credit_card_security_code(), "character")
})

test_that("fraudster locale support works", {
  bb <- fraudster(locale = "fr_FR")

  expect_is(bb, "FraudsterClient")
  expect_is(bb$locale, "character")
  expect_equal(bb$locale, "fr_FR")

  # some funs don't have support in certain locales
  expect_error(bb$color_name(), "There is no locale fr_FR for provider ColorProvider")
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
  expect_error(bb$color_name(), "There is no locale fr_FR for provider ColorProvider")
})

test_that("FraudsterClient - fails well", {
  expect_error(FraudsterClient$new(locale = "foobar"),
               "foobar not in set of available locales")
})
