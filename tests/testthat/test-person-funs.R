test_that("ch_name works", {
  aa <- ch_name()

  expect_type(aa, "character")
})

test_that("ch_name - n parameter", {
  expect_equal(length(ch_name(n = 10)), 10)
  expect_equal(length(ch_name(n = 100)), 100)
  expect_equal(length(ch_name(n = 500)), 500)
})

test_that("ch_name works for all locales", {
  test_locale <- function(loc) {
    res <- ch_name(100, locale = loc)
    expect_type(res, "character")
    expect_equal(trimws(res), res)
  }

  for (loc in PersonProvider_en_US$new()$allowed_locales()) {
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
    "There is no locale 5 for provider PersonProvider"
  )

  expect_error(
    ch_name(messy = "adsf"),
    "Messy should be TRUE, or FALSE"
  )
})
