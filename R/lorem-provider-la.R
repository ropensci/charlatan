# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/lorem/la/__init__.py

lorem_word_list_la <- c(
  "a", "ab", "accusamus", "accusantium", "ad", "adipisci", "alias",
  "aliquam", "aliquid", "amet", "animi", "aperiam", "architecto",
  "asperiores", "aspernatur", "assumenda", "at", "atque", "aut", "autem",
  "beatae", "blanditiis", "commodi", "consectetur", "consequatur",
  "consequuntur", "corporis", "corrupti", "culpa", "cum", "cumque",
  "cupiditate", "debitis", "delectus", "deleniti", "deserunt", "dicta",
  "dignissimos", "distinctio", "dolor", "dolore", "dolorem", "doloremque",
  "dolores", "doloribus", "dolorum", "ducimus", "ea", "eaque", "earum",
  "eius", "eligendi", "enim", "eos", "error", "esse", "est", "et", "eum",
  "eveniet", "ex", "excepturi", "exercitationem", "expedita", "explicabo",
  "facere", "facilis", "fuga", "fugiat", "fugit", "harum", "hic", "id",
  "illo", "illum", "impedit", "in", "incidunt", "inventore", "ipsa",
  "ipsam", "ipsum", "iste", "itaque", "iure", "iusto", "labore",
  "laboriosam", "laborum", "laudantium", "libero", "magnam", "magni",
  "maiores", "maxime", "minima", "minus", "modi", "molestiae",
  "molestias", "mollitia", "nam", "natus", "necessitatibus", "nemo",
  "neque", "nesciunt", "nihil", "nisi", "nobis", "non", "nostrum",
  "nulla", "numquam", "occaecati", "odio", "odit", "officia", "officiis",
  "omnis", "optio", "pariatur", "perferendis", "perspiciatis", "placeat",
  "porro", "possimus", "praesentium", "provident", "quae", "quaerat",
  "quam", "quas", "quasi", "qui", "quia", "quibusdam", "quidem", "quis",
  "quisquam", "quo", "quod", "quos", "ratione", "recusandae",
  "reiciendis", "rem", "repellat", "repellendus", "reprehenderit",
  "repudiandae", "rerum", "saepe", "sapiente", "sed", "sequi",
  "similique", "sint", "sit", "soluta", "sunt", "suscipit", "tempora",
  "tempore", "temporibus", "tenetur", "totam", "ullam", "unde", "ut",
  "vel", "velit", "veniam", "veritatis", "vero", "vitae", "voluptas",
  "voluptate", "voluptatem", "voluptates", "voluptatibus", "voluptatum"
)

#' Lorem provider Latin
#' @inherit LoremProvider description return
#' @family la
#' @export
#' @examples
#' x <- LoremProvider_la$new()
#' x$word()
#' x$words(3)
#' x$words(6)
#' x$sentence()
#' x$paragraph()
#' x$paragraphs(3)
#' cat(x$paragraphs(6), sep = "\n")
#' x$text(19)
#' x <- LoremProvider_la$new(word_connector = " --- ")
#' x$paragraph(4)
LoremProvider_la <- R6::R6Class(
  inherit = LoremProvider,
  "LoremProvider_la",
  private = list(
    locale_ = "la",
    word_list = lorem_word_list_la
  )
)
