# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/cs_CZ/__init__.py

int_user_name_formats_cs_cz = c(
  '{{last_names_female}}.{{first_names_female}}',
  '{{last_names_female}}.{{first_names_female}}',
  '{{last_names_male}}.{{first_names_male}}',
  '{{last_names_male}}.{{first_names_male}}',
  '{{first_names_female}}.{{last_names_female}}',
  '{{first_names_male}}.{{last_names_male}}',
  '{{first_names}}##',
  '?{{last_names}}',
  '?{{last_names}}',
  '?{{last_names}}'
)

int_email_formats_cs_cz = '{{user_name}}@{{free_email_domain}}'

int_free_email_domains_cs_cz = c(
  'seznam.cz',
  'gmail.com',
  'email.cz',
  'post.cz',
  'chello.cz',
  'centrum.cz',
  'volny.cz'
)

int_tlds_cs_cz = c('cz', 'com', 'cz')
