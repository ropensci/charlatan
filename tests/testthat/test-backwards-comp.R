### 0.5.0 CRAN functions should still exist
### The functionality is tested in the other tests but
### this makes sure we have everything that was exported then is still here.
### People hate backwards incompatible packages
test_that("base provider exists", {
  aa <- BaseProvider$new()
  expect_is(aa, "R6")
})

test_that("locales exist", {
  expect_s3_class(available_locales_df, "data.frame")
  loc <- charlatan_locales()
  expect_s3_class(loc, "data.frame")
  settings <- charlatan_settings()
  expect_type(settings, "list")
  aa <- fraudster()
  expect_is(aa, "R6")
})

test_that("colors exists", {
  expect_type(ch_color_name(), "character")
  expect_type(ch_safe_color_name(), "character")
  expect_type(ch_hex_color(), "character")
  expect_type(ch_safe_hex_color(), "character")
  expect_type(ch_rgb_color(), "list")
  expect_length(ch_rgb_color()[[1]], 3)
  expect_type(ch_rgb_css_color(), "character")
})
test_that("companies exists", {
  expect_type(ch_company(locale = "en_US"), "character")
})
test_that("creditcards exists", {
  expect_type(ch_credit_card_provider(), "character")
  expect_type(ch_credit_card_number(), "character")
  expect_type(ch_credit_card_security_code(), "character")
  expect_type(ch_currency(), "character")
})



test_that("academic things exists", {
  expect_type(ch_doi(), "character")
  expect_type(ch_gene_sequence(), "character")
  expect_type(ch_element_symbol(), "character")
  expect_type(ch_element_element(), "character")
  expect_type(ch_taxonomic_genus(), "character")
  expect_type(ch_taxonomic_epithet(), "character")
  expect_type(ch_taxonomic_species(), "character")
})


test_that("generate still works", {
  res <- ch_generate()
  expect_s3_class(res, "data.frame")
  b <- ch_missing(x = 1:10)
  expect_gt(sum(is.na(b)), 0)
})



test_that("people vars exists", {
  expect_type(ch_job(), "character")
  expect_type(ch_name(), "character")
  expect_type(ch_phone_number(), "character")
  expect_type(ch_ssn(), "character")
})


test_that("coordinates, numbers and time work", {
  # coordinates
  expect_type(ch_lon(), "double")
  expect_type(ch_lat(), "double")
  expect_type(ch_position(), "double")
  expect_type(ch_timezone(), "list")
  # time
  expect_type(ch_unix_time(), "double")
  expect_type(ch_date_time(), "double")
  # numbers
  expect_type(ch_double(), "double")
  expect_type(ch_integer(), "double")
  expect_type(ch_unif(), "double")
  expect_type(ch_norm(), "double")
  expect_type(ch_lnorm(), "double")
  expect_type(ch_beta(shape1 = 0.2, shape2 = 0.1), "double")
})

test_that("datafaker and salty revdep still works", {
  expect_no_condition(ch_name(1))
})

test_that("fakir revdep still works", {
  expect_no_condition(ch_color_name(1))
  expect_no_condition(ch_company(1))
  expect_no_condition(ch_credit_card_provider(1))
  expect_no_condition(ch_job(1))
  expect_no_condition(ch_element_symbol(1))
  expect_no_condition(ch_name(1))
})
