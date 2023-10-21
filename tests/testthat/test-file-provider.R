test_that("FileProvider works", {
  fp <- FileProvider_en_US$new()
  expect_equal(fp$locale, "en_US")
  expect_type(fp$mime_type(), "character")
  expect_type(fp$file_extension(), "character")
  expect_type(fp$file_name(), "character")
  expect_type(fp$file_path(), "character")
})
