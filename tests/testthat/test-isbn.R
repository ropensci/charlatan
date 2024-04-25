test_that("ISBN 13 creates valid ISBN", {
  ISBNP <- ISBNProvider$new()
  # ISBN version 13
  # 978-0-306-40615-? 7
  # LOW LEVEL CHECKDIGIT
  expect_equal(ISBNP$.__enclos_env__$private$generate_isbn13_checkdigit(c(9, 7, 8, 0, 3, 0, 6, 4, 0, 6, 1, 5)), 7)
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
  # 0575055030 men at arms
  expect_equal(ISBNP$.__enclos_env__$private$generate_isbn10_checkdigit(c(0, 5, 7, 5, 0, 5, 5, 0, 3)), "0")
  # 038553826X raising steam
  expect_equal(ISBNP$.__enclos_env__$private$generate_isbn10_checkdigit(c(0, 3, 8, 5, 5, 3, 8, 2, 6)), "X")
  # 0062429981 The Shepherd's Crown
  expect_equal(ISBNP$.__enclos_env__$private$generate_isbn10_checkdigit(c(0, 0, 6, 2, 4, 2, 9, 9, 8)), "1")

  ## optional extra checks
  # # 0192854259 good omens
  # expect_equal(ISBNP$.__enclos_env__$private$generate_isbn10_checkdigit(c(0,1,9,2,8,5,4,2,5)), "9")
  # # 0552152676 thud
  # expect_equal(ISBNP$.__enclos_env__$private$generate_isbn10_checkdigit(c(0,5,5,2,1,5,2,6,7)), "6")
  # # 0552142352 interesting times
  # expect_equal(ISBNP$.__enclos_env__$private$generate_isbn10_checkdigit(c(0,5,5,2,1,4,2,3,5)), "2")
  # # 0552134635 moving pictures
  # expect_equal(ISBNP$.__enclos_env__$private$generate_isbn10_checkdigit(c(0,5,5,2,1,3,4,6,3)), "5")

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
