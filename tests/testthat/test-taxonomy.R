test_that("TaxonomyProvider works", {
  charlatan_settings()
  aa <- TaxonomyProvider_en_US$new()

  expect_s3_class(aa, "R6")
  expect_s3_class(aa, "TaxonomyProvider")

  expect_type(aa$genus, "closure")
  expect_type(aa$epithet, "closure")
  expect_type(aa$species, "closure")

  expect_type(aa$genus(), "character")
  expect_type(aa$epithet(), "character")
  expect_type(aa$species(), "character")

  expect_true(grepl(
    "[[:digit:]]",
    aa$species(authority = TRUE, date = TRUE)
  ))

  expect_false(grepl(
    "[[:digit:]]",
    aa$species(date = TRUE)
  ))
})


test_that("ch_taxonomic_genus works", {
  aa <- ch_taxonomic_genus()

  expect_type(aa, "character")

  expect_equal(length(ch_taxonomic_genus(n = 10)), 10)
  expect_equal(length(ch_taxonomic_genus(n = 100)), 100)
  expect_equal(length(ch_taxonomic_genus(n = 500)), 500)
})


test_that("ch_taxonomic_epithet works", {
  aa <- ch_taxonomic_epithet()

  expect_type(aa, "character")

  expect_equal(length(ch_taxonomic_epithet(n = 10)), 10)
  expect_equal(length(ch_taxonomic_epithet(n = 100)), 100)
  expect_equal(length(ch_taxonomic_epithet(n = 500)), 500)
})


test_that("ch_taxonomic_species works", {
  aa <- ch_taxonomic_species()

  expect_type(aa, "character")

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
