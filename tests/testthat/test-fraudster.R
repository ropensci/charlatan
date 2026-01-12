test_that("fraudster works", {
  aa <- fraudster()

  expect_s3_class(aa, "FraudsterClient")
  expect_equal(aa$locale, "en_US")
  expect_type(aa$beta, "closure")
  expect_type(aa$color_name, "closure")
  expect_type(aa$color_name(), "character")
})

test_that("fraudster - all the things work", {
  aa <- fraudster(locale = "en_US")
  ## expect all providers to be filled for en_US
  providers <- c(
    # localized
    "ap", "colp", "comp", "ep", "fp", "ip", "jp", "lp", "pp", "pnp", "ssnp", "tp", "uap",
    # non localized
    "coordp", "ccp", "curp", "dtp", "doip", "sp"
  )
  for (prov in providers) {
    expect_no_error(aa$.__enclos_env__$private$check_prov("test", prov))
  }


  expect_type(aa$job(), "character")
  expect_type(aa$name(), "character")
  expect_type(aa$color_name(), "character")
  expect_type(aa$safe_color_name(), "character")
  expect_type(aa$hex_color(), "character")
  expect_type(aa$safe_hex_color(), "character")

  # rgb_color() returns a list of RGB vectors
  expect_type(aa$rgb_color(), "list")
  expect_type(aa$rgb_color()[[1]], "integer")
  expect_type(aa$rgb_css_color(), "character")

  expect_type(aa$lat(), "double")
  expect_type(aa$lon(), "double")
  expect_type(aa$position(), "double")
  expect_type(aa$doi(), "character")
  expect_type(aa$timezone(), "list")
  expect_type(aa$unix_time(), "double")
  expect_s3_class(aa$date_time(), "POSIXct")
  expect_type(aa$genus(), "character")
  expect_type(aa$epithet(), "character")
  expect_type(aa$species(), "character")
  expect_type(aa$sequence(), "character")
  expect_type(aa$phone_number(), "character")
  expect_type(aa$double(), "double")
  expect_type(aa$integer(), "double")
  expect_type(aa$uniform(), "double")
  expect_type(aa$norm(), "double")
  expect_type(aa$lnorm(), "double")
  expect_type(aa$beta(shape1 = 1, shape2 = 1), "double")
  expect_type(aa$currency(), "character")
  expect_type(aa$credit_card_number(), "character")
  expect_type(aa$credit_card_provider(), "character")
  expect_type(aa$credit_card_security_code(), "character")
  expect_gt(nchar(aa$address()), 0)
  expect_gt(nchar(aa$company()), 0)
  expect_gt(nchar(aa$element()), 0)
  expect_gt(nchar(aa$element_symbol()), 0)
  expect_gt(nchar(aa$file_name()), 3)
  expect_gt(nchar(aa$email()), 3)
  expect_gt(nchar(aa$url()), 3)
  expect_gt(nchar(aa$mac_address()), 0)
  expect_gt(nchar(aa$lorem_paragraph()), 0)
  expect_gt(nchar(aa$ssn()), 0)
})

test_that("fraudster locale support works", {
  expect_warning(
    {
      bb <- fraudster(locale = "fr_FR")
    },
    regexp = "does not have locale fr_FR"
  )

  expect_s3_class(bb, "FraudsterClient")
  expect_type(bb$locale, "character")
  expect_equal(bb$locale, "fr_FR")

  # some funs don't have support in certain locales
  expect_error(bb$color_name(), "There is no locale fr_FR for provider ColorProvider")
})

test_that("fraudster - fails well", {
  expect_error(fraudster("foobar"), "foobar not in set of available locales")
})


test_that("FraudsterClient works", {
  aa <- FraudsterClient$new()

  expect_s3_class(aa, "FraudsterClient")
  expect_equal(aa$locale, "en_US")
  expect_type(aa$beta, "closure")
  expect_type(aa$color_name, "closure")
})

test_that("FraudsterClient - fails well", {
  expect_error(
    FraudsterClient$new(locale = "foobar"),
    "foobar not in set of available locales"
  )
})
