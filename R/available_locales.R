available_locales <- c(
  "ar_AA",
  "bg_BG",
  "bs_BA",
  "cs_CZ",
  "da_DK",
  "dk_DK",
  "de_AT",
  "de_DE",
  "el_GR",
  "en",
  "en_AU",
  "en_CA",
  "en_GB",
  "en_US",
  "en_NZ",
  "es",
  "es_ES",
  "es_MX",
  "es_PE",
  "fa_IR",
  "fi_FI",
  "fr_CH",
  "fr_FR",
  "he_IL",
  "hi_IN",
  "hr_HR",
  "hu_HU",
  "id_ID",
  "it_IT",
  "ja_JP",
  "ko_KR",
  "la",
  "lt_LT",
  "lv_LV",
  "ne_NP",
  "nl_BE",
  "nl_NL",
  "no_NO",
  "nn_NO",
  "pl_PL",
  "pt_BR",
  "pt_PT",
  "ru_RU",
  "sk_SK",
  "sl_SL",
  "sv_SE",
  "th_TH",
  "tr_TR",
  "tw_GH",
  "uk_UA",
  "zh_CN",
  "zh_TW"
)

#' Available locales
#'
#' @export
#' @return a data.frame of the available locales in this package.
#' See [available_locales_df] for structure.
#'
#' Not all functions support all locales. Check the docs for each one
#' to see what locales they support.
#'
#' You can find out more about each locale by running your locale
#' though `stringi::stri_locale_info()`
#' @examples
#' charlatan_locales()
charlatan_locales <- function() available_locales_df


#' Available locales
#'
#' A data.frame of locales available in \pkg{charlatan}.
#' All localized providers are linked in the documentation.
#'
#'
#' @format A data frame with 45 rows and 4 variables:
#' \describe{
#'   \item{Language}{language two letter code}
#'   \item{Country}{country two letter code}
#'   \item{Variant}{a variant code, if applicable}
#'   \item{Name}{official locale two letter code}
#' }
#' @name available_locales_df
#' @seealso data.frame used in [charlatan_locales()]
#' @docType data
#' @keywords data
NULL
