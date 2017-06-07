context("AddressProvider works")

test_that("AddressProvider works", {
  aa <- AddressProvider$new()

  expect_is(aa, "AddressProvider")
  expect_is(aa, "R6")

  expect_is(aa$city_suffix, "function")
  expect_is(aa$city_suffix(), "character")

  expect_is(aa$street_suffix, "function")
  expect_is(aa$street_suffix(), "character")

  expect_is(aa$building_number, "function")
  expect_is(aa$building_number(), "character")

  expect_is(aa$city, "function")
  expect_is(aa$city(), "character")

  expect_is(aa$country, "function")
  expect_is(aa$country(), "character")

  expect_is(aa$country_code, "function")
  expect_is(aa$country_code(), "character")

  expect_is(aa$postcode, "function")
  expect_is(aa$postcode(), "character")
})
