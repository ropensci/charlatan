context("JobProvider works")

test_that("JobProvider works", {
  aa <- JobProvider$new()

  expect_is(aa$render(), "character")
  expect_gt(nchar(aa$render()), 0)
})

test_that("JobProvider locale support works", {
  bb <- JobProvider$new(locale = "fr_FR")

  expect_is(bb$locale, "character")
  expect_equal(bb$locale, "fr_FR")
  expect_is(bb$render(), "character")
  expect_gt(nchar(bb$render()), 0)
})

context("ch_job works")

test_that("ch_job", {
  skip_on_cran()
  skip_on_travis()

  aa <- ch_job()

  expect_is(aa, "character")
  expect_gt(nchar(aa), 0)
  expect_true(any(grepl(aa, JobProvider$new()$formats)))
})

test_that("ch_job - n parameter", {
  expect_equal(length(ch_job(n = 10)), 10)
  expect_equal(length(ch_job(n = 100)), 100)
  expect_equal(length(ch_job(n = 500)), 500)
})

test_that("ch_job - locale parameter", {
  expect_true(
    any(grepl(ch_job(locale = "fr_FR"),
              JobProvider$new(locale = "fr_FR")$formats)))

  expect_true(
    any(grepl(ch_job(locale = "ru_RU"),
              JobProvider$new(locale = "ru_RU")$formats)))
})
