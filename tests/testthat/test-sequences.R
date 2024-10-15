test_that("SequenceProvider works", {
  aa <- SequenceProvider$new()

  expect_s3_class(aa, "R6")
  expect_s3_class(aa, "SequenceProvider")

  expect_type(aa$render, "closure")
  expect_type(aa$render(), "character")
})


test_that("ch_gene_sequence works", {
  aa <- ch_gene_sequence()

  expect_type(aa, "character")

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
