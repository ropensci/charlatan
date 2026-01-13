# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/phone_number

phone_number_formats_el_gr <- c(
  "69########",
  "69## ######",
  "69## ### ###",
  "210#######",
  "210 #######",
  "210 ### ####",
  "2##0######",
  "2##0 ######",
  "2##0 ### ###",
  "2###0#####",
  "2###0 ## ###",
  "(+30) 69## ######",
  "+30 69## ######",
  "+3069########",
  "(+30) 2### ######",
  "+30 2### ######",
  "+302#########"
)


#' @title PhoneNumberProvider for Greece
#' @inherit PhoneNumberProvider description details return
#' @family el
#' @family GR
#' @export
#' @examples
#' z <- PhoneNumberProvider_el_GR$new()
#' z$render()
PhoneNumberProvider_el_GR <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_el_GR",
  private = list(
    locale_ = "el_GR",
    formats = phone_number_formats_el_gr
  )
)
# TODO: dk_DK does not exist? it seems these are the same
phone_number_formats_da_dk <- c(
  "+45########",
  "+45 ## ## ## ##",
  "########",
  "## ######",
  "0045########",
  "(+45)########",
  "(45) ########"
)

phone_number_formats_dk_dk <- c(
  "+45(0)##########",
  "+45(0)#### ######",
  "+45 (0) #### ######",
  "+45(0) #########",
  "+45(0)#### #####",
  "0##########",
  "0#########",
  "0#### ######",
  "0#### #####",
  "(0####) ######",
  "(0####) #####"
)


#' @title PhoneNumberProvider for Denmark
#' @inherit PhoneNumberProvider description details return
#' @family da
#' @family DK
#' @export
#' @examples
#' z <- PhoneNumberProvider_da_DK$new()
#' z$render()
PhoneNumberProvider_da_DK <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_da_DK",
  private = list(
    locale_ = "da_DK",
    formats = unique(c(phone_number_formats_da_dk, phone_number_formats_dk_dk))
  )
)


#' @title PhoneNumberProvider for Denmark
#' @inherit PhoneNumberProvider description details return
#' @family dk
#' @family DK
#' @export
#' @examples
#' z <- PhoneNumberProvider_en_GB$new()
#' z$render()
PhoneNumberProvider_dk_DK <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_dk_DK",
  private = list(
    locale_ = "dk_DK",
    formats = unique(c(phone_number_formats_da_dk, phone_number_formats_dk_dk))
  )
)

phone_number_formats_de_de <- c(
  "+49(0)##########",
  "+49(0)#### ######",
  "+49 (0) #### ######",
  "+49(0) #########",
  "+49(0)#### #####",
  "0##########",
  "0#########",
  "0#### ######",
  "0#### #####",
  "(0####) ######",
  "(0####) #####"
)

#' @title PhoneNumberProvider for Germany
#' @inherit PhoneNumberProvider description details return
#' @family de
#' @family DE
#' @export
#' @examples
#' z <- PhoneNumberProvider_de_DE$new()
#' z$render()
PhoneNumberProvider_de_DE <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_de_DE",
  private = list(
    locale_ = "de_DE",
    formats = phone_number_formats_de_de
  )
)

phone_number_formats_cs_cz <- c(
  "601 ### ###",
  "603 ### ###",
  "608 ### ###",
  "790 ### ###",
  "602 ### ###",
  "604 ### ###",
  "770 ### ###",
  "606 ### ###",
  "605 ### ###",
  "773 ### ###",
  "607 ### ###",
  "730 ### ###",
  "774 ### ###",
  "702 ### ###",
  "731 ### ###",
  "775 ### ###",
  "720 ### ###",
  "732 ### ###",
  "776 ### ###",
  "721 ### ###",
  "733 ### ###",
  "777 ### ###",
  "722 ### ###",
  "734 ### ###",
  "723 ### ###",
  "736 ### ###",
  "724 ### ###",
  "737 ### ###",
  "725 ### ###",
  "738 ### ###",
  "726 ### ###",
  "739 ### ###",
  "727 ### ###",
  "728 ### ###",
  "729 ### ###"
)


#' @title PhoneNumberProvider for Chechia
#' @inherit PhoneNumberProvider description details return
#' @family cs
#' @family CZ
#' @export
#' @examples
#' z <- PhoneNumberProvider_cs_CZ$new()
#' z$render()
PhoneNumberProvider_cs_CZ <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_cs_CZ",
  private = list(
    locale_ = "cs_CZ",
    formats = phone_number_formats_cs_cz
  )
)

