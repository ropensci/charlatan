# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/de_DE/__init__.py

company_formats_de_de <- c(
    '{{last_name}} {{company_suffix}}',
    '{{last_name}} {{last_name}} {{company_suffix}}',
    '{{last_name}}'
)

company_suffixes_de_de <- c(
    'AG', 'AG', 'AG', 'AG', 'AG & Co. KG', 'AG & Co. KGaA', 'AG & Co. OHG',
    'GbR', 'GbR', 'GmbH', 'GmbH', 'GmbH', 'GmbH', 'GmbH & Co. KG',
    'GmbH & Co. KG', 'GmbH & Co. KGaA', 'GmbH & Co. OHG', 'KG', 'KG', 'KG',
    'KGaA', 'OHG mbH', 'Stiftung & Co. KG', 'Stiftung & Co. KGaA', 'e.G.',
    'e.V.'
)

CompanyProvider_de_DE <- R6::R6Class(
  lock_objects = FALSE,
  'CompanyProvider_de_DE',
  public = list(
    locale = "de_DE",
    formats = company_formats_de_de,
    company_suffixes = company_suffixes_de_de,

    initialize = function(locale = 'de_DE') {
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
