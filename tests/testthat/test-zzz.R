
test_that("instantiation failure is clear", {
  expect_error(cr_loc_spec_provider("ColorProvider", "fr_FR"), "There is no locale fr_FR for provider ColorProvider")
  expect_error(cr_loc_spec_provider("CremeBruleeProvider", "fr_FR"), "CremeBruleeProvider does not exist")
})

test_that("instantiation does return the right object", {
  expected <- CompanyProvider_de_DE$new()
  test <- cr_loc_spec_provider("CompanyProvider", "de_DE")
  expect_true(all(class(expected) == class(test)))
})

test_that("all localized providers have their locale set", {
  for (provider in available_providers) {
    # if a provider inherits from BaseProvider it MUST have
    # an en_US locale.
    if ("BaseProvider" %in% class(eval(parse(text=provider))$new())) {
      prov <- cr_loc_spec_provider(provider, "en_US")
      for (loc in prov$allowed_locales()) {
        provider_test <- cr_loc_spec_provider(provider, loc)
        expect_identical(provider_test$locale, loc)
      }
    }
  }
})
