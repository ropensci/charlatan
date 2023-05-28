#' @title TaxonomyProvider en_US
#' @description Taxonomy provider
#' @export
#' @family en
#' @family US
#' @section Names:
#' Names were taken from Theplantlist. 500 genera names and 500
#' epithets were chosen at random from the set of 10,000 names in the
#' dataset in the `taxize` package. Theplantlist is, as it says on the
#' tin, composed of plant names - so these fake names are derived from
#' plant names if that matters to you. These may generate names that match
#' those of real taxa, but may not as well.
#' @section Taxonomic authority:
#' Randomly, the taxonomic authority is in parentheses - which represents
#' that the given authority was not the original authority.
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
  public = list(
    #' @field locale locale for this provider
    locale = "en_US"
  )
)
