# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/bg_BG/__init__.py

company_formats_bg_bg <- c(
  '{{last_name}} {{company_suffix}}',
  '{{last_name}} {{last_name}} {{company_suffix}}',
  '{{last_name}}'
)

company_suffixes_bg_bg <- c(
  "\u0410\u0414",
  "AD",
  "ADSITz",
  "\u0410\u0414\u0421\u0418\u0426",
  "EAD",
  "\u0415\u0410\u0414",
  "EOOD",
  "\u0415\u041e\u041e\u0414",
  "ET",
  "ET",
  "OOD",
  "\u041e\u041e\u0414",
  "KD",
  "\u041a\u0414",
  "KDA",
  "\u041a\u0414\u0410",
  "SD",
  "\u0421\u0414"
)

CompanyProvider_bg_BG <- R6::R6Class(
  lock_objects = FALSE,
  'CompanyProvider_bg_BG',
  public = list(
    locale = "bg_BG",
    formats = company_formats_bg_bg,
    company_suffixes = company_suffixes_bg_bg,

    initialize = function(locale = 'bg_BG') {
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
