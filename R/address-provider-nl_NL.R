# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/address/nl_nl/__init__.py

city_prefixes_nl_nl <- c(
  "Veen", "U", "Amster", "Heeren", "Ooster", "Nieuw", "Amers", "Maas", "Kaas",
  "Pieters", "Jans", "Groonen", "E", "Rhenen", "Eind", "Swellen", "Kroon",
  "Uiten", "Boter", "Bloem", "Jagers", "Klerks", "Rusten", "Oudt", "Oud", "Veld"
)

city_suffixes_nl_nl <- c(
  "daal",
  "dael",
  "endaal",
  "",
  "trecht",
  "tricht",
  "land",
  "stad",
  "berg",
  "burg",
  "dam",
  "foort",
  "veen",
  "ven",
  "hoven",
  "venen",
  "mere",
  "meren",
  "rode",
  "hage",
  "rus",
  "fontein",
  "park",
  "dorp",
  "hoorn",
  "bos",
  "bosch",
  "veld"
)

building_number_formats_nl_nl <- c("#", "##", "###")

street_suffixes_nl_nl <- c(
  "kade",
  "straat",
  "laan",
  "hof",
  "weg",
  "steeg"
)

postcode_formats_nl_nl <- c("####")

city_formats_nl_nl <- c(
  "{{city_prefix}}{{city_suffix}}",
  "{{first_name}}{{city_suffix}}"
)

street_name_formats_nl_nl <- c(
  "{{first_name}}{{street_suffix}}",
  "{{last_name}}{{street_suffix}}"
)

street_address_formats_nl_nl <- c(
  "{{street_name}} {{building_number}}"
)

address_formats_nl_nl <- "{{street_address}}\n{{postcode}} {{city}}"
