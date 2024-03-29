# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/es_MX/__init__.py
#' @title CompanyProvider Spanish (Mexico)
#' @inherit CompanyProvider description details return
#' @export
#' @family es
#' @family MX
#' @examples
#' x <- CompanyProvider_es_MX$new()
#' x$locale
#' x$company()
#' x$catch_phrase()
#' x$bs()
CompanyProvider_es_MX <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider_es_MX",
  inherit = CompanyProvider,
  public = list(

    ## add functions here
    #' @description a company name
    company = function() {
      pattern <- super$random_element(private$company_formats)
      dat <- list(
        last_name = self$pp$last_name(),
        last_name2 = self$pp$last_name(),
        last_name3 = self$pp$last_name(),
        company_suffix = super$random_element(private$company_suffixes),
        company_prefix = super$random_element(private$company_prefixes)
      )
      whisker::whisker.render(pattern, data = dat)
    }
  ),
  private = list(
    # catch_phrase_words (character) xxx
    catch_phrase_words = list(
      c(
        "habilidad",
        "acceso",
        "adaptador",
        "algoritmo",
        "alianza",
        "analista",
        "aplicaci\u00f3n",
        "enfoque",
        "arquitectura",
        "archivo",
        "inteligencia artificial",
        "array",
        "actitud",
        "medici\u00f3n",
        "gesti\u00f3n presupuestaria",
        "capacidad",
        "desaf\u00edo",
        "circuito",
        "colaboraci\u00f3n",
        "complejidad",
        "concepto",
        "conglomeraci\u00f3n",
        "contingencia",
        "n\u00facleo",
        "fidelidad",
        "base de datos",
        "data-warehouse",
        "definici\u00f3n",
        "emulaci\u00f3n",
        "codificar",
        "encriptar",
        "extranet",
        "firmware",
        "flexibilidad",
        "focus group",
        "previsi\u00f3n",
        "base de trabajo",
        "funci\u00f3n",
        "funcionalidad",
        "Interfaz Gr\u00e1fica",
        "groupware",
        "Interfaz gr\u00e1fico de usuario",
        "hardware",
        "Soporte",
        "jerarqu\u00eda",
        "conjunto",
        "implementaci\u00f3n",
        "infraestructura",
        "iniciativa",
        "instalaci\u00f3n",
        "conjunto de instrucciones",
        "interfaz",
        "intranet",
        "base del conocimiento",
        "red de area local",
        "aprovechar",
        "matrices",
        "metodolog\u00edas",
        "middleware",
        "migraci\u00f3n",
        "modelo",
        "moderador",
        "monitorizar",
        "arquitectura abierta",
        "sistema abierto",
        "orquestar",
        "paradigma",
        "paralelismo",
        "pol\u00edtica",
        "portal",
        "estructura de precios",
        "proceso de mejora",
        "producto",
        "productividad",
        "proyecto",
        "proyecci\u00f3n",
        "protocolo",
        "l\u00ednea segura",
        "software",
        "soluci\u00f3n",
        "estandardizaci\u00f3n",
        "estrategia",
        "estructura",
        "\u00e9xito",
        "superestructura",
        "soporte",
        "sinergia",
        "mediante",
        "marco de tiempo",
        "caja de herramientas",
        "utilizaci\u00f3n",
        "website",
        "fuerza de trabajo"
      ),
      c(
        "24 horas",
        "24/7",
        "3ra generaci\u00f3n",
        "4ta generaci\u00f3n",
        "5ta generaci\u00f3n",
        "6ta generaci\u00f3n",
        "analizada",
        "asim\u00e9trica",
        "as\u00edncrona",
        "monitorizada por red",
        "bidireccional",
        "bifurcada",
        "generada por el cliente",
        "cliente servidor",
        "coherente",
        "cohesiva",
        "compuesto",
        "sensible al contexto",
        "basado en el contexto",
        "basado en contenido",
        "dedicada",
        "generado por la demanda",
        "didactica",
        "direccional",
        "discreta",
        "din\u00e1mica",
        "potenciada",
        "acompasada",
        "ejecutiva",
        "expl\u00edcita",
        "tolerante a fallos",
        "innovadora",
        "amplio \u00e1banico",
        "global",
        "heur\u00edstica",
        "alto nivel",
        "hol\u00edstica",
        "homog\u00e9nea",
        "h\u00edbrida",
        "incremental",
        "intangible",
        "interactiva",
        "intermedia",
        "local",
        "log\u00edstica",
        "maximizada",
        "met\u00f3dica",
        "misi\u00f3n cr\u00edtica",
        "m\u00f3bil",
        "modular",
        "motivadora",
        "multimedia",
        "multiestado",
        "multitarea",
        "nacional",
        "basado en necesidades",
        "neutral",
        "nueva generaci\u00f3n",
        "no-vol\u00e1til",
        "orientado a objetos",
        "\u00f3ptima",
        "optimizada",
        "radical",
        "tiempo real",
        "rec\u00edproca",
        "regional",
        "escalable",
        "secundaria",
        "orientada a soluciones",
        "estable",
        "estatica",
        "sistem\u00e1tica",
        "sist\u00e9mica",
        "tangible",
        "terciaria",
        "transicional",
        "uniforme",
        "valor a\u00f1adido",
        "v\u00eda web",
        "defectos cero",
        "tolerancia cero"
      ),
      c(
        "adaptivo",
        "avanzado",
        "asimilado",
        "automatizado",
        "balanceado",
        "enfocado al negocio",
        "centralizado",
        "clonado",
        "compatible",
        "configurable",
        "multiplataforma",
        "enfocado al cliente",
        "personalizable",
        "descentralizado",
        "digitizado",
        "distribuido",
        "diverso",
        "mejorado",
        "en toda la empresa",
        "ergon\u00f3mico",
        "exclusivo",
        "expandido",
        "extendido",
        "cara a cara",
        "enfocado",
        "de primera l\u00ednea",
        "totalmente configurable",
        "basado en funcionalidad",
        "fundamental",
        "horizontal",
        "implementado",
        "innovador",
        "integrado",
        "intuitivo",
        "inverso",
        "administrado",
        "mandatorio",
        "monitoreado",
        "multicanal",
        "multilateral",
        "multi-capas",
        "en red",
        "basado en objetos",
        "de arquitectura abierta",
        "Open-source",
        "operativo",
        "optimizado",
        "opcional",
        "org\u00e1nico",
        "organizado",
        "perseverante",
        "persistente",
        "polarizado",
        "preventivo",
        "proactivo",
        "enfocado a ganancias",
        "programable",
        "progresivo",
        "llave p\u00fablica",
        "enfocado a la calidad",
        "reactivo",
        "realineado",
        "re-contextualizado",
        "reducido",
        "con ingenier\u00eda inversa",
        "de tama\u00f1o adecuado",
        "robusto",
        "seguro",
        "compartible",
        "sincronizado",
        "orientado a equipos",
        "total",
        "universal",
        "actualizable",
        "centrado al usuario",
        "vers\u00e1til",
        "virtual",
        "visionario"
      )
    ),
    # bsWords (character) xxx
    bsWords = list(
      c(
        "implementa", "utiliza", "integrata", "optimiza",
        "evoluciona", "transforma", "abraza", "habilia",
        "orquesta", "reinventa", "agrega", "mejora", "incentiviza",
        "modifica", "empondera", "monetiza", "fortalece",
        "facilita", "synergiza", "crear marca", "crece",
        "sintetiza", "entrega", "mezcla", "incuba", "compromete",
        "maximiza", "inmediata", "visualiza", "inova",
        "escala", "libera", "maneja", "extiende", "revoluciona",
        "genera", "explota", "transici\u00f3n", "itera", "cultiva",
        "redefine", "recontextualiza"
      ),
      c(
        "synerg\u00edas",
        "paradigmas",
        "marcados",
        "socios",
        "infraestructuras",
        "plataformas",
        "iniciativas",
        "chanales",
        "communidades",
        "ROI",
        "soluciones",
        "portales",
        "nichos",
        "tecnolog\u00edas",
        "contenido",
        "cadena de producci\u00f3n",
        "convergencia",
        "relaciones",
        "architecturas",
        "interfaces",
        "comercio electr\u00f3nico",
        "sistemas",
        "ancho de banda",
        "modelos",
        "entregables",
        "usuarios",
        "esquemas",
        "redes",
        "aplicaciones",
        "m\u00e9tricas",
        "funcionalidades",
        "experiencias",
        "servicios web",
        "metodolog\u00edas"
      ),
      c(
        "valor agregado",
        "verticales",
        "proactivas",
        "robustas",
        "revolucionarias",
        "escalables",
        "de punta",
        "innovadoras",
        "intuitivas",
        "estrat\u00e9gicas",
        "e-business",
        "de misi\u00f3n cr\u00edtica",
        "uno-a-uno",
        "24/7",
        "end-to-end",
        "globales",
        "B2B",
        "B2C",
        "granulares",
        "sin fricciones",
        "virtuales",
        "virales",
        "din\u00e1micas",
        "24/365",
        "magn\u00e9ticas",
        "listo para la web",
        "interactivas",
        "dot-com",
        "sexi",
        "en tiempo real",
        "eficientes",
        "front-end",
        "distribuidas",
        "extensibles",
        "llave en mano",
        "de clase mundial",
        "open-source",
        "plataforma cruzada",
        "de paquete",
        "empresariales",
        "integrado",
        "impacto total",
        "inal\u00e1mbrica",
        "transparentes",
        "de siguiente generaci\u00f3n",
        "lo \u00faltimo",
        "centrado al usuario",
        "visionarias",
        "personalizado",
        "ubicuas",
        "plug-and-play",
        "colaborativas",
        "hol\u00edsticas",
        "ricas"
      )
    ),
    # company_formats formats for company names.
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}}-{{last_name2}}",
      "{{company_prefix}} {{last_name}}-{{last_name2}}",
      "{{company_prefix}} {{last_name}} y {{last_name2}}",
      "{{company_prefix}} {{last_name}}, {{last_name2}} y {{last_name3}}",
      "{{last_name}}-{{last_name2}} {{company_suffix}}",
      "{{last_name}}, {{last_name2}} y {{last_name3}}",
      "{{last_name}} y {{last_name2}} {{company_suffix}}"
    ),
    # company_prefixes first part of company names.
    company_prefixes = c(
      "Despacho", "Grupo", "Corporativo", "Club",
      "Industrias", "Laboratorios", "Proyectos"
    ),
    # company_suffixes suffixes for in company names.
    company_suffixes = c(
      "A.C.", "S.A.", "S.A. de C.V.", "S.C.",
      "S. R.L. de C.V.", "e Hijos", "y Asociados"
    ),
    locale_ = "es_MX"
  )
)
