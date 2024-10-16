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
      # print(provider)
      expect_error(
        eval(parse(text = provider))$new(),
        regexp = "You cannot instantiate this Parent Provider:"
      )
      # if a provider inherits from BaseProvider it MUST have
      # an en_US locale.
      prov <- cr_loc_spec_provider(provider, "en_US")
      # make sure every locale has $locale filled
      for (loc in prov$allowed_locales()) {
        # print(loc)
        suppressWarnings(
          # some providers call others, if those do not exist
          # we default to en_US. But it is a bit annoying in the
          # tests.
          {
            provider_test <- cr_loc_spec_provider(provider, loc)
          }
        )
        # must have a locale, and a provider set.
        expect_identical(provider_test$locale, loc)
        expect_identical(provider_test$provider, provider)
        # must have a check_locale, allowed_locales method.
        expect_error(provider_test$check_locale("en_OO"))
        thing <- provider_test$allowed_locales()
        expect_true(is.vector(thing))
        expect_gt(length(thing), 0)
      }
    }
  }
})

test_that("All non-localized providers inherit from BareProvider", {
  for (provider in charlatan::available_providers) {
    # All nonlocalized providers only:
    if (!inherit_from_base_provider(provider)) {
      # should inherit from bare provider
      # print(provider)
      prov <- eval(parse(text = provider))$new()
      expect_true("BareProvider" %in% class(prov), label = provider)
      expect_equal(prov$provider, provider, label = provider)
    }
  }
})


test_that("checksum_util works for our usecases", {
  # ISBN 10
  expect_equal(checksum_util(c(0, 3, 0, 6, 4, 0, 6, 1, 5), 10:2), 130)
  # ISBN 13
  expect_equal(checksum_util(c(9, 7, 8, 0, 3, 0, 6, 4, 0, 6, 1, 5), rep(c(1, 3), 6)), 93)
  # SSN dutch
  expect_equal(checksum_util(c(1, 1, 1, 2, 2, 2, 3, 3), 9:2) %% 11, 3)
  expect_equal(checksum_util(c(1, 2, 3, 4, 5, 6, 7, 8), 9:2) %% 11, 2)
})
