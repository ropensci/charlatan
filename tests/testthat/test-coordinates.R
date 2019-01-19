context("CoordinateProvider works")

test_that("CoordinateProvider works", {
  aa <- CoordinateProvider$new()

  expect_is(aa, "CoordinateProvider")
  expect_is(aa, "R6")

  expect_is(aa$lat, "function")
  expect_is(aa$lat(), "numeric")
  expect_equal(length(aa$lat()), 1)
  expect_lte(abs(aa$lat()), 90)

  expect_is(aa$lon, "function")
  expect_is(aa$lon(), "numeric")
  expect_equal(length(aa$lon()), 1)
  expect_lte(abs(aa$lon()), 180)

  expect_is(aa$position, "function")
  expect_is(aa$position(), "numeric")
  expect_equal(length(aa$position()), 2)
  expect_lte(abs(aa$lon()), 180)
})

test_that("CoordinateProvider: invalid", {
  aa <- CoordinateProvider$new()

  lat_dat <- replicate(1000, aa$lat(invalid = TRUE))
  expect_gt(max(lat_dat), 90)
  expect_lt(min(lat_dat), -90)

  lon_dat <- replicate(1000, aa$lon(invalid = TRUE))
  expect_gt(max(lon_dat), 180)
  expect_lt(min(lon_dat), -180)
})

context("ch_lon fxn")
test_that("ch_lon works", {
  expect_is(ch_lon(), "numeric")
  expect_equal(length(ch_lon(3)), 3)
})


context("ch_lat fxn")
test_that("ch_lat works", {
  expect_is(ch_lat(), "numeric")
  expect_equal(length(ch_lat(10)), 10)
})


context("ch_position fxn")
test_that("ch_position fxn works", {
  expect_is(ch_position(), "numeric")
  expect_is(ch_position(30), "list")
  expect_is(unlist(ch_position(30)), "numeric")
  expect_equal(length(ch_position(30)), 30)
})
