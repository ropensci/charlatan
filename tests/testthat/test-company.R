context("CompanyProvider works")

test_that("CompanyProvider works", {
  aa <- company()

  expect_s3_class(aa, "CompanyProvider")
  expect_s3_classd(aa, "R6")

  expect_type(aa$company, "closure")
  expect_type(aa$company(), "character")


  expect_type(aa$catch_phrase, "closure")
  expect_type(aa$catch_phrase(), "character")

  expect_type(aa$bs, "closure")
  expect_type(aa$bs(), "character")

  # company_prefix not supported by en_US
  expect_type(aa$siren, "closure")
  expect_error(aa$siren(), "not supported for en_US")
})

context("ch_company works")

test_that("ch_company", {
  aa <- ch_company()

  expect_type(aa, "character")
  expect_gt(nchar(aa), 0)
})

test_that("ch_company - n parameter", {
  expect_equal(length(ch_company(n = 10)), 10)
  expect_equal(length(ch_company(n = 100)), 100)
  expect_equal(length(ch_company(n = 500)), 500)
})

test_that("ch_company - locale parameter", {
  expect_type(ch_company(locale = "fr_FR"), "character")
  expect_type(ch_company(locale = "de_DE"), "character")
  expect_type(ch_company(locale = "bg_BG"), "character")
})

test_that("fr_FR custom functions work",{
    fr <- company("fr_FR")
    expect_type(fr$catch_phrase(), "character")
    expect_gt(nchar(fr$catch_phrase()), 0)
})

test_that("all locales have company_function",{
    for (loc in company('en_US')$allowed_locales()){
        aa <- company(locale=loc)
        expect_gt(nchar(aa$company()), 0)
        expect_type(aa$company, "closure")
    }
})
