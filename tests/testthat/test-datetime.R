test_that("DateTimeProvider works", {
  aa <- DateTimeProvider$new()

  expect_is(aa, "DateTimeProvider")
  expect_is(aa, "R6")

  expect_is(aa$unix_time, "function")
  expect_type(aa$unix_time(), "double")

  expect_is(aa$date, "function")
  expect_type(aa$date("%Y"), "character")
  expect_equal(nchar(aa$date("%Y")), 4)

  expect_is(aa$date_time, "function")
  expect_is(aa$date_time(), "POSIXct")
  expect_type(aa$date_time(), "double")

  expect_is(aa$year, "function")
  expect_type(aa$year(), "character")
  expect_equal(nchar(aa$year()), 4)

  expect_is(aa$century, "function")
  expect_is(aa$century(), "character")

  expect_is(aa$timezone, "function")
  expect_is(aa$timezone(), "list")
})



test_that("ch_timezone", {
  aa <- ch_timezone()

  expect_is(aa, "list")
  expect_is(aa[[1]], "list")
  expect_is(aa[[1]][[1]], "character")
  expect_is(aa[[1]]$code, "character")
  expect_is(aa[[1]]$continent, "character")
  expect_is(aa[[1]]$name, "character")
  expect_is(aa[[1]]$capital, "character")
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
  expect_is(aa, "POSIXct")
  # its type double
  expect_type(aa, "double")
})

test_that("ch_date_time - n parameter", {
  expect_equal(length(ch_date_time(n = 10)), 10)
  expect_equal(length(ch_date_time(n = 100)), 100)
  expect_equal(length(ch_date_time(n = 500)), 500)
})
