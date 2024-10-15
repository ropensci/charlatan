test_that("DOIProvider works", {
  aa <- DOIProvider$new()

  expect_s3_class(aa, "DOIProvider")
  expect_s3_class(aa, "R6")

  expect_type(aa$funs, "list")
  expect_type(aa$funs$a, "closure")
  expect_type(aa$funs$a(), "character")
  expect_type(aa$funs$b, "closure")
  expect_type(aa$funs$b(), "character")
  expect_type(aa$render, "closure")
  expect_type(aa$render(), "character")
})

test_that("ch_doi", {
  aa <- ch_doi()

  expect_type(aa, "character")
  expect_gt(nchar(aa), 0)
})

test_that("ch_doi - n parameter", {
  expect_equal(length(ch_doi(n = 10)), 10)
  expect_equal(length(ch_doi(n = 100)), 100)
  expect_equal(length(ch_doi(n = 500)), 500)
})
