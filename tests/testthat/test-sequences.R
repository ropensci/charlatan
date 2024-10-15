test_that("SequenceProvider works", {
  aa <- SequenceProvider$new()

  expect_is(aa, "R6")
  expect_is(aa, "SequenceProvider")

  expect_is(aa$render, "function")
  expect_is(aa$render(), "character")
})


test_that("ch_gene_sequence works", {
  aa <- ch_gene_sequence()

  expect_is(aa, "character")

  expect_equal(length(ch_gene_sequence(n = 10)), 10)
  expect_equal(length(ch_gene_sequence(n = 100)), 100)
  expect_equal(length(ch_gene_sequence(n = 500)), 500)
})


test_that("ch_gene_sequence fails well", {
  expect_error(
    ch_gene_sequence("xx"),
    "n must be of class integer, numeric"
  )

  expect_error(
    ch_gene_sequence(length = "xx"),
    "length must be of class integer, numeric"
  )
})
