
#' @title SSNProvider ...
#' @inherit SSNProvider description details return
#' @export
#' @family ...
#' @examples
#' z <- SSNProvider_template$new()
#' z$render()
SSNProvider_template <- R6Class(
    inherit = SSNProvider,
    "SSNProvider_template",
    public = list(
        #' @description Make a SSN
        render = function(){}
    ),
    private = list(
        locale_ = "template"
    )
)
