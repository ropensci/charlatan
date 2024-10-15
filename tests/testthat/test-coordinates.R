test_that("CoordinateProvider works", {
  aa <- CoordinateProvider$new()

  expect_s3_class(aa, "CoordinateProvider")
  expect_s3_class(aa, "R6")

  expect_type(aa$lat, "closure")
  expect_type(aa$lat(), "double")
  expect_equal(length(aa$lat()), 1)
  expect_lte(abs(aa$lat()), 90)

  expect_type(aa$lon, "closure")
  expect_type(aa$lon(), "double")
  expect_equal(length(aa$lon()), 1)
  expect_lte(abs(aa$lon()), 180)

  expect_type(aa$position, "closure")
  expect_type(aa$position(), "double")
  expect_equal(length(aa$position()), 2)
  expect_lte(abs(aa$lon()), 180)
})


test_that("ch_lon works", {
  expect_type(ch_lon(), "double")
  expect_equal(length(ch_lon(3)), 3)
})


test_that("ch_lat works", {
  expect_type(ch_lat(), "double")
  expect_equal(length(ch_lat(10)), 10)
})


test_that("ch_position fxn works", {
  expect_type(ch_position(), "double")
  expect_type(ch_position(30), "list")
  expect_type(unlist(ch_position(30)), "double")
  expect_equal(length(ch_position(30)), 30)
})
