test_that("charlatan_settings - default", {
  aa <- charlatan_settings()

  expect_type(aa, "list")
  expect_named(aa, "global_messy")
  expect_null(aa$global_messy)
})

test_that("charlatan_settings - set messy to TRUE", {
  aa <- charlatan_settings(messy = TRUE)

  expect_type(aa, "list")
  expect_named(aa, "global_messy")
  expect_true(aa$global_messy)
})

test_that("charlatan_settings - global settings override local settings", {
  # reset settings
  charlatan_settings()

  aa <- PersonProvider_en_US$new()
  expect_false(aa$messy)

  charlatan_settings(messy = TRUE)
  expect_warning(PersonProvider_en_US$new(messy = FALSE))
  bb <- suppressWarnings(PersonProvider_en_US$new(messy = FALSE))
  expect_true(bb$messy)
})
