# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/de_DE/__init__.py

#' @title CompanyProvider de_DE
#' @description company methods for locale German, Germany (de_DE).
#' @export
#' @keywords internal
#' @examples
#' x <- company("de_DE")
#' x$locale
#' x$company()
CompanyProvider_de_DE <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider_de_DE",
  inherit = CompanyProvider,
  public = list(
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name2}} {{company_suffix}}",
      "{{last_name}}"
    ),
    company_suffixes = c(
      "AG", "AG", "AG", "AG", "AG & Co. KG", "AG & Co. KGaA", "AG & Co. OHG",
      "GbR", "GbR", "GmbH", "GmbH", "GmbH", "GmbH", "GmbH & Co. KG",
      "GmbH & Co. KG", "GmbH & Co. KGaA", "GmbH & Co. OHG", "KG", "KG", "KG",
      "KGaA", "OHG mbH", "Stiftung & Co. KG", "Stiftung & Co. KGaA", "e.G.",
      "e.V."
    ),
    #' @description a company name
    company = function() {
      pp <- PersonProvider$new(self$locale)
      pattern <- super$random_element(self$company_formats)
      dat <- list(
        last_name = pp$last_name(),
        last_name2 = pp$last_name(),
        company_suffix = super$random_element(self$company_suffixes)
      )
      whisker::whisker.render(template = pattern, data = dat)
    }
  )
)
