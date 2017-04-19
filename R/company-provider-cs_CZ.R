# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/cs_CZ/__init__.py

company_formats_cs_cz = c(
  '{{last_name}} {{company_suffix}}',
  '{{last_name}} {{last_name}} {{company_suffix}}',
  '{{last_name}}'
)

company_suffixes_cs_cz <- c(
  's.r.o.', 'o.s.', 'a.s.'
)
