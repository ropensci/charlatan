
test_that("instantiation failure is clear", {
  expect_error(cr_loc_spec_provider("ColorProvider", "fr_FR"), "There is no locale fr_FR for provider ColorProvider")
  expect_error(cr_loc_spec_provider("CremeBruleeProvider", "fr_FR"), "CremeBruleeProvider does not exist")
})

test_that("instantiation does return the right object", {
  expected <- CompanyProvider_de_DE$new()
  test <- cr_loc_spec_provider("CompanyProvider", "de_DE")
  expect_true(all(class(expected) == class(test)))
})

test_that("subclass logic works", {
  expect_warning(subclass("PersonProvider"))
  aa <- suppressWarnings(subclass("PersonProvider"))
  expect_equal(aa$locale, "en_US")
  expect_true(
    all(c("PersonProvider_en_US", "BaseProvider", "PersonProvider") %in% class(aa))
  )
})
inherit_from_base_provider <- function(provider) {
  upperclass <- eval(parse(text = provider))$self$get_inherit()$classname
  "BaseProvider" %in% upperclass
}

test_that("all localized providers have their locale set", {
  for (provider in available_providers) {
    # All localized providers only:
    if (inherit_from_base_provider(provider)) {
      # the bare class (not localized) must Error when you try to
      # activate it.
      expect_error(
        eval(parse(text = provider))$new(),
        regexp = "You cannot instantiate this bare class of"
      )
      # if a provider inherits from BaseProvider it MUST have
      # an en_US locale.
      prov <- cr_loc_spec_provider(provider, "en_US")
      # make sure every locale has $locale filled
      for (loc in prov$allowed_locales()) {
        provider_test <- cr_loc_spec_provider(provider, loc)
        expect_identical(provider_test$locale, loc)
      }
    }
  }
})
