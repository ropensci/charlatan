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
  expect_true(all(AddressProvider$new()$allowed_locales() %in% available_locales))
  expect_true(all(ColorProvider$new()$allowed_locales() %in% available_locales))
  expect_true(all(CompanyProvider$new()$allowed_locales() %in% available_locales))
  expect_true(all(FileProvider$new()$allowed_locales() %in% available_locales))
  expect_true(all(InternetProvider$new()$allowed_locales() %in% available_locales))
  expect_true(all(JobProvider$new()$allowed_locales() %in% available_locales))
  expect_true(all(LoremProvider$new()$allowed_locales() %in% available_locales))
  expect_true(all(PersonProvider$new()$allowed_locales() %in% available_locales))
  expect_true(all(PhoneNumberProvider$new()$allowed_locales() %in% available_locales))
  expect_true(all(UserAgentProvider$new()$allowed_locales() %in% available_locales))
})
