# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/job/fi_FI/__init__.py

job_formats_fi_fi <- c(
  "Agrologi",
  "Aikuiskoulutusjohtaja",
  "Aineenopettaja",
  "Ajoj\u00e4rjestelij\u00e4",
  "Akatemian tutkijatohtori",
  "Aktuaari",
  "Alakoulujen apulaisrehtori",
  "Alikersantti",
  "Alkoholiasiain ylitarkastaja",
  "Back office asiantuntija",
  "Ballistikko",
  "Bioanalyytikko",
  "Brand manager",
  "Budjettiassistentti",
  "Business controller",
  "Cc-yritysneuvoja",
  "Cert-fi -yksik\u00f6n p\u00e4\u00e4llikk\u00f6",
  "Communication officer",
  "Consul",
  "Counsellor",
  "Data-analyytikko",
  "Dekaanin sihteeri",
  "Dieettikeitt\u00e4j\u00e4",
  "Digitaalisen kokeen toteuttaja",
  "Diplomi-insin\u00f6\u00f6ri",
  "Dokumentoija",
  "Dosentti",
  "Eakr-koordinaattori",
  "Editoija",
  "Edunvalvontasihteeri",
  "Egr-ohjaaja",
  "Ekokampuskoordinaattori",
  "Elektroniikka-asentaja",
  "Elinkeinop\u00e4\u00e4llikk\u00f6",
  "Elokuvakonemestari",
  "Elputeknikko",
  "El\u00e4inl\u00e4\u00e4kint\u00f6neuvos",
  "Faktori",
  "Farmakologi",
  "Fidipro-professori",
  "Filmiteknikko",
  "Financial controller",
  "Floristi",
  "Fysioterapeutti",
  "Fyysikko",
  "Gemmologi",
  "Gentax-j\u00e4rjestelm\u00e4asiantuntija",
  "Geofyysikko",
  "Gis-asiantuntija",
  "Gm huto p\u00e4\u00e4k\u00e4ytt\u00e4j\u00e4",
  "Graafikko",
  "Haastattelija",
  "Hakukoordinaattori",
  "Hallimestari",
  "Hammashoitaja",
  "Hankearkkitehti",
  "Harjaantumisopetuksen erityisluokanopettaja",
  "Havainnontarkastaja",
  "Helikopterihuoltoaliupseeri",
  "Henkikirjoittaja",
  "Johtava kuluttajaoikeusneuvoja",
  "Ict-arkkitehti",
  "Ihmisoikeuskeskuksen johtaja",
  "Iktyonomi",
  "Ilma-aluksen p\u00e4\u00e4llikk\u00f6",
  "Iltap\u00e4iv\u00e4kerhon ohjaaja",
  "Immunologi",
  "Info-palvelupisteen hoitaja",
  "Innoittaja",
  "Jakeluvastaava",
  "Jalkav\u00e4en tarkastaja",
  "Jaoksen johtaja",
  "Jatkokoulutettava el\u00e4inl\u00e4\u00e4k\u00e4ri",
  "Jhs-projektip\u00e4\u00e4llikk\u00f6",
  "Johdon asiantuntija",
  "Joukkoliikenneasiantuntija",
  "Julkaisu- ja markkinointisuunnittelija",
  "Junamies",
  "Juontaja",
  "Kaapeli-insin\u00f6\u00f6ri",
  "Kabinettisihteeri",
  "Kadettikoulun johtaja",
  "Kahvila-apulainen",
  "Kairaaja",
  "Kalabiologi",
  "Kampanjap\u00e4\u00e4llikk\u00f6",
  "Kanavanhoitaja",
  "Kapellimestari",
  "Karjamestari",
  "Laadunvarmistuksen asiantuntija",
  "Laboraattori",
  "Laillisuusvalvontasihteeri",
  "Laki- ja henkil\u00f6st\u00f6asiainjohtaja",
  "Lapsiasiavaltuutettu",
  "Laskennan kehitt\u00e4misp\u00e4\u00e4llikk\u00f6",
  "Lataamoinsin\u00f6\u00f6ri",
  "Lautakuntasihteeri",
  "Lavastaja",
  "Maa- ja vesirakennusty\u00f6ntekij\u00e4",
  "Maisema-arkkitehti",
  "Majakkateknikko",
  "Maksatusasiantuntija",
  "Malli",
  "Mareografihoitaja",
  "Mastoteknikko",
  "Matemaatikko",
  "Media- ja kulttuurikoordinaattori",
  "Neuropsykologi",
  "Nimikkeist\u00f6p\u00e4\u00e4llikk\u00f6",
  "Nosturinkuljettaja",
  "Notaari",
  "Nukutusl\u00e4\u00e4k\u00e4ri",
  "Numerointisihteeri",
  "Nuorempi konstaapeli",
  "N\u00e4ytearkistonhoitaja",
  "N\u00e4\u00f6nk\u00e4yt\u00f6n asiantuntija",
  "Obduktiokoordinaattori",
  "Observaattori",
  "Offset-monistaja",
  "Ohjaaja",
  "Oikaisulautakunnan puheenjohtaja",
  "Oleskelulupak\u00e4sittelij\u00e4",
  "Omistajaohjausyksik\u00f6n johtaja",
  "Ompelija",
  "Opas",
  "Operaatiop\u00e4\u00e4llikk\u00f6",
  "Padonhoitaja",
  "Paikallisjohtaja",
  "Pakolaiskeskuksen johtaja",
  "Palkanlaskentap\u00e4\u00e4llikk\u00f6",
  "Panostaja",
  "Paperikonservaattori",
  "Parturi-kampaaja",
  "Passi- ja maahantulolupavirkailija/toimistovirkailija",
  "Pataljoonan komentaja",
  "Pedagogi",
  "Radioasentaja",
  "Rahakammion johtaja",
  "Raideliikennejohtaja",
  "Rajael\u00e4inl\u00e4\u00e4k\u00e4ri",
  "Rakennemuutosjohtaja",
  "Raportoinnin asiantuntija",
  "Ratainsin\u00f6\u00f6ri",
  "Rauhanturvaaja",
  "Ravintohaastattelija",
  "Rehtori",
  "Saamelaisarkistonhoitaja",
  "Sadehavainnontekij\u00e4",
  "Sairaala-apulainen",
  "Saksan, englannin ja ruotsinkielen lehtori",
  "Salkunhoitaja",
  "Sanomakeskusaliupseeri",
  "Satamap\u00e4\u00e4llikk\u00f6",
  "Seismologi",
  "Sektorijohtaja",
  "Selvittelij\u00e4",
  "Taajuussuunnittelija",
  "Taideamanuenssi",
  "Tallentaja",
  "Tanssija",
  "Tapahtumakoordinaattori",
  "Tarjoilija",
  "Tasa-arvoneuvos",
  "Tavaraliikennelupak\u00e4sittelij\u00e4",
  "Team finland kasvu- ja kansainv\u00e4listymiskoordinaattori",
  "Teemap\u00e4\u00e4llikk\u00f6",
  "Ulkoasiainneuvos",
  "Ulosottojohtaja",
  "Ultra\u00e4\u00e4nihoitaja",
  "Unix-asiantuntija",
  "Upseeri",
  "Urakonsultti",
  "Urheiluohjaaja",
  "Vaaitsija",
  "Vac-yhdyshenkil\u00f6",
  "Vahingonkorvausasiantuntija",
  "Vaihteenhoitaja",
  "Vakuustoimittaja",
  "Valaistusmestari",
  "Vammaisasiamies",
  "Vanhempi tutkijainsin\u00f6\u00f6ri",
  "Vapaa-ajan ohjaaja",
  "Varadekaani",
  "Www-asiantuntija",
  "Yhdenvertaisuusvaltuutettu",
  "Yhteinen tuntiopettaja",
  "Yksikk\u00f6sihteeri",
  "Yleinen edunvalvoja",
  "Yliaktuaari",
  "Yll\u00e4pidon palvelup\u00e4\u00e4llikk\u00f6",
  "Yl\u00e4asteen rehtori",
  "Ymp\u00e4rint\u00f6nsuojeluyksik\u00f6n p\u00e4\u00e4llikk\u00f6",
  "Yritt\u00e4jyysneuvoja",
  "Yva-koordinaattori"
)
#' Job provider for Finnish
#'
#' @inherit JobProvider description details return
#' @family fi
#' @family FI
#' @export
#' @examples
#' x <- JobProvider_fi_FI$new()
#' x$render()
JobProvider_fi_FI <- R6::R6Class(
  inherit = JobProvider,
  "JobProvider_fi_FI",
  private = list(
    locale_ = "fi_FI",
    formats = job_formats_fi_fi
  )
)
