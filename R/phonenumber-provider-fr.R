
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


#' @title PhoneNumberProvider for Switserland
#' @description methods for generating phone numbers
#' @family fr
#' @family CH
#' @export
#' @examples
#' z <- PhoneNumberProvider_fr_CH$new()
#' z$render()
PhoneNumberProvider_fr_CH <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_fr_CH",
  private = list(
    locale_ = "fr_CH",
    formats = phone_number_formats_fr_ch
  )
)

#' @title PhoneNumberProvider for France
#' @description methods for generating phone numbers
#' @family fr
#' @family FR
#' @export
#' @examples
#' z <- PhoneNumberProvider_fr_FR$new()
#' z$render()
PhoneNumberProvider_fr_FR <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_fr_FR",
  private = list(
    locale_ = "fr_FR",
    formats = phone_number_formats_fr_fr
  )
)
