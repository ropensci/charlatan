#' Generate a fake dataset
#'
#' @export
#' @param ... columns to include. must be in the allowed set. See
#' **Allowed column names** below. Three default columns are included
#' (name, job, phone_number) if nothing is specified - but are overridden
#' by any input.
#' @template params
#' @param locale (character) the locale to use. options: only supported
#' for data types that have locale support, See each data provider for
#' details.
#' @section Allowed column names:
#'
#' - name (default included)
#' - job (default included)
#' - phone_number (default included)
#' - currency
#' - color_name
#' - rgb_color
#' - rgb_css_color
#'
#' @examples
#' ch_generate2()
#' ch_generate2(n = 1)
#' ch_generate2(n = 100)
#'
#' ch_generate2('job')
#' ch_generate2('job', 'name')
#' ch_generate2('job', 'color_name')
#'
#' # locale
#' ch_generate2(locale = "en_US")
#' ch_generate2(locale = "fr_FR")
#' ch_generate2(locale = "fr_CH")
ch_generate2 <- function(choices, n = 10, locale = "en_US", fun_args = list()) {
  choices <- choices
  if (length(choices) == 0) choices <- c(Name = "Person", Job = "Job", PhoneNumber = "PhoneNumber")

  cols <- stats::setNames(
    lapply(names(choices), function(col) {
      z <- choices[[col]]
      if (stringi::stri_detect(z, regex = "^.+?\\..+?$")) {
        provider_method <- stringi::stri_split(z, fixed = ".")[[1]]
        provider <- provider_method[[1]]
        method <- provider_method[[2]]
      } else {
        provider <- z
        method <- "render"
      }
      provider_class <- eval(parse(text = paste0(provider, "Provider")))
      
      tryCatch(
        { provider_instance <- provider_class$new() },
        error = function(e) { stop(
          paste0("Could not load provider for ", provider, 
                 ": ", e, "Please check available options with ch_generate_all_choices()")
        )}
      )   
      
      if ("locale" %in% names(formals(provider_class$new)) && 
          locale %in% provider_instance$allowed_locales()) {
        provider_instance <- provider_class$new(locale = locale)
      } else {
        warning(paste0("Locale ", locale, " not supported for provider ", provider,
                       " defaulting to en_US."))
      }
      
      if(!method %in% names(provider_instance)) {
        stop(paste0("Provider for ", 
                    provider, " has no such method: ", method, 
                    ". Please check available options with ch_generate_all_choices()"))
      }
      args <- fun_args[[col]]
      replicate(n, invoke(provider_instance[[method]], args))
    }),
    names(choices)
  )
  tibble::as_tibble(cols)
}

ch_generate_all_choices <- function() {
  defined_vars <- ls("package:charlatan")
  
  all_choices <- unlist(lapply(defined_vars[endsWith(defined_vars, "Provider")], function(x) {
    name <- tolower(gsub("Provider", "", x))
    all_methods <- eval(parse(text = paste0("names(", x, "$public_methods)")))
    filtered_methods <- Filter(function(x) {
      !x %in% c("render", "initialize", "allowed_locales", "clone")
    }, all_methods)
    
    valid_methods <- unname(Map(function(y) {
      paste(name, y, sep = ".")
    }, filtered_methods))
    
    if ("render" %in% all_methods) {
      valid_methods <- c(valid_methods, name)
    }
  }))
  
  all_choices
}
