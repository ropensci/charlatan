context("PersonProvider")

test_that("PersonProvider works", {
  aa <- PersonProvider$new()

  expect_equal(aa$locale, "en_US")
  expect_is(aa, "R6")
  expect_is(aa, "PersonProvider")

  expect_is(aa$render, "function")

  expect_is(aa$render(), "character")
  expect_is(aa$render(), "character")
  expect_is(aa$render(), "character")
  expect_is(aa$render(), "character")

  expect_is(aa$first_name(), "character")
  expect_is(aa$first_name_female(), "character")
  expect_is(aa$first_name_male(), "character")
  expect_is(aa$last_name(), "character")
  expect_is(aa$last_name_female(), "character")
  expect_is(aa$last_name_male(), "character")
  expect_is(aa$prefix(), "character")
  expect_is(aa$prefix_female(), "character")
  expect_is(aa$prefix_male(), "character")
  expect_is(aa$suffix(), "character")
  expect_is(aa$suffix_female(), "character")
  expect_is(aa$suffix_male(), "character")

  aa <- PersonProvider$new(locale = "fi_FI")
  expect_equal(aa$locale, "fi_FI")

  expect_is(aa$render(), "character")
  expect_is(aa$first_name(), "character")
  expect_is(aa$first_name_female(), "character")
  expect_is(aa$first_name_male(), "character")
  expect_is(aa$last_name(), "character")
  expect_is(aa$last_name_female(), "character")
  expect_is(aa$last_name_male(), "character")
  expect_is(aa$prefix(), "character")
  expect_is(aa$prefix_female(), "character")
  expect_is(aa$prefix_male(), "character")
  expect_is(aa$suffix(), "character")
  expect_is(aa$suffix_female(), "character")
  expect_is(aa$suffix_male(), "character")
})

test_that("PersonProvider fails well", {
  aa <- PersonProvider$new()
  expect_error(aa$render(x = 5), "unused argument")

  expect_error(
    PersonProvider$new(locale = "foobar"),
    "foobar not in set of available locales"
  )
})


context("ch_name")

test_that("ch_name works", {
  aa <- ch_name()

  expect_is(aa, "character")
})

test_that("ch_name - n parameter", {
  expect_equal(length(ch_name(n = 10)), 10)
  expect_equal(length(ch_name(n = 100)), 100)
  expect_equal(length(ch_name(n = 500)), 500)
})

test_that("ch_name works for all locales", {
  test_locale <- function(loc) {
    res <- ch_name(100, locale = loc)
    expect_is(res, "character")
    expect_equal(trimws(res), res)
  }

  for (loc in person_provider_locales) {
    test_locale(loc)
  }
})

test_that("ch_name fails well", {
  expect_error(
    ch_name(n = "xx"),
    "n must be of class integer, numeric"
  )

  expect_error(
    ch_name(locale = 5),
    "5 not in set of available locales"
  )

  expect_error(
    ch_name(messy = "adsf"),
    "messy must be of class logical"
  )
})
