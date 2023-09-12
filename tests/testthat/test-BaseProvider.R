context("BaseProvider")

aa <- BaseProvider$new()

test_that("BaseProvider works", {
  expect_is(aa, "BaseProvider")
  expect_is(aa, "R6")

  expect_is(aa$random_element, "function")
  expect_is(aa$random_element(letters), "character")
  expect_true(aa$random_element(letters) %in% letters)

  expect_is(aa$random_int, "function")
  expect_type(aa$random_int(), "double")

  expect_is(aa$random_digit, "function")
  expect_type(aa$random_digit(), "integer")

  expect_is(aa$random_digit_not_zero, "function")
  expect_type(aa$random_digit_not_zero(), "integer")

  expect_is(aa$random_digit_or_empty, "function")
  expect_is(aa$random_digit_or_empty(), "character")

  expect_is(aa$random_digit_not_zero_or_empty, "function")
  expect_is(aa$random_digit_not_zero_or_empty(), "character")

  expect_is(aa$random_letter, "function")
  expect_is(aa$random_letter(), "character")

  expect_is(aa$numerify, "function")
  expect_is(aa$numerify(), "character")

  expect_is(aa$lexify, "function")
  expect_is(aa$lexify(), "character")

  expect_is(aa$bothify, "function")
  expect_is(aa$bothify(), "character")

  expect_is(aa$check_locale, "function")
  expect_null(aa$check_locale("en_US"))
  expect_error(aa$check_locale("en_SS"), "en_SS not in set")
})

test_that("random_element doesn't expand input into a range", {
  expect_equal(length(aa$random_element(10)), 1)
  expect_equal(aa$random_element(10), 10)
})
