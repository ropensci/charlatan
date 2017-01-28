#' NumericsProvider
#'
#' @export
#' @keywords internal
#' @param n number of values
#' @param mean mean value
#' @param sd standard deviation
#' @param min minimum value
#' @param max maximum value
#' @param shape1,shape2 non-negative parameters of the Beta distribution
#' @param ncp non-centrality parameter
#' @details
#' \strong{Methods}
#'   \describe{
#'     \item{\code{double()}}{
#'       get a double, pulls from normal distribution
#'     }
#'     \item{\code{integer()}}{
#'       get an integer, runs \code{\link{sample}} on range given
#'     }
#'     \item{\code{unif()}}{
#'       get numbers from the uniform distribution
#'     }
#'     \item{\code{norm()}}{
#'       get numbers from the normal distribution
#'     }
#'     \item{\code{lnorm()}}{
#'       get numbers from the lognormal distribution
#'     }
#'     \item{\code{beta()}}{
#'       get numbers from the beta distribution
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
      sample(min:max, n)
    },

    unif = function(n = 1, min = 0, max = 9999) {
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
