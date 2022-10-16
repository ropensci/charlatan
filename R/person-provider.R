


#' @title PersonProvider
#' @description person names methods
#' @export
#' @keywords internal
#' @details Note that with the male/female versions if the locale
#' doesn't provide a male/female version then we fall back to the
#' generic thing, e.g., if no female first name we give you first
#' name
#' @examples
#' x <- PersonProvider$new()
#' x$locale
#' x$render()
#' x$first_name()
#' x$first_name_female()
#' x$first_name_male()
#' x$last_name()
#' x$last_name_female()
#' x$last_name_male()
#'
#' x <- PersonProvider$new(locale = "en_GB")
#' x$locale
#' x$render()
#' x$first_name()
#' x$first_name_female()
#' x$first_name_male()
#' x$last_name()
#' x$last_name_female()
#' x$last_name_male()
#'
#' z <- PersonProvider$new(locale = "fr_FR")
#' z$locale
#' z$render()
#' z$first_name()
#' z$first_name_female()
#' z$first_name_male()
#' z$last_name()
#' z$last_name_female()
#' z$last_name_male()
#' z$prefix()
#'
#' z <- PersonProvider$new(locale = "de_AT")
#' z$locale
#' z$render()
#' z$first_name()
#' z$last_name()
#' z$prefix()
#'
#' z <- PersonProvider$new(locale = "cs_CZ")
#' z$locale
#' z$render()
#' z$first_name()
#' z$first_name_female()
#' z$first_name_male()
#' z$last_name()
#' z$last_name_female()
#' z$last_name_male()
#' z$prefix()
#'
#' z <- PersonProvider$new(locale = "es_MX")
#' z$locale
#' z$render()
#' z$first_name()
#' z$first_name_female()
#' z$first_name_male()
#' z$last_name()
#' z$prefix()
#'
#' z <- PersonProvider$new(locale = "en_NZ")
#' z$locale
#' z$render()
#' z$first_name()
#' z$first_name_female()
#' z$first_name_male()
#' z$last_name()
#'
#' PersonProvider$new(locale = "fr_CH")$render()
#' PersonProvider$new(locale = "fi_FI")$render()
#' PersonProvider$new(locale = "fa_IR")$render()
#' PersonProvider$new(locale = "es_ES")$render()
#' PersonProvider$new(locale = "de_DE")$render()
#' PersonProvider$new(locale = "de_AT")$render()
#' PersonProvider$new(locale = "cs_CZ")$render()
#' PersonProvider$new(locale = "bg_BG")$render()
#' PersonProvider$new(locale = "da_DK")$render()
PersonProvider <- R6::R6Class(
  "PersonProvider",
  inherit = BaseProvider,
  public = list(
    #' @field locale (character) the locale
    locale = NULL,
    #' @field formats (character) person name formats
    formats = NULL,
    #' @field person (character) person name data
    person = NULL,
    #' @field messy (logical) the messy setting, `TRUE` or `FALSE`
    messy = FALSE,
    #' @field person_messy (character) person name data (but messy data)
    person_messy = NULL,
    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `PersonProvider` object
    #
    initialize = function(messy = FALSE) {
      # if messy is true, check if we can use that.
      if (isTRUE(messy)) {
        # is there messy data that we can sample from?
        if (!is.null(self$person_messy)) {
          self$messy <- TRUE
        } else {
          warning("this locale does not have 'messy' data, setting `messy=FALSE`")
          self$messy <- FALSE
        }
      }
    },

    #' @description Make a person's name
    #' @param fmt (character) a name format, default: `NULL`
    render = function(fmt = NULL) {
      if (is.null(fmt)) fmt <- super$random_element(self$formats)
      dat <- lapply(
        self$person[pluck_names(fmt, self$person)],
        function(x) {
          if (has_probs(x)) {
            super$random_element_prob(x)
          } else {
            super$random_element(x)
          }
        }
      )
      if (length(grep("first_names", names(dat))) > 1) {
        tmp <- grep("first_names", names(dat), value = TRUE)
        nms <- paste(tmp, seq_along(tmp), sep = "")
        names(dat)[grep("first_names", names(dat))] <- nms
      }
      if (length(grep("last_names", names(dat))) > 1) {
        tmp <- grep("last_names", names(dat), value = TRUE)
        nms <- paste(tmp, seq_along(tmp), sep = "")
        names(dat)[grep("last_names", names(dat))] <- nms
      }
      whisker::whisker.render(fmt, data = dat)
    },
    #' @description messy switch (internal).
    messy_switch = function(clean_choice, messy_choice) {
      if (self$messy && !is.null(messy_choice)) {
        messy_choice
      } else {
        clean_choice
      }
    },

    #' @description make a first name
    first_name = function() {
      nameobject <- self$messy_switch(self$person$first_names, self$person_messy$first_names)
      if (has_probs(nameobject)) {
        super$random_element_prob(nameobject)
      } else {
        super$random_element(nameobject)
      }
    },

    #' @description make a female first name
    first_name_female = function() {
      if ("first_names_female" %in% names(self$person)) {
        if (has_probs(self$person$first_names_female)) {
          super$random_element_prob(self$person$first_names_female)
        } else {
          super$random_element(self$person$first_names_female)
        }
      } else {
        self$first_name()
      }
    },

    #' @description make a male first name
    first_name_male = function() {
      if ("first_names_male" %in% names(self$person)) {
        if (has_probs(self$person$first_names_male)) {
          super$random_element_prob(self$person$first_names_male)
        } else {
          super$random_element(self$person$first_names_male)
        }
      } else {
        self$first_name()
      }
    },

    #' @description make a last name
    last_name = function() {
      if ("last_names" %in% names(self$person)) {
        if (has_probs(self$person$last_names)) {
          super$random_element_prob(self$person$last_names)
        } else {
          super$random_element(self$person$last_names)
        }
      } else {
        comb <- c(self$person$last_names_female, self$person$last_names_male)
        if (has_probs(self$person$last_names_female) ||
          has_probs(self$person$last_names_male)) {
          super$random_element_prob(comb)
        } else {
          super$random_element(comb)
        }
      }
    },

    #' @description make a female last name
    last_name_female = function() {
      if ("last_names_female" %in% names(self$person)) {
        if (has_probs(self$person$last_names_female)) {
          super$random_element_prob(self$person$last_names_female)
        } else {
          super$random_element(self$person$last_names_female)
        }
      } else {
        self$last_name()
      }
    },

    #' @description make a male last name
    last_name_male = function() {
      if ("last_names_male" %in% names(self$person)) {
        if (has_probs(self$person$last_names_male)) {
          super$random_element_prob(self$person$last_names_male)
        } else {
          super$random_element(self$person$last_names_male)
        }
      } else {
        self$last_name()
      }
    },

    #' @description make a name prefix
    prefix = function() {
      nameobject <- self$messy_switch(self$person, self$person_messy)
      if (any(c("prefixes_male", "prefixes_female") %in% names(nameobject))) {
        super$random_element(c(
          nameobject$prefixes_male,
          nameobject$prefixes_female
        ))
      } else {
        super$random_element(nameobject$prefixes)
      }
    },

    #' @description make a female name prefix
    prefix_female = function() {
      nameobject <- self$messy_switch(self$person, self$person_messy)
      if ("prefixes_female" %in% names(nameobject)) {
        super$random_element(nameobject$prefixes_female)
      } else {
        super$random_element(nameobject$prefixes)
      }
    },

    #' @description make a male name prefix
    prefix_male = function() {
      nameobject <- self$messy_switch(self$person, self$person_messy)
      if ("prefixes_male" %in% names(nameobject)) {
        super$random_element(nameobject$prefixes_male)
      } else {
        super$random_element(nameobject$prefixes)
      }
    },

    #' @description make a name suffix
    suffix = function() {
      nameobject <- self$messy_switch(self$person, self$person_messy)
      if (any(c("suffixes_male", "suffixes_female") %in% names(nameobject))) {
        super$random_element(c(
          nameobject$suffixes_male,
          nameobject$suffixes_female
        ))
      } else {
        super$random_element(nameobject$suffixes)
      }
    },

    #' @description make a female name suffix
    suffix_female = function() {
      nameobject <- self$messy_switch(self$person, self$person_messy)
      if ("suffixes_female" %in% names(nameobject)) {
        super$random_element(nameobject$suffixes_female)
      } else {
        super$random_element(nameobject$suffixes)
      }
    },

    #' @description make a male name suffix
    suffix_male = function() {
      nameobject <- self$messy_switch(self$person, self$person_messy)
      if ("suffixes_male" %in% names(nameobject)) {
        super$random_element(nameobject$suffixes_male)
      } else {
        super$random_element(nameobject$suffixes)
      }
    }
  ),
  private = list(
    locales = c(
      "bg_BG", "fr_FR", "es_ES", "en_US", "fa_IR", "da_DK",
      "cs_CZ", "de_DE", "fr_CH", "de_AT", "fi_FI", "es_MX",
      "en_GB", "hr_HR", "it_IT", "lv_LV", "ko_KR", "lt_LT",
      "ne_NP", "nl_NL", "no_NO", "pl_PL", "en_NZ"
    )
  )
)
