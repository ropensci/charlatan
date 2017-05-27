pluck <- function(x, name, type) {
  if (missing(type)) {
    lapply(x, "[[", name)
  } else {
    vapply(x, "[[", name, FUN.VALUE = type)
  }
}

pluck_names <- function(x, y) {
  #strxt(x, "[[:alpha:]]+")
  strtrim(strxt(x, paste0(names(y), collapse = "|"))[[1]])
  #"first_names_male|first_names_female|first_names|last_names|prefixes_female|prefixes_male|suffixes_female|suffixes_male")
}

strxt <- function(string, pattern) {
  regmatches(string, gregexpr(pattern, string))
}

strtrim <- function(str) gsub("^\\s+|\\s+$", "", str)

assert <- function(x, y) {
  if (!is.null(x)) {
    if (!class(x) %in% y) {
      stop(deparse(substitute(x)), " must be of class ",
           paste0(y, collapse = ", "), call. = FALSE)
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
