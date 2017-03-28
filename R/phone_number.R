#' Create fake phone numbers
#'
#' @export
#' @template params
#' @param locale (character) the locale to use. options: en_US (default),
#' en_US, es_ES, es_MX, en_GB, en_CA, el_GR, dk_DK, de_DE, cs_CZ, bs_BA,
#' bg_BG, fa_IR, fi_FI, fr_CH, fr_FR, hi_IN, hr_HR, hu_HU, it_IT, ja_JP, ko_KR,
#' it_LT, lv_LV, ne_NP, nl_BE, nl_NL, no_NO, pl_PL, pt_BR, pt_PT, ru_RU,
#' sk_SK, sl_SL, sv_SE, tr_TR, uk_UA, zh_TW
#' @examples
#' ch_phone_number()
#' ch_phone_number(10)
#' ch_phone_number(500)
#'
#' # locales
#' ch_phone_number(locale = "fr_FR")
#' ch_phone_number(locale = "uk_UA")
#' ch_phone_number(locale = "en_CA")
#' ch_phone_number(locale = "lv_LV")
ch_phone_number <- function(n = 1, locale = NULL) {
  assert(n, c('integer', 'numeric'))
  if (n == 1) {
    PhoneNumberProvider$new(locale = locale)$render()
  } else {
    x <- PhoneNumberProvider$new(locale = locale)
    replicate(n, x$render())
  }
}
