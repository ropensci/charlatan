el_symbols <- c("H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y", "Zr", "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th", "Pa", "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr", "Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og")

#' @title ElementProvider
#' @description chemical elements methods
#' @export
#' @keywords internal
#' @details Data from Wikipedia at
#' <https://en.wikipedia.org/wiki/Chemical_element>
ElementProvider <- R6::R6Class(
  inherit = BaseProvider,
  "ElementProvider",
  public = list(
    #' @field locale (character) xxx
    locale = NULL,
    #' @field symbolvec symbols for elements
    symbolvec = el_symbols,
    #' @field elementvec vector of element names
    elementvec = NA_character_,
    #' @description dataframe of symbols and elements
    elements = function() {
      data.frame(
        symbol = self$symbolvec,
        element = self$elementvec,
        stringsAsFactors = FALSE
      )
    },
    #' @description Create a new `ElementProvider` object
    #' @return A new `ElementProvider` object
    initialize = function() {
      if (is.null(self$locale)) {
        raise_class("ElementProvider")
      }
    },
    #' @description Get a symbol
    symbol = function() {
      super$random_element(self$elements()$symbol)
    },
    #' @description Get an element
    element = function() {
      super$random_element(self$elements()$element)
    },
    #' @description symbol by number
    #' @param number retrieve symbol of element by atomic number.
    symbol_by_number = function(number) {
      self$elements()$symbol[number]
    },
    #' @description element by number
    #' @param number retrieve element by atomic number.
    element_by_number = function(number) {
      self$elements()$element[number]
    }
  ),
  private = list(
    locales = c("en_US", "nl_NL")
  )
)

el_elements_en_us <- c(
  "Hydrogen", "Helium", "Lithium", "Beryllium", "Boron", "Carbon", "Nitrogen", "Oxygen", "Fluorine", "Neon", "Sodium", "Magnesium", "Aluminium", "Silicon", "Phosphorus", "Sulfur", "Chlorine", "Argon", "Potassium", "Calcium", "Scandium", "Titanium", "Vanadium", "Chromium", "Manganese", "Iron", "Cobalt", "Nickel", "Copper", "Zinc", "Gallium", "Germanium", "Arsenic", "Selenium", "Bromine", "Krypton", "Rubidium", "Strontium", "Yttrium", "Zirconium", "Niobium", "Molybdenum", "Technetium", "Ruthenium", "Rhodium", "Palladium", "Silver", "Cadmium", "Indium", "Tin", "Antimony", "Tellurium", "Iodine", "Xenon", "Caesium", "Barium", "Lanthanum", "Cerium", "Praseodymium", "Neodymium", "Promethium", "Samarium", "Europium", "Gadolinium", "Terbium", "Dysprosium", "Holmium", "Erbium", "Thulium", "Ytterbium", "Lutetium", "Hafnium", "Tantalum", "Tungsten", "Rhenium", "Osmium", "Iridium", "Platinum", "Gold", "Mercury", "Thallium", "Lead", "Bismuth", "Polonium", "Astatine", "Radon", "Francium", "Radium", "Actinium", "Thorium", "Protactinium", "Uranium", "Neptunium", "Plutonium", "Americium", "Curium", "Berkelium", "Californium", "Einsteinium", "Fermium", "Mendelevium", "Nobelium", "Lawrencium", "Rutherfordium", "Dubnium", "Seaborgium", "Bohrium", "Hassium", "Meitnerium", "Darmstadtium", "Roentgenium", "Copernicium", "Nihonium", "Flerovium", "Moscovium",
  "Livermorium", "Tennessine", "Oganesson"
)

#' @title ElementProvider for USA
#' @description chemical elements methods
#' @export
#' @family en
#' @family US
#' @details Data from Wikipedia at
#' <https://en.wikipedia.org/wiki/Chemical_element>
#' @examples
#' z <- ElementProvider_en_US$new()
#' z$symbol()
#' z$element()
ElementProvider_en_US <- R6::R6Class(
  inherit = ElementProvider,
  "ElementProvider_en_US",
  public = list(
    #' @field locale (character) xxx
    locale = "en_US",
    #' @field elementvec vector of element names
    elementvec = el_elements_en_us
  )
)
# https://nl.wikipedia.org/wiki/Lijst_van_chemische_elementen
el_elements_nl_nl <- c(
  "Waterstof", "Helium", "Lithium", "Berylium", "Boor", "Koolstof", "Stikstof", "Zuurstof", "Fluor", "Neon", "Natrium", "Magnesium", "Aluminium", "Silicium", "Fosfor", "Zwavel", "Chloor", "Argon", "Kalium", "Calcium", "Scandium", "Titanium", "Vanadium", "Chroom", "Mangaan", "IJzer", "Kobalt", "Nikkel", "Koper", "Zink", "Gallium", "Germanium", "Arseen", "Seleen", "Broom", "Krypton", "Rubidium", "Strontium", "Ytrium", "Zirkonium", "Nobium", "Molybdeen", "Technitium", "Ruthenium", "Rodium", "Palladium", "Zilver", "Cadmium", "Indium", "Tin", "Antimoon", "Telluur", "Jodium", "Xenon", "Cesium", "Barium", "Lanthaan", "Cerium", "Praseodymium", "Neodymium", "Promethium", "Samarium", "Europium", "Gadolinium", "Terbium", "Dysprosium", "Holmium", "Erbium", "Thulium", "Ytterbium", "Lutetium", "Hafnium", "Tantaal", "Wolfraam", "Renium", "Osmium", "Iridium", "Platina", "Goud", "Kwik", "Thallium", "Lood", "Bismut", "Polonium", "Astaat", "Radon", "Francium", "Radium", "Actinium", "Thorium", "Protactinium", "Uranium", "Neptunium", "Plutonium", "Americium", "Curium", "Berkelium", "Californium", "Einsteinium", "Fermium", "Mendelevium", "Nobelium", "Lawrencium", "Rutherfordium", "Dubnium", "Seaborgium", "Bohrium", "Hassium", "Meitnerium", "Darmstadtium", "Röntgenium", "Copernicum", "Nihonium", "Flerovium", "Moscovium",
  "Livermorium", "Tennessine", "Oganesson"
)
#' @title ElementProvider for the Netherlands
#' @description chemical elements methods
#' @export
#' @family nl
#' @family NL
#' @details Data from Wikipedia at
#' <https://nl.wikipedia.org/wiki/Lijst_van_chemische_elementen>
#' @examples
#' z <- ElementProvider_nl_NL$new()
#' z$symbol()
#' z$element()
ElementProvider_nl_NL <- R6::R6Class(
  inherit = ElementProvider,
  "ElementProvider_nl_NL",
  public = list(
    #' @field locale (character) xxx
    locale = "nl_NL",
    #' @field elementvec vector of element names
    elementvec = el_elements_nl_nl
  )
)
