# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/address/en_GB/__init__.py

city_prefixes_en_gb <- c('North', 'East', 'West', 'South', 'New', 'Lake', 'Port')

city_suffixes_en_gb <- c(
  'town',
  'ton',
  'land',
  'ville',
  'berg',
  'burgh',
  'borough',
  'bury',
  'view',
  'port',
  'mouth',
  'stad',
  'furt',
  'chester',
  'mouth',
  'fort',
  'haven',
  'side',
  'shire'
)

building_number_formats_en_gb <- c('#', '##', '###')

street_suffixes_en_gb <- c(
  'alley',
        'avenue',
        'branch',
        'bridge',
        'brook',
        'brooks',
        'burg',
        'burgs',
        'bypass',
        'camp',
        'canyon',
        'cape',
        'causeway',
        'center',
        'centers',
        'circle',
        'circles',
        'cliff',
        'cliffs',
        'club',
        'common',
        'corner',
        'corners',
        'course',
        'court',
        'courts',
        'cove',
        'coves',
        'creek',
        'crescent',
        'crest',
        'crossing',
        'crossroad',
        'curve',
        'dale',
        'dam',
        'divide',
        'drive',
        'drive',
        'drives',
        'estate',
        'estates',
        'expressway',
        'extension',
        'extensions',
        'fall',
        'falls',
        'ferry',
        'field',
        'fields',
        'flat',
        'flats',
        'ford',
        'fords',
        'forest',
        'forge',
        'forges',
        'fork',
        'forks',
        'fort',
        'freeway',
        'garden',
        'gardens',
        'gateway',
        'glen',
        'glens',
        'green',
        'greens',
        'grove',
        'groves',
        'harbor',
        'harbors',
        'haven',
        'heights',
        'highway',
        'hill',
        'hills',
        'hollow',
        'inlet',
        'inlet',
        'island',
        'island',
        'islands',
        'islands',
        'isle',
        'isle',
        'junction',
        'junctions',
        'key',
        'keys',
        'knoll',
        'knolls',
        'lake',
        'lakes',
        'land',
        'landing',
        'lane',
        'light',
        'lights',
        'loaf',
        'lock',
        'locks',
        'locks',
        'lodge',
        'lodge',
        'loop',
        'mall',
        'manor',
        'manors',
        'meadow',
        'meadows',
        'mews',
        'mill',
        'mills',
        'mission',
        'mission',
        'motorway',
        'mount',
        'mountain',
        'mountain',
        'mountains',
        'mountains',
        'neck',
        'orchard',
        'oval',
        'overpass',
        'park',
        'parks',
        'parkway',
        'parkways',
        'pass',
        'passage',
        'path',
        'pike',
        'pine',
        'pines',
        'place',
        'plain',
        'plains',
        'plains',
        'plaza',
        'plaza',
        'point',
        'points',
        'port',
        'port',
        'ports',
        'ports',
        'prairie',
        'prairie',
        'radial',
        'ramp',
        'ranch',
        'rapid',
        'rapids',
        'rest',
        'ridge',
        'ridges',
        'river',
        'road',
        'road',
        'roads',
        'roads',
        'route',
        'row',
        'rue',
        'run',
        'shoal',
        'shoals',
        'shore',
        'shores',
        'skyway',
        'spring',
        'springs',
        'springs',
        'spur',
        'spurs',
        'square',
        'square',
        'squares',
        'squares',
        'station',
        'station',
        'stravenue',
        'stravenue',
        'stream',
        'stream',
        'street',
        'street',
        'streets',
        'summit',
        'summit',
        'terrace',
        'throughway',
        'trace',
        'track',
        'trafficway',
        'trail',
        'trail',
        'tunnel',
        'tunnel',
        'turnpike',
        'turnpike',
        'underpass',
        'union',
        'unions',
        'valley',
        'valleys',
        'via',
        'viaduct',
        'view',
        'views',
        'village',
        'village',
        'villages',
        'ville',
        'vista',
        'vista',
        'walk',
        'walks',
        'wall',
        'way',
        'ways',
        'well',
        'wells'
)

postcode_formats_en_gb <- c(
  'AN NEE',
  'ANN NEE',
  'PN NEE',
  'PNN NEE',
  'ANC NEE',
  'PND NEE'
)

POSTAL_ZONES_ONE_CHAR <- c("B", "E", "G", "L", "M", "N", "S", "W")

POSTAL_ZONES_TWO_CHARS <- c(
  'AB', 'AL', 'BA', 'BB', 'BD', 'BH', 'BL', 'BN', 'BR',
  'BS', 'BT', 'CA', 'CB', 'CF', 'CH', 'CM', 'CO', 'CR', 'CT',
  'CV', 'CW', 'DA', 'DD', 'DE', 'DG', 'DH', 'DL', 'DN', 'DT',
  'DY', 'EC', 'EH', 'EN', 'EX', 'FK', 'FY', 'GL',
  'GY', 'GU', 'HA', 'HD', 'HG', 'HP', 'HR', 'HS', 'HU', 'HX',
  'IG', 'IM', 'IP', 'IV', 'JE', 'KA', 'KT', 'KW', 'KY',
  'LA', 'LD', 'LE', 'LL', 'LN', 'LS', 'LU', 'ME', 'MK',
  'ML', 'NE', 'NG', 'NN', 'NP', 'NR', 'NW', 'OL', 'OX',
  'PA', 'PE', 'PH', 'PL', 'PO', 'PR', 'RG', 'RH', 'RM',
  'SA', 'SE', 'SG', 'SK', 'SL', 'SM', 'SN', 'SO', 'SP', 'SR',
  'SS', 'ST', 'SW', 'SY', 'TA', 'TD', 'TF', 'TN', 'TQ', 'TR',
  'TS', 'TW', 'UB', 'WA', 'WC', 'WD', 'WF', 'WN', 'WR',
  'WS', 'WV', 'YO', 'ZE'
)

locale_data_en_gb<- list(
  postcode_sets = list(
    c(' ', ' '),
    c('N', 1:10),
    c('A', POSTAL_ZONES_ONE_CHAR),
    c('B', 'ABCDEFGHKLMNOPQRSTUVWXY'),
    c('C', 'ABCDEFGHJKSTUW'),
    c('D', 'ABEHMNPRVWXY'),
    c('E', 'ABDEFGHJLNPQRSTUWXYZ'),
    c('P', POSTAL_ZONES_TWO_CHARS)
  )
)

city_formats_en_gb <- c(
  '{{city_prefix}} {{first_name}}{{city_suffix}}',
  '{{city_prefix}} {{first_name}}',
  '{{first_name}}{{city_suffix}}',
  '{{last_name}}{{city_suffix}}'
)
street_name_formats_en_gb <- c(
  '{{first_name}} {{street_suffix}}',
  '{{last_name}} {{street_suffix}}'
)
street_address_formats_en_gb <- c(
  '{{building_number}} {{street_name}}',
  '{{secondary_address}}\n{{street_name}}'
)
address_formats_en_gb <- "{{street_address}}\n{{city}}\n{{postcode}}"
secondary_address_formats_en_gb <- c('Flat #', 'Flat ##', 'Flat ##?', 
  'Studio #', 'Studio ##', 'Studio ##?')