context("MissingDataProvider")

skip_on_cran()

test_that("MissingDataProvider works", {
  aa <- MissingDataProvider$new()
  letters2 <- aa$make_missing(letters)
  letters3 <- aa$make_missing(letters)

  expect_is(aa, "R6")
  expect_is(aa, "MissingDataProvider")

  expect_is(aa$make_missing, "function")

  expect_is(letters2, "character")

  # original and with missing data are not the same
  expect_false(identical(letters, letters2))

  # two missing data objets are not the same
  expect_false(identical(letters2, letters3))
})

test_that("MissingDataProvider fails well", {
  aa <- MissingDataProvider$new()
  expect_error(
    aa$make_missing(),
    "argument \"x\" is missing"
  )
})


context("ch_missing")

test_that("ch_missing works", {
  letters2 <- ch_missing(letters)
  letters3 <- ch_missing(letters)

  expect_is(letters2, "character")
  expect_is(letters3, "character")

  # original and with missing data are not the same
  expect_false(identical(letters, letters2))

  # two missing data objets are not the same
  expect_false(identical(letters2, letters3))
})

test_that("ch_missing fails well", {
  expect_error(
    ch_missing(),
    "argument \"x\" is missing"
  )
})
