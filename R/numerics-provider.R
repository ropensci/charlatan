#' @title NumericsProvider
#' @description numeric methods, generate numbers
#' @export
#' @keywords internal
#' @param n (integer) number of values, default: 1
#' @param mean mean value, default: 0
#' @param sd standard deviation, default: 1
#' @param min minimum value, default: 1
#' @param max maximum value, default: 1000
#' @examples
#' z <- NumericsProvider$new()
#'
#' z$double()
#' z$double(10)
#' z$double(10, mean = 100)
#' z$double(10, mean = 100, sd = 17)
#'
#' z$integer()
#' z$integer(10)
#' z$integer(10, 1, 20)
#' z$integer(10, 1, 10000000L)
#'
#' z$unif()
#' z$norm()
#' z$lnorm(10)
#' z$beta(10, 1, 1)
NumericsProvider <- R6::R6Class(
  'NumericsProvider',
  inherit = BaseProvider,
  public = list(
    #' @description get a double, pulls from normal distribution
    double = function(n = 1, mean = 0, sd = 1) {
      self$norm(n, mean, sd)
    },
    
    #' @description create a double on a range given with fixed decimals
    double2 = function(n = 1, min = 1, max = 1000, dec = 2) {
      as.numeric(paste(
        self$integer(n = n, min = min, max = max),
        self$integer(n = n, min = 10 ^ (dec - 1), max = 10 ^ dec -1),
        sep = "."
      ))
    },

    #' @description get an integer, runs [sample()] on range given
    integer = function(n = 1, min = 1, max = 1000) {
      super$random_int(min, max, n)
    },

    #' @description get numbers from the uniform distribution
    unif = function(n = 1, min = 0, max = 9999) {
      stopifnot(max >= min)
      runif(n, min, max)
    },

    #' @description get numbers from the normal distribution
    norm = function(n = 1, mean = 0, sd = 1) {
      rnorm(n, mean, sd)
    },

    #' @description get numbers from the lognormal distribution
    lnorm = function(n = 1, mean = 0, sd = 1) {
      rlnorm(n, mean, sd)
    },

    #' @description get numbers from the beta distribution
    #' @param shape1 non-negative parameters of the Beta distribution
    #' @param shape2 non-negative parameters of the Beta distribution
    #' @param ncp non-centrality parameter, default: 0
    beta = function(n = 1, shape1, shape2, ncp = 0) {
      rbeta(n, shape1, shape2, ncp)
    }
  )
)
