aa <- BaseProvider$new()

test_that("BaseProvider works", {
  expect_s3_class(aa, "BaseProvider")
  expect_s3_class(aa, "R6")

  expect_equal(aa$provider, "BaseProvider")
  expect_true(is.null(aa$locale))

  expect_type(aa$random_element, "closure")
  expect_type(aa$random_element(letters), "character")
  expect_true(aa$random_element(letters) %in% letters)

  expect_type(aa$random_int, "closure")
  expect_type(aa$random_int(), "double")

  expect_type(aa$random_digit, "closure")
  expect_type(aa$random_digit(), "integer")

  expect_type(aa$random_digit_not_zero, "closure")
  expect_type(aa$random_digit_not_zero(), "integer")

  expect_type(aa$random_digit_or_empty, "closure")
  expect_type(aa$random_digit_or_empty(), "character")

  expect_type(aa$random_digit_not_zero_or_empty, "closure")
  expect_type(aa$random_digit_not_zero_or_empty(), "character")

  expect_type(aa$random_letter, "closure")
  expect_type(aa$random_letter(), "character")

  expect_type(aa$numerify, "closure")
  expect_type(aa$numerify(), "character")

  expect_type(aa$lexify, "closure")
  expect_type(aa$lexify(), "character")

  expect_type(aa$bothify, "closure")
  expect_type(aa$bothify(), "character")

  expect_type(aa$check_locale, "closure")
  expect_null(aa$check_locale("en_US"))
  expect_error(aa$check_locale("en_SS"), "en_SS not in set")
})

test_that("random_element doesn't expand input into a range", {
  expect_equal(length(aa$random_element(10)), 1)
  expect_equal(aa$random_element(10), 10)
})

barep <- BareProvider$new()

test_that("BareProvider basic functionality", {
  expect_type(barep$provider, "character")
})
