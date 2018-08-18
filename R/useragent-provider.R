#' UserAgentProvider
#'
#' @export
#' @keywords internal
#' @param locale (character) the locale to use. See
#' `useragent_provider_locales` for locales supported (default: en_US)
#' @details
#' **Methods**
#'
#' - `mac_processor()` - a mac processor
#' - `linux_processor()` - a linux processor
#' - `user_agent()` - a user agent string, randomly picks one
#'    from chrome, firefix, safari, opera or internet explorer
#' - `chrome(version_from, version_to, build_from, build_to)` - a chrome
#'    user agent string
#' - `firefox()` - a firefox user agent string
#' - `safari()` - a safari user agent string
#' - `opera()` - an opera user agent string
#' - `internet_explorer()` - an internet explorer user agent string
#' - `windows_platform_token()` - a windows platform token
#' - `linux_platform_token()` - a linux platform token
#' - `mac_platform_token()` - a mac platform token
#'
#' @format NULL
#' @usage NULL
#' @examples
#' (x <- UserAgentProvider$new())
#' x$locale
#' x$mac_processor()
#' x$linux_processor()
#' x$user_agent()
#' x$chrome()
#' x$firefox()
#' x$internet_explorer()
#' x$opera()
#' x$safari()
UserAgentProvider <- R6::R6Class(
  inherit = BaseProvider,
  'UserAgentProvider',
  public = list(
    locale = NULL,
    user_agents = c(
        'chrome', 'firefox', 'internet_explorer', 'opera', 'safari'
    ),
    windows_platform_tokens = c(
        'Windows 95', 'Windows 98', 'Windows 98; Win 9x 4.90', 'Windows CE',
        'Windows NT 4.0', 'Windows NT 5.0', 'Windows NT 5.01',
        'Windows NT 5.1', 'Windows NT 5.2', 'Windows NT 6.0', 'Windows NT 6.1',
        'Windows NT 6.2'
    ),
    linux_processors = c('i686', 'x86_64'),
    mac_processors = c('Intel', 'PPC', 'U; Intel', 'U; PPC'),


    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        # check global locales
        super$check_locale(locale)
        # check person provider locales
        check_locale_(locale, useragent_provider_locales)
        self$locale <- locale
      } else {
        self$locale <- 'en_US'
      }
    },

    mac_processor = function() {
        super$random_element(self$mac_processors)
    },

    linux_processor = function() {
        super$random_element(self$linux_processors)
    },

    user_agent = function() {
        name <- super$random_element(self$user_agents)
        self[[name]]()
    },

    chrome = function(version_from = 13, version_to = 63,
               build_from = 800, build_to = 899) {

        saf <- paste0(super$random_int(531, 536), super$random_int(0, 2))
        tmplt <- '(%s) AppleWebKit/%s (KHTML, like Gecko) Chrome/%s.0.%s.0 Safari/%s'
        platforms <- c(
            sprintf(tmplt, self$linux_platform_token(),
                         saf,
                         super$random_int(version_from, version_to),
                         super$random_int(build_from, build_to),
                         saf),
            sprintf(tmplt, self$windows_platform_token(),
                         saf,
                         super$random_int(version_from, version_to),
                         super$random_int(build_from, build_to),
                         saf),
            sprintf(tmplt, self$mac_platform_token(),
                         saf,
                         super$random_int(version_from, version_to),
                         super$random_int(build_from, build_to),
                         saf)
        )

        paste0('Mozilla/5.0 ', super$random_element(platforms))
    },

    firefox = function() {
      dt <- DateTimeProvider$new()
      ver = c(
        sprintf('Gecko/%s Firefox/%s.0',
                dt$date_time_between("2011-01-01 00:00:00"),
                super$random_int(4, 15)
        ),
        sprintf('Gecko/%s Firefox/3.6.%s',
                dt$date_time_between("2010-01-01 00:00:00"),
                super$random_int(1, 20)),
        sprintf('Gecko/%s Firefox/3.8',
                dt$date_time_between("2010-01-01 00:00:00")
        )
      )
      tmplt_win <- '(%s; %s; rv:1.9.%s.20) %s'
      tmplt_lin <- '(%s; rv:1.9.%s.20) %s'
      tmplt_mac <- '(%s; rv:1.9.%s.20) %s'
      platforms <- c(
        sprintf(tmplt_win, self$windows_platform_token(),
                sub('_', '-', MiscProvider$new()$locale()),
                super$random_int(0, 2),
                super$random_element(ver)),
        sprintf(tmplt_lin, self$linux_platform_token(),
                super$random_int(5, 7),
                super$random_element(ver)),
        sprintf(tmplt_mac, self$mac_platform_token(),
                super$random_int(2, 6),
                super$random_element(ver))
      )

      paste0('Mozilla/5.0 ', super$random_element(platforms))
    },

    safari = function() {
      saf <- sprintf("%s.%s.%s", super$random_int(531, 535),
                     super$random_int(1, 50),
                     super$random_int(1, 7))
      if (super$random_int(0, 1) == 0) {
        ver <- sprintf("%s.%s", super$random_int(4, 5), super$random_int(0, 1))
      } else {
        ver <- sprintf("%s.0.%s", super$random_int(4, 5), super$random_int(1, 5))
      }
      tmplt_win <- '(Windows; U; %s) AppleWebKit/%s (KHTML, like Gecko) Version/%s Safari/%s'
      tmplt_mac <- '(%s rv:%s.0; %s) AppleWebKit/%s (KHTML, like Gecko) Version/%s Safari/%s'
      tmplt_ipod <- '(iPod; U; CPU iPhone OS %s_%s like Mac OS X; %s) AppleWebKit/%s (KHTML, like Gecko) Version/%s.0.5 Mobile/8B%s Safari/6%s'
      locale <- sub('_', '-', MiscProvider$new()$locale())
      platforms <- c(
        sprintf(tmplt_win, self$windows_platform_token(),
                saf,
                ver,
                saf),
        sprintf(tmplt_mac, self$mac_platform_token(),
                super$random_int(2, 6),
                locale,
                saf,
                ver,
                saf),
        sprintf(tmplt_ipod, super$random_int(3, 4),
                super$random_int(0, 3),
                locale,
                saf,
                super$random_int(3, 4),
                super$random_int(111, 119),
                saf)
      )
      paste0('Mozilla/5.0 ', super$random_element(platforms))
    },

    opera = function() {
      platform <- sprintf(
        '(%s; %s) Presto/2.9.%s Version/%s.00',
        if (super$random_int(0, 1)) {
          self$linux_platform_token()
        } else {
          self$windows_platform_token()
        },
        sub('_', '-', MiscProvider$new()$locale()),
        super$random_int(160, 190),
        super$random_int(10, 12)
      )
      sprintf('Opera/%s.%s.%s',
              super$random_int(8, 9),
              super$random_int(10, 99),
              platform)
    },

    internet_explorer = function() {
      tmplt <- 'Mozilla/5.0 (compatible; MSIE %s.0; %s; Trident/%s.%s)'
      sprintf(tmplt, super$random_int(5, 9),
              self$windows_platform_token(),
              super$random_int(3, 5),
              super$random_int(0, 1))
    },

    windows_platform_token = function() {
      super$random_element(self$windows_platform_tokens)
    },

    linux_platform_token = function() {
      paste0('X11; Linux ', super$random_element(self$linux_processors))
    },

    mac_platform_token = function() {
      sprintf('Macintosh; %s Mac OS X 10_%s_%s',
              super$random_element(self$mac_processors),
              super$random_int(5, 12),
              super$random_int(0, 9)
      )
    }
  )
)

#' @export
#' @rdname UserAgentProvider
useragent_provider_locales <- c("en_US")
