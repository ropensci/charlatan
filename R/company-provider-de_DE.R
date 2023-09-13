# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/de_DE/__init__.py

company_formats_de_de <- c(
  "{{last_name}} {{company_suffix}}",
  "{{last_name}} {{last_name}} {{company_suffix}}",
  "{{last_name}}"
)

company_suffixes_de_de <- c(
  "AG", "AG", "AG", "AG", "AG & Co. KG", "AG & Co. KGaA", "AG & Co. OHG",
  "GbR", "GbR", "GmbH", "GmbH", "GmbH", "GmbH", "GmbH & Co. KG",
  "GmbH & Co. KG", "GmbH & Co. KGaA", "GmbH & Co. OHG", "KG", "KG", "KG",
  "KGaA", "OHG mbH", "Stiftung & Co. KG", "Stiftung & Co. KGaA", "e.G.",
  "e.V."
)
