# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/hr_HR/__init__.py

company_formats_hr_hr <- c(
  '{{last_name}} {{company_suffix}}',
  '{{last_name}} {{last_name}} {{company_suffix}}',
  '{{last_name}}'
)

company_suffixes_hr_hr = c(
  'd.o.o.', 'd.d.', 'j.d.o.o.'
)
