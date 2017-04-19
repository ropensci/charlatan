#' CompanyProvider
#'
#' @export
#' @keywords internal
#' @param locale (character) the locale to use. options: en_US (default),
#' fr_FR.
#' @details
#' \strong{Methods}
#'   \describe{
#'    \item{\code{company}}{
#'      a company name
#'    }
#'    \item{\code{company_suffix}}{
#'      a company suffix
#'    }
#'  }
#' @format NULL
#' @usage NULL
#' @examples
#' x <- company_provider('en_US')
#' x$locale
#' x$company()
#' x$company_suffix()
#' x$catch_phrase()
#' x$bs()
#'
#' x <- company_provider(locale = "fr_FR")
#' x$locale
#' x$company()
#' x$company_suffix()
#' x$siren()
#'
#' x <- company_provider(locale = "hr_HR")
#' x$locale
#' x$company()
#' x$company_suffix()
#'
#' x <- company_provider(locale = "it_IT")
#' x$locale
#' x$company()
#' x$company_suffix()
#' x$bs()
#'
#' company_provider(locale = "es_MX")$bs()
#' company_provider(locale = "es_MX")$company_prefix()
#' company_provider(locale = "es_MX")$catch_phrase()
#'
#' company_provider(locale = "bg_BG")$company()
#' company_provider(locale = "cs_CZ")$company()
#' company_provider(locale = "de_DE")$company()
#' company_provider(locale = "fa_IR")$company()
company_provider <- function(locale = 'en_US') {
  switch(
    locale,
    bg_BG = CompanyProvider_bg_BG$new(locale = locale),
    cs_CZ = CompanyProvider_cs_CZ$new(locale = locale),
    de_DE = CompanyProvider_de_DE$new(locale = locale),
    en_US = CompanyProvider_en_US$new(locale = locale),
    es_MX = CompanyProvider_es_MX$new(locale = locale),
    fa_IR = CompanyProvider_fa_IR$new(locale = locale),
    fr_FR = CompanyProvider_fr_FR$new(locale = locale),
    hr_HR = CompanyProvider_hr_HR$new(locale = locale),
    it_IT = CompanyProvider_it_IT$new(locale = locale)
  )
}

# helpers --------
company_ = function(locale, formats, suffix) {
  pattern <- sample(formats, 1)
  nm <- sample(
    eval(parse(text = paste0("person_last_names_", tolower(locale)))),
    1
  )
  whisker::whisker.render(
    template = pattern,
    data = list(last_name = nm, company_suffix = eval(suffix))
  )
}

company_suffix_ = function(x) {
  sample(x, size = 1)
}

catch_phrase_ = function(x) {
  result <- list()
  for (i in seq_along(x)) {
    result[[i]] <- sample(x[[i]], 1)
  }
  paste0(result, collapse = " ")
}

bs_ = function(words) {
  result <- list()
  for (i in seq_along(words)) {
    result[[i]] <- sample(words[[i]], 1)
  }
  paste0(result, collapse = " ")
}
