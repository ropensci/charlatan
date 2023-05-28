#' @title InternetProvider
#' @description internet methods, e.g., email addresses, domain names
#' @export
#' @keywords internal
#' @note Note that if a locale you set doesn't have a locale specific set
#' of data for [PersonProvider] or [CompanyProvider] we fall back to
#' `en_US`
#' @examples
#' (x <- InternetProvider$new())
#' x$locale
#'
#' # uri/url/tld/etc.
#' x$tld()
#' x$slug()
#' x$domain_word()
#' x$domain_name()
#' x$domain_name(levels = 2)
#' x$domain_name(levels = 3)
#' x$domain_name(levels = 10)
#' ## url's
#' x$url()
#' x$url(schemes = c("hbbp", "hggp"))
#' x$image_url()
#' ## uri's
#' x$uri()
#' x$uri_page()
#' x$uri_extension()
#' x$uri_path()
#' x$uri_path(deep = 1)
#' x$uri_path(deep = 2)
#' x$uri_path(deep = 3)
#' x$uri_path(deep = 4)
#'
#' # user name
#' x$user_name()
#'
#' # emails
#' x$email()
#' x$safe_email()
#' x$free_email()
#' x$company_email()
#' x$free_email_domain()
#' x$ascii_email()
#' x$ascii_safe_email()
#' x$ascii_free_email()
#' x$ascii_company_email()
#'
#' # addresses, mac, ipv4, ipv6
#' x$mac_address()
#' if (requireNamespace("ipaddress", quietly = TRUE)) {
#'   x$ipv4()
#'   x$ipv4(network = TRUE)
#'   x$ipv6()
#'   x$ipv6(network = TRUE)
#' }
#'
#' # different locales
#' (x <- InternetProvider$new(locale = "en_AU"))
#' x$locale
#' x$tld()
#' x$email()
#' x$free_email_domain()
#'
#' (x <- InternetProvider$new(locale = "de_DE"))
#' x$locale
#' x$tld()
#' x$uri()
#' x$email()
#' x$ascii_email()
#'
#' (x <- InternetProvider$new(locale = "bg_BG"))
#' x$locale
#' x$tld()
#' x$uri()
#' x$url()
#' x$user_name()
#' x$email()
#' x$ascii_email()
#'
#' (x <- InternetProvider$new(locale = "cs_CZ"))
#' x$url()
#' x$user_name()
#' x$email()
#'
#' (x <- InternetProvider$new(locale = "en_NZ"))
#' x$free_email_domain()
#' x$tld()
#'
#' (x <- InternetProvider$new(locale = "fa_IR"))
#' x$url()
#'
#' (x <- InternetProvider$new(locale = "fr_FR"))
#' x$url()
#' x$user_name()
#' x$email()
#'
#' (x <- InternetProvider$new(locale = "hr_HR"))
#' x$url()
#' x$user_name()
#' x$email()
#'
#' # convert a string to ascii with stringi pkg
#' if (requireNamespace("stringi", quietly = TRUE)) {
#'   x$to_ascii("anï")
#' }
InternetProvider <- R6::R6Class(
  inherit = BaseProvider,
  "InternetProvider",
  public = list(
    #' @field locale (character) the locale
    locale = NULL,
    #' @field safe_email_tlds (character) safe email tlds
    safe_email_tlds = c("org", "com", "net"),
    #' @field free_email_domains (character) free email tlds
    free_email_domains = c("gmail.com", "yahoo.com", "hotmail.com"),
    #' @field tlds (character) tlds
    tlds = c(
      "com", "com", "com", "com", "com", "com", "biz", "info", "net", "org"
    ),
    #' @field uri_pages (character) uri pages
    uri_pages = c(
      "index", "home", "search", "main", "post", "homepage", "category",
      "register", "login", "faq", "about", "terms", "privacy", "author"
    ),
    #' @field uri_paths (character) uri paths
    uri_paths = c(
      "app", "main", "wp-content", "search", "category", "tag", "categories",
      "tags", "blog", "posts", "list", "explore"
    ),
    #' @field uri_extensions (character) uri extensions
    uri_extensions = c(
      ".html", ".html", ".html", ".htm", ".htm", ".php", ".php", ".jsp",
      ".asp"
    ),
    #' @field user_name_formats (character) user name formats
    user_name_formats = c(
      "{{last_names}}.{{first_names}}",
      "{{first_names}}.{{last_names}}",
      "{{first_names}}##",
      "?{{last_names}}"
    ),
    #' @field email_formats (character) email formats
    email_formats = c(
      "{{user_name}}@{{domain_name}}",
      "{{user_name}}@{{free_email_domain}}"
    ),
    #' @field url_formats (character) url formats
    url_formats = c("www.{{domain_name}}/", "{{domain_name}}/"),
    #' @field uri_formats (character) uri formats
    uri_formats = c(
      "{{url}}",
      "{{url}}{{uri_page}}/",
      "{{url}}{{uri_page}}{{uri_extension}}",
      "{{url}}{{uri_path}}/{{uri_page}}/",
      "{{url}}{{uri_path}}/{{uri_page}}{{uri_extension}}"
    ),
    #' @field image_placeholder_services (character) image uri formats
    image_placeholder_services = c(
      "https://placeholdit.imgix.net/~text?txtsize=55&txt={{width}}x{{height}}&w={{width}&h={{height}}",
      "https://www.lorempixel.com/{{width}}/{{height}}",
      "https://dummyimage.com/{{width}}x{{height}}"
    ),
    #' @field replacements (list) a list
    replacements = list(),

    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `InternetProvider` object
    #' @return A new `InternetProvider` object
    initialize = function() {
      if (is.null(self$locale)) {
        raise_class("InternetProvider")
      }
    },

    #' @description convert to ascii
    #' @param x the stringn to convert to ascii
    to_ascii = function(x) {
      if (length(self$replacements) != 0) {
        for (i in seq_along(self$replacements)) {
          x <- gsub(self$replacements[1], self$replacements[2], x)
        }
        # for search, replace in self.replacements:
        #   string = string.replace(search, replace)
      }
      check4pkg("stringi")
      stringi::stri_trans_general(x, "latin-ascii")
    },

    #' @description get an email address
    #' @param domain (character) a domain name, if not given, a random
    #' name is chosen
    email = function(domain = NULL) {
      if (!is.null(domain)) {
        sprintf("%s@%s", self$user_name(), domain)
      } else {
        pattern <- super$random_element(self$email_formats)
        out <- list(
          user_name = self$user_name(),
          domain_name = self$domain_name(),
          free_email_domain = self$free_email_domain()
        )
        whisker::whisker.render(pattern, data = out)
      }
    },

    #' @description get a safe email address
    safe_email = function() {
      tolower(sprintf(
        "%s@example.%s",
        self$user_name(), super$random_element(self$safe_email_tlds)
      ))
    },

    #' @description a free email address
    free_email = function() {
      tolower(paste0(self$user_name(), "@", self$free_email_domain()))
    },

    #' @description company email address
    company_email = function() {
      tolower(paste0(self$user_name(), "@", self$domain_name()))
    },

    #' @description ascii email address
    ascii_email = function() {
      pattern <- super$random_element(self$email_formats)
      out <- list(
        user_name = self$user_name(),
        domain_name = self$domain_name(),
        free_email_domain = self$free_email_domain()
      )
      tolower(self$to_ascii(whisker::whisker.render(pattern, data = out)))
    },

    #' @description safe ascii email address
    ascii_safe_email = function() {
      tolower(self$to_ascii(
        paste0(
          self$user_name(), "@example.",
          super$random_element(self$safe_email_tlds)
        )
      ))
    },

    #' @description an ascii free email address
    ascii_free_email = function() {
      tolower(self$to_ascii(
        paste0(self$user_name(), "@", self$free_email_domain())
      ))
    },

    #' @description ascii company email address
    ascii_company_email = function() {
      tolower(self$to_ascii(paste0(self$user_name(), "@", self$domain_name())))
    },

    #' @description a user name
    user_name = function() {
      pattern <- super$random_element(self$user_name_formats)
      loc <- if (private$has_locale(self$locale, PersonProvider_en_US$new()$allowed_locales())) {
        self$locale
      } else {
        "en_US"
      }
      out <- cr_loc_spec_provider("PersonProvider", loc)$render(pattern)
      self$to_ascii(tolower(super$bothify(out)))
    },

    #' @description a tld
    tld = function() {
      super$random_element(self$tlds)
    },

    #' @description free email domain name
    free_email_domain = function() {
      super$random_element(self$free_email_domains)
    },

    #' @description a url
    #' @param schemes (character vector) a url scheme, defaults are http and https
    url = function(schemes = NULL) {
      if (is.null(schemes)) schemes <- c("http", "https")
      pattern <- sprintf(
        "%s://%s",
        if (!is.null(schemes)) super$random_element(schemes) else "",
        super$random_element(self$url_formats)
      )
      whisker::whisker.render(
        template = pattern,
        data = list(domain_name = self$domain_name())
      )
    },

    #' @description Produce an Internet domain name with the specified
    #' number of subdomain levels
    #' @param levels (integer) how many levels, must be >1
    domain_name = function(levels = 1) {
      if (levels < 1) {
        stop("levels must be greater than or equal to 1")
      } else if (levels == 1) {
        paste0(self$domain_word(), ".", self$tld())
      } else {
        paste0(self$domain_word(), ".", self$domain_name(levels - 1))
      }
    },

    #' @description a domain word
    domain_word = function() {
      comp <- subclass("CompanyProvider", locale = self$locale)
      xx <- comp$company()
      xxx <- strsplit(xx, split = "\\s|-")[[1]]
      tolower(self$to_ascii(xxx[2]))
    },

    #' @description an ipv4 address or network
    #' @param network (logical) produce a network
    ipv4 = function(network = FALSE) {
      check4pkg("ipaddress")
      address <- ipaddress::sample_ipv4(1)
      if (network) {
        prefix <- super$random_int(0, ipaddress::max_prefix_length(address))
        address <- ipaddress::ip_network(address, prefix, strict = FALSE)
      }
      as.character(address)
    },

    #' @description an ipv6 address or network
    #' @param network (logical) produce a network
    ipv6 = function(network = FALSE) {
      check4pkg("ipaddress")
      address <- ipaddress::sample_ipv6(1)
      if (network) {
        prefix <- super$random_int(0, ipaddress::max_prefix_length(address))
        address <- ipaddress::ip_network(address, prefix, strict = FALSE)
      }
      as.character(address)
    },

    #' @description a mac address
    mac_address = function() {
      mac <- replicate(7, super$random_int(0, 255))
      paste0(sprintf("%02x", mac), collapse = ":")
    },

    #' @description a uri page
    uri_page = function() {
      super$random_element(self$uri_pages)
    },

    #' @description a uri path
    #' @param deep how deep to go, an integer, if not given an integer
    #' between 1 and 4 (inclusive) is chosen
    uri_path = function(deep = NULL) {
      deep <- if (!is.null(deep)) deep else super$random_int(1, 4)
      paste0(
        replicate(deep, super$random_element(self$uri_paths)),
        collapse = "/"
      )
    },

    #' @description a uri extension
    uri_extension = function() {
      super$random_element(self$uri_extensions)
    },

    #' @description a uri
    uri = function() {
      pattern <- super$random_element(self$uri_formats)
      "{{url}}{{uri_path}}/{{uri_page}}{{uri_extension}}"
      dat <- list(
        url = self$url(),
        uri_path = self$uri_path(),
        uri_page = self$uri_page(),
        uri_extension = self$uri_extension()
      )
      tolower(self$to_ascii(whisker::whisker.render(pattern, data = dat)))
    },

    #' @description a slug
    #' @param value (character) a string, if given, returns itself, if not, uses
    #' [LoremProvider] to get a random string. default: `NULL`
    slug = function(value = NULL) {
      if (is.null(value)) {
        lorem <- cr_loc_spec_provider("LoremProvider", self$locale)
        value <- paste0(lorem$words(), collapse = "-")
      }
      return(value)
    },

    #' @description Returns URL to placeholder image -
    #' Example: http://placehold.it/640x480
    #' @param width image width, in pixels
    #' @param height image height, in pixels
    image_url = function(width = NULL, height = NULL) {
      width_ <- if (!is.null(width)) width else super$random_int(max = 1024)
      height_ <- if (!is.null(height)) height else super$random_int(max = 1024)
      placeholder_url <- super$random_element(self$image_placeholder_services)
      whisker::whisker.render(placeholder_url,
        data = list(width = width_, height = height_)
      )
    }
  ),
  private = list(
    has_locale = function(locale, provider) locale %in% provider,
    # parse_eval_safe = function(name) {
    #   if (self$locale != "en_US") {
    #     tmp <- parse_eval(sprintf("int_%s_", name), self$locale)
    #     if (!is.null(tmp)) self[[name]] <- tmp
    #   }
    # },
    locales = c(
      "en_US", "en_AU", "en_NZ", "de_DE", "bg_BG", "cs_CZ",
      "fa_IR", "fr_FR", "hr_HR"
    )
  )
)
