#' @title PersonProvider
#' @details Methods for Persons, methods for generating names.
#'
#' @inherit BaseProvider note
#' @family ParentProviders
#' @export
#' @returns A PersonProvider object that can create names.
PersonProvider <- R6::R6Class(
  "PersonProvider",
  inherit = BaseProvider,
  public = list(
    #' @description Create a new `PersonProvider` object
    #' @param messy make it messy
    initialize = function(messy = FALSE) {
      super$initialize()
      self$change_messy(messy)
    },
    #' @description internal function to figure out if
    #' messy is a valid option for this locale.
    messy_is_possible = function() {
      # is there messy data that we can sample from?
      !is.null(private$persons_messy)
    },
    #' @description Change messy (if possible)
    #' @param messy TRUE or FALSE
    change_messy = function(messy) {
      possible <- self$messy_is_possible()
      global <- charlatan_settings_env$global_messy
      conflict <- FALSE
      if (is.logical(global)) {
        if (global != messy) {
          conflict <- TRUE
        }
      }
      # if there is a conflict and possible
      # choose global
      if (conflict && possible) {
        warning(paste0("Global setting for messy is ", global), call. = FALSE)
        private$messy_ <- global
      } else if (!conflict && possible) {
        # if no conflict and possible do it
        private$messy_ <- messy
      } else {
        # if it is not possible, we cannot
        # set messy to true
        private$messy_ <- FALSE
      }
      if (!possible && isTRUE(messy)) {
        warning("Messy is not possible for this locale")
      }
    },
    #' @description Make a person's name
    #' @param fmt (character) a name format, default: `NULL`
    render = function(fmt = NULL) {
      if (is.null(fmt)) fmt <- super$random_element(private$formats)
      dat <- lapply(
        private$persons[pluck_names(fmt, private$persons)],
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
    #' Always return a text, when messy is allowed return a messy
    #' version, but otherwise return a clean version.
    #' @param clean_choice the clean version
    #' @param messy_choice the messy version
    messy_switch = function(clean_choice, messy_choice) {
      if (private$messy_ && !is.null(messy_choice)) {
        messy_choice
      } else {
        clean_choice
      }
    },

    #' @description make a first name
    first_name = function() {
      nameobject <- self$messy_switch(private$persons$first_names, private$persons_messy$first_names)
      if (has_probs(nameobject)) {
        super$random_element_prob(nameobject)
      } else {
        super$random_element(nameobject)
      }
    },

    #' @description make a female first name
    first_name_female = function() {
      if ("first_names_female" %in% names(private$persons)) {
        if (has_probs(private$persons$first_names_female)) {
          super$random_element_prob(private$persons$first_names_female)
        } else {
          super$random_element(private$persons$first_names_female)
        }
      } else {
        self$first_name()
      }
    },

    #' @description make a male first name
    first_name_male = function() {
      if ("first_names_male" %in% names(private$persons)) {
        if (has_probs(private$persons$first_names_male)) {
          super$random_element_prob(private$persons$first_names_male)
        } else {
          super$random_element(private$persons$first_names_male)
        }
      } else {
        self$first_name()
      }
    },

    #' @description make a last name
    last_name = function() {
      if ("last_names" %in% names(private$persons)) {
        if (has_probs(private$persons$last_names)) {
          super$random_element_prob(private$persons$last_names)
        } else {
          super$random_element(private$persons$last_names)
        }
      } else {
        comb <- c(private$persons$last_names_female, private$persons$last_names_male)
        if (has_probs(private$persons$last_names_female) ||
          has_probs(private$persons$last_names_male)) {
          super$random_element_prob(comb)
        } else {
          super$random_element(comb)
        }
      }
    },

    #' @description make a female last name
    last_name_female = function() {
      if ("last_names_female" %in% names(private$persons)) {
        if (has_probs(private$persons$last_names_female)) {
          super$random_element_prob(private$persons$last_names_female)
        } else {
          super$random_element(private$persons$last_names_female)
        }
      } else {
        self$last_name()
      }
    },

    #' @description make a male last name
    last_name_male = function() {
      if ("last_names_male" %in% names(private$persons)) {
        if (has_probs(private$persons$last_names_male)) {
          super$random_element_prob(private$persons$last_names_male)
        } else {
          super$random_element(private$persons$last_names_male)
        }
      } else {
        self$last_name()
      }
    },

    #' @description make a name prefix
    prefix = function() {
      nameobject <- self$messy_switch(private$persons, private$persons_messy)
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
      nameobject <- self$messy_switch(private$persons, private$persons_messy)
      if ("prefixes_female" %in% names(nameobject)) {
        super$random_element(nameobject$prefixes_female)
      } else {
        super$random_element(nameobject$prefixes)
      }
    },

    #' @description make a male name prefix
    prefix_male = function() {
      nameobject <- self$messy_switch(private$persons, private$persons_messy)
      if ("prefixes_male" %in% names(nameobject)) {
        super$random_element(nameobject$prefixes_male)
      } else {
        super$random_element(nameobject$prefixes)
      }
    },

    #' @description make a name suffix
    suffix = function() {
      nameobject <- self$messy_switch(private$persons, private$persons_messy)
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
      nameobject <- self$messy_switch(private$persons, private$persons_messy)
      if ("suffixes_female" %in% names(nameobject)) {
        super$random_element(nameobject$suffixes_female)
      } else {
        super$random_element(nameobject$suffixes)
      }
    },

    #' @description make a male name suffix
    suffix_male = function() {
      nameobject <- self$messy_switch(private$persons, private$persons_messy)
      if ("suffixes_male" %in% names(nameobject)) {
        super$random_element(nameobject$suffixes_male)
      } else {
        super$random_element(nameobject$suffixes)
      }
    }
  ),
  active = list(
    #' @field messy
    #' show current setting for messy. Either TRUE or FALSE depending
    #' on configuration and if this is even possible for the locale.
    messy = function() private$messy_
  ),
  private = list(
    # formats (character) person name formats
    formats = NULL,
    # person name data
    persons = NULL,
    # the messy setting, `TRUE` or `FALSE`
    messy_ = FALSE,
    # person name data (but messy data)
    persons_messy = NULL,
    locales = c(
      "bg_BG", "fr_FR", "es_ES", "en_US", "fa_IR", "da_DK",
      "cs_CZ", "de_DE", "fr_CH", "de_AT", "fi_FI", "es_MX",
      "en_GB", "hr_HR", "it_IT", "lv_LV", "ko_KR", "lt_LT",
      "ne_NP", "nl_NL", "no_NO", "pl_PL", "en_NZ"
    ),
    provider_ = "PersonProvider"
  )
)
