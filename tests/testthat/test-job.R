context("JobProvider works")

skip_on_cran()

test_that("JobProvider works", {
  provider <- "JobProvider"
  prov <- cr_loc_spec_provider(provider, "en_US")
  # make sure every locale has $locale filled
  for (loc in prov$allowed_locales()) {
    # print(loc)
    provider_test <- cr_loc_spec_provider(provider, loc)
    job <- provider_test$render()
    expect_is(job, "character")
    expect_gt(nchar(job), 0)
    expect_true(job %in% provider_test$.__enclos_env__$private$formats)
  }
})


context("ch_job works")


test_that("ch_job - n parameter", {
  expect_equal(length(ch_job(n = 10)), 10)
  expect_equal(length(ch_job(n = 100)), 100)
  expect_equal(length(ch_job(n = 500)), 500)
})

test_that("ch_job - locale parameter", {
  expect_true(
    any(grepl(
      ch_job(locale = "fr_FR"),
      JobProvider_fr_FR$new()$.__enclos_env__$private$formats
    ))
  )

  expect_true(
    any(grepl(
      ch_job(locale = "ru_RU"),
      JobProvider_ru_RU$new()$.__enclos_env__$private$formats
    ))
  )
})
