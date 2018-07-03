context("AddressProvider works")

test_that("AddressProvider works", {
  aa <- AddressProvider$new()

  expect_is(aa, "AddressProvider")
  expect_is(aa, "R6")

  expect_is(aa$locale, "character")
  expect_equal(aa$locale, "en_US")

  expect_is(aa$city_suffix, "function")
  expect_is(aa$city_suffix(), "character")
  expect_equal(length(aa$city_suffix()), 1)

  expect_is(aa$street_suffix, "function")
  expect_is(aa$street_suffix(), "character")
  expect_equal(length(aa$street_suffix()), 1)

  expect_is(aa$building_number, "function")
  expect_is(aa$building_number(), "character")
  expect_equal(length(aa$building_number()), 1)

  expect_is(aa$city, "function")
  expect_is(aa$city(), "character")
  expect_equal(length(aa$city()), 1)

  expect_is(aa$street_name, "function")
  expect_is(aa$street_name(), "character")
  expect_equal(length(aa$street_name()), 1)

  expect_is(aa$street_address, "function")
  expect_is(aa$street_address(), "character")
  expect_equal(length(aa$street_address()), 1)

  expect_is(aa$address, "function")
  expect_is(aa$address(), "character")
  expect_equal(length(aa$address()), 1)

  expect_is(aa$country, "function")
  expect_is(aa$country(), "character")
  expect_equal(length(aa$country()), 1)

  expect_is(aa$country_code, "function")
  expect_is(aa$country_code(), "character")
  expect_equal(length(aa$country_code()), 1)

  expect_is(aa$postcode, "function")
  expect_is(aa$postcode(), "character")
  expect_equal(length(aa$postcode()), 1)
})

test_that("AddressProvider locale support works", {
  test_locale <- function(loc) {
    bb <- AddressProvider$new(locale = loc)

    expect_is(bb$locale, "character")
    expect_equal(bb$locale, loc)

    expect_is(bb$city_suffix(), "character")
    expect_is(bb$street_suffix(), "character")
  }

  locales <- c("en_US", "en_GB")
  for (loc in locales) {
    test_locale(loc)
  }
})