phone_number_formats_bs_ba <- c(
  "030 ### ###",
  "031 ### ###",
  "032 ### ###",
  "033 ### ###",
  "034 ### ###",
  "035 ### ###",
  "036 ### ###",
  "037 ### ###",
  "038 ### ###",
  "039 ### ###",
  "049 ### ###",
  "050 ### ###",
  "051 ### ###",
  "052 ### ###",
  "053 ### ###",
  "054 ### ###",
  "055 ### ###",
  "056 ### ###",
  "057 ### ###",
  "058 ### ###",
  "059 ### ###",
  "060 ### ###",
  "060 #### ###",
  "061 ### ###",
  "062 ### ###",
  "063 ### ###",
  "064 ### ###",
  "065 ### ###",
  "066 ### ###",
  "067 ### ###",
  "070 20# ###",
  "+387 61 ### ###",
  "+387 (0)61 ### ###"
)


#' @title PhoneNumberProvider for Bosnia and Herzegovina
#' @inherit PhoneNumberProvider description details return
#' @family bs
#' @family BA
#' @export
#' @examples
#' z <- PhoneNumberProvider_bs_BA$new()
#' z$render()
PhoneNumberProvider_bs_BA <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_bs_BA",
  private = list(
    locale_ = "bs_BA",
    formats = phone_number_formats_bs_ba
  )
)


phone_number_formats_bg_bg <- c(
  "+359(0)#########",
  "+359(0)### ######",
  "+359(0)### ### ###",
  "+359#########",
  "0#########",
  "0### ######",
  "0### ### ###",
  "0### ###-###",
  "(0###) ######",
  "(0###) ### ###",
  "(0###) ###-###"
)

#' @title PhoneNumberProvider for Bulgaria
#' @inherit PhoneNumberProvider description details return
#' @family bg
#' @family BG
#' @export
#' @examples
#' z <- PhoneNumberProvider_bg_BG$new()
#' z$render()
PhoneNumberProvider_bg_BG <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_bg_BG",
  private = list(
    locale_ = "bg_BG",
    formats = phone_number_formats_bg_bg
  )
)
phone_number_formats_fa_ir <- c(
  # Mobile
  "+98 91# ### ####",
  "091# ### ####",
  "+98 920 ### ####",
  "0920 ### ####",
  "+98 921 ### ####",
  "0921 ### ####",
  "+98 93# ### ####",
  "093# ### ####",
  # Land lines, https://en.wikipedia.org/wiki/List_of_dialling_codes_in_Iran
  "+98 21 #### ####",
  "021 #### ####",
  "+98 26 #### ####",
  "026 #### ####",
  "+98 25 #### ####",
  "025 #### ####",
  "+98 86 #### ####",
  "086 #### ####",
  "+98 24 #### ####",
  "024 #### ####",
  "+98 23 #### ####",
  "023 #### ####",
  "+98 81 #### ####",
  "081 #### ####",
  "+98 28 #### ####",
  "028 #### ####",
  "+98 31 #### ####",
  "031 #### ####",
  "+98 44 #### ####",
  "044 #### ####",
  "+98 11 #### ####",
  "011 #### ####",
  "+98 74 #### ####",
  "074 #### ####",
  "+98 83 #### ####",
  "083 #### ####",
  "+98 51 #### ####",
  "051 #### ####",
  "+98 45 #### ####",
  "045 #### ####",
  "+98 17 #### ####",
  "017 #### ####",
  "+98 41 #### ####",
  "041 #### ####",
  "+98 54 #### ####",
  "054 #### ####",
  "+98 87 #### ####",
  "087 #### ####",
  "+98 71 #### ####",
  "071 #### ####",
  "+98 66 #### ####",
  "066 #### ####",
  "+98 34 #### ####",
  "034 #### ####",
  "+98 56 #### ####",
  "056 #### ####",
  "+98 13 #### ####",
  "013 #### ####",
  "+98 77 #### ####",
  "077 #### ####",
  "+98 76 #### ####",
  "076 #### ####",
  "+98 61 #### ####",
  "061 #### ####",
  "+98 38 #### ####",
  "038 #### ####",
  "+98 58 #### ####",
  "058 #### ####",
  "+98 35 #### ####",
  "035 #### ####",
  "+98 84 #### ####",
  "084 #### ####",
  "+98 ### #### ####",
  "0### #### ####"
)

