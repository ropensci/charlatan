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
    # print(loc)
    aa <- cr_loc_spec_provider("PersonProvider", loc)
    expect_equal(aa$locale, loc)
    expect_false(aa$render() == " ", label = loc)
    expect_is(aa$render(), "character")
    expect_gt(nchar(aa$first_name()), 0, label = loc)
    expect_is(aa$first_name_female(), "character")
    expect_is(aa$first_name_male(), "character")
    expect_is(aa$last_name(), "character")
    expect_gt(nchar(aa$last_name()), 0, label = loc)
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
  charlatan_settings() # resets it to NULL
  # messy should only be possible for locales that have it
  exbg <- PersonProvider_bg_BG$new()
  exus <- PersonProvider_en_US$new()
  expect_false(exbg$messy_is_possible())
  expect_true(exus$messy_is_possible())
  # messy should default to false
  expect_false(exus$messy)
  # if global is set to TRUE
  # but we set it to FALSE it should be TRUE
  # (global should override local)
  # when possible
  charlatan_settings(messy = TRUE)
  exbg <- PersonProvider_bg_BG$new(messy = FALSE)
  expect_warning((exus <- PersonProvider_en_US$new(messy = FALSE)))
  expect_true(exus$messy)
  expect_false(exbg$messy) # has not messy options

  # if it is set, en_US should work, and bg_should not.
  charlatan_settings() # resets it to NULL
  # en_US has messy
  aa <- PersonProvider_en_US$new(messy = TRUE)
  expect_true(aa$messy)

  aa <- cr_loc_spec_provider("PersonProvider", "en_US")
  aa$change_messy(TRUE)
  expect_true(aa$messy)
  expect_true(
    aa$suffix_male() %in% person_suffixes_male_en_us_messy
  )
  # bg_BG has no messy option and should warn
  charlatan_settings(messy = TRUE)
  expect_warning(PersonProvider_bg_BG$new(messy = TRUE))
  bb <- suppressWarnings(PersonProvider_bg_BG$new(messy = TRUE))
  expect_false(bb$messy)
  expect_true(is.null(bb$person_messy))
})
