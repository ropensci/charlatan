## code to prepare `available_providers` dataset goes here
available_providers <- c(
  # CamelCase
  "UserAgentProvider",
  "TaxonomyProvider",
  "SSNProvider",
  "SequenceProvider",
  "PhoneNumberProvider",
  "PersonProvider",
  "NumericsProvider",
  "MissingDataProvider",
  "MiscProvider",
  "LoremProvider",
  "JobProvider",
  "InternetProvider",
  "FileProvider",
  "ElementProvider",
  "DOIProvider",
  "DateTimeProvider",
  "CurrencyProvider",
  "CreditCardProvider",
  "CoordinateProvider",
  "CompanyProvider",
  "ColorProvider",
  "AddressProvider"
)
usethis::use_data(available_providers, overwrite = TRUE)
save(available_providers, version=2, file="data/available_providers.rda")
