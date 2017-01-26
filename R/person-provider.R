# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/person/__init__.py

#' PersonProvider
#'
#' @keywords internal
#' @examples \donttest{
#' x <- PersonProvider$new()
#' x$render()
#' }
PersonProvider <- R6::R6Class(
  'PersonProvider',
  public = list(
    formats = en_formats,
    person = person_en,

    random_format = function() {
      sample(self$formats, size = 1)
    },

    render = function() {
      fmt <- self$random_format()
      dat <- lapply(self$person[pluck_names(fmt, self$person)], sample, size = 1)
      whisker::whisker.render(fmt, data = dat)
    }
  )
)
