context("TaxonomyProvider")

test_that("TaxonomyProvider works", {
  charlatan_settings()
  aa <- TaxonomyProvider_en_US$new()

  expect_is(aa, "R6")
  expect_is(aa, "TaxonomyProvider")

  expect_is(aa$genus, "function")
  expect_is(aa$epithet, "function")
  expect_is(aa$species, "function")

  expect_is(aa$genus(), "character")
  expect_is(aa$epithet(), "character")
  expect_is(aa$species(), "character")

  expect_true(grepl(
    "[[:digit:]]",
    aa$species(authority = TRUE, date = TRUE)
  ))

  expect_false(grepl(
    "[[:digit:]]",
    aa$species(date = TRUE)
  ))
})


context("ch_taxonomic_genus")
test_that("ch_taxonomic_genus works", {
  aa <- ch_taxonomic_genus()

  expect_is(aa, "character")

  expect_equal(length(ch_taxonomic_genus(n = 10)), 10)
  expect_equal(length(ch_taxonomic_genus(n = 100)), 100)
  expect_equal(length(ch_taxonomic_genus(n = 500)), 500)
})


context("ch_taxonomic_epithet")
test_that("ch_taxonomic_epithet works", {
  aa <- ch_taxonomic_epithet()

  expect_is(aa, "character")

  expect_equal(length(ch_taxonomic_epithet(n = 10)), 10)
  expect_equal(length(ch_taxonomic_epithet(n = 100)), 100)
  expect_equal(length(ch_taxonomic_epithet(n = 500)), 500)
})


context("ch_taxonomic_species")
test_that("ch_taxonomic_species works", {
  aa <- ch_taxonomic_species()

  expect_is(aa, "character")

  expect_equal(length(ch_taxonomic_species(n = 10)), 10)
  expect_equal(length(ch_taxonomic_species(n = 100)), 100)
  expect_equal(length(ch_taxonomic_species(n = 500)), 500)
})



test_that("ch_name fails well", {
  expect_error(
    ch_taxonomic_genus("xx"),
    "n must be of class integer, numeric"
  )

  expect_error(
    ch_taxonomic_epithet("xx"),
    "n must be of class integer, numeric"
  )

  expect_error(
    ch_taxonomic_species("xx"),
    "n must be of class integer, numeric"
  )
})
