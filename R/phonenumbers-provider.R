#' PhoneNumberProvider
#'
#' @export
#' @keywords internal
#' @param locale (character) the locale to use. Run 
#' `phone_number_provider_locales()` for locales supported (default: en_US)
#' @details
#' \strong{Methods}
#'   \describe{
#'     \item{\code{render()}}{
#'       Make a phone number
#'     }
#'   }
#' @format NULL
#' @usage NULL
#' @examples
#' z <- PhoneNumberProvider$new()
#' z$render()
#'
#' PhoneNumberProvider$new(locale = "fr_FR")$render()
#' PhoneNumberProvider$new(locale = "sk_SK")$render()
PhoneNumberProvider <- R6::R6Class(
  inherit = BaseProvider,
  'PhoneNumberProvider',
  public = list(
    locale = NULL,
    formats = phone_number_formats_en_us,

    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        # check locale globally supported
        super$check_locale(locale)
        # check job provider locales
        check_locale_(tolower(locale), phone_number_provider_locales)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }
      self$formats <- parse_eval("phone_number_formats_", self$locale)
    },

    render = function() {
      super$numerify(text = super$random_element(self$formats))
    }
  )
)

#' @export
#' @rdname PhoneNumberProvider
phone_number_provider_locales <- c(
  "en_us", "es_es", "es_mx", "en_gb", "en_ca", "el_gr", "dk_dk",
  "de_de", "cs_cz", "bs_ba", "bg_bg", "fa_ir", "fi_fi", "fr_ch",
  "fr_fr", "hi_in", "hr_hr", "hu_hu", "it_it", "ja_jp", "ko_kr",
  "it_lt", "lv_lv", "ne_np", "nl_be", "nl_nl", "no_no", "pl_pl",
  "pt_br", "pt_pt", "ru_ru", "sk_sk", "sl_sl", "sv_se", "tr_tr",
  "uk_ua", "zh_tw"
)
