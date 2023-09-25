#' Create fake taxonomic names
#'
#' @export
#' @name taxonomy
#' @template params
#' @inheritSection TaxonomyProvider Names
#' @inheritSection TaxonomyProvider Taxonomic authority
#' @param locale Locale for provider
#' @seealso [TaxonomyProvider]
#' @examples
#' ch_taxonomic_genus()
#' ch_taxonomic_genus(10)
#' # or even ch_taxonomic_genus(500)
#'
#' ch_taxonomic_epithet()
#' ch_taxonomic_epithet(10)
#' # or even ch_taxonomic_epithet(500)
#'
#' ch_taxonomic_species()
#' ch_taxonomic_species(10)
#' # or even ch_taxonomic_species(500)
ch_taxonomic_genus <- function(n = 1, locale = "en_US") {
  assert(n, c("integer", "numeric"))
  x <- subclass(provider = "TaxonomyProvider", locale = locale)
  if (n == 1) {
    x$genus()
  } else {
    replicate(n, x$genus())
  }
}

#' @export
#' @rdname taxonomy
ch_taxonomic_epithet <- function(n = 1, locale = "en_US") {
  assert(n, c("integer", "numeric"))
  x <- subclass(provider = "TaxonomyProvider", locale = locale)
  if (n == 1) {
    x$epithet()
  } else {
    replicate(n, x$epithet())
  }
}

#' @export
#' @rdname taxonomy
ch_taxonomic_species <- function(n = 1, locale = "en_US") {
  assert(n, c("integer", "numeric"))
  x <- subclass(provider = "TaxonomyProvider", locale = locale)
  if (n == 1) {
    x$species()
  } else {
    replicate(n, x$species())
  }
}
