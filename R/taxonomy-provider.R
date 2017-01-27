tax_genera <- c('Acanthophyllum','Achillea','Achyrocline','Acmella','Aconitum',
  'Acroceras','Acrostichum','Actinophlebia','Adenophorus','Adenopus','Adiscanthus',
  'Aegilops','Aeonium','Aethionema','Aglaomorpha','Alansmia','Alectryon','Alhagi',
  'Allochrusa','Alocasia','Aloina','Aloinella','Alseodaphne','Amarenus','Ambrosia',
  'Ampelocissus','Amphymenium','Amsonia','Anacampseros','Anaphyllopsis','Andromeda',
  'Andryala','Anemia','Aniba','Anictangium','Anisopappus','Anoectochilus',
  'Anomobryum','Anthoceros','Antholoma','Antiphytum','Antirhea','Antrocaryon',
  'Aosa','Aphananthe','Apinella','Arcuatopterus','Argemone','Argyrochosma',
  'Argyrothamnia','Asarum','Asclepias','Aspasia','Asperula','Aspidonepsis',
  'Asplenidictyum','Asplenium','Aster','Astragalus','Astroloma','Asystasia',
  'Attalea','Baijiania','Baillaudea','Bakeridesia','Ballota','Bartsia','Bathmium',
  'Bencomia','Benthamia','Bersama','Bertiera','Bethencourtia','Blechum','Blumenbachia',
  'Blyttia','Bohadschia','Brachyscias','Brachystelma','Brickellia','Bromopsis','Bromus',
  'Bryobrothera','Bryonia','Bulbostylis','Buxus','Caelestina','Calathea','Calea',
  'Calicotome','Calypogeia','Camptochaete','Castilleja','Caylusea','Cayratia',
  'Ceanothus','Cephalorhizum','Cerasus','Cestrum','Chesneya','Chileranthemum',
  'Chiloglottis','Chloropatane','Chomelia','Christella','Chrysochlamys','Chrysopogon',
  'Chrysoscias','Chusquea','Cladocolea','Claoxylon','Clavija','Cocconerion','Cocculus',
  'Cochlearia','Codonopsis','Coelostegia','Colpodium','Colysis','Commelina',
  'Condylopodium','Coniogramme','Cordylanthus','Corydalis','Costularia','Coussapoa',
  'Cracca','Craibia','Crepidorhopalon','Crocus','Crossostemma','Croton','Cryptocoryne',
  'Cryptogynolejeunea','Cullen','Cullumia','Cyanea','Cymopterus','Cynometra',
  'Dacryodes','Dactylorhiza','Dampiera','Danthoniopsis','Dasispermum','Daviesia',
  'Deeringia','Deiregyne','Delphinium','Dendroceros','Desmanthus','Desmocladus',
  'Desmodium','Dialium','Diaphananthe','Dichopogon','Dicraeia','Dicranum',
  'Dicrocaulon','Diflugossa','Dimerodontium','Diospyros','Diplophyllum',
  'Diporochna','Dissochaeta','Ditrichum','Doryphora','Draba','Dracaena',
  'Drosera','Dryopolystichum','Drypetes','Dufrenoya','Dyckia','Dysoxylum',
  'Ebenus','Echinops','Ectropothecium','Elegia','Elettariopsis','Elisanthe',
  'Ellipanthus','Elymotrigia','Elytrigia','Encalypta','Encholirium',
  'Endlicheria','Epacris','Erechtites','Erepsia','Erigeron','Eriobotrya',
  'Eriocoryne','Eriosorus','Eucalyptus','Eucharis','Eugenia','Eustachys',
  'Evonymopsis','Excoecaria','Fagara','Fagelia','Fagonia','Fargesia',
  'Faurea','Felicia','Ferocactus','Ficinia','Fontinalis','Forsteronia',
  'Gaillardia','Galedupa','Galenia','Gastrodia','Gentianella','Glyptopetalum',
  'Goebelia','Gollania','Gonospermum','Gordonia','Graffenrieda','Gustavia',
  'Gymnobalanus','Gyroweisia','Hallia','Harrisia','Haworthia','Helemonium',
  'Helia','Heliotropium','Helonoma','Herniaria','Hesperis','Heteroflorum',
  'Heteromma','Heterostemon','Hexalobus','Hippeastrum','Hippocratea','Holostigma',
  'Huperzia','Hygrobiella','Hygrohypnum','Hymenidium','Hymenophyllum',
  'Hyoscyamus','Hyptis','Ianhedgea','Inuleae','Isoetella','Jaegeria',
  'Jamesonia','Jumellea','Jungia','Kalanchoe','Kalmiopsis','Kania','Kleinia',
  'Kosteletzkya','Lacaena','Lachemilla','Lagerstroemia','Lagoseris',
  'Lannea','Lansium','Lantana','Lapathum','Lasiacis','Lavatera','Lecythis',
  'Leiomela','Leontodon','Lepidagathis','Leptarrhena','Lessertia',
  'Lethedon','Lewisia','Ligusticum','Limnia','Linaria','Lindmania','Liparia',
  'Lippia','Lissanthe','Litsea','Lomanodia','Loricaria','Luckhoffia','Lysiana',
  'Lysinema','Lysipomia','Macranthera','Macrozamia','Maddenia','Malapoenna',
  'Malva','Mascagnia','Mauria','Mayna','Medicago','Meineckia','Melastomastrum',
  'Melicytus','Meriania','Metahygrobiella','Meteorium','Microcos',
  'Microctenidium','Microlicia','Microtropis','Mirbelia','Modecca',
  'Molinaea','Mollugo','Monosalpinx','Moraea','Mormodes','Morus',
  'Mostacillastrum','Mulgedium','Muricococcum','Narcissus','Nassella',
  'Neblinantha','Neoapaloxylon','Neolitsea','Neostapfiella','Neottia',
  'Nephelium','Nephromeria','Nicotiana','Noccaea','Normanbya','Oberonia',
  'Oedicladium','Oenocarpus','Oldfieldia','Ophrys','Orchicoeloglossum',
  'Origanum','Ossaea','Pachira','Pachyveria','Paederota','Papuechites',
  'Parahebe','Pariana','Pastinaca','Pelekium','Peltoboykinia','Penstemon',
  'Pera','Perebea','Perissolobus','Phaulanthus','Philibertia','Phyla',
  'Phymaspermum','Pichleria','Piptocarpha','Piptomeris','Piratinera',
  'Pistacia','Plagiobryum','Plantago','Platystele','Plectanthera','Plectronia',
  'Pleioblastus','Pleurothyrium','Podotheca','Polycarena','Polypodium',
  'Polytrichadelphus','Poranopsis','Porella','Porotrichum','Preissia',
  'Prinos','Prosaptia','Prunus','Psephellus','Pseudanthus','Pseudocephalozia',
  'Psidium','Psilolepus','Psittacanthus','Psylliostachys','Pterobryon',
  'Pulmonaria','Pycnocycla','Pyrostria','Raddia','Rafflesia','Randia',
  'Raphanus','Rennellia','Retiniphyllum','Rhizomnium','Ribes','Riedelia',
  'Rinorea','Rinzia','Rohmooa','Rosulabryum','Rumohra','Salix','Salsola',
  'Santiria','Sapium','Saprosma','Saurauia','Scaphochlamys','Sceletium',
  'Schizostachyum','Schoutenia','Sciuro-hypnum','Sclerophylax','Scorzonera',
  'Sedum','Seligeria','Senecio','Sertuernera','Sesamum','Sisyrinchium',
  'Smallanthus','Soleirolia','Solms-laubachia','Spermacoce','Sphaerocephalus',
  'Sphaeropteris','Sphaerostigma','Spiesia','Spilanthes','Spinifex',
  'Splachnobryum','Sprekelia','Stachys','Stalagmitis','Staurogyne',
  'Stellaria','Stenandrium','Stephaniellidium','Sterculia','Stevia',
  'Stissera','Strychnos','Stylochiton','Styphelia','Succisa','Syncarpha',
  'Syngonium','Synnema','Tachigali','Talinum','Tanaecium','Terebinthina',
  'Terminalia','Tetracera','Thamnium','Thecacoris','Thelymitra','Themeda',
  'Themistoclesia','Thibaudia','Thuidiopsis','Tibouchina','Tilia','Treculia',
  'Triaenophora','Trichilia','Trichodesma','Trifolium','Trigonospora',
  'Trimorpha','Tripleurothemis','Trisepalum','Tristemon','Tylimanthus',
  'Tylophora','Urceocharis','Urera','Urostigma','Verbena','Vernonanthura',
  'Vesicularia','Viburnum','Viscum','Voacanga','Vriesea','Waitzia',
  'Warczewiczella','Weingartia','Windmannia','Wissadula','Wulffia',
  'Xolantha','Xylopicrum','Xysmalobium','Zamia','Zelkova')

