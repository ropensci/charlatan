phone_number_formats_es_es <- c(
  "+34 ### ### ###",
  "+34 #########",
  "+34 ### ## ## ##",
  "+34### ### ###",
  "+34#########",
  "+34### ## ## ##"
)

phone_number_formats_es_mx <- c(
  "+##(#)##########",
  "+##(#)##########",
  "0##########",
  "0##########",
  "###-###-####",
  "(###)###-####",
  "1-###-###-####",
  "###.###.####",
  "###-###-####",
  "(###)###-####",
  "1-###-###-####",
  "###.###.####",
  "###-###-####x###",
  "(###)###-####x###",
  "1-###-###-####x###",
  "###.###.####x###",
  "###-###-####x####",
  "(###)###-####x####",
  "1-###-###-####x####",
  "###.###.####x####",
  "###-###-####x#####",
  "(###)###-####x#####",
  "1-###-###-####x#####",
  "###.###.####x#####"
)

area_codes_formats_es_pe <- c(
  # 1',  # Lima / Callao -- special case, phone numbers here have 7 digits
  "41", # Amazonas
  "43", # Ancash
  "83", # Apurímac
  "54", # Arequipa
  "66", # Ayacucho
  "76", # Cajamarca
  "84", # Cusco
  "67", # Huancavelica
  "62", # Huánuco
  "56", # Ica
  "64", # Junín
  "44", # La Libertad
  "74", # Lambayeque
  "65", # Loreto
  "82", # Madre de Dios
  "53", # Moquegua
  "63", # Pasco
  "73", # Piura
  "51", # Puno
  "42", # San Martín
  "52", # Tacna
  "72", # Tumbes
  "61" # Ucayali
)

phone_number_formats_es_pe <- c(
  # landline in Lima / Callao
  "+51-1-#######",
  "+51-1-###-####",
  "1-#######",
  "1-###-####",
  "#######",
  "###-####",
  # national long distance prefix, also for cellphone to landline
  "0-1-#######",
  "0-1-###-####",
  "01-#######",
  "01-###-####",
  # landline in the rest of the country
  "+51-{{area_code}}-######",
  "+51-{{area_code}}-###-###",
  "{{area_code}}-######",
  "{{area_code}}-###-###",
  # national long distance prefix, also for cellphone to landline
  "0-{{area_code}}-######",
  "0-{{area_code}}-###-###",
  "0{{area_code}}-######",
  "0{{area_code}}-###-###",
  # cellphone numbers always start with '9'
  "+51-9########",
  "+51-9##-###-###",
  "9########",
  "9##-###-###"
)


#' @title PhoneNumberProvider for Spain
#' @inherit PhoneNumberProvider description details return
#' @family es
#' @family ES
#' @export
#' @examples
#' z <- PhoneNumberProvider_es_ES$new()
#' z$render()
PhoneNumberProvider_es_ES <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_es_ES",
  private = list(
    locale_ = "es_ES",
    formats = phone_number_formats_es_es
  )
)
#' @title PhoneNumberProvider for Mexico
#' @inherit PhoneNumberProvider description details return
#' @family en
#' @family MX
#' @export
#' @examples
#' z <- PhoneNumberProvider_es_MX$new()
#' z$render()
PhoneNumberProvider_es_MX <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_es_MX",
  private = list(
    locale_ = "es_MX",
    formats = phone_number_formats_es_mx
  )
)


#' @title PhoneNumberProvider for Peru
#' @inherit PhoneNumberProvider description details return
#' @family es
#' @family PE
#' @export
#' @examples
#' z <- PhoneNumberProvider_es_PE$new()
#' z$render()
PhoneNumberProvider_es_PE <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_es_PE",
  private = list(
    locale_ = "es_PE",
    formats = phone_number_formats_es_pe,
    area_code_formats = area_codes_formats_es_pe
  )
)