#' @title PhoneNumberProvider for Iran
#' @description methods for generating phone numbers
#' @family fa
#' @family IR
#' @export
#' @examples
#' z <- PhoneNumberProvider_fa_IR$new()
#' z$render()
PhoneNumberProvider_fa_IR <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_fa_IR",
  private = list(
    locale_ = "fa_IR",
    formats = phone_number_formats_fa_ir
  )
)

phone_number_formats_fi_fi <- c(
  "+358 ## #######",
  "+358 #########",
  "+358#########",
  "(+358) #########",
  "0#########",
  "0## ### ####"
)

#' @title PhoneNumberProvider for Finland
#' @inherit PhoneNumberProvider description details return
#' @family fi
#' @family FI
#' @export
#' @examples
#' z <- PhoneNumberProvider_fi_FI$new()
#' z$render()
PhoneNumberProvider_fi_FI <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_fi_FI",
  private = list(
    locale_ = "fi_FI",
    formats = phone_number_formats_fi_fi
  )
)


phone_number_formats_hi_in <- c(
  "+91 ##########",
  "+91 ### #######",
  "0##-########",
  "0##########",
  "0#### ######"
)

#' @title PhoneNumberProvider for India
#' @inherit PhoneNumberProvider description details return
#' @family hi
#' @family IN
#' @export
#' @examples
#' z <- PhoneNumberProvider_hi_IN$new()
#' z$render()
PhoneNumberProvider_hi_IN <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_hi_IN",
  private = list(
    locale_ = "hi_IN",
    formats = phone_number_formats_hi_in
  )
)

phone_number_formats_hr_hr <- c(
  "01 #### ###",
  "020 ### ###",
  "021 ### ###",
  "022 ### ###",
  "023 ### ###",
  "031 ### ###",
  "032 ### ###",
  "033 ### ###",
  "034 ### ###",
  "035 ### ###",
  "040 ### ###",
  "042 ### ###",
  "043 ### ###",
  "044 ### ###",
  "047 ### ###",
  "048 ### ###",
  "049 ### ###",
  "051 ### ###",
  "052 ### ###",
  "053 ### ###",
  "060 ### ###",
  "072 ### ###",
  "074 ### ###",
  "091 #### ###",
  "092 #### ###",
  "095 #### ###",
  "097 #### ###",
  "098 #### ###",
  "099 #### ###",
  "0800 ## ##"
)

#' @title PhoneNumberProvider for Croatia
#' @inherit PhoneNumberProvider description details return
#' @family hr
#' @family HR
#' @export
#' @examples
#' z <- PhoneNumberProvider_en_GB$new()
#' z$render()
PhoneNumberProvider_hr_HR <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_hr_HR",
  private = list(
    locale_ = "hr_HR",
    formats = phone_number_formats_hr_hr
  )
)

phone_number_formats_hu_hu <- c(
  "+36 ## ###-####",
  "(06)##/###-####",
  "(##)/###-####",
  "##/###-####",
  "##/### ####",
  "06-#/### ####",
  "06-##/### ####"
)

#' @title PhoneNumberProvider for Hungary
#' @inherit PhoneNumberProvider description details return
#' @family hu
#' @family HU
#' @export
#' @examples
#' z <- PhoneNumberProvider_hu_HU$new()
#' z$render()
PhoneNumberProvider_hu_HU <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_hu_HU",
  private = list(
    locale_ = "hu_HU",
    formats = phone_number_formats_hu_hu
  )
)

phone_number_formats_it_it <- c(
  "+39 ### ## ## ####",
  "+39 ## #######",
  "+39 ## ########",
  "+39 ### #######",
  "+39 ### ########",
  "+39 #### #######",
  "+39 #### ########"
)
#' @title PhoneNumberProvider for Italy
#' @inherit PhoneNumberProvider description details return
#' @family it
#' @family IT
#' @export
#' @examples
#' z <- PhoneNumberProvider_it_IT$new()
#' z$render()
PhoneNumberProvider_it_IT <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_it_IT",
  private = list(
    locale_ = "it_IT",
    formats = phone_number_formats_it_it
  )
)


phone_number_formats_ja_jp <- c(
  "070-####-####",
  "080-####-####",
  "090-####-####",
  "##-####-####"
)

