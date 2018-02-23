# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/fr_FR/__init__.py

int_safe_email_tlds_fr_fr = c('com', 'net', 'fr', 'fr')

int_free_email_domains_fr_fr = c(
    'voila.fr',
    'gmail.com',
    'hotmail.fr',
    'yahoo.fr',
    'laposte.net',
    'free.fr',
    'sfr.fr',
    'orange.fr',
    'bouygtel.fr',
    'club-internet.fr',
    'dbmail.com',
    'live.com',
    'ifrance.com',
    'noos.fr',
    'tele2.fr',
    'tiscali.fr',
    'wanadoo.fr'
)

int_tlds_fr_fr = c('com', 'com', 'com', 'net', 'org', 'fr', 'fr', 'fr')

int_replacements_fr_fr = list(
  c("\u00e0", "a"),
  c("\u00e2", "a"),
  c("\u00e4", "a"),
  c("\u00e7", "c"),
  c("\u00e9", "e"),
  c("\u00e8", "e"),
  c("\u00ea", "e"),
  c("\u00eb", "e"),
  c("\u00c9", "e"),
  c("\u00ef", "i"),
  c("\u00ee", "i"),
  c("\u00f4", "o"),
  c("\u00f6", "o"),
  c("\u00f9", "u"),
  c("\u00fc", "u")
)
