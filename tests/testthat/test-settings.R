context("charlatan_settings")

test_that("charlatan_settings - default", {
  aa <- charlatan_settings()

  expect_is(aa, "list")
  expect_named(aa, "global_messy")
  expect_null(aa$global_messy)
})

test_that("charlatan_settings - set messy to TRUE", {
  aa <- charlatan_settings(messy = TRUE)

  expect_is(aa, "list")
  expect_named(aa, "global_messy")
  expect_true(aa$global_messy)
})

test_that("charlatan_settings - global settings override local settings", {
  # reset settings
  charlatan_settings()

  aa <- PersonProvider$new()
  expect_false(aa$messy)

  charlatan_settings(messy = TRUE)

  bb <- PersonProvider$new()
  expect_true(bb$messy)
})
