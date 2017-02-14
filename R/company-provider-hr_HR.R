# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/hr_HR/__init__.py

company_formats_hr_hr <- c(
  '{{last_name}} {{company_suffix}}',
  '{{last_name}} {{last_name}} {{company_suffix}}',
  '{{last_name}}'
)

company_suffixes_hr_hr = c(
  'd.o.o.', 'd.d.', 'j.d.o.o.'
)

CompanyProvider_hr_HR <- R6::R6Class(
  lock_objects = FALSE,
  'CompanyProvider_hr_HR',
  public = list(
    locale = "hr_HR",
    formats = company_formats_hr_hr,
    company_suffixes = company_suffixes_hr_hr,

    initialize = function(locale = 'hr_HR') {
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
