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
  expect_true(all(AddressProvider_en_US$new()$allowed_locales() %in% available_locales))
  expect_true(all(ColorProvider_en_US$new()$allowed_locales() %in% available_locales))
  expect_true(all(CompanyProvider_en_US$new()$allowed_locales() %in% available_locales))
  expect_true(all(FileProvider_en_US$new()$allowed_locales() %in% available_locales))
  expect_true(all(InternetProvider_en_US$new()$allowed_locales() %in% available_locales))
  expect_true(all(JobProvider_en_US$new()$allowed_locales() %in% available_locales))
  expect_true(all(LoremProvider_en_US$new()$allowed_locales() %in% available_locales))
  expect_true(all(PersonProvider_en_US$new()$allowed_locales() %in% available_locales))
  expect_true(all(PhoneNumberProvider_en_US$new()$allowed_locales() %in% available_locales))
  expect_true(all(UserAgentProvider_en_US$new()$allowed_locales() %in% available_locales))
})