tax_epithets <- c('abbeokutae','ackermani','adolphii','adunca','aegilicum',
  'afzelii','alatipes','alba-compacta','albenensis','albomarginata',
  'alcicorne','allamanoi','anamensis','anatuyana','angavokeliense','angulare',
  'angustata','annum','apiculatus','aralensis','areitiana','arentsii','argurica',
  'aridus','armentalis','asperifolium','asthmatica','atrata','atrovaginata',
  'aurantius','aurea','aurosicus','bangrooana','barbata','barrelieri',
  'bathyphylla','bauchiensis','bernieriana','blumeana','bojeri','bolanderi',
  'boldinghii','borbonicum','brachyura','bracteosum','breidleri','brevicaudata',
  'brevifolia','brevipedunculata','brideliifolius','buccinatorium','bucharica',
  'budleiaefolium','bullata','buseri','cacharensis','callipyge','callistophyllum',
  'caloptera','calycantha','camptocaulon','campylosepalum','camschaticum',
  'canariensis','candollei','capuronii','cardiocarpa','casei','celebica',
  'cercophyllus','chamaedryoides','chrysanthum','chungthangensis','churchillii',
  'clavula','claytoni','clematidifolia','coccinea','colaniae','comata','comatus',
  'commixtiforme','concinna','concinnatus','conjunctifolium','consanguinea',
  'corcovadensis','cordatum','cordifolia','corneri','coronaria','costaricana',
  'coultousii','crassilimba','crassivenia','cruzensis','cryandra','cumandae',
  'curvatus','cuspidatus','cuspididens','cyatheoides','cyathiformis','daemia',
  'dahuricum','dalzellii','damazioi','daniel-jimenezii','dapsilis','daralagesicus',
  'daviesii','decorticans','delevoyi','deltoidea','denarieana','densiflora',
  'denutatum','desmantha','desolaticola','dewevrei','diaeolum','diarthrodes',
  'dicarpa','diemii','dimistum','distans','distincta','districta','dodsonii',
  'draboides','draneosa','drucei','duidae','duthiei','ebenifera','ebracteatum',
  'ecalyculatus','edanoii','edelbergii','egena','egregia','ehrenbergii','ekmanii',
  'elastica','emirnense','engleri','epileuca','equatorialis','eramangensis',
  'erioclados','estevesii','euantha','exscapa','falcarioides','fasigera',
  'fengjiensis','ferrariensis','firma','flabellifera','flaccidum','flagellaris',
  'flamula','flavorubellum','flocciflora','florulentus','fosteri','fradini',
  'francesiana','franchetii','fritschii','gallica','galpinii','galushkoi',
  'garrettii','gasparrinii','gaudichaudii','gemmulosus','gerardii',
  'gerlandianum','gharoensis','gibbosum','glechomifolia','globosum','glomeriflora',
  'glutinosus','godana','goldsacki','gomesiana','gongshanensis','gorenkensis',
  'graciliflorum','greatrexii','grossheimii','grypoacanthoides','guanshuanus',
  'guevarana','guianense','guttulifera','halaensis','harmandii','hederifolia',
  'helenae','henricii','heterocarpa','heterodoxa','hetrusca','hippolyti',
  'hirta','hirtum','hochreutineri','hockii','homblei','horsfieldii','hougasii',
  'humifusa','hyoserifolium','inaequalifolia','incanus','insolitum','insulana',
  'ionodesme','irgisensis','irifica','ixodes','jackiana','jasarum','jassajarae',
  'jean-mulleri','jonesii','jubata','junghuhniana','kajmaktzalanicus',
  'kalimatina','kertesziae','kiirunense','kingii','kosvinskiense','kovacevii',
  'kunthiana','kwangoensis','kwangtungense','lanata','lanzae','laruotteana',
  'lasionema','laxiflora','laxifoliata','leiocarpus','leonae','leprosa',
  'leptopedicellata','leratii','leucohybos','leucosticton','levynsiae',
  'lhotzkyanum','liebertiana','lilacina','linophylla','lobata','loherianum',
  'looseri','looserii','lopezpalaciosii','loretiana','lucida','luisense',
  'luxurians','macerenica','macrostipulata','madrensis','magnifolium',
  'majungense','mandakatense','manongarivensis','marattioides','marifolia',
  'medicaginis-sativae','megalanthum','megaphylla','melanogona','memoria',
  'meyeri','mira','misantlense','mohriana','monachinoi','mongolica',
  'monsonensis','multicarpelatus','multiflorum','muschleri','myosuroides',
  'mysorense','mzimbana','navicularis','neapolitana','nebrownii','nelumbifolia',
  'nematoloba','nevicensis','nevlingii','nothofagicola','nowackiana',
  'nudicaulis','nummularia','nunu','nuspiculum','nutans','obanensis',
  'obcordatifolia','obovatum','ocellata','odontolipes','omeiensis',
  'ophthalmica','oplites','oppositiflora','oppositifolia','orbinaxa','oreodoxa',
  'orurensis','otomana','outeniquense','outeniquensis','oxyacanthum',
  'oxyacanthus','oxyodonta','pallescens','pallidissimum','paludosiformis',
  'panjaoense','paramilloensis','parvulum','pasqualei','patagonica','patagua',
  'pectinata','penangiana','pentamytera','peripea','pervilleanum','petaloidea',
  'pilmaiquen','pinnatisecta','planadensis','platyloma','plumaeformis',
  'poculifera','podocarpifolia','polium','polyandrum','polygyna','polymorphus',
  'ponsiae','popocatepecuana','portoricensis','poteriifolium','privigna',
  'propinqua','pseudo-parthenium','pseudohypnoides','pseudonobilis',
  'pseudopulcher','pseudopulcherrimus','pterocarpa','pulchellus','pulchra',
  'puncticulata','purpuripes','pygmaeus','pylzowianum','pythiusa',
  'quassiifolium','querimbense','radschirdensis','radula','reclinatum',
  'rectifolium','rectinervis','remotum','resecta','reticulatum','revoluta',
  'rhaphidostegum','rhinanthoides','rhomboglossa','rigidifolia','rivularis',
  'rodriguezii','rojasiana','roseata','rubro-villosa','rubropilosa',
  'ruddianum','rugulosum','russelliae','ryeae','sagittifera','saksenanus',
  'salicifolium','sambiranoensis','sanchezii','saxatile','schaubertii',
  'schinziana','schizoglossoides','schottii','schreberi','sciadendron',
  'sclerocarpum','sclerochlaena','scottioides','seidenfadenii','selebica',
  'selengensis','seljukorum','semigremlii','sergentii','serrata',
  'serrulata','sessilifructa','setifolia','setosa','shungolensis',
  'shuttleworthiana','sidiifolia','silvanum','silvestris','simplicifolia',
  'smolikanum','sochensis','sohayakiense','solenopteris','sphaericum',
  'stahlii','stenosemioides','stipularis','stipulata','stylospermum',
  'styriacum','suavis','subcordata','subcoriacea','subflexuosum',
  'subobtusum','subrepletum','subrosum','subserratum','subtorquatum',
  'subtorquescens','sulcitana','sylvatica','talaverae','talbotii',
  'tambalomaensis','tangutica','tenuiflorus','theezans','tisseranti',
  'tmolaeus','tottus','traversiana','trematodes','trichophorus',
  'tristyla','tubiflora','tulearensis','tundrae','turubalense',
  'uipongensis','ulei','ulicis','ulotricha','umbelliforme','undata',
  'urosepala','valdiviae','validissima','vallesiaca','veitchii',
  'verecundus','verrucosum','vieillardi','vigilans','virginica',
  'virginicus','viscosa','wadoodii','wagapensis','waldemarii','walkeri',
  'wattsii','weinmannii','wilkensii','wittrockii','wolfii','xantholeuca',
  'yukonensis','zangezurus')

