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


tools::showNonASCIIfile("R/jobs-provider-nl_NL.R")
to_replace <- vapply(job_formats_nl_nl, "[[", "", 1)
replaced <- stringi::stri_escape_unicode(to_replace)
invisible(lapply(replaced, function(z) cat(sprintf('"%s",', z), sep="\n")))

## where a list with each elemnt a two length vector
## where the first is to be encoded
invisible(lapply(lorem_word_list_, function(x) {
  x[1] <- stringi::stri_escape_unicode(x[1])
  cat(sprintf('c("%s", "%s"),', x[1], x[2]), sep="\n")
}))

## where a character vector
x <- stringi::stri_escape_unicode(lorem_word_list_zh_tw)
invisible(lapply(x, function(z) cat(sprintf('"%s",', z), sep="\n")))
