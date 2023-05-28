# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/person/it_IT/__init__.py

person_formats_it_it <- c(
  "{{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{prefixes}} {{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{prefixes}} {{first_names}} {{last_names}}"
)

person_first_names_it_it <- c(
  "Aaron", "Akira", "Alberto", "Alessandro", "Alighieri", "Amedeo", "Amos", "Anselmo", "Antonino", "Arcibaldo",
  "Armando", "Artes",
  "Audenico", "Ausonio", "Bacchisio", "Battista", "Bernardo", "Boris", "Caio", "Carlo", "Cecco", "Cirino",
  "Cleros", "Costantino",
  "Damiano", "Danny", "Davide", "Demian", "Dimitri", "Domingo", "Dylan", "Edilio", "Egidio", "Elio", "Emanuel",
  "Enrico", "Ercole",
  "Ermes", "Ethan", "Eusebio", "Evangelista", "Fabiano", "Ferdinando", "Fiorentino", "Flavio", "Fulvio",
  "Gabriele", "Gastone", "Germano",
  "Giacinto", "Gianantonio", "Gianleonardo", "Gianmarco", "Gianriccardo", "Gioacchino", "Giordano", "Giuliano",
  "Graziano", "Guido", "Harry",
  "Iacopo", "Ilario", "Ione", "Italo", "Jack", "Jari", "Joey", "Joseph", "Kai", "Kociss", "Laerte", "Lauro",
  "Leonardo", "Liborio", "Lorenzo",
  "Ludovico", "Maggiore", "Manuele", "Mariano", "Marvin", "Matteo", "Mauro", "Michael", "Mirco", "Modesto",
  "Muzio", "Nabil", "Nathan",
  "Nick", "Noah", "Odino", "Olo", "Oreste", "Osea", "Pablo", "Patrizio", "Piererminio", "Pierfrancesco",
  "Piersilvio", "Priamo", "Quarto",
  "Quirino", "Radames", "Raniero", "Renato", "Rocco", "Romeo", "Rosalino", "Rudy", "Sabatino", "Samuel", "Santo",
  "Sebastian", "Serse",
  "Silvano", "Sirio", "Tancredi", "Terzo", "Timoteo", "Tolomeo", "Trevis", "Ubaldo", "Ulrico", "Valdo", "Neri",
  "Vinicio", "Walter", "Xavier", "Yago", "Zaccaria", "Abramo", "Adriano", "Alan", "Albino", "Alessio",
  "Alighiero",
  "Amerigo", "Anastasio", "Antimo", "Antonio", "Arduino", "Aroldo", "Arturo", "Augusto", "Avide", "Baldassarre",
  "Bettino",
  "Bortolo", "Caligola", "Carmelo", "Celeste", "Ciro", "Costanzo", "Dante", "Danthon", "Davis", "Demis", "Dindo",
  "Domiziano", "Edipo", "Egisto", "Eliziario", "Emidio", "Enzo", "Eriberto", "Erminio", "Ettore", "Eustachio",
  "Fabio", "Fernando",
  "Fiorenzo", "Folco", "Furio", "Gaetano", "Gavino", "Gerlando", "Giacobbe", "Giancarlo", "Gianmaria", "Giobbe",
  "Giorgio", "Giulio",
  "Gregorio", "Hector", "Ian", "Ippolito", "Ivano", "Jacopo", "Jarno", "Joannes", "Joshua", "Karim", "Kris",
  "Lamberto",
  "Lazzaro", "Leone", "Lino", "Loris", "Luigi", "Manfredi", "Marco", "Marino", "Marzio", "Mattia", "Max",
  "Michele", "Mirko", "Moreno",
  "Nadir", "Nazzareno", "Nestore", "Nico", "Noel", "Odone", "Omar", "Orfeo", "Osvaldo", "Pacifico", "Pericle",
  "Pietro", "Primo",
  "Quasimodo", "Radio", "Raoul", "Renzo", "Rodolfo", "Romolo", "Rosolino", "Rufo", "Sabino", "Sandro", "Sasha",
  "Secondo", "Sesto",
  "Silverio", "Siro", "Tazio", "Teseo", "Timothy", "Tommaso", "Tristano", "Umberto", "Ariel", "Artemide", "Assia",
  "Azue", "Benedetta",
  "Bibiana", "Brigitta", "Carmela", "Cassiopea", "Cesidia", "Cira", "Clea", "Cleopatra", "Clodovea", "Concetta",
  "Cosetta", "Cristyn",
  "Damiana", "Danuta", "Deborah", "Demi", "Diamante", "Diana", "Donatella", "Doriana", "Edvige", "Elda", "Elga",
  "Elsa", "Emilia", "Enrica",
  "Erminia", "Eufemia", "Evita", "Fatima", "Felicia", "Filomena", "Flaviana", "Fortunata", "Gelsomina",
  "Genziana", "Giacinta", "Gilda",
  "Giovanna", "Giulietta", "Grazia", "Guendalina", "Helga", "Ileana", "Ingrid", "Irene", "Isabel", "Isira",
  "Ivonne", "Jelena", "Jole",
  "Claudia", "Kayla", "Kristel", "Laura", "Lucia", "Lia", "Lidia", "Lisa", "Loredana", "Loretta", "Luce",
  "Lucrezia", "Luna", "Maika",
  "Marcella", "Maria", "Mariagiulia", "Marianita", "Mariapia", "Marieva", "Marina", "Maristella", "Maruska",
  "Matilde", "Mecren",
  "Mercedes", "Mietta", "Miriana", "Miriam", "Monia", "Morgana", "Naomi", "Nayade", "Nicoletta", "Ninfa", "Noemi",
  "Nunzia", "Olimpia",
  "Oretta", "Ortensia", "Penelope", "Piccarda", "Prisca", "Rebecca", "Rita", "Rosalba", "Rosaria", "Rosita",
  "Ruth", "Samira",
  "Sarita", "Selvaggia", "Shaira", "Sibilla", "Soriana", "Sue ellen", "Thea", "Tosca", "Ursula", "Vania", "Vera",
  "Vienna", "Violante", "Vitalba", "Zelida"
)