#' @title PhoneNumberProvider for Japan
#' @inherit PhoneNumberProvider description details return
#' @family ja
#' @family JP
#' @export
#' @examples
#' z <- PhoneNumberProvider_en_GB$new()
#' z$render()
PhoneNumberProvider_ja_JP <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_ja_JP",
  private = list(
    locale_ = "ja_JP",
    formats = phone_number_formats_ja_jp
  )
)


phone_number_formats_ko_kr <- c(
  "02-####-####",
  "031-###-####",
  "032-###-####",
  "033-###-####",
  "041-###-####",
  "042-###-####",
  "043-###-####",
  "044-###-####",
  "051-###-####",
  "052-###-####",
  "053-###-####",
  "054-###-####",
  "055-###-####",
  "061-###-####",
  "062-###-####",
  "063-###-####",
  "064-7##-####",
  "010-####-####",
  "011-###-####",
  "016-###-####",
  "017-###-####",
  "018-###-####",
  "019-###-####",
  "070-####-####"
)

#' @title PhoneNumberProvider for Korean Republic
#' @inherit PhoneNumberProvider description details return
#' @family ko
#' @family KR
#' @export
#' @examples
#' z <- PhoneNumberProvider_ko_KR$new()
#' z$render()
PhoneNumberProvider_ko_KR <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_ko_KR",
  private = list(
    locale_ = "ko_KR",
    formats = phone_number_formats_ko_kr
  )
)

phone_number_formats_lt_lt <- c(
  "+370 ########",
  "+(370) ########",
  "+370########"
)

#' @title PhoneNumberProvider for Lithuania
#' @inherit PhoneNumberProvider description details return
#' @family lt
#' @family LT
#' @export
#' @examples
#' z <- PhoneNumberProvider_lt_LT$new()
#' z$render()
PhoneNumberProvider_lt_LT <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_lt_LT",
  private = list(
    locale_ = "lt_LT",
    formats = phone_number_formats_lt_lt
  )
)

phone_number_formats_lv_lv <- c(
  "+371 ########",
  "+(371) ########",
  "+371########"
)

#' @title PhoneNumberProvider for Latvia
#' @inherit PhoneNumberProvider description details return
#' @family lv
#' @family LV
#' @export
#' @examples
#' z <- PhoneNumberProvider_lv_LV$new()
#' z$render()
PhoneNumberProvider_lv_LV <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_lv_LV",
  private = list(
    locale_ = "lv_LV",
    formats = phone_number_formats_lv_lv
  )
)


phone_number_formats_ne_np <- c(
  "+977 ##########",
  "+977 ### #######",
  "984#######",
  "985#######",
  "980#######"
)


#' @title PhoneNumberProvider for Nepal
#' @inherit PhoneNumberProvider description details return
#' @family ne
#' @family NP
#' @export
#' @examples
#' z <- PhoneNumberProvider_ne_NP$new()
#' z$render()
PhoneNumberProvider_ne_NP <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_ne_NP",
  private = list(
    locale_ = "ne_NP",
    formats = phone_number_formats_ne_np
  )
)


## This was called no_NO before, but that locale does not exist
## so I changed this to nn_NO
phone_number_formats_nn_no <- c(
  "+47#########",
  "+47 ## ## ## ##",
  "## ## ## ##",
  "## ## ## ##",
  "########",
  "########",
  "9## ## ###",
  "4## ## ###",
  "9#######",
  "4#######"
)


#' @title PhoneNumberProvider for Norway (nn_NO)
#' @inherit PhoneNumberProvider description details return
#' @family nn
#' @family NO
#' @export
#' @examples
#' z <- PhoneNumberProvider_nn_NO$new()
#' z$render()
PhoneNumberProvider_nn_NO <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_nn_NO",
  private = list(
    locale_ = "nn_NO",
    formats = phone_number_formats_nn_no
  )
)


#' @title PhoneNumberProvider for Norway (no_NO)
#' @inherit PhoneNumberProvider description details return
#' @family no
#' @family NO
#' @export
#' @examples
#' z <- PhoneNumberProvider_no_NO$new()
#' z$render()
PhoneNumberProvider_no_NO <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_nn_NO",
  private = list(
    locale_ = "no_NO",
    formats = phone_number_formats_nn_no
  )
)


