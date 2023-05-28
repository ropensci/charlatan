test_that("elements provider works", {
  bb <- ElementProvider_en_US$new()
  for (loc in bb$allowed_locales()) {
    aa <- cr_loc_spec_provider("ElementProvider", loc)
    expect_equal(aa$locale, loc)
    expect_true(aa$symbol() %in% el_symbols)
    expect_type(aa$element(), "character")
    expect_equal(aa$symbol_by_number(8), "O")
  }
})
