context("charlatan_locales")

test_that("charlatan_locales works", {
  expect_is(charlatan_locales, "function")
  expect_is(charlatan_locales(), "character")
  expect_gt(length(charlatan_locales()), 10)
})

# same for available_locales
test_that("available_locales works", {
  expect_is(available_locales, "character")
  expect_gt(length(available_locales), 10)
})
