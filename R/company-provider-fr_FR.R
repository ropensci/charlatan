# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/fr_FR/__init__.py

company_formats_fr_fr <- c(
  '{{last_name}} {{company_suffix}}',
  '{{last_name}} {{last_name}} {{company_suffix}}',
  '{{last_name}}',
  '{{last_name}}'
)

catch_phrase_formats_fr_fr <- c(
  '{{catch_phrase_noun}} {{catch_phrase_verb}} {{catch_phrase_attribute}}'
)

nouns_fr_fr <- c(
  "la s\u00e9curit\u00e9",
  "le plaisir",
  "le confort",
  "la simplicit\u00e9",
  "l\'assurance",
  "l\'art",
  "le pouvoir",
  "le droit",
  "la possibilit\u00e9",
  "l\'avantage",
  "la libert\u00e9"
)

verbs_fr_fr <- c(
  "de rouler",
  "d\'avancer",
  "d\'\u00e9voluer",
  "de changer",
  "d\'innover",
  "de louer",
  "d\'atteindre vos buts",
  "de concr\u00e9tiser vos projets"
)

attributes_fr_fr <- c(
  "de mani\u00e8re efficace",
  "plus rapidement",
  "plus facilement",
  "plus simplement",
  "en toute tranquilit\u00e9",
  "avant-tout",
  "autrement",
  "naturellement",
  "\u00e0 la pointe",
  "sans soucis",
  "\u00e0 l\'\u00e9tat pur",
  "\u00e0 sa source",
  "de mani\u00e8re s\u00fbre",
  "en toute s\u00e9curit\u00e9"
)

company_suffixes_fr_fr <- c('SA', 'S.A.', 'SARL', 'S.A.R.L.', 'S.A.S.',
                            'et Fils')

siren_format_fr_fr <- "### ### ###"

CompanyProvider_fr_FR <- R6::R6Class(
  inherit = BaseProvider,
  lock_objects = FALSE,
  'CompanyProvider_fr_FR',
  public = list(
    locale = "fr_FR",
    formats = company_formats_fr_fr,
    company_suffixes = company_suffixes_fr_fr,
    #catch_phrase_words = catch_phrase_words_,
    siren_format = siren_format_fr_fr,

    initialize = function(locale = 'fr_FR') {
      self$locale <- locale
      self$formats <- self$formats
      self$company_suffixes <- self$company_suffixes
      #self$catch_phrase_words <- self$catch_phrase_words
      self$siren_format <- self$siren_format
    },

    company = function() {
      company_(self$locale, self$formats, self$company_suffixes)
    },

    company_suffix = function() {
      company_suffix_(self$company_suffixes)
    },

    catch_phrase = function() {
      catch_phrase_(self$catch_phrase_words)
    },

    bs = function() {
      bs_(self$bsWords)
    },

    siren = function() {
      super$numerify(self$siren_format)
    }
  )
)


# catch_phrase_fr_fr <- function() {
#   catch_phrase <- ""
#   while(True) {
#     pattern <- self$random_element(self$catch_phrase_formats)
#     catch_phrase <- self$generator$parse(pattern)
#     catch_phrase <- paste0(toupper(catch_phrase[0]), catch_phrase[1:length(catch_phrase)], collpase = " ")
#     if fr_is_catch_phrase_valid(catch_phrase):
#         break
#   }
#   return(catch_phrase)
# }

#     @classmethod
#     def catch_phrase_noun(cls):
#         """
#         Returns a random catch phrase noun.
#         """
#         return cls.random_element(cls.nouns)

#     @classmethod
#     def catch_phrase_attribute(cls):
#         """
#         Returns a random catch phrase attribute.
#         """
#         return cls.random_element(cls.attributes)

#     @classmethod
#     def catch_phrase_verb(cls):
#         """
#         Returns a random catch phrase verb.
#         """
#         return cls.random_element(cls.verbs)

#     def catch_phrase(self):
#         """
#         :example 'integrate extensible convergence'
#         """
#         catch_phrase = ""
#         while True:

#             pattern = self.random_element(self.catch_phrase_formats)
#             catch_phrase = self.generator.parse(pattern)
#             catch_phrase = catch_phrase[0].upper() + catch_phrase[1:]

#             if self._is_catch_phrase_valid(catch_phrase):
#                 break

#         return catch_phrase

#     # An array containing string which should not appear twice in a catch phrase
#     words_which_should_not_appear_twice = ('s\u00e9curit\u00e9', 'simpl')

#     @classmethod
#     def _is_catch_phrase_valid(cls, catch_phrase):
#         """
#         Validates a french catch phrase.

#         :param catch_phrase: The catch phrase to validate.
#         """
#         for word in cls.words_which_should_not_appear_twice:
#             # Fastest way to check if a piece of word does not appear twice.
#             begin_pos = catch_phrase.find(word)
#             end_pos = catch_phrase.find(word, begin_pos + 1)

#             if begin_pos != -1 and begin_pos != end_pos: return False

#         return True

#     @classmethod
#     def siret(cls, max_sequential_digits=2):
#         """
#         Generates a siret number (14 digits).
#         It is in fact the result of the concatenation of a siren number (9 digits),
#         a sequential number (4 digits) and a control number (1 digit) concatenation.
#         If $max_sequential_digits is invalid, it is set to 2.
#         :param max_sequential_digits The maximum number of digits for the sequential number (> 0 && <= 4).
#         """
#         if max_sequential_digits > 4 or max_sequential_digits <= 0:
#             max_sequential_digits = 2

#         sequential_number = str(cls.random_number(max_sequential_digits)).zfill(4)
#         return cls.numerify(cls.siren() + ' ' + sequential_number + '#')

