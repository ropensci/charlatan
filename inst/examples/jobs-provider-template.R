#' @title JobProvider template
#' @description generate jobs for locale language (country)
#' @export
#' @keywords internal
#' @examples
#' x <- jobs(locale = "template")
#' x$render()
JobProvider_template <- R6::R6Class(
  inherit = JobProvider,
  "JobProvider_template",
  public = list(
    #' @field job_formats (character) vector of possible formats
    job_formats = c() # fill this in
  )
)
