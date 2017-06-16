context("ColorProvider works")

test_that("ColorProvider works", {
  aa <- ColorProvider$new()

  expect_is(aa, "ColorProvider")
  expect_is(aa, "R6")
  expect_is(aa$locale, "character")
  expect_equal(aa$locale, "en_US")
  expect_is(aa$all_colors, "list")
  expect_equal(aa$all_colors$AliceBlue, "#F0F8FF")
  expect_is(aa$safe_colors, "character")
  expect_is(aa$bothify, "function")
  expect_is(aa$color_name, "function")

  expect_is(aa$color_name(), "character")
  expect_is(aa$hex_color(), "character")
  expect_is(aa$safe_color_name(), "character")

  expect_error(aa$check_locale("en_asdf"))
})

test_that("ColorProvider locale support works", {
  ## FIXME: sometimes this fails
  skip_on_cran()
  skip_on_travis()

  bb <- ColorProvider$new(locale = "uk_UA")

  expect_is(bb$locale, "character")
  expect_equal(bb$locale, "uk_UA")
  expect_is(bb$color_name(), "character")
  expect_true(any(grepl(bb$color_name(), names(bb$all_colors))))
})


context("color fxns works")

test_that("ch_color_name", {
  expect_is(ch_color_name(), "character")
  expect_equal(length(ch_color_name(12)), 12)
  expect_true(any(grepl(ch_color_name(), names(ColorProvider$new()$all_colors))))
})

test_that("ch_safe_color_name", {
  expect_is(ch_safe_color_name(), "character")
  expect_is(ch_safe_color_name(5), "character")
  expect_true(any(grepl(ch_safe_color_name(), ColorProvider$new()$safe_colors)))
})

test_that("ch_hex_color", {
  expect_is(ch_hex_color(), "character")
  expect_equal(length(ch_hex_color(12)), 12)
  expect_true(all(grepl("#", ch_hex_color(12))))
  expect_true(all(nchar(ch_hex_color(12)) == 7))
})


context("color and safe color matches expected format")

test_that("ch_rgb_color", {
  # List of length 3 elements
  expect_is(ch_rgb_color(), "list")
  expect_equal(vapply(ch_rgb_color(), length, 1), 3)
  expect_equal(vapply(ch_rgb_color(2), length, 1), c(3, 3))
})



# FIXME - do these tests
# test_that("color_name matches expected format", {
#   "xxx"
# })
#
# test_that("safe_color_name matches expected format", {
#   "xxx"
# })
