context("LoremProvider works")

test_that("LoremProvider works", {
  for (loc in LoremProvider_en_US$new()$allowed_locales()) {
    aa <- cr_loc_spec_provider("LoremProvider", loc)

    expect_is(aa, "LoremProvider")
    expect_is(aa, "R6")

    expect_is(aa$word, "function")
    expect_is(aa$word(), "character")
    expect_equal(length(aa$word()), 1)
    expect_false(aa$word() == "")

    expect_is(aa$words, "function")
    expect_is(aa$words(), "character")
    expect_equal(length(aa$words()), 3)

    expect_is(aa$sentence, "function")
    expect_is(aa$sentence(), "character")
    expect_equal(length(aa$sentence()), 1)

    expect_is(aa$sentences, "function")
    expect_is(aa$sentences(), "character")
    expect_equal(length(aa$sentences()), 3)

    expect_is(aa$paragraph, "function")
    expect_is(aa$paragraph(), "character")
    expect_equal(length(aa$paragraph()), 1)

    expect_is(aa$paragraphs, "function")
    expect_is(aa$paragraphs(), "character")
    expect_equal(length(aa$paragraphs()), 3)

    expect_is(aa$text, "function")
    expect_is(aa$text(), "character")
    expect_equal(length(aa$text()), 1)
  }
})

test_that("LoremProvider fails well", {
  # expect_error(
  #   LoremProvider$new(locale = "foobar"),
  #   "foobar not in set of available locales"
  # )
  expect_error(
    LoremProvider_en_US$new(sentence_punctuation = 5),
    "sentence_punctuation must be of class character"
  )
  expect_error(
    LoremProvider_en_US$new(word_connector = 5),
    "word_connector must be of class character"
  )

  aa <- LoremProvider_en_US$new()

  expect_error(
    aa$word(ext_words = 5),
    "ext_words must be of class character"
  )

  expect_error(
    aa$words(nb = "foobar"),
    "nb must be of class numeric, integer"
  )
  expect_error(
    aa$words(ext_words = 5),
    "ext_words must be of class character"
  )

  expect_error(
    aa$sentence(nb_words = "adf"),
    "nb_words must be of class numeric, integer"
  )
  expect_error(
    aa$sentence(ext_words = 5),
    "ext_words must be of class character"
  )
  expect_error(
    aa$sentence(variable_nb_words = 5),
    "variable_nb_words must be of class logical"
  )

  expect_error(
    aa$sentences(nb = "adf"),
    "nb must be of class numeric, integer"
  )
  expect_error(
    aa$sentences(ext_words = 5),
    "ext_words must be of class character"
  )

  expect_error(
    aa$paragraph(nb_sentences = "foobar"),
    "nb_sentences must be of class numeric, integer"
  )
  expect_error(
    aa$paragraph(variable_nb_sentences = 4),
    "variable_nb_sentences must be of class logical"
  )
  expect_error(
    aa$paragraph(ext_words = 5),
    "ext_words must be of class character"
  )

  expect_error(
    aa$paragraphs(nb = "adf"),
    "nb must be of class numeric, integer"
  )
  expect_error(
    aa$paragraphs(ext_words = 5),
    "ext_words must be of class character"
  )

  expect_error(
    aa$text(max_nb_chars = "adf"),
    "max_nb_chars must be of class numeric, integer"
  )
  expect_error(
    aa$text(ext_words = 5),
    "ext_words must be of class character"
  )
})
