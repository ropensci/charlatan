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
  expect_gte(abs(aa$lon()), 0)

  expect_type(aa$position, "closure")
  test_that("Coordinate position works",{
      res <- aa$position(bbox = c(20,30,25,35))
      expect_gte(res[1],20)
      expect_lte(res[1],25)
      expect_gte(res[2],30)
      expect_lte(res[2],35)
      expect_type(res, "double")
      expect_equal(length(res), 2)
  })

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
