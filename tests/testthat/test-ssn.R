test_that("SSNProvider works", {
  for (loc in SSNProvider_en_US$new()$allowed_locales()) {
    aa <- cr_loc_spec_provider("SSNProvider", loc)
    expect_equal(aa$locale, loc)
    expect_s3_class(aa, "SSNProvider")
    expect_s3_class(aa, "R6")

    expect_type(aa$render, "closure")
    expect_type(aa$render(), "character")
  }
})
test_that("SSNProvider en_US", {
  aa <- cr_loc_spec_provider("SSNProvider", "en_US")
  expect_match(aa$render(), "\\d\\d\\d-\\d\\d-\\d\\d\\d\\d")
})

test_that("SSNProvider nl_NL", {
  aa <- cr_loc_spec_provider("SSNProvider", "nl_NL")
  expect_match(aa$render(), "\\d{9}")
})

test_that("ch_ssn", {
  expect_type(ch_ssn(), "character")
  expect_match(ch_ssn(), "\\d\\d\\d-\\d\\d-\\d\\d\\d\\d")
  expect_equal(length(ch_ssn(3)), 3)
})
