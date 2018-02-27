#' InternetProvider
#'
#' @export
#' @keywords internal
#' @param locale (character) the locale to use. Run 
#' `internet_provider_locales()` for locales supported (default: en_US)
#' @details
#' \strong{Methods}
#'   \describe{
#'    \item{\code{to_ascii(x)}}{
#'     convert to ascii
#'   }
#'    \item{\code{email(domain)}}{
#'     get an email address
#'   }
#'    \item{\code{safe_email()}}{
#'     get a safe email address
#'   }
#'    \item{\code{free_email()}}{
#'     free email address
#'   }
#'    \item{\code{company_email()}}{
#'     company email address
#'   }
#'    \item{\code{ascii_email()}}{
#'     ascii email address
#'   }
#'    \item{\code{ascii_safe_email()}}{
#'     safe ascii email address
#'   }
#'    \item{\code{ascii_free_email()}}{
#'     an ascii free email address
#'   }
#'    \item{\code{ascii_company_email()}}{
#'     ascii company email address
#'   }
#'    \item{\code{user_name()}}{
#'     a user name
#'   }
#'    \item{\code{tld()}}{
#'     a tld
#'   }
#'    \item{\code{free_email_domain()}}{
#'     free email domain
#'   }
#'    \item{\code{url(schemes)}}{
#'     get a url
#'   }
#'    \item{\code{domain_name(levels)}}{
#'     get a domain name
#'   }
#'    \item{\code{domain_word()}}{
#'     get a domain word
#'   }
#'    \item{\code{ipv4()}}{
#'     get a random ipv4 address
#'   }
#'    \item{\code{mac_address()}}{
#'     get a mac address
#'   }
#'    \item{\code{uri_page()}}{
#'     get a uri page
#'   }
#'    \item{\code{uri_path()}}{
#'     get a uri path
#'   }
#'    \item{\code{uri_extension()}}{
#'     get a uri extension
#'   }
#'    \item{\code{image_url(width, height)}}{
#'     get an image url
#'   }
#'  }
#'
#' @format NULL
#' @usage NULL
#'
#' @note Note that if a locale you set doesn't have a locale specific set 
#' of data for [PersonProvider] or [CompanyProvider] we fall back to
#' `en_US`
#'
#' @examples
#' (x <- InternetProvider$new())
#' x$locale
#'
#' # uri/url/tld/etc.
#' x$tld()
#' x$domain_word()
#' x$domain_name()
#' x$domain_name(levels = 2)
#' x$domain_name(levels = 3)
#' x$domain_name(levels = 10)
#' ## url's
#' x$url()
#' x$url(schemes = c('hbbp', 'hggp'))
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
#' # addresses, mac, ipv4
#' x$mac_address()
#' x$ipv4()
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
InternetProvider <- R6::R6Class(
  inherit = BaseProvider,
  'InternetProvider',
  public = list(
    locale = NULL,
    safe_email_tlds = c('org', 'com', 'net'),
    free_email_domains = c('gmail.com', 'yahoo.com', 'hotmail.com'),
    tlds = c(
        'com', 'com', 'com', 'com', 'com', 'com', 'biz', 'info', 'net', 'org'
    ),
    uri_pages = c(
        'index', 'home', 'search', 'main', 'post', 'homepage', 'category',
        'register', 'login', 'faq', 'about', 'terms', 'privacy', 'author'
    ),
    uri_paths = c(
        'app', 'main', 'wp-content', 'search', 'category', 'tag', 'categories',
        'tags', 'blog', 'posts', 'list', 'explore'
    ),
    uri_extensions = c(
        '.html', '.html', '.html', '.htm', '.htm', '.php', '.php', '.jsp',
        '.asp'
    ),
    user_name_formats = c(
        '{{last_names}}.{{first_names}}',
        '{{first_names}}.{{last_names}}',
        '{{first_names}}##',
        '?{{last_names}}'
    ),
    email_formats = c('{{user_name}}@{{domain_name}}',
        '{{user_name}}@{{free_email_domain}}'),
    url_formats = c('www.{{domain_name}}/', '{{domain_name}}/'),
    uri_formats = c(
        '{{url}}',
        '{{url}}{{uri_page}}/',
        '{{url}}{{uri_page}}{{uri_extension}}',
        '{{url}}{{uri_path}}/{{uri_page}}/',
        '{{url}}{{uri_path}}/{{uri_page}}{{uri_extension}}'
    ),
    image_placeholder_services = c(
        'https://placeholdit.imgix.net/~text?txtsize=55&txt={{width}}x{{height}}&w={{width}&h={{height}}',
        'https://www.lorempixel.com/{{width}}/{{height}}',
        'https://dummyimage.com/{{width}}x{{height}}'
    ),
    replacements = list(),



    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        # check global locales
        super$check_locale(locale)
        # check person provider locales
        check_locale_(tolower(locale), internet_provider_locales)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }

      private$parse_eval_safe('free_email_domains')
      private$parse_eval_safe('safe_email_tlds')
      private$parse_eval_safe('email_formats')
      private$parse_eval_safe('user_name_formats')
      private$parse_eval_safe('tlds')
      private$parse_eval_safe('replacements')
      private$parse_eval_safe('safe_email_tlds')
    },


    to_ascii = function(x) {
      if (length(self$replacements) != 0) {
        for (i in seq_along(self$replacements)) {
          x <- gsub(self$replacements[1], self$replacements[2], x)
        }
        # for search, replace in self.replacements:
        #   string = string.replace(search, replace)
      }
      stringi::stri_trans_general(x, "latin-ascii")
    },

    email = function(domain = NULL) {
      if (!is.null(domain)) {
        sprintf('%s@%s', self$user_name(), domain)
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

    safe_email = function() {
      tolower(sprintf('%s@example.%s',
        self$user_name(), super$random_element(self$safe_email_tlds)
      ))
    },

    free_email = function() {
      tolower(paste0(self$user_name(), '@', self$free_email_domain()))
    },

    company_email = function() {
      tolower(paste0(self$user_name(), '@', self$domain_name()))
    },

    ascii_email = function() {
      pattern <- super$random_element(self$email_formats)
      out <- list(
        user_name = self$user_name(),
        domain_name = self$domain_name(),
        free_email_domain = self$free_email_domain()
      )
      tolower(self$to_ascii(whisker::whisker.render(pattern, data = out)))
    },

    ascii_safe_email = function() {
      tolower(self$to_ascii(
              paste0(self$user_name(), '@example.',
                super$random_element(self$safe_email_tlds))
            ))
    },

    ascii_free_email = function() {
      tolower(self$to_ascii(
              paste0(self$user_name(), '@', self$free_email_domain())
            ))
    },

    ascii_company_email = function() {
      tolower(self$to_ascii(paste0(self$user_name(), '@', self$domain_name())))
    },

    user_name = function() {
      pattern <- super$random_element(self$user_name_formats)
      loc <- if (private$has_locale(self$locale, person_provider_locales)) {
        self$locale
      } else {
        "en_US"
      }
      out <- PersonProvider$new(locale = loc)$render(pattern)
      self$to_ascii(tolower(super$bothify(out)))
    },

    tld = function() {
      super$random_element(self$tlds)
    },

    free_email_domain = function() {
      super$random_element(self$free_email_domains)
    },

    url = function(schemes = NULL) {
      if (is.null(schemes)) schemes <- c('http', 'https')
      pattern <- sprintf(
        '%s://%s',
        if (!is.null(schemes)) super$random_element(schemes) else "",
        super$random_element(self$url_formats)
      )
      whisker::whisker.render(
        template = pattern,
        data = list(domain_name = self$domain_name()))
    },

    # Produce an Internet domain name with the specified number of
    # subdomain levels
    domain_name = function(levels = 1) {
      if (levels < 1) {
        stop("levels must be greater than or equal to 1")
      } else if (levels == 1) {
        paste0(self$domain_word(), '.', self$tld())
      } else {
        paste0(self$domain_word(), '.', self$domain_name(levels - 1))
      }
    },

    domain_word = function() {
      company <- CompanyProvider$new()
      xx <- company$company()
      xxx <- strsplit(xx, split = "\\s|-")[[1]]
      tolower(self$to_ascii(xxx[2]))
    },

    ipv4 = function() {
      iptools::ip_random(1)
      # FIXME: try to do network address later
      # if network:
      #     address += '/' + str(self.generator.random.randint(0, IPV4LENGTH))
      #     address = str(ip_network(address, strict=False))
      # return address
    },

#     def ipv6(self, network=False):
#         """Produce a random IPv6 address or network with a valid CIDR"""
#         address = str(ip_address(self.generator.random.randint(
#             2 ** IPV4LENGTH, (2 ** IPV6LENGTH) - 1)))
#         if network:
#             address += '/' + str(self.generator.random.randint(0, IPV6LENGTH))
#             address = str(ip_network(address, strict=False))
#         return address

    mac_address = function() {
      mac = replicate(7, super$random_int(0, 255))
      paste0(sprintf("%02x", mac), collapse = ":")
    },

    uri_page = function() {
      super$random_element(self$uri_pages)
    },

    uri_path = function(deep = NULL) {
      deep <- if (!is.null(deep)) deep else super$random_int(1, 4)
      paste0(
        replicate(deep, super$random_element(self$uri_paths)),
        collapse = "/"
      )
    },

    uri_extension = function() {
      super$random_element(self$uri_extensions)
    },

    uri = function() {
      pattern <- super$random_element(self$uri_formats)
      '{{url}}{{uri_path}}/{{uri_page}}{{uri_extension}}'
      dat <- list(
        url = self$url(),
        uri_path = self$uri_path(),
        uri_page = self$uri_page(),
        uri_extension = self$uri_extension()
      )
      tolower(self$to_ascii(whisker::whisker.render(pattern, data = dat)))
    },

    # FIXME: need to do lorem provider first, not made yet
    # slug = function(value = NULL) {
    #   if (is.null(value)) value <- LoremProvider$new()$text(20)
    #   return(value)
    # }

    # Returns URL to placeholder image - Example: http://placehold.it/640x480
    image_url = function(width = NULL, height = NULL) {
      width_ = if (!is.null(width)) width else super$random_int(max = 1024)
      height_ = if (!is.null(height)) height else super$random_int(max = 1024)
      placeholder_url = super$random_element(self$image_placeholder_services)
      whisker::whisker.render(placeholder_url,
                              data = list(width = width_, height = height_))
    }


  ),

  private = list(
    has_locale = function(locale, provider) locale %in% provider,

    parse_eval_safe = function(name) {
      if (self$locale != "en_US") {
        tmp <- parse_eval(sprintf("int_%s_", name), self$locale)
        if (!is.null(tmp)) self[[name]] <- tmp
      }
    }
  )
)

#' @export
#' @rdname InternetProvider
internet_provider_locales <- c(
  "en_us", "en_au", "de_de", "bg_bg", "cs_cz", "fa_ir", "fr_fr",
  "hr_hr"
)
