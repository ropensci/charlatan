# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/de_DE/__init__.py

#' @title CompanyProvider de_DE
#' @description company methods for locale German, Germany (de_DE).
#' @export
#' @export
#' @family de
#' @family DE
#' @examples
#' x <- CompanyProvider_de_DE$new()
#' x$locale
#' x$company()
CompanyProvider_de_DE <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider_de_DE",
  inherit = CompanyProvider,
  public = list(
    #' @field company_formats formats for company names.
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name2}} {{company_suffix}}",
      "{{last_name}}"
    ),
    #' @field company_suffixes suffixes for in company names.
    company_suffixes = c(
      "AG", "AG", "AG", "AG", "AG & Co. KG", "AG & Co. KGaA", "AG & Co. OHG",
      "GbR", "GbR", "GmbH", "GmbH", "GmbH", "GmbH", "GmbH & Co. KG",
      "GmbH & Co. KG", "GmbH & Co. KGaA", "GmbH & Co. OHG", "KG", "KG", "KG",
      "KGaA", "OHG mbH", "Stiftung & Co. KG", "Stiftung & Co. KGaA", "e.G.",
      "e.V."
    )
  ),
  private = list(
    locale_ = "de_DE"
  )
)