phone_number_formats_pl_pl <- c(
  # Mobile
  # Government website: http://www.uke.gov.pl/numeracja-843
  "50# ### ###",
  "51# ### ###",
  "53# ### ###",
  "57# ### ###",
  "60# ### ###",
  "66# ### ###",
  "69# ### ###",
  "72# ### ###",
  "73# ### ###",
  "78# ### ###",
  "79# ### ###",
  "88# ### ###",
  "+48 50# ### ###",
  "+48 51# ### ###",
  "+48 53# ### ###",
  "+48 57# ### ###",
  "+48 60# ### ###",
  "+48 66# ### ###",
  "+48 69# ### ###",
  "+48 72# ### ###",
  "+48 73# ### ###",
  "+48 78# ### ###",
  "+48 79# ### ###",
  "+48 88# ### ###",
  "32 ### ## ##",
  "+48 32 ### ## ##",
  "22 ### ## ##",
  "+48 22 ### ## ##"
)

#' @title PhoneNumberProvider for Poland
#' @inherit PhoneNumberProvider description details return
#' @family pl
#' @family PL
#' @export
#' @examples
#' z <- PhoneNumberProvider_pl_PL$new()
#' z$render()
PhoneNumberProvider_pl_PL <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_pl_PL",
  private = list(
    locale_ = "pl_PL",
    formats = phone_number_formats_pl_pl
  )
)

phone_number_formats_pt_br <- c(
  "+55 (011) #### ####",
  "+55 (021) #### ####",
  "+55 (031) #### ####",
  "+55 (041) #### ####",
  "+55 (051) #### ####",
  "+55 (061) #### ####",
  "+55 (071) #### ####",
  "+55 (081) #### ####",
  "+55 11 #### ####",
  "+55 21 #### ####",
  "+55 31 #### ####",
  "+55 41 #### ####",
  "+55 51 ### ####",
  "+55 61 #### ####",
  "+55 71 #### ####",
  "+55 81 #### ####",
  "+55 (011) ####-####",
  "+55 (021) ####-####",
  "+55 (031) ####-####",
  "+55 (041) ####-####",
  "+55 (051) ####-####",
  "+55 (061) ####-####",
  "+55 (071) ####-####",
  "+55 (081) ####-####",
  "+55 11 ####-####",
  "+55 21 ####-####",
  "+55 31 ####-####",
  "+55 41 ####-####",
  "+55 51 ### ####",
  "+55 61 ####-####",
  "+55 71 ####-####",
  "+55 81 ####-####",
  "(011) #### ####",
  "(021) #### ####",
  "(031) #### ####",
  "(041) #### ####",
  "(051) #### ####",
  "(061) #### ####",
  "(071) #### ####",
  "(081) #### ####",
  "11 #### ####",
  "21 #### ####",
  "31 #### ####",
  "41 #### ####",
  "51 ### ####",
  "61 #### ####",
  "71 #### ####",
  "81 #### ####",
  "(011) ####-####",
  "(021) ####-####",
  "(031) ####-####",
  "(041) ####-####",
  "(051) ####-####",
  "(061) ####-####",
  "(071) ####-####",
  "(081) ####-####",
  "11 ####-####",
  "21 ####-####",
  "31 ####-####",
  "41 ####-####",
  "51 ### ####",
  "61 ####-####",
  "71 ####-####",
  "81 ####-####",
  "#### ####",
  "####-####"
)

#' @title PhoneNumberProvider for Brazil
#' @inherit PhoneNumberProvider description details return
#' @family pt
#' @family BR
#' @export
#' @examples
#' z <- PhoneNumberProvider_pt_BR$new()
#' z$render()
PhoneNumberProvider_pt_BR <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_pt_BR",
  private = list(
    locale_ = "pt_BR",
    formats = phone_number_formats_pt_br
  )
)


phone_number_formats_pt_pt <- c(
  "(351) 91# ### ###",
  "(351) 92# ### ###",
  "(351) 93# ### ###",
  "(351) 96# ### ###",
  "(351) 2## ### ###",
  "(351) 91#######",
  "(351) 92#######",
  "(351) 93#######",
  "(351) 96#######",
  "(351) 2########",
  "(351) 91# ### ###",
  "(351) 92# ### ###",
  "(351) 93# ### ###",
  "(351) 96# ### ###",
  "(351) 2## ### ###",
  "(351) 91#######",
  "(351) 92#######",
  "(351) 93#######",
  "(351) 96#######",
  "(351) 2########",
  "+35191#######",
  "+35192#######",
  "+35193#######",
  "+35196#######",
  "+3512########",
  "91# ### ###",
  "92# ### ###",
  "93# ### ###",
  "96# ### ###",
  "2## ### ###",
  "91#######",
  "92#######",
  "93#######",
  "96#######",
  "2########"
)

