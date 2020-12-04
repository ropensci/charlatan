AddressProvider_es_ES <- R6::R6Class(
  inherit = AddressProvider,
  'AddressProvider_es_ES',
  lock_objects = FALSE,
  public = list(
    state_name = function() {
      super$random_element(self$states)
    },
    street_prefix = function() {
      super$random_element(self$street_prefixes)
    },
    secondary_address = function() {
      super$numerify(
        super$random_element(self$secondary_address_formats))
    },
    state = function() {
      super$random_element(self$states)
    },
    region = function() {
      super$random_element(self$regions)
    },
    building_number_formats = c('%', '%#', '%#', '%#', '%##'),
    street_prefixes = c(
      'Plaza', 'Calle', 'Avenida', 'Via', 'Vial', 'Rambla', 'Glorieta',
      'Urbanización', 'Callejón', 'Cañada', 'Alameda', 'Acceso', 'C.',
      'Ronda', 'Pasaje', 'Cuesta', 'Pasadizo', 'Paseo', 'Camino'
    ),
    postcode_formats = '#####',
    states = c(
      'Álava',
      'Albacete',
      'Alicante',
      'Almería',
      'Asturias',
      'Ávila',
      'Badajoz',
      'Baleares',
      'Barcelona',
      'Burgos',
      'Cáceres',
      'Cádiz',
      'Cantabria',
      'Castellón',
      'Ceuta',
      'Ciudad',
      'Córdoba',
      'Cuenca',
      'Girona',
      'Granada',
      'Guadalajara',
      'Guipúzcoa',
      'Huelva',
      'Huesca',
      'Jaén',
      'La Coruña',
      'La Rioja',
      'Las Palmas',
      'León',
      'Lleida',
      'Lugo',
      'Madrid',
      'Málaga',
      'Melilla',
      'Murcia',
      'Navarra',
      'Ourense',
      'Palencia',
      'Pontevedra',
      'Salamanca',
      'Santa Cruz de Tenerife',
      'Segovia',
      'Sevilla',
      'Soria',
      'Tarragona',
      'Teruel',
      'Toledo',
      'Valencia',
      'Valladolid',
      'Vizcaya',
      'Zamora',
      'Zaragoza'
    ),

    # Source:
    # https://administracionelectronica.gob.es/ctt/resources/Soluciones
    # /238/Descargas/Catalogo-de-Comunidades-Autonomas.xlsx
    regions = c(
      'Andalucía',
      'Aragón',
      'Principado de Asturias',
      'Illes Balears',
      'Canarias',
      'Cantabria',
      'Castilla y León',
      'Castilla-La Mancha',
      'Cataluña',
      'Comunitat Valenciana',
      'Extremadura',
      'Galicia',
      'Comunidad de Madrid',
      'Región de Murcia',
      'Comunidad Foral de Navarra',
      'País Vasco',
      'La Rioja',
      'Ciudad Autónoma de Ceuta',
      'Ciudad Autónoma de Melilla'
    ),

    city_formats = '{{state_name}}',

    street_name_formats = c(
      '{{street_prefixes}} {{first_name}} {{last_name}}',
      '{{street_prefixes}} de {{first_name}} {{last_name}}'
    ),

    street_address_formats = c(
      '{{street_name}} {{building_number}}',
      '{{street_name}} {{building_number}} {{secondary_address}} '
    ),

    address_formats = "{{street_address}}\n{{city}}, {{postcode}}",

    secondary_address_formats = c('Apt. ##', 'Piso #', 'Puerta #')
  )
)