person_last_names_it_it <- c(
  "Rossi", "Russo", "Ferrari", "Esposito", "Bianchi", "Romano", "Colombo", "Ricci", "Marino", "Greco", "Bruno",
  "Gallo", "Conti",
  "De luca", "Mancini", "Costa", "Giordano", "Rizzo", "Lombardi", "Moretti", "Barbieri", "Fontana", "Santoro",
  "Mariani",
  "Rinaldi", "Caruso", "Ferrara", "Galli", "Martini", "Leone", "Longo", "Gentile", "Martinelli", "Vitale",
  "Lombardo", "Serra",
  "Coppola", "De Santis", "D'angelo", "Marchetti", "Parisi", "Villa", "Conte", "Ferraro", "Ferri", "Fabbri",
  "Bianco",
  "Marini", "Grasso", "Valentini", "Messina", "Sala", "De Angelis", "Gatti", "Pellegrini", "Palumbo", "Sanna",
  "Farina",
  "Rizzi", "Monti", "Cattaneo", "Morelli", "Amato", "Silvestri", "Mazza", "Testa", "Grassi", "Pellegrino",
  "Carbone",
  "Giuliani", "Benedetti", "Barone", "Rossetti", "Caputo", "Montanari", "Guerra", "Palmieri", "Bernardi",
  "Martino", "Fiore",
  "De rosa", "Ferretti", "Bellini", "Basile", "Riva", "Donati", "Piras", "Vitali", "Battaglia", "Sartori", "Neri",
  "Costantini",
  "Milani", "Pagano", "Ruggiero", "Sorrentino", "D'amico", "Orlando", "Damico", "Negri"
)

person_prefixes_female_it_it <- c("Dott.", "Sig.ra")
person_prefixes_male_it_it <- c("Dott.", "Sig.")

person_prefixes_it_it <- c("Dott.", "Sig.", "Sig.ra")

person_it_it <- list(
  first_names = person_first_names_it_it,
  last_names = person_last_names_it_it,
  prefixes_female = person_prefixes_female_it_it,
  prefixes_male = person_prefixes_male_it_it,
  prefixes = person_prefixes_it_it
)

#' @title Person Provider for Italian (Italy)
#' @description person names methods
#' @export
#' @family it
#' @family IT
#' @details Note for female and male components that we fall back on generic
#' versions if the locale
#' doesn't provide a male/female version.
#' e.g., if no female first name we use first
#' name
#' @examples
#' x <- PersonProvider_it_IT$new()
#' x$locale
#' x$render()
#' x$first_name()
#' x$first_name_female()
#' x$first_name_male()
#' x$last_name()
#' x$last_name_female()
#' x$last_name_male()
PersonProvider_it_IT <- R6::R6Class(
  "PersonProvider_it_IT",
  inherit = PersonProvider,
  public = list(
    #' @field locale (character) the locale
    locale = "it_IT",
    #' @field formats (character) person name formats
    formats = person_formats_it_it,
    #' @field person (character) person name data
    person = person_it_it
  )
)
