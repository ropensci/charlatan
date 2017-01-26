#' Create numbers
#'
#' @export
#' @name numerics
#' @template params
#' @param mean mean value
#' @param sd standard deviation
#' @param min minimum value
#' @param max maximum value
#' @param shape1,shape2 non-negative parameters of the Beta distribution
#' @param ncp non-centrality parameter
#' @examples
#' ch_double()
#' ch_double(10)
#' ch_double(100)
#'
#' ch_integer()
#' ch_integer(10)
#' ch_integer(100)
#'
#' ch_unif()
#' ch_norm()
#' ch_lnorm()
#' ch_beta(shape1 = 1, shape2 = 1)
ch_double <- function(n = 1, mean = 0, sd = 1) {
  assert(n, c('integer', 'numeric'))
  NumericsProvider$new()$double(n, mean, sd)
}

#' @export
#' @rdname numerics
ch_double <- function(n = 1, mean = 0, sd = 1) {
  assert(n, c('integer', 'numeric'))
  NumericsProvider$new()$double(n, mean, sd)
}

#' @export
#' @rdname numerics
ch_integer <- function(n = 1, min = 1, max = 1000) {
  assert(n, c('integer', 'numeric'))
  NumericsProvider$new()$integer(n, min, max)
}

#' @export
#' @rdname numerics
ch_unif <- function(n = 1, min = 0, max = 9999) {
  assert(n, c('integer', 'numeric'))
  NumericsProvider$new()$unif(n, min, max)
}

#' @export
#' @rdname numerics
ch_norm <- function(n = 1, mean = 0, sd = 1) {
  assert(n, c('integer', 'numeric'))
  NumericsProvider$new()$norm(n, mean, sd)
}

#' @export
#' @rdname numerics
ch_lnorm <- function(n = 1, mean = 0, sd = 1) {
  assert(n, c('integer', 'numeric'))
  NumericsProvider$new()$lnorm(n, mean, sd)
}

#' @export
#' @rdname numerics
ch_beta <- function(n = 1, shape1, shape2, ncp = 0) {
  assert(n, c('integer', 'numeric'))
  NumericsProvider$new()$beta(n, shape1, shape2, ncp)
}
