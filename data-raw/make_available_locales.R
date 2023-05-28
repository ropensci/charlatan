available_locales_df <- data.table::setDF(data.table::rbindlist(
     lapply(available_locales, stringi::stri_locale_info)))
save(available_locales_df, version=2, file="data/available_locales_df.rda")
