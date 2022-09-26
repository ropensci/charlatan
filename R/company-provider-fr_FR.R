# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/fr_FR/__init__.py
#' @title CompanyProvider fr_FR
#' @description company methods for locale French France(fr_FR).
#' @export
#' @keywords internal
#' @examples
#' x <- company("fr_FR")
#' x$locale
#' x$company()
#' x$catch_phrase()
CompanyProvider_fr_FR <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider_fr_FR",
  inherit = CompanyProvider,
  public = list(

    #' @field siren_format (character) xxx
    siren_format = "### ### ###",
    catch_phrase_formats = c(
      "{{catch_phrase_noun}} {{catch_phrase_verb}} {{catch_phrase_attribute}}"
    ),
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name}} {{company_suffix}}",
      "{{last_name}}",
      "{{last_name}}"
    ),
    nouns = c(
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
    ),
    verbs = c(
      "de rouler",
      "d\'avancer",
      "d\'\u00e9voluer",
      "de changer",
      "d\'innover",
      "de louer",
      "d\'atteindre vos buts",
      "de concr\u00e9tiser vos projets"
    ),
    attributes = c(
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
    ),
    company_suffixes = c(
      "SA", "S.A.", "SARL", "S.A.R.L.", "S.A.S.",
      "et Fils"
    ),

    ## add functions here
    #' @description a company name
    company = function() {
      pp <- PersonProvider$new(self$locale)
      pattern <- super$random_element(self$company_formats)
      dat <- list(
        last_name = pp$last_name(),
        last_name2 = pp$last_name(),
        company_suffix = super$random_element(self$company_suffixes)
      )
      whisker::whisker.render(template = pattern, data = dat)
    },
    catch_phrase = function() {
      whisker::whisker.render(template = self$catch_phrase_formats, data = list(
        catch_phrase_noun = super$random_element(self$nouns),
        catch_phrase_verb = super$random_element(self$verbs),
        catch_phrase_attribute = super$random_element(self$attributes)
      ))
    }
  )
)
