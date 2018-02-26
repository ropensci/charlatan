#' LoremProvider
#'
#' @export
#' @keywords internal
#' @param sentence_punctuation (character) End of sentence punctuation
#' @param word_connector (character) Default connector between words
#' @details
#' \strong{Methods}
#'   \describe{
#'    \item{\code{word(ext_words = NULL)}}{
#'     Generate a random word
#'
#'     - ext_words: a character vector of words you would like to have
#'       instead of 'Lorem ipsum'
#'     - returns: a random word
#'    }
#'    \item{\code{words(nb = 3, ext_words = NULL)}}{
#'     Generate a character vector of random words
#'
#'     - nb: how many words to return
#'     - ext_words: a character vector of words you would like to have
#'       instead of 'Lorem ipsum'
#'     - returns: many words
#'    }
#'    \item{\code{sentence(nb_words, variable_nb_words, ext_words)}}{
#'     Generate a random sentence
#'
#'     - nb_words around how many words the sentence should contain
#'     - variable_nb_words set to false if you want exactly `nb`
#'       words returned, otherwise the result may include a number of words
#'       of `nb` +/-40% (with a minimum of 1)
#'     - ext_words a character vector of words you would like to have instead of
#'       'Lorem ipsum'.
#'     - returns: a single sentence
#'    }
#'    \item{\code{sentences(nb, ext_words)}}{
#'     Generate a character vector of random sentences
#'
#'     - nb: how many sentences to return
#'     - ext_words: a character vector of words you would like to have
#'       instead of 'Lorem ipsum'.
#'     - returns: many sentences
#'    }
#'    \item{\code{paragraph(nb_sentences, variable_nb_sentences,
#'      ext_words)}}{
#'     Generate a single paragraph
#'
#'     - nb_sentences: around how many sentences the paragraph should
#'       contain
#'     - variable_nb_sentences: set to false if you want exactly `nb`
#'       sentences returned, otherwise the result may include a number of
#'       sentences of ``nb`` +/-40% (with a minimum of 1)
#'     - ext_words: a character vector of words you would like to have instead
#'       of 'Lorem ipsum'
#'     - returns: a single paragraph
#'    }
#'    \item{\code{paragraphs(nb, ext_words)}}{
#'     Generate many paragraphs
#'
#'     - nb: how many paragraphs to return
#'     - ext_words: a character vector of words you would like to have instead of
#'         'Lorem ipsum'.
#'     - returns: many paragraphs
#'    }
#'    \item{\code{text(max_nb_chars, ext_words)}}{
#'     Generate a random text string
#'
#'     Depending on the ``max_nb_chars, returns a string made of words,
#'     sentences, or paragraphs.
#'
#'     - max_nb_chars: Maximum number of characters the text should contain
#'     (minimum 5)
#'     - ext_words: a character vector of words you would like to have instead of
#'     'Lorem ipsum'.
#'     - returns: character string of words
#'    }
#'  }
#'
#' @format NULL
#' @usage NULL
#' @examples
#' (x <- LoremProvider$new())
#' x$locale
#' x$word()
#' x$words(3)
#' x$words(6)
#' x$sentence()
#' x$sentences(3)
#' x$sentences(6)
#' x$paragraph()
#' x$paragraphs(3)
#' x$paragraphs(6)
#' cat(x$paragraphs(6), sep = "\n")
#' x$text(10)
#' x$text(25)
#' x$text(50)
#' x$text(300)
#' x$text(2000)
#'
#' (x <- LoremProvider$new(locale = "ar_AA"))
#' x$word()
LoremProvider <- R6::R6Class(
  inherit = BaseProvider,
  'LoremProvider',
  public = list(
    locale = NULL,
    initialize = function(locale = NULL, sentence_punctuation = '.',
                          word_connector = ' ') {

      if (!is.null(locale)) {
        # check global locales
        super$check_locale(locale)
        # check person provider locales
        check_locale_(tolower(locale), lorem_provider_locales)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }
      private$parse_eval_safe('word_list')
      assert(sentence_punctuation, "character")
      private$sentence_punctuation <- sentence_punctuation
      assert(word_connector, "character")
      private$word_connector <- word_connector
    },

    word = function(ext_words = NULL) {
      assert(ext_words, 'character')
      wds <- private$word_list
      if (!is.null(ext_words)) {
        wds <- super$random_element(ext_words)
      }
      super$random_element(wds)
    },

    words = function(nb = 3, ext_words = NULL) {
      assert(nb, c('numeric', 'integer'))
      assert(ext_words, 'character')
      replicate(nb, self$word(ext_words))
    },

    sentence = function(nb_words = 6, variable_nb_words = TRUE, ext_words = NULL) {
      assert(nb_words, c('numeric', 'integer'))
      assert(variable_nb_words, 'logical')
      assert(ext_words, 'character')
      if (nb_words <= 0) return('')

      if (variable_nb_words) {
        nb_words = super$randomize_nb_elements(nb_words, min = 1)
      }

      words <- self$words(nb = nb_words, ext_words = ext_words)
      words[1] <- private$cap_first(words[1])

      paste0(
        paste0(words, collapse = private$word_connector),
        private$sentence_punctuation
      )
    },

    sentences = function(nb = 3, ext_words = NULL) {
      assert(nb, c('numeric', 'integer'))
      assert(ext_words, 'character')
      replicate(nb, self$sentence(ext_words = ext_words))
    },

    paragraph = function(nb_sentences = 3, variable_nb_sentences = TRUE,
      ext_words = NULL) {

      assert(nb_sentences, c('numeric', 'integer'))
      assert(variable_nb_sentences, 'logical')
      assert(ext_words, 'character')
      if (nb_sentences <= 0) return('')
      if (variable_nb_sentences) {
        nb_sentences = super$randomize_nb_elements(nb_sentences, min = 1)
      }
      para <- self$sentences(nb_sentences, ext_words=ext_words)
      paste0(para, collapse = private$word_connector)
    },

    paragraphs = function(nb = 3, ext_words = NULL) {
      assert(nb, c('numeric', 'integer'))
      assert(ext_words, 'character')
      replicate(nb, self$paragraph(ext_words = ext_words))
    },

    text = function(max_nb_chars = 200, ext_words = NULL) {
      assert(max_nb_chars, c('numeric', 'integer'))
      assert(ext_words, 'character')
      text <- list()
      if (max_nb_chars < 5) {
        stop('text() can only generate text of at least 5 characters')
      }

      if (max_nb_chars < 25) {
        # join words
        while (length(text) == 0) {
          size <- 0
          # determine how many words are needed to reach the
          # $max_nb_chars once;
          while (size < max_nb_chars) {
            word = paste0(
              if (size > 0) private$word_connector else '',
              self$word(ext_words = ext_words)
            )
            text <- c(text, word)
            size <- sum(size, nchar(word))
          }
          text <- private$drop_last(text)
        }
        text[1] <- paste0(toupper(text[1][1]), text[1][seq(3, length(text))])
        last_index <- length(text) - 1
        text[last_index] <- c(text, private$sentence_punctuation)
      } else if (max_nb_chars < 100) {
        # join sentences
        while (length(text) == 0) {
          size <- 0
          # determine how many sentences are needed to reach the
          # $max_nb_chars once
          while (size < max_nb_chars) {
            sentence <- paste0(
              if (size > 0) private$word_connector else '',
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
              if (size > 0) '\n' else '',
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
    word_connector = ' ',
    sentence_punctuation = '.',
    word_list = NULL,

    parse_eval_safe = function(name) {
      tmp <- parse_eval(sprintf("lorem_%s_", name), self$locale)
      if (!is.null(tmp)) private[[name]] <- tmp
    },

    cap_first = function(x) {
      gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)
    },

    drop_last = function(x) {
      x[-length(x)]
    }
  )
)

#' @export
#' @rdname LoremProvider
lorem_provider_locales <- c("en_us", "ar_aa")
