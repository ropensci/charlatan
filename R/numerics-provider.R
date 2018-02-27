#' NumericsProvider
#'
#' @export
#' @keywords internal
#' @details
#' \strong{Methods}
#'   \describe{
#'     \item{\code{double(n, mean, sd)}}{
#'       get a double, pulls from normal distribution
#' 
#'       - n: number of values, default: 1
#'       - mean: mean value, default: 0
#'       - sd: standard deviation, default: 1
#'     }
#'     \item{\code{integer(n, min, max)}}{
#'       get an integer, runs \code{\link{sample}} on range given
#' 
#'       - n: number of values, default: 1
#'       - min: minimum value, default: 1
#'       - max: maximum value, default: 1000
#'     }
#'     \item{\code{unif(n, min, max)}}{
#'       get numbers from the uniform distribution
#' 
#'       - n: number of values, default: 1
#'       - min: minimum value, default: 0
#'       - max: maximum value, default: 9999
#'     }
#'     \item{\code{norm(n, mean, sd)}}{
#'       get numbers from the normal distribution
#' 
#'       - n: number of values, default: 1
#'       - mean: mean value, default: 0
#'       - sd: standard deviation, default: 1
#'     }
#'     \item{\code{lnorm(n, mean, sd)}}{
#'       get numbers from the lognormal distribution
#' 
#'       - n: number of values, default: 1
#'       - mean: mean value, default: 0
#'       - sd: standard deviation, default: 1
#'     }
#'     \item{\code{beta(n, shape1, shape2, ncp)}}{
#'       get numbers from the beta distribution
#' 
#'       - n: number of values, default: 1
#'       - shape1: non-negative parameters of the Beta distribution
#'       - shape2: non-negative parameters of the Beta distribution
#'       - ncp: non-centrality parameter, default: 0
#'     }
#'   }
#' @format NULL
#' @usage NULL
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
    double = function(n = 1, mean = 0, sd = 1) {
      self$norm(n, mean, sd)
    },

    integer = function(n = 1, min = 1, max = 1000) {
      super$random_int(min, max, n)
    },

    unif = function(n = 1, min = 0, max = 9999) {
      stopifnot(max >= min)
      runif(n, min, max)
    },

    norm = function(n = 1, mean = 0, sd = 1) {
      rnorm(n, mean, sd)
    },

    lnorm = function(n = 1, mean = 0, sd = 1) {
      rlnorm(n, mean, sd)
    },

    beta = function(n = 1, shape1, shape2, ncp = 0) {
      rbeta(n, shape1, shape2, ncp)
    }
  )
)
