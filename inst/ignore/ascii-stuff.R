devtools::load_all()
z <- PersonProvider$new(locale = "pl_PL")
z$locale
z$render()
z$first_name()
z$first_name_female()
z$first_name_male()
z$last_name()
z$last_name_female()
z$last_name_male()
z$prefix()
z$suffix()


tools::showNonASCIIfile("R/internet-provider-hr_HR.R")
# to_replace <- vapply(int_replacements_de_de, "[[", "", 1)
# replaced <- stringi::stri_escape_unicode(to_replace)
invisible(lapply(int_replacements_hr_hr, function(x) {
  x[1] <- stringi::stri_escape_unicode(x[1])
  cat(sprintf('c("%s", "%s"),', x[1], x[2]), sep="\n")
}))
