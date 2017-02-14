# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/cs_CZ/__init__.py

company_formats_cs_cz = c(
  '{{last_name}} {{company_suffix}}',
  '{{last_name}} {{last_name}} {{company_suffix}}',
  '{{last_name}}'
)

company_suffixes_cs_cz <- c(
  's.r.o.', 'o.s.', 'a.s.'
)

CompanyProvider_cs_CZ <- R6::R6Class(
  lock_objects = FALSE,
  'CompanyProvider_cs_CZ',
  public = list(
    locale = "cs_CZ",
    formats = company_formats_cs_cz,
    company_suffixes = company_suffixes_cs_cz,

    initialize = function(locale = 'cs_CZ') {
      self$locale <- locale
      self$formats <- self$formats
      self$company_suffixes <- self$company_suffixes
    },

    company = function() {
      company_(self$locale, self$formats, self$company_suffixes)
    },

    company_suffix = function() {
      company_suffix_(self$company_suffixes)
    }
  )
)
