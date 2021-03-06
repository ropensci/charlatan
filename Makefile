PACKAGE := $(shell grep '^Package:' DESCRIPTION | sed -E 's/^Package:[[:space:]]+//')
RSCRIPT = Rscript --no-init-file

test:
	${RSCRIPT} -e 'library(methods); devtools::test()'

doc:
	@mkdir -p man
	${RSCRIPT} -e "library(methods); devtools::document()"

install: doc build
	R CMD INSTALL . && rm *.tar.gz

build:
	R CMD build .

eg:
	${RSCRIPT} -e "library(methods); devtools::run_examples()"

check: build
	_R_CHECK_CRAN_INCOMING_=FALSE R CMD check --as-cran --no-manual `ls -1tr ${PACKAGE}*gz | tail -n1`
	@rm -f `ls -1tr ${PACKAGE}*gz | tail -n1`
	@rm -rf ${PACKAGE}.Rcheck

readme: README.Rmd
	${RSCRIPT} -e "knitr::knit('README.Rmd')"

locales_update:
	${RSCRIPT} -e "devtools::load_all(); z=data.table::setDF(data.table::rbindlist(lapply(available_locales, stringi::stri_locale_info))); save(z, version=2, file='data/available_locales_df.rda')"

# No real targets!
.PHONY: all test doc install	
