
phone_number_formats_fr_ch <- c(
    "+41 2# ### ## ##",
    "+41 3# ### ## ##",
    "+41 4# ### ## ##",
    "+41 5# ### ## ##",
    "+41 6# ### ## ##",
    "+41 7# ### ## ##",
    "+41 8# ### ## ##",
    "+41 9# ### ## ##",
    "+41 (0)2# ### ## ##",
    "+41 (0)3# ### ## ##",
    "+41 (0)4# ### ## ##",
    "+41 (0)5# ### ## ##",
    "+41 (0)6# ### ## ##",
    "+41 (0)7# ### ## ##",
    "+41 (0)8# ### ## ##",
    "+41 (0)9# ### ## ##",
    "02# ### ## ##",
    "03# ### ## ##",
    "04# ### ## ##",
    "05# ### ## ##",
    "06# ### ## ##",
    "07# ### ## ##",
    "08# ### ## ##",
    "09# ### ## ##",
    # see: http://www.bakom.admin.ch/themen/telekom/00479/00607/index.html
    "084# ### ###",
    "0878 ### ###",
    "0900 ### ###",
    "0901 ### ###",
    "0906 ### ###"
)

phone_number_formats_fr_fr <- c(
    "+33 (0)1 ## ## ## ##",
    "+33 (0)1 ## ## ## ##",
    "+33 (0)2 ## ## ## ##",
    "+33 (0)3 ## ## ## ##",
    "+33 (0)4 ## ## ## ##",
    "+33 (0)5 ## ## ## ##",
    "+33 (0)6 ## ## ## ##",
    "+33 (0)8 ## ## ## ##",
    "+33 1 ## ## ## ##",
    "+33 1 ## ## ## ##",
    "+33 2 ## ## ## ##",
    "+33 3 ## ## ## ##",
    "+33 4 ## ## ## ##",
    "+33 5 ## ## ## ##",
    "+33 6 ## ## ## ##",
    "+33 8 ## ## ## ##",
    "01########",
    "01########",
    "02########",
    "03########",
    "04########",
    "05########",
    "06########",
    "08########",
    "01 ## ## ## ##",
    "01 ## ## ## ##",
    "02 ## ## ## ##",
    "03 ## ## ## ##",
    "04 ## ## ## ##",
    "05 ## ## ## ##",
    "06 ## ## ## ##",
    "08 ## ## ## ##"
)


#' @describeIn {PhoneNumberProviders} {Swiss French}
PhoneNumberProvider_fr_CH <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_fr_CH",
    public = list(
        #' @field locale (character) the locale
        locale = "fr_CH",
        formats = phone_number_formats_fr_ch
    ))
#' @describeIn {PhoneNumberProviders} {French (France)}
PhoneNumberProvider_fr_FR <- R6::R6Class(
    inherit = PhoneNumberProvider,
    "PhoneNumberProvider_fr_FR",
    public = list(
        #' @field locale (character) the locale
        locale = "fr_FR",
        formats = phone_number_formats_fr_fr
    ))


