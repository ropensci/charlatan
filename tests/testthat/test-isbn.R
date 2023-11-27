test_that("ISBN 13 creates valid ISBN", {
  ISBNP <- ISBNProvider$new()
  # ISBN version 13
  # 978-0-306-40615-? 7
  # LOW LEVEL CHECKDIGIT
  expect_equal(ISBNP$.__enclos_env__$private$generate_isbn13_checkdigit(c(9,7,8,0,3,0,6,4,0,6,1,5)), 7)
  # UNDERLYING GENERATOR
  expect_equal(nchar(ISBNP$.__enclos_env__$private$generate_isbn13()), 13)
  # USER FACING FUNCTION
  expect_equal(nchar(ISBNP$isbn13()), 13)
})
test_that("ISBN 10 creates valid ISBN", {
  ISBNP <- ISBNProvider$new()
  # isbn version 10
  # 0-306-40615-? 2
  # LOW LEVEL CHECKDIGIT
  expect_equal(ISBNP$.__enclos_env__$private$generate_isbn10_checkdigit(c(0,3,0,6,4,0,6,1,5)), 2)
  # UNDERLYING GENERATOR
  expect_equal(nchar(ISBNP$.__enclos_env__$private$generate_isbn10()), 10)
  # USER FACING FUNCTION
  expect_equal(nchar(ISBNP$isbn10()), 10)
})

test_that("prefix logic works", {
  ISBNP <- ISBNProvider$new()

  expect_equal(ISBNP$.__enclos_env__$private$subst_vector("978", c(1, 1, 1, 1, 1)), c(9, 7, 8, 1, 1))
  # 978 or 979
  expect_equal(substr(ISBNP$isbn13(n = 1, prefix = 978), 1, 3), "978")
  # 1 or 0 for isbn10
  expect_equal(substr(ISBNP$isbn10(n = 1, prefix = 1), 1, 1), "1")
})
