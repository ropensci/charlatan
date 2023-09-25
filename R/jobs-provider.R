#' @title JobProvider
#' @description generate jobs
#' @export
#' @family ParentProviders
JobProvider <- R6::R6Class(
  inherit = BaseProvider,
  "JobProvider",
  public = list(

    #' @description Make a job
    render = function() {
      super$random_element(private$formats)
    }
  ),
  private = list(
    locales = c(
      "da_DK", "fa_IR", "fr_CH", "uk_UA", "ru_RU", "pl_PL",
      "en_US", "fr_FR", "hr_HR", "zh_TW", "fi_FI", "nl_NL"
    ),
    provider_ = "JobProvider",
    # vector of possible formats
    formats = NULL
  )
)