#' @title PhoneNumberProvider for Portugal
#' @inherit PhoneNumberProvider description details return
#' @family pt
#' @family PT
#' @export
#' @examples
#' z <- PhoneNumberProvider_pt_PT$new()
#' z$render()
PhoneNumberProvider_pt_PT <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_pt_PT",
  private = list(
    locale_ = "pt_PT",
    formats = phone_number_formats_pt_pt
  )
)


phone_number_formats_ru_ru <- c(
  "+7 ### ### ####",
  "+7 ### ### ## ##",
  "+7 (###) ###-##-##",
  "+7 (###) ###-####"
)

#' @title PhoneNumberProvider for Russia
#' @inherit PhoneNumberProvider description details return
#' @family ru
#' @family RU
#' @export
#' @examples
#' z <- PhoneNumberProvider_ru_RU$new()
#' z$render()
PhoneNumberProvider_ru_RU <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_ru_RU",
  private = list(
    locale_ = "ru_RU",
    formats = phone_number_formats_ru_ru
  )
)

phone_number_formats_sk_sk <- c(
  "+421 2 ########",
  "+421 3# ### ####",
  "+421 4# ### ####",
  "+421 5# ### ####",
  "+421 90# ### ###",
  "+421 91# ### ###",
  "+421 940 ### ###",
  "+421 944 ### ###",
  "+421 948 ### ###",
  "+421 949 ### ###"
)

#' @title PhoneNumberProvider for Slovakia
#' @inherit PhoneNumberProvider description details return
#' @family sk
#' @family SK
#' @export
#' @examples
#' z <- PhoneNumberProvider_sk_SK$new()
#' z$render()
PhoneNumberProvider_sk_SK <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_sk_SK",
  private = list(
    locale_ = "sk_SK",
    formats = phone_number_formats_sk_sk
  )
)


# sl_SL might be Sierra Leone, but unclear?
#
# PhoneNumberProvider_ne_NP <- R6::R6Class(
#     inherit = PhoneNumberProvider,
#     "PhoneNumberProvider_ne_NP",
#     private =  list(
#
#         locale_ = "ne_NP",
#
#         formats =phone_number_formats_ne_np
#
#     ))

phone_number_formats_sl_sl <- c(
  "040 ### ###",
  "041 ### ###",
  "031 ### ###",
  "030 ### ###",
  "070 ### ###",
  "01 #### ###",
  "02 #### ###",
  "04 #### ###",
  "05 #### ###",
  "06 #### ###",
  "08 #### ###"
)


phone_number_formats_sv_se <- c(
  "+46 (0)8 ### ### ##",
  "+46 (0)## ## ## ##",
  "+46 (0)### ### ##",
  "08-### ### ##",
  "08-### ## ##",
  "08-## ## ##",
  "0##-### ## ##",
  "0##-## ## ##",
  "0###-## ## ##",
  "0###-### ##"
)


#' @title PhoneNumberProvider for Sweden
#' @inherit PhoneNumberProvider description details return
#' @family sv
#' @family SE
#' @export
#' @examples
#' z <- PhoneNumberProvider_sv_SE$new()
#' z$render()
PhoneNumberProvider_sv_SE <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_sv_SE",
  private = list(
    locale_ = "sv_SE",
    formats = phone_number_formats_sv_se
  )
)

phone_number_formats_tr_tr <- c(
  "+90(###)#######",
  "+90 (###) #######",
  "0### ### ## ##",
  "0##########",
  "0###-### ####",
  "(###)### ####",
  "### # ###",
  "+90(###)###-####x###",
  "+90(###)###-####x####"
)

#' @title PhoneNumberProvider for Turkey
#' @inherit PhoneNumberProvider description details return
#' @family tr
#' @family TR
#' @export
#' @examples
#' z <- PhoneNumberProvider_tr_TR$new()
#' z$render()
PhoneNumberProvider_tr_TR <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_tr_TR",
  private = list(
    locale_ = "tr_TR",
    formats = phone_number_formats_tr_tr
  )
)

phone_number_formats_uk_ua <- c(
  "###-##-##",
  "### ## ##",
  "0## ### ## ##",
  "0## ###-##-##",
  "+38 ### ###-##-##",
  "+38 ### ###-##-##",
  "+38 (###) ###-##-##",
  "+38 ### ### ## ##"
)

