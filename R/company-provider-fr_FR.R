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
