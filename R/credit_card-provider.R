# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/credit_card/__init__.py

CreditCard <- R6::R6Class(
  "CreditCard",
  public = list(
    name = NULL,
    prefixes = NULL,
    length = NULL,
    security_code = NULL,
    security_code_length = NULL,
    initialize = function(name, prefixes, length = 16, security_code = "CVC", security_code_length = 3) {
      self$name <- name
      self$prefixes <- prefixes
      self$length <- length
      self$security_code <- security_code
      self$security_code_length <- security_code_length
    }
  )
)

prefix_maestro <- c("5018", "5020", "5038", "5612", "5893", "6304", "6759", "6761", "6762", "6763", "0604", "6390")
prefix_mastercard <- c("51", "52", "53", "54", "55")
prefix_visa <- c("4")
prefix_amex <- c("34", "37")
prefix_discover <- c("6011")
prefix_diners <- c("300", "301", "302", "303", "304", "305")
prefix_jcb16 <- c("3088", "3096", "3112", "3158", "3337", "3528")
prefix_jcb15 <- c("2100", "1800")
prefix_voyager <- c("8699")

credit_card_types <- c(
  list("maestro" = CreditCard$new(name = "Maestro", prefixes = prefix_maestro, length = 12, security_code = "CVV")),
  list("mastercard" = CreditCard$new(name = "Mastercard", prefixes = prefix_mastercard, length = 16, security_code = "CVV")),
  list("visa16" = CreditCard$new(name = "VISA 16 digit", prefixes = prefix_visa)),
  list("visa13" = CreditCard$new(name = "VISA 13 digit", prefixes = prefix_visa, length = 13)),
  list("amex" = CreditCard$new(name = "American Express", prefixes = prefix_amex, length = 15, security_code = "CID", security_code_length = 4)),
  list("discover" = CreditCard$new(name = "Discover", prefixes = prefix_discover)),
  list("diners" = CreditCard$new(name = "Diners Club / Carte Blanche", prefixes = prefix_diners, length = 14)),
  list("jcb15" = CreditCard$new(name = "JCB 15 digit", prefixes = prefix_jcb15, length = 15)),
  list("jcb16" = CreditCard$new(name = "JCB 16 digit", prefixes = prefix_jcb16)),
  list("voyager" = CreditCard$new(name = "Voyager", prefixes = prefix_voyager, length = 15))
)
credit_card_types["visa"] <- credit_card_types["visa16"]
credit_card_types["jcb"] <- credit_card_types["jcb16"]

# @classmethod
# def credit_card_expire(cls, start='now', end='+10y', date_format='%m/%y'):
#     expire_date = DateTimeProvider.date_time_between(start, end)
#     return expire_date.strftime(date_format)

# def credit_card_full(self, card_type=None):
#     card = self._credit_card_type(card_type)

#     tpl = ('{provider}\n'
#            '{owner}\n'
#            '{number} {expire_date}\n'
#            '{security}: {security_nb}\n')

#     tpl = tpl.format(provider = card.name,
#                      owner = self.generator.parse("{{first_name}} {{last_name}}"),
#                      number = self.credit_card_number(card),
#                      expire_date = self.credit_card_expire(),
#                      security = card.security_code,
#                      security_nb = self.credit_card_security_code(card))

#     return self.generator.parse(tpl)


#' @title CreditCardProvider
#' @description credit card methods
#' @export
#' @keywords internal
#' @examples
#' z <- CreditCardProvider$new()
#' z$credit_card_provider()
#' z$credit_card_number()
#' z$credit_card_security_code()
#' z$generate_number(13)
CreditCardProvider <- R6::R6Class(
  inherit = BaseProvider,
  "CreditCardProvider",
  public = list(
    #' @description Returns a random credit card type
    #' @param card_type (character) a card type, see `credit_card_types`
    credit_card_type = function(card_type = NULL) {
      if (is.null(card_type)) {
        card_type <- super$random_element(names(credit_card_types))
      } else if (inherits(card_type, "Creditcard")) {
        return(card_type)
      }
      return(credit_card_types[[card_type]])
    },

    #' @description make a credit card number with specific starting numbers
    #' @param prefix the start of the CC number as a string, any number of digits.
    #' @param length the length of the CC number to generate. Typically 13 or 16
    generate_number = function(prefix, length = 13) {
      number <- prefix
      # Generate random char digits
      number <- paste0(number, paste0(rep("#", (length - length(prefix) - 1)), collapse = ""))
      number <- super$numerify(number)
      reverse <- rev_s(number)
      # Calculate sum
      tot <- 0
      pos <- 1
      while (pos < length - 1) {
        tot <- sum(tot, self$luhn_lookup[[substring(reverse, pos, pos)]])
        if (pos != (length - 2)) {
          tot <- sum(tot, as.integer(substring(reverse, pos + 1, pos + 1)))
        }
        pos <- sum(pos, 2)
      }
      # Calculate check digit
      check_digit <- (10 - (tot %% 10)) %% 10
      number <- paste0(number, as.character(check_digit))
      return(number)
    },

    #' @description credit card provider
    #' @param card_type (character) a card type, see `credit_card_types`
    credit_card_provider = function(card_type = NULL) {
      if (is.null(card_type)) {
        card_type <- super$random_element(names(credit_card_types))
      }
      self$credit_card_type(card_type)$name
    },

    #' @description credit card number
    #' @param card_type (character) a card type, see `credit_card_types`
    credit_card_number = function(card_type = NULL) {
      card <- self$credit_card_type(card_type)
      prefix <- super$random_element(card$prefixes)
      self$generate_number(prefix, card$length)
    },

    # credit_card_expire = function(start = 'now', end = '+10y', date_format = '%m/%y') {
    #   expire_date <- DateTimeProvider$date_time_between(start, end)
    #   return(expire_date$strftime(date_format))
    # },

    #' @description credit card security code
    #' @param card_type (character) a card type, see `credit_card_types`
    credit_card_security_code = function(card_type = NULL) {
      sec_len <- self$credit_card_type(card_type)$security_code_length
      super$numerify(paste0(rep("#", sec_len), collapse = ""))
    },

    #' @field luhn_lookup (list) luhn lookup, named list
    luhn_lookup = list(
      "0" = 0, "1" = 2, "2" = 4, "3" = 6, "4" = 8,
      "5" = 1, "6" = 3, "7" = 5, "8" = 7, "9" = 9
    )
  )
)

rev_s <- function(x) paste(rev(strsplit(x, NULL)[[1]]), collapse = "")
