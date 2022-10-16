#' @describeIn {InternetProvider} {English (United States)}
InternetProvider_en_US <- R6::R6Class(
  inherit = InternetProvider,
  "InternetProvider_en_US",
  public = list(
    locale = "en_US"
  )
)
