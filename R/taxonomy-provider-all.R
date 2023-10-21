#' @title TaxonomyProvider en_US
#' @inherit TaxonomyProvider description details return
#' @inheritSection TaxonomyProvider Names
#' @inheritSection TaxonomyProvider Taxonomic authority
#' @export
#' @family en
#' @family US
#' @examples
#' (z <- TaxonomyProvider_en_US$new())
#' z$genus()
#' z$epithet()
#' z$species()
#' z$species(authority = TRUE)
#' ## FIXME - datetimeprovider slow - may be related to unix time problem
#' # z$species(authority = TRUE, date = TRUE)
TaxonomyProvider_en_US <- R6::R6Class(
  inherit = TaxonomyProvider,
  "TaxonomyProvider_en_US",
  private = list(
    locale_ = "en_US"
  )
)
