test_that("DOIProvider works", {
  aa <- DOIProvider$new()

  expect_is(aa, "DOIProvider")
  expect_is(aa, "R6")

  expect_is(aa$funs, "list")
  expect_is(aa$funs$a, "function")
  expect_is(aa$funs$a(), "character")
  expect_is(aa$funs$b, "function")
  expect_is(aa$funs$b(), "character")
  expect_is(aa$render, "function")
  expect_is(aa$render(), "character")
})

test_that("ch_doi", {
  aa <- ch_doi()

  expect_is(aa, "character")
  expect_gt(nchar(aa), 0)
})

test_that("ch_doi - n parameter", {
  expect_equal(length(ch_doi(n = 10)), 10)
  expect_equal(length(ch_doi(n = 100)), 100)
  expect_equal(length(ch_doi(n = 500)), 500)
})
