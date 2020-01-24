#' Create fake taxonomic names
#'
#' @export
#' @name taxonomy
#' @template params
#' @inheritSection TaxonomyProvider Names
#' @inheritSection TaxonomyProvider Taxonomic authority
#' @seealso [TaxonomyProvider]
#' @examples
#' ch_taxonomic_genus()
#' ch_taxonomic_genus(10)
#' ch_taxonomic_genus(500)
#'
#' ch_taxonomic_epithet()
#' ch_taxonomic_epithet(10)
#' ch_taxonomic_epithet(500)
#'
#' ch_taxonomic_species()
#' ch_taxonomic_species(10)
#' ch_taxonomic_species(500)
ch_taxonomic_genus <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    TaxonomyProvider$new()$genus()
  } else {
    x <- TaxonomyProvider$new()
    replicate(n, x$genus())
  }
}

#' @export
#' @rdname taxonomy
ch_taxonomic_epithet <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    TaxonomyProvider$new()$epithet()
  } else {
    x <- TaxonomyProvider$new()
    replicate(n, x$epithet())
  }
}

#' @export
#' @rdname taxonomy
ch_taxonomic_species <- function(n = 1) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    TaxonomyProvider$new()$species()
  } else {
    x <- TaxonomyProvider$new()
    replicate(n, x$species())
  }
}
