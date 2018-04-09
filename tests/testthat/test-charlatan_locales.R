context("charlatan_locales")

test_that("charlatan_locales works", {
  expect_is(charlatan_locales, "function")
  expect_is(charlatan_locales(), "data.frame")
  expect_gt(NROW(charlatan_locales()), 40)
})

test_that("available_locales works", {
  expect_is(available_locales, "character")
  expect_gt(length(available_locales), 10)
})
