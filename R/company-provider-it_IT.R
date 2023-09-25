# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/company/it_IT/__init__.py

#' @title CompanyProvider it_IT
#' @description company methods for locale Italian (Italy) (it_IT).
#' @export
#' @family it
#' @family IT
#' @examples
#' x <- CompanyProvider_it_IT$new()
#' x$locale
#' x$company()
#' x$catch_phrase()
#' x$bs()
CompanyProvider_it_IT <- R6::R6Class(
  lock_objects = FALSE,
  "CompanyProvider_it_IT",
  inherit = CompanyProvider,
  public = list(

    # add data here, like
    #' @field catch_phrase_words (character) xxx
    catch_phrase_words = list(
      c(
        "Abilit\u00e0",
        "Access",
        "Adattatore",
        "Algoritmo",
        "Alleanza",
        "Analizzatore",
        "Applicazione",
        "Approccio",
        "Architettura",
        "Archivio",
        "Intelligenza artificiale",
        "Array",
        "Attitudine",
        "Benchmark",
        "Capacit\u00e0",
        "Sfida",
        "Circuito",
        "Collaborazione",
        "Complessit\u00e0",
        "Concetto",
        "Conglomerato",
        "Contingenza",
        "Core",
        "Database",
        "Data-warehouse",
        "Definizione",
        "Emulazione",
        "Codifica",
        "Criptazione",
        "Firmware",
        "Flessibilit\u00e0",
        "Previsione",
        "Frame",
        "framework",
        "Funzione",
        "Funzionalit\u00e0",
        "Interfaccia grafica",
        "Hardware",
        "Help-desk",
        "Gerarchia",
        "Hub",
        "Implementazione",
        "Infrastruttura",
        "Iniziativa",
        "Installazione",
        "Set di istruzioni",
        "Interfaccia",
        "Soluzione internet",
        "Intranet",
        "Conoscenza base",
        "Matrici",
        "Matrice",
        "Metodologia",
        "Middleware",
        "Migrazione",
        "Modello",
        "Moderazione",
        "Monitoraggio",
        "Moratoria",
        "Rete",
        "Architettura aperta",
        "Sistema aperto",
        "Orchestrazione",
        "Paradigma",
        "Parallelismo",
        "Policy",
        "Portale",
        "Struttura di prezzo",
        "Prodotto",
        "Produttivit\u00e0",
        "Progetto",
        "Proiezione",
        "Protocollo",
        "Servizio clienti",
        "Software",
        "Soluzione",
        "Standardizzazione",
        "Strategia",
        "Struttura",
        "Successo",
        "Sovrastruttura",
        "Supporto",
        "Sinergia",
        "Task-force",
        "Finestra temporale",
        "Strumenti",
        "Utilizzazione",
        "Sito web",
        "Forza lavoro"
      ),
      c(
        "adattiva", "avanzata", "migliorata", "assimilata", "automatizzata", "bilanciata", "centralizzata",
        "compatibile", "configurabile", "cross-platform", "decentralizzata", "digitalizzata", "distribuita",
        "piccola", "ergonomica", "esclusiva", "espansa", "estesa", "configurabile", "fondamentale", "orizzontale",
        "implementata", "innovativa", "integrata", "intuitiva", "inversa", "gestita", "obbligatoria", "monitorata",
        "multi-canale", "multi-laterale", "open-source", "operativa", "ottimizzata", "organica", "persistente",
        "polarizzata", "proattiva", "programmabile", "progressiva", "reattiva", "riallineata", "ricontestualizzata",
        "ridotta", "robusta", "sicura", "condivisibile", "stand-alone", "switchabile", "sincronizzata", "sinergica",
        "totale", "universale", "user-friendly", "versatile", "virtuale", "visionaria"
      ),
      c(
        "24 ore", "24/7", "terza generazione", "quarta generazione", "quinta generazione", "sesta generazione",
        "asimmetrica", "asincrona", "background", "bi-direzionale", "biforcata", "bottom-line", "coerente",
        "coesiva", "composita", "sensibile al contesto", "basta sul contesto", "basata sul contenuto", "dedicata",
        "didattica", "direzionale", "discreta", "dinamica", "eco-centrica", "esecutiva", "esplicita", "full-range",
        "globale", "euristica", "alto livello", "olistica", "omogenea", "ibrida", "impattante", "incrementale",
        "intangibile", "interattiva", "intermediaria", "locale", "logistica", "massimizzata", "metodica",
        "mission-critical", "mobile", "modulare", "motivazionale", "multimedia", "multi-tasking", "nazionale",
        "neutrale", "nextgeneration", "non-volatile", "object-oriented", "ottima", "ottimizzante", "radicale",
        "real-time", "reciproca", "regionale", "responsiva", "scalabile", "secondaria", "stabile", "statica",
        "sistematica", "sistemica", "tangibile", "terziaria", "uniforme", "valore aggiunto"
      )
    ),
    #' @field bsWords (character) xxx
    bsWords = list(
      c(
        "partnerships",
        "comunit\u00e0",
        "ROI",
        "soluzioni",
        "e-services",
        "nicchie",
        "tecnologie",
        "contenuti",
        "supply-chains",
        "convergenze",
        "relazioni",
        "architetture",
        "interfacce",
        "mercati",
        "e-commerce",
        "sistemi",
        "modelli",
        "schemi",
        "reti",
        "applicazioni",
        "metriche",
        "e-business",
        "funzionalit\u00e0",
        "esperienze",
        "webservices",
        "metodologie"
      ),
      c(
        "implementate", "utilizzo", "integrate", "ottimali", "evolutive", "abilitate", "reinventate", "aggregate",
        "migliorate", "incentivate", "monetizzate", "sinergizzate", "strategiche", "deploy", "marchi",
        "accrescitive", "target", "sintetizzate", "spedizioni", "massimizzate", "innovazione", "guida",
        "estensioni", "generate", "exploit", "transizionali", "matrici", "ricontestualizzate"
      ),
      c(
        "valore aggiunto", "verticalizzate", "proattive", "forti", "rivoluzionari", "scalabili", "innovativi",
        "intuitivi", "strategici", "e-business", "mission-critical", "24/7", "globali", "B2B", "B2C", "granulari",
        "virtuali", "virali", "dinamiche", "magnetiche", "web", "interattive", "sexy", "back-end", "real-time",
        "efficienti", "front-end", "distributivi", "estensibili", "mondiali", "open-source", "cross-platform",
        "sinergiche", "out-of-the-box", "enterprise", "integrate", "di impatto", "wireless", "trasparenti",
        "next-generation", "cutting-edge", "visionari", "plug-and-play", "collaborative", "olistiche", "ricche"
      )
    ),
    #' @field company_formats formats for company names.
    company_formats = c(
      "{{last_name}} {{company_suffix}}",
      "{{last_name}}-{{last_name2}} {{company_suffix}}",
      "{{last_name}}, {{last_name2}} e {{last_name3}} {{company_suffix}}"
    ),
    #' @field company_suffixes suffixes for in company names.
    company_suffixes = c("SPA", "e figli", "Group", "s.r.l."),
    ## add functions here
    #' @description a company name
    company = function() {
      pattern <- super$random_element(self$company_formats)
      dat <- list(
        last_name = self$pp$last_name(),
        last_name2 = self$pp$last_name(),
        last_name3 = self$pp$last_name(),
        company_suffix = super$random_element(self$company_suffixes)
      )
      whisker::whisker.render(template = pattern, data = dat)
    }
  ),
  private = list(
    locale_ = "it_IT"
  )
)
