test_that("ColorProvider works", {
  aa <- ColorProvider_en_US$new()

  expect_s3_class(aa, "ColorProvider")
  expect_s3_class(aa, "R6")
  expect_type(aa$locale, "character")
  expect_equal(aa$locale, "en_US")
  expect_type(aa$all_colors, "list")
  expect_equal(aa$all_colors$AliceBlue, "#F0F8FF")
  expect_type(aa$safe_colors, "character")
  expect_type(aa$bothify, "closure")
  expect_type(aa$color_name, "closure")

  expect_type(aa$color_name(), "character")
  expect_type(aa$hex_color(), "character")
  expect_type(aa$safe_color_name(), "character")

  expect_error(aa$check_locale("en_asdf"))
})

test_that("ColorProvider locale support works", {
  skip_on_cran()
  skip_on_travis()

  test_locale <- function(loc) {
    bb <- cr_loc_spec_provider("ColorProvider", loc)

    expect_type(bb$locale, "character")
    expect_equal(bb$locale, loc)

    expect_type(bb$color_name(), "character")
    expect_true(all(bb$color_name() %in% names(bb$all_colors)))

    expect_type(bb$safe_color_name(), "character")
    expect_true(all(bb$safe_color_name() %in% bb$safe_colors))

    expect_type(bb$hex_from_name, "closure")
  }

  locales <- c("en_US", "uk_UA")
  for (loc in locales) {
    test_locale(loc)
  }
})


test_that("ch color closures error for incorrect input", {
  expect_error(ch_color_name(-1))
  expect_error(ch_color_name(-99, "uk_UA"))
  expect_warning(ch_color_name(locale = "ch_AR"))
  expect_error(ch_safe_color_name(-1))
  expect_error(ch_safe_color_name(-99, "uk_UA"))
  expect_warning(ch_safe_color_name(locale = "ch_AR"))
  expect_error(ch_hex_color(-99))
  expect_error(ch_safe_hex_color(-1))
  expect_error(ch_rgb_color(-99))
  expect_error(ch_rgb_css_color(-1))
})

test_that("ch_color_name works", {
  expect_type(ch_color_name(), "character")
  expect_type(ch_color_name(7), "character")

  expect_equal(length(ch_color_name()), 1)
  expect_equal(length(ch_color_name(12)), 12)

  expect_true(all(ch_color_name() %in% names(ColorProvider_en_US$new()$all_colors)))
  expect_true(all(ch_color_name(7) %in% names(ColorProvider_en_US$new()$all_colors)))
})

test_that("ch_safe_color_name works", {
  expect_type(ch_safe_color_name(), "character")
  expect_type(ch_safe_color_name(5), "character")

  expect_equal(length(ch_safe_color_name()), 1)
  expect_equal(length(ch_safe_color_name(7)), 7)

  expect_true(all(ch_safe_color_name() %in% ColorProvider_en_US$new()$safe_colors))
  expect_true(all(ch_safe_color_name(7) %in% ColorProvider_en_US$new()$safe_colors))
})

test_that("ch_hex_color works", {
  expect_type(ch_hex_color(), "character")
  expect_type(ch_hex_color(7), "character")

  expect_equal(length(ch_hex_color()), 1)
  expect_equal(length(ch_hex_color(12)), 12)

  hex_regex <- "^#[0-9A-F]{6}$"

  expect_match(ch_hex_color(), hex_regex, ignore.case = TRUE)
  expect_match(ch_hex_color(12), hex_regex, ignore.case = TRUE)

  expect_true(all(nchar(ch_hex_color()) == 7))
  expect_true(all(nchar(ch_hex_color(12)) == 7))
})

test_that("ch_safe_hex_color works", {
  expect_type(ch_safe_hex_color(), "character")
  expect_type(ch_safe_hex_color(7), "character")

  expect_equal(length(ch_safe_hex_color()), 1)
  expect_equal(length(ch_safe_hex_color(12)), 12)

  safe_hex_regex <- "^#([0369CF])\\1([0369CF])\\2([0369CF])\\3$"

  expect_match(ch_safe_hex_color(), safe_hex_regex, ignore.case = TRUE)
  expect_match(ch_safe_hex_color(12), safe_hex_regex, ignore.case = TRUE)

  expect_true(all(nchar(ch_safe_hex_color()) == 7))
  expect_true(all(nchar(ch_safe_hex_color(12)) == 7))
})

between_0_255 <- function(x) all(0 <= x & x <= 255)

test_that("ch_rgb_color works", {
  expect_type(ch_rgb_color(), "list")
  expect_type(ch_rgb_color(7), "list")

  expect_equal(length(ch_rgb_color()), 1)
  expect_equal(length(ch_rgb_color(7)), 7)

  expect_equal(vapply(ch_rgb_color(), length, integer(1)), rep(3, 1))
  expect_equal(vapply(ch_rgb_color(7), length, integer(1)), rep(3, 7))

  expect_true(all(vapply(ch_rgb_color(), between_0_255, logical(1))))
  expect_true(all(vapply(ch_rgb_color(7), between_0_255, logical(1))))
})

test_that("ch_rgb_css_color works", {
  expect_type(ch_rgb_css_color(), "character")
  expect_type(ch_rgb_css_color(7), "character")

  expect_equal(length(ch_rgb_css_color()), 1)
  expect_equal(length(ch_rgb_css_color(7)), 7)

  rgb_regex <- "^rgb\\((\\d+), (\\d+), (\\d+)\\)$"

  res <- ch_rgb_css_color()
  expect_match(res, rgb_regex)
  expect_true(between_0_255(as.integer(gsub(rgb_regex, "\\1", res))))
  expect_true(between_0_255(as.integer(gsub(rgb_regex, "\\2", res))))
  expect_true(between_0_255(as.integer(gsub(rgb_regex, "\\3", res))))

  res7 <- ch_rgb_css_color(7)
  expect_match(res7, rgb_regex)
  expect_true(between_0_255(as.integer(gsub(rgb_regex, "\\1", res7))))
  expect_true(between_0_255(as.integer(gsub(rgb_regex, "\\2", res7))))
  expect_true(between_0_255(as.integer(gsub(rgb_regex, "\\3", res7))))
})
