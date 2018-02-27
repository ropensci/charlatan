#' MiscProvider
#'
#' @export
#' @keywords internal
#' @details
#' \strong{Methods}
#'   \describe{
#'    \item{\code{language_locale_codes}}{
#'     list of language locales supported by Linux Mint
#'    }
#'    \item{\code{locale()}}{
#'     locale
#'    }
#'    \item{\code{language_code()}}{
#'     language code
#'    }
#'  }
#'
#' @format NULL
#' @usage NULL
#' @examples
#' (x <- MiscProvider$new())
#' x$language_locale_codes
#' x$language_code()
#' x$locale()
MiscProvider <- R6::R6Class(
  inherit = BaseProvider,
  'MiscProvider',
  public = list(
    # Locales supported by Linux Mint from `/usr/share/i18n/SUPPORTED`
    language_locale_codes = list(
        'aa' = c('DJ', 'ER', 'ET'),
        'af' = c('ZA'),
        'ak' = c('GH'),
        'am' = c('ET'),
        'an' = c('ES'),
        'apn' = c('IN'),
        'ar' = c('AE', 'BH', 'DJ', 'DZ', 'EG', 'EH', 'ER', 'IL', 'IN',
            'IQ', 'JO', 'KM', 'KW', 'LB', 'LY', 'MA', 'MR', 'OM',
            'PS', 'QA', 'SA', 'SD', 'SO', 'SS', 'SY', 'TD', 'TN', 'YE'),
        'as' = c('IN'),
        'ast' = c('ES'),
        'ayc' = c('PE'),
        'az' = c('AZ', 'IN'),
        'be' = c('BY'),
        'bem' = c('ZM'),
        'ber' = c('DZ', 'MA'),
        'bg' = c('BG'),
        'bhb' = c('IN'),
        'bho' = c('IN'),
        'bn' = c('BD', 'IN'),
        'bo' = c('CN', 'IN'),
        'br' = c('FR'),
        'brx' = c('IN'),
        'bs' = c('BA'),
        'byn' = c('ER'),
        'ca' = c('AD', 'ES', 'FR', 'IT'),
        'ce' = c('RU'),
        'ckb' = c('IQ'),
        'cmn' = c('TW'),
        'crh' = c('UA'),
        'cs' = c('CZ'),
        'csb' = c('PL'),
        'cv' = c('RU'),
        'cy' = c('GB'),
        'da' = c('DK'),
        'de' = c('AT', 'BE', 'CH', 'DE', 'LI', 'LU'),
        'doi' = c('IN'),
        'dv' = c('MV'),
        'dz' = c('BT'),
        'el' = c('GR', 'CY'),
        'en' = c('AG', 'AU', 'BW', 'CA', 'DK', 'GB', 'HK', 'IE', 'IN', 'NG',
        'NZ', 'PH', 'SG', 'US', 'ZA', 'ZM', 'ZW'),
        'eo' = c('US'),
        'es' = c('AR', 'BO', 'CL', 'CO', 'CR', 'CU', 'DO', 'EC', 'ES', 'GT',
            'HN', 'MX', 'NI', 'PA', 'PE', 'PR', 'PY', 'SV', 'US', 'UY', 'VE'),
        'et' = c('EE'),
        'eu' = c('ES', 'FR'),
        'fa' = c('IR'),
        'ff' = c('SN'),
        'fi' = c('FI'),
        'fil' = c('PH'),
        'fo' = c('FO'),
        'fr' = c('CA', 'CH', 'FR', 'LU'),
        'fur' = c('IT'),
        'fy' = c('NL', 'DE'),
        'ga' = c('IE'),
        'gd' = c('GB'),
        'gez' = c('ER', 'ET'),
        'gl' = c('ES'),
        'gu' = c('IN'),
        'gv' = c('GB'),
        'ha' = c('NG'),
        'hak' = c('TW'),
        'he' = c('IL'),
        'hi' = c('IN'),
        'hne' = c('IN'),
        'hr' = c('HR'),
        'hsb' = c('DE'),
        'ht' = c('HT'),
        'hu' = c('HU'),
        'hy' = c('AM'),
        'ia' = c('FR'),
        'id' = c('ID'),
        'ig' = c('NG'),
        'ik' = c('CA'),
        'is' = c('IS'),
        'it' = c('CH', 'IT'),
        'iu' = c('CA'),
        'iw' = c('IL'),
        'ja' = c('JP'),
        'ka' = c('GE'),
        'kk' = c('KZ'),
        'kl' = c('GL'),
        'km' = c('KH'),
        'kn' = c('IN'),
        'ko' = c('KR'),
        'kok' = c('IN'),
        'ks' = c('IN'),
        'ku' = c('TR'),
        'kw' = c('GB'),
        'ky' = c('KG'),
        'lb' = c('LU'),
        'lg' = c('UG'),
        'li' = c('BE', 'NL'),
        'lij' = c('IT'),
        'ln' = c('CD'),
        'lo' = c('LA'),
        'lt' = c('LT'),
        'lv' = c('LV'),
        'lzh' = c('TW'),
        'mag' = c('IN'),
        'mai' = c('IN'),
        'mg' = c('MG'),
        'mhr' = c('RU'),
        'mi' = c('NZ'),
        'mk' = c('MK'),
        'ml' = c('IN'),
        'mn' = c('MN'),
        'mni' = c('IN'),
        'mr' = c('IN'),
        'ms' = c('MY'),
        'mt' = c('MT'),
        'my' = c('MM'),
        'nan' = c('TW'),
        'nb' = c('NO'),
        'nds' = c('DE', 'NL'),
        'ne' = c('NP'),
        'nhn' = c('MX'),
        'niu' = c('NU', 'NZ'),
        'nl' = c('AW', 'BE', 'NL'),
        'nn' = c('NO'),
        'nr' = c('ZA'),
        'nso' = c('ZA'),
        'oc' = c('FR'),
        'om' = c('ET', 'KE'),
        'or' = c('IN'),
        'os' = c('RU'),
        'pa' = c('IN', 'PK'),
        'pap' = c('AN', 'AW', 'CW'),
        'pl' = c('PL'),
        'ps' = c('AF'),
        'pt' = c('BR', 'PT'),
        'quz' = c('PE'),
        'raj' = c('IN'),
        'ro' = c('RO'),
        'ru' = c('RU', 'UA'),
        'rw' = c('RW'),
        'sa' = c('IN'),
        'sat' = c('IN'),
        'sc' = c('IT'),
        'sd' = c('IN', 'PK'),
        'se' = c('NO'),
        'shs' = c('CA'),
        'si' = c('LK'),
        'sid' = c('ET'),
        'sk' = c('SK'),
        'sl' = c('SI'),
        'so' = c('DJ', 'ET', 'KE', 'SO'),
        'sq' = c('AL', 'ML'),
        'sr' = c('ME', 'RS'),
        'ss' = c('ZA'),
        'st' = c('ZA'),
        'sv' = c('FI', 'SE'),
        'sw' = c('KE', 'TZ'),
        'szl' = c('PL'),
        'ta' = c('IN', 'LK'),
        'tcy' = c('IN'),
        'te' = c('IN'),
        'tg' = c('TJ'),
        'th' = c('TH'),
        'the' = c('NP'),
        'ti' = c('ER', 'ET'),
        'tig' = c('ER'),
        'tk' = c('TM'),
        'tl' = c('PH'),
        'tn' = c('ZA'),
        'tr' = c('CY', 'TR'),
        'ts' = c('ZA'),
        'tt' = c('RU'),
        'ug' = c('CN'),
        'uk' = c('UA'),
        'unm' = c('US'),
        'ur' = c('IN', 'PK'),
        'uz' = c('UZ'),
        've' = c('ZA'),
        'vi' = c('VN'),
        'wa' = c('BE'),
        'wae' = c('CH'),
        'wal' = c('ET'),
        'wo' = c('SN'),
        'xh' = c('ZA'),
        'yi' = c('US'),
        'yo' = c('NG'),
        'yue' = c('HK'),
        'zh' = c('CN', 'HK', 'SG', 'TW'),
        'zu' = c('ZA')
    ),

    # def boolean(self, chance_of_getting_true=50):
    #     return self.generator.random.randint(1, 100) <= chance_of_getting_true

    # def null_boolean(self):
    #     return {
    #         0: None,
    #         1: True,
    #         -1: False
    #     }[self.generator.random.randint(-1, 1)]

    # def binary(self, length=(1 * 1024 * 1024)):
    #     """ Returns random binary blob.

    #     Default blob size is 1 Mb.
    #     """
    #     blob = [self.generator.random.randrange(256) for o in range(length)]
    #     return bytes(blob) if sys.version_info[0] >= 3 else bytearray(blob)

    # def md5(self, raw_output=False):
    #     """
    #     Calculates the md5 hash of a given string
    #     :example 'cfcd208495d565ef66e7dff9f98764da'
    #     """
    #     res = hashlib.md5(str(self.generator.random.random()).encode('utf-8'))
    #     if raw_output:
    #         return res.digest()
    #     return res.hexdigest()

    # def sha1(self, raw_output=False):
    #     """
    #     Calculates the sha1 hash of a given string
    #     :example 'b5d86317c2a144cd04d0d7c03b2b02666fafadf2'
    #     """
    #     res = hashlib.sha1(str(self.generator.random.random()).encode('utf-8'))
    #     if raw_output:
    #         return res.digest()
    #     return res.hexdigest()

    # def sha256(self, raw_output=False):
    #     """
    #     Calculates the sha256 hash of a given string
    #     :example '85086017559ccc40638fcde2fecaf295e0de7ca51b7517b6aebeaaf75b4d4654'
    #     """
    #     res = hashlib.sha256(
    #         str(self.generator.random.random()).encode('utf-8'))
    #     if raw_output:
    #         return res.digest()
    #     return res.hexdigest()

    locale = function() {
      lc = self$language_code()
      paste0(lc, '_', super$random_element(self$language_locale_codes[[lc]]))
    },

    language_code = function() {
      super$random_element(names(self$language_locale_codes))
    }

    # def uuid4(self):
    #     """
    #     Generates a random UUID4 string.
    #     """
    #     # Based on http://stackoverflow.com/q/41186818
    #     return str(uuid.UUID(int=self.generator.random.getrandbits(128)))

    # def password(
    #         self,
    #         length=10,
    #         special_chars=True,
    #         digits=True,
    #         upper_case=True,
    #         lower_case=True):
    #     """
    #     Generates a random password.
    #     @param length: Integer. Length of a password
    #     @param special_chars: Boolean. Whether to use special characters !@#$%^&*()_+
    #     @param digits: Boolean. Whether to use digits
    #     @param upper_case: Boolean. Whether to use upper letters
    #     @param lower_case: Boolean. Whether to use lower letters
    #     @return: String. Random password
    #     """
    #     choices = ""
    #     required_tokens = []
    #     if special_chars:
    #         required_tokens.append(
    #             self.generator.random.choice("!@#$%^&*()_+"))
    #         choices += "!@#$%^&*()_+"
    #     if digits:
    #         required_tokens.append(self.generator.random.choice(string.digits))
    #         choices += string.digits
    #     if upper_case:
    #         required_tokens.append(
    #             self.generator.random.choice(string.ascii_uppercase))
    #         choices += string.ascii_uppercase
    #     if lower_case:
    #         required_tokens.append(
    #             self.generator.random.choice(string.ascii_lowercase))
    #         choices += string.ascii_lowercase

    #     assert len(
    #         required_tokens) <= length, "Required length is shorter than required characters"

    #     # Generate a first version of the password
    #     chars = [self.generator.random.choice(choices) for x in range(length)]

    #     # Pick some unique locations
    #     random_indexes = set()
    #     while len(random_indexes) < len(required_tokens):
    #         random_indexes.add(
    #             self.generator.random.randint(0, len(chars) - 1))

    #     # Replace them with the required characters
    #     for i, index in enumerate(random_indexes):
    #         chars[index] = required_tokens[i]

    #     return ''.join(chars)
    )
)
