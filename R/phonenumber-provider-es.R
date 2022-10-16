
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


#' @describeIn {PhoneNumberProviders} {Spain Spanish}
PhoneNumberProvider_es_ES <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_es_ES",
    public = list(
        #' @field locale (character) the locale
        locale = "es_ES",
        formats = phone_number_formats_es_es
    ))
#' @describeIn {PhoneNumberProviders} {Mexican Spanish}
PhoneNumberProvider_es_MX <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_es_MX",
    public = list(
        #' @field locale (character) the locale
        locale = "es_MX",
        formats = phone_number_formats_es_mx
    ))

#' @describeIn {PhoneNumberProviders} {Spanish (Peru)}
PhoneNumberProvider_es_PE <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_es_PE",
    public = list(
        #' @field locale (character) the locale
        locale = "es_PE",
        formats= phone_number_formats_es_pe,
        area_code_formats = area_codes_formats_es_pe
    ))