#' @title PhoneNumberProvider for Ukraine
#' @inherit PhoneNumberProvider description details return
#' @family uk
#' @family UA
#' @export
#' @examples
#' z <- PhoneNumberProvider_uk_UA$new()
#' z$render()
PhoneNumberProvider_uk_UA <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_uk_UA",
  private = list(
    locale_ = "uk_UA",
    formats = phone_number_formats_uk_ua
  )
)

phone_number_formats_zh_tw <- c(
  "(0#) %#######",
  "0#-%#######",
  "0## %#######",
  "09########",
  "09##-######",
  "0#-%######",
  "0# %######"
)

#' @title PhoneNumberProvider for Taiwan
#' @inherit PhoneNumberProvider description details return
#' @family zh
#' @family TW
#' @export
#' @examples
#' z <- PhoneNumberProvider_zh_TW$new()
#' z$render()
PhoneNumberProvider_zh_TW <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_zh_TW",
  private = list(
    locale_ = "zh_TW",
    formats = phone_number_formats_zh_tw
  )
)

phone_number_formats_he_il <- c(
  "02#######",
  "02-####-###",
  "03#######",
  "03-####-###",
  "04#######",
  "04-####-###",
  "08#######",
  "08-####-###",
  "09#######",
  "09-####-###",
  "05#-###-####",
  "05# ###-####",
  "05# ### ####",
  "05#-#######",
  "05# #######",
  "05########"
)


#' @title PhoneNumberProvider for Israel
#' @inherit PhoneNumberProvider description details return
#' @family he
#' @family IL
#' @export
#' @examples
#' z <- PhoneNumberProvider_he_IL$new()
#' z$render()
PhoneNumberProvider_he_IL <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_he_IL",
  private = list(
    locale_ = "he_IL",
    formats = phone_number_formats_he_il
  )
)

phone_number_formats_id_id <- c(
  "+62-##-###-####",
  "+62-0##-###-####",
  "+62 (0##) ### ####",
  "+62 (0##) ###-####",
  "+62 (##) ### ####",
  "+62 (##) ###-####",
  "+62-###-###-####",
  "+62-0###-###-####",
  "+62 (0###) ### ####",
  "+62 (0###) ###-####",
  "+62 (###) ### ####",
  "+62 (###) ###-####",
  "(0##) ### ####",
  "(0##) ###-####",
  "(0###) ### ####",
  "(0###) ###-####",
  "08# ### ####",
  "08########"
)


#' @title PhoneNumberProvider for Indonesia
#' @inherit PhoneNumberProvider description details return
#' @family id
#' @family ID
#' @export
#' @examples
#' z <- PhoneNumberProvider_id_ID$new()
#' z$render()
PhoneNumberProvider_id_ID <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_id_ID",
  private = list(
    locale_ = "id_ID",
    formats = phone_number_formats_id_id
  )
)


phone_number_formats_th_th <- c(
  "+66 #### ####",
  "+668 #### ####"
)

#' @title PhoneNumberProvider for Thailand
#' @inherit PhoneNumberProvider description details return
#' @family th
#' @family TH
#' @export
#' @examples
#' z <- PhoneNumberProvider_th_TH$new()
#' z$render()
PhoneNumberProvider_th_TH <- R6::R6Class(
  inherit = PhoneNumberProvider,
  "PhoneNumberProvider_th_TH",
  private = list(
    locale_ = "th_TH",
    formats = phone_number_formats_th_th
  )
)

# tw_GH is not an existing locale
# # GH is ghana
#
# PhoneNumberProvider_tw_GH <- R6::R6Class(
#     inherit = PhoneNumberProvider,
#     "PhoneNumberProvider_tw_GH",
#     private =  list(
#
#         locale_ = "tw_GH",
#
#         formats =phone_number_formats_tw_gh
#
#     ))
# phone_number_formats_tw_gh <- c(
#   "+23327#######",
#   "+23357#######",
#   "+23355#######",
#   "+23324#######",
#   "+23354#######",
#   "+23320#######",
#   "+23350#######",
#   "+23326#######",
#   "+23356#######",
#   "+23328#######",
#   "024#######",
#   "054#######",
#   "055#######",
#   "027#######",
#   "057#######",
#   "020#######",
#   "050#######",
#   "026#######",
#   "056#######",
#   "028#######"
# )

# phone_number_formats_zh_cn = c(
#
# )
