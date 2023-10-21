available_locales_df <- data.table::setDF(data.table::rbindlist(
  lapply(available_locales, stringi::stri_locale_info)
))
usethis::use_data(available_locales_df, overwrite = TRUE)
