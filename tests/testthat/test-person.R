context("PersonProvider")

test_that("PersonProvider works", {
  aa <- PersonProvider_en_US$new()

  expect_equal(aa$locale, "en_US")
  expect_is(aa, "R6")
  expect_is(aa, "PersonProvider")

  expect_is(aa$render, "function")

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

  aa <- cr_loc_spec_provider("PersonProvider", "fi_FI")
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

test_that("all locales have the basic functionality", {
  en_us <- cr_loc_spec_provider("PersonProvider", "en_US")
  for (loc in en_us$allowed_locales()) {
    aa <- cr_loc_spec_provider("PersonProvider", loc)
    expect_equal(aa$locale, loc)
    expect_false(aa$render() == " ")
    expect_is(aa$render(), "character")
    expect_is(aa$first_name(), "character")
    expect_is(aa$first_name_female(), "character")
    expect_is(aa$first_name_male(), "character")
    expect_is(aa$last_name(), "character")
    expect_is(aa$last_name_female(), "character")
    expect_is(aa$last_name_male(), "character")
  }
})

test_that("specific locales have specific functions", {
  # prefixes
  for (loc in c("en_US", "fa_IR", "ne_NP", "pl_PL", "no_NO")) {
    aa <- cr_loc_spec_provider("PersonProvider", loc)
    expect_is(aa$prefix(), "character")
    expect_is(aa$prefix_female(), "character")
    expect_is(aa$prefix_male(), "character")
  }
  # suffixes
  for (loc in c("en_US")) {
    aa <- cr_loc_spec_provider("PersonProvider", loc)
    expect_is(aa$suffix(), "character")
    expect_is(aa$suffix_female(), "character")
    expect_is(aa$suffix_male(), "character")
  }
  # japanese
  ja_jp <- cr_loc_spec_provider("PersonProvider", "ja_JP")
  expect_is(ja_jp$first_kana_name(), "character")
  expect_is(ja_jp$kana_name(), "character")
  expect_is(ja_jp$last_kana_name(), "character")
  expect_is(ja_jp$first_kana_name_male(), "character")
  expect_is(ja_jp$first_kana_name_female(), "character")
})


test_that("messy argument turns on messyness.", {
  # en_US has messy
  aa <- PersonProvider_en_US$new(messy = TRUE)
  expect_true(aa$messy)
  expect_false(is.null(aa$person_messy))
  expect_true(
    aa$suffix_male() %in% person_suffixes_male_en_us_messy
  )
  # bg_BG has no messy option
  expect_warning(PersonProvider_bg_BG$new(messy = TRUE))
  bb <- suppressWarnings(PersonProvider_bg_BG$new(messy = TRUE))
  expect_false(bb$messy)
  expect_true(is.null(bb$person_messy))
})
