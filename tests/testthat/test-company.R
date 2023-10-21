context("CompanyProvider works")

test_that("CompanyProvider works", {
  aa <- CompanyProvider_en_US$new()

  expect_s3_class(aa, "CompanyProvider")
  expect_s3_class(aa, "R6")

  expect_type(aa$company, "closure")
  expect_type(aa$company(), "character")


  expect_type(aa$catch_phrase, "closure")
  expect_type(aa$catch_phrase(), "character")

  expect_type(aa$bs, "closure")
  expect_type(aa$bs(), "character")
})

context("ch_company works")

test_that("ch_company", {
  # temporary allow company locale NULL
  # expect_warning(ch_company())
  aa <- ch_company(locale = "en_US")

  expect_type(aa, "character")
  expect_gt(nchar(aa), 0)
})

test_that("ch_company - n parameter", {
  locale <- "en_US"
  expect_equal(length(ch_company(n = 10, locale = locale)), 10)
  expect_equal(length(ch_company(n = 100, locale = locale)), 100)
  expect_equal(length(ch_company(n = 500, locale = locale)), 500)
})

test_that("ch_company - locale parameter", {
  expect_type(ch_company(locale = "fr_FR"), "character")
  expect_type(ch_company(locale = "de_DE"), "character")
  expect_type(ch_company(locale = "bg_BG"), "character")
})

test_that("all locales have `company()` function", {
  for (loc in CompanyProvider_en_US$new()$allowed_locales()) {
    aa <- cr_loc_spec_provider("CompanyProvider", locale = loc)
    expect_gt(nchar(aa$company()), 0)
    expect_type(aa$company, "closure")
  }
})
## Custom functions
test_that("`catch_phrase()` works", {
  cp_locales <- c("fr_FR", "en_US", "es_MX", "it_IT")
  for (loc in cp_locales) {
    aa <- cr_loc_spec_provider("CompanyProvider", locale = loc)
    expect_type(aa$catch_phrase(), "character")
    expect_gt(nchar(aa$catch_phrase()), 0)
  }
})
test_that("`bs()` works", {
  bs_locales <- c("en_US", "es_MX", "it_IT")
  for (loc in bs_locales) {
    aa <- cr_loc_spec_provider("CompanyProvider", locale = loc)
    bs <- aa$bs()
    expect_type(bs, "character")
    expect_gt(nchar(bs), 0)
  }
})
