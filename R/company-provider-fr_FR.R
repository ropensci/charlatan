# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/fr_FR/__init__.py
#' @title CompanyProvider for France (French)
#' @inherit CompanyProvider description details return
#' @export
#' @family FR
#' @family fr
#' @examples
#' x <- CompanyProvider_fr_FR$new()
#' x$locale
#' x$company()
#' x$catch_phrase()
CompanyProvider_fr_FR <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider_fr_FR",
  inherit = CompanyProvider,
  public = list(

    #' @description generate a catch phrase for a company.
    catch_phrase = function() {
      whisker::whisker.render(template = private$catch_phrase_formats, data = list(
        catch_phrase_noun = super$random_element(private$nouns),
        catch_phrase_verb = super$random_element(private$verbs),
        catch_phrase_attribute = super$random_element(private$attributes)
      ))
    }
  ),
  private = list(

    # catch_phrase_formats formatting for catch phrases.
    catch_phrase_formats = c(
      "{{catch_phrase_noun}} {{catch_phrase_verb}} {{catch_phrase_attribute}}"
    ),
    # company_formats formatting for company names
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}} {{last_name}} {{company_suffix}}",
      "{{last_name}}",
      "{{last_name}}"
    ),
    #  nouns
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
    #  verbs
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
    # attributes
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
    # company_suffixes endings of companies.
    company_suffixes = c(
      "SA", "S.A.", "SARL", "S.A.R.L.", "S.A.S.",
      "et Fils"
    ),
    locale_ = "fr_FR"
  )
)
