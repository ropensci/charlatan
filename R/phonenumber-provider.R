#' @title PhoneNumberProvider
#' @description methods for generating phone numbers
#' @family en
#' @family AU
#' @export
#' @keywords internal
PhoneNumberProvider <- R6::R6Class(
  inherit = BaseProvider,
  "PhoneNumberProvider",
  public = list(
    #' @field locale (character) the locale
    locale = NULL,
    #' @field formats phone number formats
    formats = NULL,
    #' @field area_code_formats area code formats
    area_code_formats = NULL,

    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `PhoneNumberProvider` object
    #' @return A new `PhoneNumberProvider` object
    initialize = function() {
      if (is.null(self$locale)) {
        raise_class("PhoneNumberProvider")
      }
    },
    #' @description Make a phone number
    render = function() {
      if (!is.null(self$area_code_formats)) {
        return(super$numerify(
          whisker::whisker.render(super$random_element(self$formats),
            data = list(area_code = super$random_element(self$area_code_formats))
          )
        ))
      }
      super$numerify(text = super$random_element(self$formats))
    }
  ),
  private = list(
    locales = c(
      "en_US", "es_ES", "es_MX", "es_PE", "en_GB", "en_CA", "el_GR",
      "da_DK", "de_DE", "cs_CZ", "bs_BA", "bg_BG", "fa_IR", "fi_FI",
      "fr_CH", "fr_FR", "hi_IN", "hr_HR", "hu_HU", "it_IT", "ja_JP",
      "ko_KR", "lt_LT", "lv_LV", "ne_NP", "nl_BE", "nl_NL", "nn_NO",
      "pl_PL", "pt_BR", "pt_PT", "ru_RU", "sk_SK", "sv_SE",
      "tr_TR", "uk_UA", "zh_TW", "dk_DK", "he_IL", "id_ID", "en_AU",
      "en_NZ", "th_TH"
    )
    # zh_CN, "sl_SL", # dk_DK "tw_GH"
  )
)
