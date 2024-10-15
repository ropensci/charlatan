# Make sure that the inheritance works correctly
test_that("AddressProvider basic functionality works", {
  expect_error(AddressProvider())
  aa <- cr_loc_spec_provider("AddressProvider", "en_US")

  expect_s3_class(aa, "AddressProvider")
  expect_s3_class(aa, "R6")

  expect_type(aa$locale, "character")
  expect_equal(aa$locale, "en_US")
})


test_that("every_locale has the same basic functions", {
  # every locale needs to have address, city, street_addres, street_name and postcode,
  # also, the locale field, should match that locale.
  aa <- cr_loc_spec_provider("AddressProvider", "en_US")
  for (locale in aa$allowed_locales()) {
    bb <- cr_loc_spec_provider("AddressProvider", locale)
    expect_type(bb$locale, "character")
    # every address locale should have these functions
    # the result should be character
    # and the result should not be empty string
    # TODO: check if start or end is not space (could indicate missing value)
    expect_type(bb$address, "closure")
    expect_type(bb$address(), "character")
    expect_false(bb$address() == "")
    expect_type(bb$city, "closure")
    expect_type(bb$city(), "character")
    expect_false(bb$city() == "", label = sprintf("city - %s", locale))
    expect_type(bb$street_address, "closure")
    expect_type(bb$street_address(), "character")
    expect_false(bb$street_address() == "", label = sprintf("city - %s", locale))
    expect_type(bb$street_name, "closure")
    expect_type(bb$street_name(), "character")
    expect_false(bb$street_name() == "", label = sprintf("city - %s", locale))
    expect_type(bb$postcode, "closure")
    expect_type(bb$postcode(), "character")
    expect_false(bb$postcode() == "", label = sprintf("postcode - %s", locale))
    # locale should match locale
    expect_equal(bb$locale, locale)
  }
})


# For every specific locale, test custom functions you create
test_that("custom functions from AddressProvider_en_US work", {
  aa <- cr_loc_spec_provider("AddressProvider", "en_US")

  expect_type(aa$building_number, "closure")
  expect_type(aa$building_number(), "character")
  expect_equal(length(aa$building_number()), 1)

  expect_type(aa$state, "closure")
  expect_type(aa$state(), "character")
  expect_equal(length(aa$state()), 1)
  expect_true(aa$state() %in% aa$.__enclos_env__$private$states)

  expect_type(aa$mil_address, "closure")
  expect_type(aa$mil_address(), "character")
  expect_equal(length(aa$mil_address()), 1)

  expect_type(aa$civ_address, "closure")
  expect_type(aa$civ_address(), "character")
  expect_equal(length(aa$civ_address()), 1)
})

test_that("custom functions from AddressProvider_nl_NL work", {
  aa <- cr_loc_spec_provider("AddressProvider", "nl_NL")

  expect_type(aa$province, "closure")
  expect_type(aa$province(), "character")
  expect_equal(length(aa$province()), 1)
  expect_true(aa$province() %in% aa$.__enclos_env__$private$provinces)
})

test_that("all locales consistently give results -- stresstest", {
  skip_on_cran()
  skip_on_ci()

  aa <- cr_loc_spec_provider("AddressProvider", "en_US")
  for (locale in aa$allowed_locales()) {
    bb <- cr_loc_spec_provider("AddressProvider", locale)
    for (i in 1:50) {
      expect_false(bb$city() == "", label = sprintf("city - %s", locale))
      expect_false(bb$street_address() == "", label = sprintf("city - %s", locale))
      expect_false(bb$street_name() == "", label = sprintf("city - %s", locale))
      expect_false(bb$postcode() == "", label = sprintf("postcode - %s", locale))
    }
  }
})
