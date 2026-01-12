test_that("ch_generate works - default settings", {
  aa <- ch_generate()

  expect_s3_class(aa, "data.frame")
  expect_s3_class(aa, "tbl_df")
  expect_named(aa, c("name", "job", "phone_number"))
  expect_type(aa$name, "character")
  expect_type(aa$job, "character")
  expect_type(aa$phone_number, "character")

  expect_equal(NROW(aa), 10)
})


test_that("ch_generate works - choose fields", {
  aa <- ch_generate("job")
  expect_s3_class(aa, "data.frame")
  expect_s3_class(aa, "tbl_df")
  expect_named(aa, "job")

  aa <- ch_generate("job", "currency")
  expect_s3_class(aa, "data.frame")
  expect_s3_class(aa, "tbl_df")
  expect_named(aa, c("job", "currency"))
})


test_that("ch_generate works - n: number of rows", {
  aa <- ch_generate(n = 1)
  bb <- ch_generate(n = 100)

  expect_equal(NROW(aa), 1)
  expect_equal(NROW(bb), 100)
})


test_that("ch_generate works - locale", {
  aa <- ch_generate()
  bb <- ch_generate(locale = "fr_FR")
  cc <- ch_generate(locale = "fr_CH")

  expect_s3_class(aa, "data.frame")
  expect_equal(NROW(aa), 10)

  expect_s3_class(bb, "data.frame")
  expect_equal(NROW(bb), 10)

  expect_s3_class(cc, "data.frame")
  expect_equal(NROW(cc), 10)
})


test_that("ch_generate fails well", {
  # has to be character
  expect_error(ch_generate(4), "choices must be of class character")

  expect_error(
    ch_generate(n = "Asdf"),
    "n must be of class integer, numeric"
  )

  expect_error(
    ch_generate(locale = "foobar"),
    "There is no locale foobar for provider PersonProvider"
  )
})
