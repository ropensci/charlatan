test_that("DateTimeProvider works", {
  aa <- DateTimeProvider$new()

  expect_s3_class(aa, "DateTimeProvider")
  expect_s3_class(aa, "R6")

  expect_type(aa$unix_time, "closure")
  expect_type(aa$unix_time(), "double")

  expect_type(aa$date, "closure")
  expect_type(aa$date("%Y"), "character")
  expect_equal(nchar(aa$date("%Y")), 4)

  expect_type(aa$date_time, "closure")
  expect_s3_class(aa$date_time(), "POSIXct")
  expect_type(aa$date_time(), "double")

  expect_type(aa$year, "closure")
  expect_type(aa$year(), "character")
  expect_equal(nchar(aa$year()), 4)

  expect_type(aa$century, "closure")
  expect_type(aa$century(), "character")

  expect_type(aa$timezone, "closure")
  expect_type(aa$timezone(), "list")
})



test_that("ch_timezone", {
  aa <- ch_timezone()

  expect_type(aa, "list")
  expect_type(aa[[1]], "list")
  expect_type(aa[[1]][[1]], "character")
  expect_type(aa[[1]]$code, "character")
  expect_type(aa[[1]]$continent, "character")
  expect_type(aa[[1]]$name, "character")
  expect_type(aa[[1]]$capital, "character")
})

test_that("ch_timezone - n parameter", {
  expect_equal(length(ch_timezone(n = 10)), 10)
  expect_equal(length(ch_timezone(n = 100)), 100)
  expect_equal(length(ch_timezone(n = 500)), 500)
})



test_that("ch_unix_time", {
  aa <- ch_unix_time()

  expect_type(aa, "double")
  expect_gt(nchar(aa), 1)
})

test_that("ch_unix_time - n parameter", {
  expect_equal(length(ch_unix_time(n = 10)), 10)
  expect_equal(length(ch_unix_time(n = 100)), 100)
  expect_equal(length(ch_unix_time(n = 500)), 500)
})



test_that("ch_date_time", {
  aa <- ch_date_time()

  # class posixct
  expect_s3_class(aa, "POSIXct")
  # its type double
  expect_type(aa, "double")
})

test_that("ch_date_time - n parameter", {
  expect_equal(length(ch_date_time(n = 10)), 10)
  expect_equal(length(ch_date_time(n = 100)), 100)
  expect_equal(length(ch_date_time(n = 500)), 500)
})
