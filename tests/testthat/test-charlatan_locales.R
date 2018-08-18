context("charlatan_locales")

test_that("charlatan_locales works", {
  expect_is(charlatan_locales, "function")
  expect_is(charlatan_locales(), "data.frame")
  expect_gt(NROW(charlatan_locales()), 40)
})

test_that("available_locales works", {
  expect_is(available_locales, "character")
  expect_gt(length(available_locales), 10)
})

test_that("available_locales and charlatan_locales have equal length", {
  expect_equal(length(available_locales), nrow(charlatan_locales()))
})

test_that("all provider locales are in available_locales", {
  expect_true(all(address_provider_locales %in% available_locales))
  expect_true(all(color_provider_locales %in% available_locales))
  expect_true(all(company_provider_locales %in% available_locales))
  expect_true(all(file_provider_locales %in% available_locales))
  expect_true(all(internet_provider_locales %in% available_locales))
  expect_true(all(job_provider_locales %in% available_locales))
  expect_true(all(lorem_provider_locales %in% available_locales))
  expect_true(all(person_provider_locales %in% available_locales))
  expect_true(all(phone_number_provider_locales %in% available_locales))
  expect_true(all(useragent_provider_locales %in% available_locales))
})
