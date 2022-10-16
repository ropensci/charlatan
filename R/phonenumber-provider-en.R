phone_number_formats_en_us <- c(
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


phone_number_formats_en_au <- c(
    # Local calls
    "#### ####",
    "####-####",
    "####.####", # domain registrars apparently use this
    "########",
    # National dialing
    "0{{area_code}} #### ####",
    "0{{area_code}}-####-####",
    "0{{area_code}}.####.####",
    "0{{area_code}}########",
    # Optional parenthesis
    "(0{{area_code}}) #### ####",
    "(0{{area_code}})-####-####",
    "(0{{area_code}}).####.####",
    "(0{{area_code}})########",
    # International drops the 0
    "+61 {{area_code}} #### ####",
    "+61-{{area_code}}-####-####",
    "+61.{{area_code}}.####.####",
    "+61{{area_code}}########",
    # 04 Mobile telephones (Australia-wide) mostly commonly written 4 - 3 -
    # 3 instead of 2 - 4 - 4
    "04## ### ###",
    "04##-###-###",
    "04##.###.###",
    "+61 4## ### ###",
    "+61-4##-###-###",
    "+61.4##.###.###"
)

area_codes_formats_en_au <- c(
    "2",
    "3",
    "7",
    "8"
)

phone_number_formats_en_gb <- c(
    "+44(0)##########",
    "+44(0)#### ######",
    "+44(0)#########",
    "+44(0)#### #####",
    "0##########",
    "0#########",
    "0#### ######",
    "0#### #####",
    "(0####) ######",
    "(0####) #####"
)

phone_number_formats_en_ca <- c(
    "%##-###-####",
    "%##.###.####",
    "%## ### ####",
    "(%##) ###-####",
    "1-%##-###-####",
    "1 (%##) ###-####",
    "+1 (%##) ###-####",
    "%##-###-#### x###",
    "(%##) ###-#### x###"
)

phone_number_formats_en_nz <- c(
    # Local calls
    "%## ####",
    "%##-####",
    "%######",
    # National & Mobile dialing
    "0{{area_code}} %## ####",
    "0{{area_code}} %##-####",
    "0{{area_code}}-%##-####",
    "0{{area_code}} %######",
    # Optional parenthesis
    "(0{{area_code}}) %## ####",
    "(0{{area_code}}) %##-####",
    "(0{{area_code}}) %######",
    # International drops the 0
    "+64 {{area_code}} %## ####",
    "+64 {{area_code}} %##-####",
    "+64 {{area_code}} %######",
    "+64-{{area_code}}-%##-####",
    "+64{{area_code}}%######"
)

area_codes_formats_en_nz <- c(
    # Mobiles
    "20",
    "21",
    "22",
    "27",
    "29",
    "3", # South Island
    "4", # Wellington
    "6", # Lower North Island
    "7", # Central North Island
    "9" # Auckland
)


#' @title PhoneNumberProviders
#' @description methods for generating phone numbers
#' @export
#' @keywords internal
#' @examples
#' z <- PhoneNumberProvider_en_US$new()
#' z$render()
#' es <- PhoneNumberProvider_es_PE$new()
#' es$render()
PhoneNumberProvider_en_US <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_en_US",
    public = list(
        #' @field locale (character) the locale
        locale = "en_US",
        formats = phone_number_formats_en_us
    ))

#' @describeIn {PhoneNumberProviders} {Australian English}
PhoneNumberProvider_en_AU <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_en_AU",
    public = list(
        #' @field locale (character) the locale
        locale = "en_AU",
        formats = phone_number_formats_en_au,
        area_code_formats =area_codes_formats_en_au
    ))

#' @describeIn {PhoneNumberProviders} {New Zealand English}
PhoneNumberProvider_en_NZ <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_en_NZ",
    public = list(
        #' @field locale (character) the locale
        locale = "en_NZ",
        formats = phone_number_formats_en_nz,
        area_code_formats =area_codes_formats_en_nz
    ))
#' @describeIn {PhoneNumberProviders} {Great Brittain English}
PhoneNumberProvider_en_GB <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_en_GB",
    public = list(
        #' @field locale (character) the locale
        locale = "en_GB",
        formats = phone_number_formats_en_gb
    ))

#' @describeIn {PhoneNumberProviders} {Canadian English}
PhoneNumberProvider_en_CA <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_en_CA",
    public = list(
        #' @field locale (character) the locale
        locale = "en_CA",
        formats = phone_number_formats_en_ca
    ))


