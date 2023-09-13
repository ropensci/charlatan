# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/internet/de_DE/__init__.py


int_free_email_domains_de_de <- c(
  "aol.de", "gmail.com", "gmx.de", "googlemail.com", "hotmail.de",
  "web.de", "yahoo.de"
)
int_tlds_de_de <- c("com", "com", "com", "net", "org", "de", "de", "de")

int_replacements_de_de <- list(
  c("\\u00e4", "ae"),
  c("\\u00c4", "Ae"),
  c("\\u00f6", "oe"),
  c("\\u00d6", "Oe"),
  c("\\u00fc", "ue"),
  c("\\u00dc", "Ue"),
  c("\\u00e9", "e"),
  c("\\u00c9", "E"),
  c("\\u00e0", "a"),
  c("\\u00c0", "A"),
  c("\\u00df", "ss")
)
