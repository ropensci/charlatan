pluck <- function(x, name, type) {
  if (missing(type)) {
    lapply(x, "[[", name)
  } else {
    vapply(x, "[[", name, FUN.VALUE = type)
  }
}

pluck_names <- function(x, y) {
  strtrim(strxt(x, paste0(names(y), collapse = "|"))[[1]])
}

strxt <- function(string, pattern) {
  regmatches(string, gregexpr(pattern, string))
}

strtrim <- function(str) gsub("^\\s+|\\s+$", "", str)

assert <- function(x, y) {
  if (!is.null(x)) {
    if (!inherits(x, y)) {
      stop(deparse(substitute(x)), " must be of class ",
        paste0(y, collapse = ", "),
        call. = FALSE
      )
    }
  }
}

parse_eval <- function(x, y, messy = FALSE) {
  strg <- if (messy) paste0(x, tolower(y), "_messy") else paste0(x, tolower(y))
  res <- tryCatch(
    eval(parse(text = strg)),
    error = function(E) E
  )
  if (inherits(res, "error")) {
    NULL
  } else {
    res
  }
}

rep_licate <- function(n, expr, type) {
  vapply(integer(n), eval.parent(substitute(function(...) expr)), type)
}

# test if an input has probabilities associated with character strings
has_probs <- function(x) {
  is.list(x) && is.numeric(x[[1]])
}

check4pkg <- function(x) {
  if (!requireNamespace(x, quietly = TRUE)) {
    stop("Please install ", x, call. = FALSE)
  } else {
    invisible(TRUE)
  }
}

`%||%` <- function(x, y) if (is.null(x)) y else x



# instantiate a locale specific provider
#
# Errors with a clear error message if it does not exist
cr_loc_spec_provider <- function(provider, locale) {
  if (is.null(locale)) stop("Locale not set", call. = FALSE)
  if (!provider %in% available_providers) stop(paste0(provider, " does not exist"))
  name <- paste0(provider, "_", locale)
  if (exists(name)) {
    return(eval(parse(text = name))$new())
  } else {
    stop(paste0("There is no locale ", locale, " for provider ", provider), call. = FALSE)
  }
}


#' Create Localized Provider
#'
#' @export
#' @param provider The name of the provider you want to create
#' @param locale Locale to use
#' @return Localized provider
#' @examples
#' x <- subclass("AddressProvider")
subclass <- function(provider, locale = NULL) {
  if (is.null(locale)) {
    locale <- "en_US"
    warning(paste("No locale provided for ", provider, " defaulting to en_US"), call. = FALSE)
  }
  # first make en_US version
  prov <- cr_loc_spec_provider(provider, "en_US")
  if (locale %in% prov$allowed_locales()) {
    prov <- cr_loc_spec_provider(provider, locale)
  } else {
    msg <- sprintf(" %s does not have locale %s, defaulting to en_US locale.", provider, locale)
    warning(msg, call. = FALSE)
  }
  prov
}

raise_class <- function(name = NULL) {
  msg <- "You cannot instantiate this Parent Provider: {{name}}, \nuse one of the provided localized versions: for example {{name}}_en_US"
  stop(whisker.render(msg, data = list(name = name)), call. = FALSE)
}


#' Find mismatch between parent and child locales
#'
#' @returns locales that ARE in the parent, but are not available in the child.
#' @keywords internal
#' @param parent_provider provider that you want the locales to check for
#' @param child_provider provider where we check if parent locales are in.
#' For example InternetProvider has en_AU but LoremProvider does not.
locale_mismatch <- function(parent_provider, child_provider) {
  parent <- cr_loc_spec_provider(parent_provider, "en_US")$allowed_locales()
  child <- cr_loc_spec_provider(child_provider, "en_US")$allowed_locales()
  parent[!parent %in% child]
}

#' generalized util function for sequence multiplication
#'
#' Util function for ISBN, ean, SSN providers.
#' for cases such as sum(x[4]*5 + x[3]*4 + x[2]*3 + x[1] *2)
#' @keywords internal
checksum_util <- function(vector, multiplicationvector) {
  stopifnot(length(vector) == length(multiplicationvector))
  sum(vector * multiplicationvector)
}
