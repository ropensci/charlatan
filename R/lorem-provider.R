#' @title LoremProvider
#' @description lorem ipsum methods for generating random words in a language.
#' @inherit BaseProvider note
#' @param ext_words a character vector of words you would like to have instead of "Lorem ipsum"
#' @family ParentProviders
#' @export
LoremProvider <- R6::R6Class(
  inherit = BaseProvider,
  "LoremProvider",
  public = list(
    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `LoremProvider` object
    #' @param sentence_punctuation (character) End of sentence punctuation
    #' @param word_connector (character) Default connector between words
    #' @return A new `LoremProvider` object
    initialize = function(sentence_punctuation = ".",
                          word_connector = " ") {
      super$initialize()
      assert(sentence_punctuation, "character")
      private$sentence_punctuation <- sentence_punctuation
      assert(word_connector, "character")
      private$word_connector <- word_connector
    },

    #' @description Generate a random word
    #' @return a single word
    word = function(ext_words = NULL) {
      assert(ext_words, "character")
      wds <- private$word_list
      if (!is.null(ext_words)) {
        wds <- super$random_element(ext_words)
      }
      super$random_element(wds)
    },

    #' @description Generate a character vector of random words
    #' @param nb (integer) how many words to return
    #' @return many words
    words = function(nb = 3, ext_words = NULL) {
      assert(nb, c("numeric", "integer"))
      assert(ext_words, "character")
      replicate(nb, self$word(ext_words))
    },

    #' @description Generate a random sentence
    #' @param nb_words (integer) around how many words the sentence should
    #' contain
    #' @param variable_nb_words set to `FALSE` if you want exactly `nb`
    #' words returned, otherwise the result may include a number of words
    #' of `nb` +/-40% (with a minimum of 1)
    #' @return a single sentence
    sentence = function(nb_words = 6, variable_nb_words = TRUE, ext_words = NULL) {
      assert(nb_words, c("numeric", "integer"))
      assert(variable_nb_words, "logical")
      assert(ext_words, "character")
      if (nb_words <= 0) {
        return("")
      }

      if (variable_nb_words) {
        nb_words <- super$randomize_nb_elements(nb_words, min = 1)
      }

      words <- self$words(nb = nb_words, ext_words = ext_words)
      words[1] <- private$cap_first(words[1])

      paste0(
        paste0(words, collapse = private$word_connector),
        private$sentence_punctuation
      )
    },

    #' @description Generate a character vector of random sentences
    #' @param nb (integer) how many sentences to return
    #' @return many sentences
    sentences = function(nb = 3, ext_words = NULL) {
      assert(nb, c("numeric", "integer"))
      assert(ext_words, "character")
      replicate(nb, self$sentence(ext_words = ext_words))
    },

    #' @description Generate a single paragraph
    #' @param nb_sentences (integer) around how many sentences the paragraph
    #' should contain
    #' @param variable_nb_sentences set to `FALSE` if you want exactly `nb`
    #' sentences returned, otherwise the result may include a number of
    #' sentences of ``nb`` +/-40% (with a minimum of 1)
    #' @return a single paragraph
    paragraph = function(nb_sentences = 3, variable_nb_sentences = TRUE,
                         ext_words = NULL) {
      assert(nb_sentences, c("numeric", "integer"))
      assert(variable_nb_sentences, "logical")
      assert(ext_words, "character")
      if (nb_sentences <= 0) {
        return("")
      }
      if (variable_nb_sentences) {
        nb_sentences <- super$randomize_nb_elements(nb_sentences, min = 1)
      }
      para <- self$sentences(nb_sentences, ext_words = ext_words)
      paste0(para, collapse = private$word_connector)
    },

    #' @description Generate many paragraphs
    #' @param nb (integer) how many paragraphs to return
    #' @return many paragraphs
    paragraphs = function(nb = 3, ext_words = NULL) {
      assert(nb, c("numeric", "integer"))
      assert(ext_words, "character")
      replicate(nb, self$paragraph(ext_words = ext_words))
    },

    #' @description Generate a random text string. Depending on the
    #' `max_nb_chars`, returns a string made of words, sentences, or
    #' paragraphs.
    #' @param max_nb_chars Maximum number of characters the text should
    #' contain (minimum 5)
    #' @return character string of words
    text = function(max_nb_chars = 200, ext_words = NULL) {
      assert(max_nb_chars, c("numeric", "integer"))
      assert(ext_words, "character")
      text <- list()
      if (max_nb_chars < 5) {
        stop("text() can only generate text of at least 5 characters")
      }

      if (max_nb_chars < 25) {
        # join words
        while (length(text) == 0) {
          size <- 0
          # determine how many words are needed to reach the
          # $max_nb_chars once;
          while (size < max_nb_chars) {
            word <- paste0(
              if (size > 0) private$word_connector else "",
              self$word(ext_words = ext_words)
            )
            text <- c(text, word)
            size <- sum(size, nchar(word))
          }
          text <- private$drop_last(text)
        }
        text[[1]] <- paste0(toupper(substring(text[[1]], 1, 1)), substring(text[[1]], 2))
        # last_index <- length(text) - 1
        text[[length(text)]] <- paste0(text[[length(text)]], private$sentence_punctuation)
      } else if (max_nb_chars < 100) {
        # join sentences
        while (length(text) == 0) {
          size <- 0
          # determine how many sentences are needed to reach the
          # $max_nb_chars once
          while (size < max_nb_chars) {
            sentence <- paste0(
              if (size > 0) private$word_connector else "",
              self$sentence(ext_words = ext_words)
            )
            text <- c(text, sentence)
            size <- sum(size, nchar(sentence))
          }
          text <- private$drop_last(text)
        }
      } else {
        # join paragraphs
        while (length(text) == 0) {
          size <- 0
          # determine how many paragraphs are needed to reach the
          # $max_nb_chars once
          while (size < max_nb_chars) {
            paragraph <- paste0(
              if (size > 0) "\n" else "",
              self$paragraph(ext_words = ext_words)
            )
            text <- c(text, paragraph)
            size <- sum(size, nchar(paragraph))
          }
          text <- private$drop_last(text)
        }
      }

      return(paste0(text, collapse = ""))
    }
  ),
  private = list(
    word_connector = " ",
    sentence_punctuation = ".",
    word_list = NULL,
    # parse_eval_safe = function(name) {
    #   tmp <- parse_eval(sprintf("lorem_%s_", name), self$locale)
    #   if (!is.null(tmp)) private[[name]] <- tmp
    # },
    cap_first = function(x) {
      gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl = TRUE)
    },
    drop_last = function(x) {
      x[-length(x)]
    },
    locales = c(
      "en_US", "ar_AA", "el_GR", "he_IL", "ja_JP", "la",
      "ru_RU", "zh_CN", "zh_TW"
    ),
    provider_ = "LoremProvider"
  )
)