#' TaxonomyProvider
#'
#' @export
#' @keywords internal
#' @details names taken from Theplantlist. 500 genera names and 500
#' epithets were chosen at random from the set of 10,000 names in the
#' dataset in the \code{taxize} package. Theplantlist is, as it says on the
#' tin, composed of plant names - so these fake names are derived from
#' plant names if that matters to you.
#' @section Taxonomic authority:
#' Randomly, the taxonomic authority is in parentheses - which represents
#' that the given authority was not the original authority.
#' @examples
#' (z <- TaxonomyProvider$new())
#' z$genus()
#' z$epithet()
#' z$species()
#' z$species(authority = TRUE)
#' z$species(authority = TRUE, date = TRUE)
TaxonomyProvider <- R6::R6Class(
  inherit = BaseProvider,
  'TaxonomyProvider',
  public = list(
    genera = tax_genera,
    epithets = tax_epithets,

    genus = function() {
      super$random_element(self$genera)
    },

    epithet = function() {
      super$random_element(self$epithets)
    },

    species = function(authority = FALSE, date = FALSE) {
      name <- paste(
        super$random_element(self$genera),
        super$random_element(self$epithets)
      )
      if (authority) {
        lname <- super$random_element(PersonProvider$new()$person$last_names)
        if (date) {
          lname <- paste(lname, DateTimeProvider$new()$year(), sep = ", ")
        }
        if (sample(c(TRUE, FALSE), size = 1)) lname <- sprintf("(%s)", lname)
        name <- paste(name, lname)
      }
      return(name)
    }
  )
)
