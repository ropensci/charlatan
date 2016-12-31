# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/date_time/__init__.py

dt_centuries <- c('I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII',
               'IX', 'X', 'XI', 'XII', 'XIII', 'XIV', 'XV', 'XVI',
               'XVII', 'XVIII', 'XIX', 'XX', 'XXI')

dt_countries <- list(
    list(c('Europe/Andorra'), 'code' = 'AD', 'continent' = 'Europe', 'name' = 'Andorra', 'capital' = 'Andorra la Vella'),
    list(c('Asia/Kabul'), 'code' = 'AF', 'continent' = 'Asia', 'name' = 'Afghanistan', 'capital' = 'Kabul'),
    list(c('America/Antigua'), 'code' = 'AG', 'continent' = 'North America', 'name' = 'Antigua and Barbuda', 'capital' = "St. John's"),
    list(c('Europe/Tirane'), 'code' = 'AL', 'continent' = 'Europe', 'name' = 'Albania', 'capital' = 'Tirana'),
    list(c('Asia/Yerevan'), 'code' = 'AM', 'continent' = 'Asia', 'name' = 'Armenia', 'capital' = 'Yerevan'),
    list(c('Africa/Luanda'), 'code' = 'AO', 'continent' = 'Africa', 'name' = 'Angola', 'capital' = 'Luanda'),
    list(c('America/Argentina/Buenos_Aires', 'America/Argentina/Cordoba', 'America/Argentina/Jujuy', 'America/Argentina/Tucuman', 'America/Argentina/Catamarca', 'America/Argentina/La_Rioja', 'America/Argentina/San_Juan', 'America/Argentina/Mendoza', 'America/Argentina/Rio_Gallegos', 'America/Argentina/Ushuaia'), 'code' = 'AR', 'continent' = 'South America', 'name' = 'Argentina', 'capital' = 'Buenos Aires'),
    list(c('Europe/Vienna'), 'code' = 'AT', 'continent' = 'Europe', 'name' = 'Austria', 'capital' = 'Vienna'),
    list(c('Australia/Lord_Howe', 'Australia/Hobart', 'Australia/Currie', 'Australia/Melbourne', 'Australia/Sydney', 'Australia/Broken_Hill', 'Australia/Brisbane', 'Australia/Lindeman', 'Australia/Adelaide', 'Australia/Darwin', 'Australia/Perth'), 'code' = 'AU', 'continent' = 'Oceania', 'name' = 'Australia', 'capital' = 'Canberra'),
    list(c('Asia/Baku'), 'code' = 'AZ', 'continent' = 'Asia', 'name' = 'Azerbaijan', 'capital' = 'Baku'),
    list(c('America/Barbados'), 'code' = 'BB', 'continent' = 'North America', 'name' = 'Barbados', 'capital' = 'Bridgetown'),
    list(c('Asia/Dhaka'), 'code' = 'BD', 'continent' = 'Asia', 'name' = 'Bangladesh', 'capital' = 'Dhaka'),
    list(c('Europe/Brussels'), 'code' = 'BE', 'continent' = 'Europe', 'name' = 'Belgium', 'capital' = 'Brussels'),
    list(c('Africa/Ouagadougou'), 'code' = 'BF', 'continent' = 'Africa', 'name' = 'Burkina Faso', 'capital' = 'Ouagadougou'),
    list(c('Europe/Sofia'), 'code' = 'BG', 'continent' = 'Europe', 'name' = 'Bulgaria', 'capital' = 'Sofia'),
    list(c('Asia/Bahrain'), 'code' = 'BH', 'continent' = 'Asia', 'name' = 'Bahrain', 'capital' = 'Manama'),
    list(c('Africa/Bujumbura'), 'code' = 'BI', 'continent' = 'Africa', 'name' = 'Burundi', 'capital' = 'Bujumbura'),
    list(c('Africa/Porto-Novo'), 'code' = 'BJ', 'continent' = 'Africa', 'name' = 'Benin', 'capital' = 'Porto-Novo'),
    list(c('Asia/Brunei'), 'code' = 'BN', 'continent' = 'Asia', 'name' = 'Brunei Darussalam', 'capital' = 'Bandar Seri Begawan'),
    list(c('America/La_Paz'), 'code' = 'BO', 'continent' = 'South America', 'name' = 'Bolivia', 'capital' = 'Sucre'),
    list(c('America/Noronha', 'America/Belem', 'America/Fortaleza', 'America/Recife', 'America/Araguaina', 'America/Maceio', 'America/Bahia', 'America/Sao_Paulo', 'America/Campo_Grande', 'America/Cuiaba', 'America/Porto_Velho', 'America/Boa_Vista', 'America/Manaus', 'America/Eirunepe', 'America/Rio_Branco'), 'code' = 'BR', 'continent' = 'South America', 'name' = 'Brazil', 'capital' = 'Bras\xc3\xadlia'),
    list(c('America/Nassau'), 'code' = 'BS', 'continent' = 'North America', 'name' = 'Bahamas', 'capital' = 'Nassau'),
    list(c('Asia/Thimphu'), 'code' = 'BT', 'continent' = 'Asia', 'name' = 'Bhutan', 'capital' = 'Thimphu'),
    list(c('Africa/Gaborone'), 'code' = 'BW', 'continent' = 'Africa', 'name' = 'Botswana', 'capital' = 'Gaborone'),
    list(c('Europe/Minsk'), 'code' = 'BY', 'continent' = 'Europe', 'name' = 'Belarus', 'capital' = 'Minsk'),
    list(c('America/Belize'), 'code' = 'BZ', 'continent' = 'North America', 'name' = 'Belize', 'capital' = 'Belmopan'),
    list(c('America/St_Johns', 'America/Halifax', 'America/Glace_Bay', 'America/Moncton', 'America/Goose_Bay', 'America/Blanc-Sablon', 'America/Montreal', 'America/Toronto', 'America/Nipigon', 'America/Thunder_Bay', 'America/Pangnirtung', 'America/Iqaluit', 'America/Atikokan', 'America/Rankin_Inlet', 'America/Winnipeg', 'America/Rainy_River', 'America/Cambridge_Bay', 'America/Regina', 'America/Swift_Current', 'America/Edmonton', 'America/Yellowknife', 'America/Inuvik', 'America/Dawson_Creek', 'America/Vancouver', 'America/Whitehorse', 'America/Dawson'), 'code' = 'CA', 'continent' = 'North America', 'name' = 'Canada', 'capital' = 'Ottawa'),
    list(c('Africa/Kinshasa', 'Africa/Lubumbashi'), 'code' = 'CD', 'continent' = 'Africa', 'name' = 'Democratic Republic of the Congo', 'capital' = 'Kinshasa'),
    list(c('Africa/Brazzaville'), 'code' = 'CG', 'continent' = 'Africa', 'name' = 'Republic of the Congo', 'capital' = 'Brazzaville'),
    list(c('Africa/Abidjan'), 'code' = 'CI', 'continent' = 'Africa', 'name' = "C\xc3\xb4te d'Ivoire", 'capital' = 'Yamoussoukro'),
    list(c('America/Santiago', 'Pacific/Easter'), 'code' = 'CL', 'continent' = 'South America', 'name' = 'Chile', 'capital' = 'Santiago'),
    list(c('Africa/Douala'), 'code' = 'CM', 'continent' = 'Africa', 'name' = 'Cameroon', 'capital' = 'Yaound\xc3\xa9'),
    list(c('Asia/Shanghai', 'Asia/Harbin', 'Asia/Chongqing', 'Asia/Urumqi', 'Asia/Kashgar'), 'code' = 'CN', 'continent' = 'Asia', 'name' = "People's Republic of China", 'capital' = 'Beijing'),
    list(c('America/Bogota'), 'code' = 'CO', 'continent' = 'South America', 'name' = 'Colombia', 'capital' = 'Bogot\xc3\xa1'),
    list(c('America/Costa_Rica'), 'code' = 'CR', 'continent' = 'North America', 'name' = 'Costa Rica', 'capital' = 'San Jos\xc3\xa9'),
    list(c('America/Havana'), 'code' = 'CU', 'continent' = 'North America', 'name' = 'Cuba', 'capital' = 'Havana'),
    list(c('Atlantic/Cape_Verde'), 'code' = 'CV', 'continent' = 'Africa', 'name' = 'Cape Verde', 'capital' = 'Praia'),
    list(c('Asia/Nicosia'), 'code' = 'CY', 'continent' = 'Asia', 'name' = 'Cyprus', 'capital' = 'Nicosia'),
    list(c('Europe/Prague'), 'code' = 'CZ', 'continent' = 'Europe', 'name' = 'Czech Republic', 'capital' = 'Prague'),
    list(c('Europe/Berlin'), 'code' = 'DE', 'continent' = 'Europe', 'name' = 'Germany', 'capital' = 'Berlin'),
    list(c('Africa/Djibouti'), 'code' = 'DJ', 'continent' = 'Africa', 'name' = 'Djibouti', 'capital' = 'Djibouti City'),
    list(c('Europe/Copenhagen'), 'code' = 'DK', 'continent' = 'Europe', 'name' = 'Denmark', 'capital' = 'Copenhagen'),
    list(c('America/Dominica'), 'code' = 'DM', 'continent' = 'North America', 'name' = 'Dominica', 'capital' = 'Roseau'),
    list(c('America/Santo_Domingo'), 'code' = 'DO', 'continent' = 'North America', 'name' = 'Dominican Republic', 'capital' = 'Santo Domingo'),
    list(c('America/Guayaquil', 'Pacific/Galapagos'), 'code' = 'EC', 'continent' = 'South America', 'name' = 'Ecuador', 'capital' = 'Quito'),
    list(c('Europe/Tallinn'), 'code' = 'EE', 'continent' = 'Europe', 'name' = 'Estonia', 'capital' = 'Tallinn'),
    list(c('Africa/Cairo'), 'code' = 'EG', 'continent' = 'Africa', 'name' = 'Egypt', 'capital' = 'Cairo'),
    list(c('Africa/Asmera'), 'code' = 'ER', 'continent' = 'Africa', 'name' = 'Eritrea', 'capital' = 'Asmara'),
    list(c('Africa/Addis_Ababa'), 'code' = 'ET', 'continent' = 'Africa', 'name' = 'Ethiopia', 'capital' = 'Addis Ababa'),
    list(c('Europe/Helsinki'), 'code' = 'FI', 'continent' = 'Europe', 'name' = 'Finland', 'capital' = 'Helsinki'),
    list(c('Pacific/Fiji'), 'code' = 'FJ', 'continent' = 'Oceania', 'name' = 'Fiji', 'capital' = 'Suva'),
    list(c('Europe/Paris'), 'code' = 'FR', 'continent' = 'Europe', 'name' = 'France', 'capital' = 'Paris'),
    list(c('Africa/Libreville'), 'code' = 'GA', 'continent' = 'Africa', 'name' = 'Gabon', 'capital' = 'Libreville'),
    list(c('Asia/Tbilisi'), 'code' = 'GE', 'continent' = 'Asia', 'name' = 'Georgia', 'capital' = 'Tbilisi'),
    list(c('Africa/Accra'), 'code' = 'GH', 'continent' = 'Africa', 'name' = 'Ghana', 'capital' = 'Accra'),
    list(c('Africa/Banjul'), 'code' = 'GM', 'continent' = 'Africa', 'name' = 'The Gambia', 'capital' = 'Banjul'),
    list(c('Africa/Conakry'), 'code' = 'GN', 'continent' = 'Africa', 'name' = 'Guinea', 'capital' = 'Conakry'),
    list(c('Europe/Athens'), 'code' = 'GR', 'continent' = 'Europe', 'name' = 'Greece', 'capital' = 'Athens'),
    list(c('America/Guatemala'), 'code' = 'GT', 'continent' = 'North America', 'name' = 'Guatemala', 'capital' = 'Guatemala City'),
    list(c('America/Guatemala'), 'code' = 'GT', 'continent' = 'North America', 'name' = 'Haiti', 'capital' = 'Port-au-Prince'),
    list(c('Africa/Bissau'), 'code' = 'GW', 'continent' = 'Africa', 'name' = 'Guinea-Bissau', 'capital' = 'Bissau'),
    list(c('America/Guyana'), 'code' = 'GY', 'continent' = 'South America', 'name' = 'Guyana', 'capital' = 'Georgetown'),
    list(c('America/Tegucigalpa'), 'code' = 'HN', 'continent' = 'North America', 'name' = 'Honduras', 'capital' = 'Tegucigalpa'),
    list(c('Europe/Budapest'), 'code' = 'HU', 'continent' = 'Europe', 'name' = 'Hungary', 'capital' = 'Budapest'),
    list(c('Asia/Jakarta', 'Asia/Pontianak', 'Asia/Makassar', 'Asia/Jayapura'), 'code' = 'ID', 'continent' = 'Asia', 'name' = 'Indonesia', 'capital' = 'Jakarta'),
    list(c('Europe/Dublin'), 'code' = 'IE', 'continent' = 'Europe', 'name' = 'Republic of Ireland', 'capital' = 'Dublin'),
    list(c('Asia/Jerusalem'), 'code' = 'IL', 'continent' = 'Asia', 'name' = 'Israel', 'capital' = 'Jerusalem'),
    list(c('Asia/Calcutta'), 'code' = 'IN', 'continent' = 'Asia', 'name' = 'India', 'capital' = 'New Delhi'),
    list(c('Asia/Baghdad'), 'code' = 'IQ', 'continent' = 'Asia', 'name' = 'Iraq', 'capital' = 'Baghdad'),
    list(c('Asia/Tehran'), 'code' = 'IR', 'continent' = 'Asia', 'name' = 'Iran', 'capital' = 'Tehran'),
    list(c('Atlantic/Reykjavik'), 'code' = 'IS', 'continent' = 'Europe', 'name' = 'Iceland', 'capital' = 'Reykjav\xc3\xadk'),
    list(c('Europe/Rome'), 'code' = 'IT', 'continent' = 'Europe', 'name' = 'Italy', 'capital' = 'Rome'),
    list(c('America/Jamaica'), 'code' = 'JM', 'continent' = 'North America', 'name' = 'Jamaica', 'capital' = 'Kingston'),
    list(c('Asia/Amman'), 'code' = 'JO', 'continent' = 'Asia', 'name' = 'Jordan', 'capital' = 'Amman'),
    list(c('Asia/Tokyo'), 'code' = 'JP', 'continent' = 'Asia', 'name' = 'Japan', 'capital' = 'Tokyo'),
    list(c('Africa/Nairobi'), 'code' = 'KE', 'continent' = 'Africa', 'name' = 'Kenya', 'capital' = 'Nairobi'),
    list(c('Asia/Bishkek'), 'code' = 'KG', 'continent' = 'Asia', 'name' = 'Kyrgyzstan', 'capital' = 'Bishkek'),
    list(c('Pacific/Tarawa', 'Pacific/Enderbury', 'Pacific/Kiritimati'), 'code' = 'KI', 'continent' = 'Oceania', 'name' = 'Kiribati', 'capital' = 'Tarawa'),
    list(c('Asia/Pyongyang'), 'code' = 'KP', 'continent' = 'Asia', 'name' = 'North Korea', 'capital' = 'Pyongyang'),
    list(c('Asia/Seoul'), 'code' = 'KR', 'continent' = 'Asia', 'name' = 'South Korea', 'capital' = 'Seoul'),
    list(c('Asia/Kuwait'), 'code' = 'KW', 'continent' = 'Asia', 'name' = 'Kuwait', 'capital' = 'Kuwait City'),
    list(c('Asia/Beirut'), 'code' = 'LB', 'continent' = 'Asia', 'name' = 'Lebanon', 'capital' = 'Beirut'),
    list(c('Europe/Vaduz'), 'code' = 'LI', 'continent' = 'Europe', 'name' = 'Liechtenstein', 'capital' = 'Vaduz'),
    list(c('Africa/Monrovia'), 'code' = 'LR', 'continent' = 'Africa', 'name' = 'Liberia', 'capital' = 'Monrovia'),
    list(c('Africa/Maseru'), 'code' = 'LS', 'continent' = 'Africa', 'name' = 'Lesotho', 'capital' = 'Maseru'),
    list(c('Europe/Vilnius'), 'code' = 'LT', 'continent' = 'Europe', 'name' = 'Lithuania', 'capital' = 'Vilnius'),
    list(c('Europe/Luxembourg'), 'code' = 'LU', 'continent' = 'Europe', 'name' = 'Luxembourg', 'capital' = 'Luxembourg City'),
    list(c('Europe/Riga'), 'code' = 'LV', 'continent' = 'Europe', 'name' = 'Latvia', 'capital' = 'Riga'),
    list(c('Africa/Tripoli'), 'code' = 'LY', 'continent' = 'Africa', 'name' = 'Libya', 'capital' = 'Tripoli'),
    list(c('Indian/Antananarivo'), 'code' = 'MG', 'continent' = 'Africa', 'name' = 'Madagascar', 'capital' = 'Antananarivo'),
    list(c('Pacific/Majuro', 'Pacific/Kwajalein'), 'code' = 'MH', 'continent' = 'Oceania', 'name' = 'Marshall Islands', 'capital' = 'Majuro'),
    list(c('Europe/Skopje'), 'code' = 'MK', 'continent' = 'Europe', 'name' = 'Macedonia', 'capital' = 'Skopje'),
    list(c('Africa/Bamako'), 'code' = 'ML', 'continent' = 'Africa', 'name' = 'Mali', 'capital' = 'Bamako'),
    list(c('Asia/Rangoon'), 'code' = 'MM', 'continent' = 'Asia', 'name' = 'Myanmar', 'capital' = 'Naypyidaw'),
    list(c('Asia/Ulaanbaatar', 'Asia/Hovd', 'Asia/Choibalsan'), 'code' = 'MN', 'continent' = 'Asia', 'name' = 'Mongolia', 'capital' = 'Ulaanbaatar'),
    list(c('Africa/Nouakchott'), 'code' = 'MR', 'continent' = 'Africa', 'name' = 'Mauritania', 'capital' = 'Nouakchott'),
    list(c('Europe/Malta'), 'code' = 'MT', 'continent' = 'Europe', 'name' = 'Malta', 'capital' = 'Valletta'),
    list(c('Indian/Mauritius'), 'code' = 'MU', 'continent' = 'Africa', 'name' = 'Mauritius', 'capital' = 'Port Louis'),
    list(c('Indian/Maldives'), 'code' = 'MV', 'continent' = 'Asia', 'name' = 'Maldives', 'capital' = 'Mal\xc3\xa9'),
    list(c('Africa/Blantyre'), 'code' = 'MW', 'continent' = 'Africa', 'name' = 'Malawi', 'capital' = 'Lilongwe'),
    list(c('America/Mexico_City', 'America/Cancun', 'America/Merida', 'America/Monterrey', 'America/Mazatlan', 'America/Chihuahua', 'America/Hermosillo', 'America/Tijuana'), 'code' = 'MX', 'continent' = 'North America', 'name' = 'Mexico', 'capital' = 'Mexico City'),
    list(c('Asia/Kuala_Lumpur', 'Asia/Kuching'), 'code' = 'MY', 'continent' = 'Asia', 'name' = 'Malaysia', 'capital' = 'Kuala Lumpur'),
    list(c('Africa/Maputo'), 'code' = 'MZ', 'continent' = 'Africa', 'name' = 'Mozambique', 'capital' = 'Maputo'),
    list(c('Africa/Windhoek'), 'code' = 'NA', 'continent' = 'Africa', 'name' = 'Namibia', 'capital' = 'Windhoek'),
    list(c('Africa/Niamey'), 'code' = 'NE', 'continent' = 'Africa', 'name' = 'Niger', 'capital' = 'Niamey'),
    list(c('Africa/Lagos'), 'code' = 'NG', 'continent' = 'Africa', 'name' = 'Nigeria', 'capital' = 'Abuja'),
    list(c('America/Managua'), 'code' = 'NI', 'continent' = 'North America', 'name' = 'Nicaragua', 'capital' = 'Managua'),
    list(c('Europe/Amsterdam'), 'code' = 'NL', 'continent' = 'Europe', 'name' = 'Kingdom of the Netherlands', 'capital' = 'Amsterdam'),
    list(c('Europe/Oslo'), 'code' = 'NO', 'continent' = 'Europe', 'name' = 'Norway', 'capital' = 'Oslo'),
    list(c('Asia/Katmandu'), 'code' = 'NP', 'continent' = 'Asia', 'name' = 'Nepal', 'capital' = 'Kathmandu'),
    list(c('Pacific/Nauru'), 'code' = 'NR', 'continent' = 'Oceania', 'name' = 'Nauru', 'capital' = 'Yaren'),
    list(c('Pacific/Auckland', 'Pacific/Chatham'), 'code' = 'NZ', 'continent' = 'Oceania', 'name' = 'New Zealand', 'capital' = 'Wellington'),
    list(c('Asia/Muscat'), 'code' = 'OM', 'continent' = 'Asia', 'name' = 'Oman', 'capital' = 'Muscat'),
    list(c('America/Panama'), 'code' = 'PA', 'continent' = 'North America', 'name' = 'Panama', 'capital' = 'Panama City'),
    list(c('America/Lima'), 'code' = 'PE', 'continent' = 'South America', 'name' = 'Peru', 'capital' = 'Lima'),
    list(c('Pacific/Port_Moresby'), 'code' = 'PG', 'continent' = 'Oceania', 'name' = 'Papua New Guinea', 'capital' = 'Port Moresby'),
    list(c('Asia/Manila'), 'code' = 'PH', 'continent' = 'Asia', 'name' = 'Philippines', 'capital' = 'Manila'),
    list(c('Asia/Karachi'), 'code' = 'PK', 'continent' = 'Asia', 'name' = 'Pakistan', 'capital' = 'Islamabad'),
    list(c('Europe/Warsaw'), 'code' = 'PL', 'continent' = 'Europe', 'name' = 'Poland', 'capital' = 'Warsaw'),
    list(c('Europe/Lisbon', 'Atlantic/Madeira', 'Atlantic/Azores'), 'code' = 'PT', 'continent' = 'Europe', 'name' = 'Portugal', 'capital' = 'Lisbon'),
    list(c('Pacific/Palau'), 'code' = 'PW', 'continent' = 'Oceania', 'name' = 'Palau', 'capital' = 'Ngerulmud'),
    list(c('America/Asuncion'), 'code' = 'PY', 'continent' = 'South America', 'name' = 'Paraguay', 'capital' = 'Asunci\xc3\xb3n'),
    list(c('Asia/Qatar'), 'code' = 'QA', 'continent' = 'Asia', 'name' = 'Qatar', 'capital' = 'Doha'),
    list(c('Europe/Bucharest'), 'code' = 'RO', 'continent' = 'Europe', 'name' = 'Romania', 'capital' = 'Bucharest'),
    list(c('Europe/Kaliningrad', 'Europe/Moscow', 'Europe/Volgograd', 'Europe/Samara', 'Asia/Yekaterinburg', 'Asia/Omsk', 'Asia/Novosibirsk', 'Asia/Krasnoyarsk', 'Asia/Irkutsk', 'Asia/Yakutsk', 'Asia/Vladivostok', 'Asia/Sakhalin', 'Asia/Magadan', 'Asia/Kamchatka', 'Asia/Anadyr'), 'code' = 'RU', 'continent' = 'Europe', 'name' = 'Russia', 'capital' = 'Moscow'),
    list(c('Africa/Kigali'), 'code' = 'RW', 'continent' = 'Africa', 'name' = 'Rwanda', 'capital' = 'Kigali'),
    list(c('Asia/Riyadh'), 'code' = 'SA', 'continent' = 'Asia', 'name' = 'Saudi Arabia', 'capital' = 'Riyadh'),
    list(c('Pacific/Guadalcanal'), 'code' = 'SB', 'continent' = 'Oceania', 'name' = 'Solomon Islands', 'capital' = 'Honiara'),
    list(c('Indian/Mahe'), 'code' = 'SC', 'continent' = 'Africa', 'name' = 'Seychelles', 'capital' = 'Victoria'),
    list(c('Africa/Khartoum'), 'code' = 'SD', 'continent' = 'Africa', 'name' = 'Sudan', 'capital' = 'Khartoum'),
    list(c('Europe/Stockholm'), 'code' = 'SE', 'continent' = 'Europe', 'name' = 'Sweden', 'capital' = 'Stockholm'),
    list(c('Asia/Singapore'), 'code' = 'SG', 'continent' = 'Asia', 'name' = 'Singapore', 'capital' = 'Singapore'),
    list(c('Europe/Ljubljana'), 'code' = 'SI', 'continent' = 'Europe', 'name' = 'Slovenia', 'capital' = 'Ljubljana'),
    list(c('Europe/Bratislava'), 'code' = 'SK', 'continent' = 'Europe', 'name' = 'Slovakia', 'capital' = 'Bratislava'),
    list(c('Africa/Freetown'), 'code' = 'SL', 'continent' = 'Africa', 'name' = 'Sierra Leone', 'capital' = 'Freetown'),
    list(c('Europe/San_Marino'), 'code' = 'SM', 'continent' = 'Europe', 'name' = 'San Marino', 'capital' = 'San Marino'),
    list(c('Africa/Dakar'), 'code' = 'SN', 'continent' = 'Africa', 'name' = 'Senegal', 'capital' = 'Dakar'),
    list(c('Africa/Mogadishu'), 'code' = 'SO', 'continent' = 'Africa', 'name' = 'Somalia', 'capital' = 'Mogadishu'),
    list(c('America/Paramaribo'), 'code' = 'SR', 'continent' = 'South America', 'name' = 'Suriname', 'capital' = 'Paramaribo'),
    list(c('Africa/Sao_Tome'), 'code' = 'ST', 'continent' = 'Africa', 'name' = 'S\xc3\xa3o Tom\xc3\xa9 and Pr\xc3\xadncipe', 'capital' = 'S\xc3\xa3o Tom\xc3\xa9'),
    list(c('Asia/Damascus'), 'code' = 'SY', 'continent' = 'Asia', 'name' = 'Syria', 'capital' = 'Damascus'),
    list(c('Africa/Lome'), 'code' = 'TG', 'continent' = 'Africa', 'name' = 'Togo', 'capital' = 'Lom\xc3\xa9'),
    list(c('Asia/Bangkok'), 'code' = 'TH', 'continent' = 'Asia', 'name' = 'Thailand', 'capital' = 'Bangkok'),
    list(c('Asia/Dushanbe'), 'code' = 'TJ', 'continent' = 'Asia', 'name' = 'Tajikistan', 'capital' = 'Dushanbe'),
    list(c('Asia/Ashgabat'), 'code' = 'TM', 'continent' = 'Asia', 'name' = 'Turkmenistan', 'capital' = 'Ashgabat'),
    list(c('Africa/Tunis'), 'code' = 'TN', 'continent' = 'Africa', 'name' = 'Tunisia', 'capital' = 'Tunis'),
    list(c('Pacific/Tongatapu'), 'code' = 'TO', 'continent' = 'Oceania', 'name' = 'Tonga', 'capital' = 'Nuku\xca\xbbalofa'),
    list(c('Europe/Istanbul'), 'code' = 'TR', 'continent' = 'Asia', 'name' = 'Turkey', 'capital' = 'Ankara'),
    list(c('America/Port_of_Spain'), 'code' = 'TT', 'continent' = 'North America', 'name' = 'Trinidad and Tobago', 'capital' = 'Port of Spain'),
    list(c('Pacific/Funafuti'), 'code' = 'TV', 'continent' = 'Oceania', 'name' = 'Tuvalu', 'capital' = 'Funafuti'),
    list(c('Africa/Dar_es_Salaam'), 'code' = 'TZ', 'continent' = 'Africa', 'name' = 'Tanzania', 'capital' = 'Dodoma'),
    list(c('Europe/Kiev', 'Europe/Uzhgorod', 'Europe/Zaporozhye', 'Europe/Simferopol'), 'code' = 'UA', 'continent' = 'Europe', 'name' = 'Ukraine', 'capital' = 'Kiev'),
    list(c('Africa/Kampala'), 'code' = 'UG', 'continent' = 'Africa', 'name' = 'Uganda', 'capital' = 'Kampala'),
    list(c('America/New_York', 'America/Detroit', 'America/Kentucky/Louisville', 'America/Kentucky/Monticello', 'America/Indiana/Indianapolis', 'America/Indiana/Marengo', 'America/Indiana/Knox', 'America/Indiana/Vevay', 'America/Chicago', 'America/Indiana/Vincennes', 'America/Indiana/Petersburg', 'America/Menominee', 'America/North_Dakota/Center', 'America/North_Dakota/New_Salem', 'America/Denver', 'America/Boise', 'America/Shiprock', 'America/Phoenix', 'America/Los_Angeles', 'America/Anchorage', 'America/Juneau', 'America/Yakutat', 'America/Nome', 'America/Adak', 'Pacific/Honolulu'), 'code' = 'US', 'continent' = 'North America', 'name' = 'United States', 'capital' = 'Washington, D.C.'),
    list(c('America/Montevideo'), 'code' = 'UY', 'continent' = 'South America', 'name' = 'Uruguay', 'capital' = 'Montevideo'),
    list(c('Asia/Samarkand', 'Asia/Tashkent'), 'code' = 'UZ', 'continent' = 'Asia', 'name' = 'Uzbekistan', 'capital' = 'Tashkent'),
    list(c('Europe/Vatican'), 'code' = 'VA', 'continent' = 'Europe', 'name' = 'Vatican City', 'capital' = 'Vatican City'),
    list(c('America/Caracas'), 'code' = 'VE', 'continent' = 'South America', 'name' = 'Venezuela', 'capital' = 'Caracas'),
    list(c('Asia/Saigon'), 'code' = 'VN', 'continent' = 'Asia', 'name' = 'Vietnam', 'capital' = 'Hanoi'),
    list(c('Pacific/Efate'), 'code' = 'VU', 'continent' = 'Oceania', 'name' = 'Vanuatu', 'capital' = 'Port Vila'),
    list(c('Asia/Aden'), 'code' = 'YE', 'continent' = 'Asia', 'name' = 'Yemen', 'capital' = "Sana'a"),
    list(c('Africa/Lusaka'), 'code' = 'ZM', 'continent' = 'Africa', 'name' = 'Zambia', 'capital' = 'Lusaka'),
    list(c('Africa/Harare'), 'code' = 'ZW', 'continent' = 'Africa', 'name' = 'Zimbabwe', 'capital' = 'Harare'),
    list(c('Africa/Algiers'), 'code' = 'DZ', 'continent' = 'Africa', 'name' = 'Algeria', 'capital' = 'Algiers'),
    list(c('Europe/Sarajevo'), 'code' = 'BA', 'continent' = 'Europe', 'name' = 'Bosnia and Herzegovina', 'capital' = 'Sarajevo'),
    list(c('Asia/Phnom_Penh'), 'code' = 'KH', 'continent' = 'Asia', 'name' = 'Cambodia', 'capital' = 'Phnom Penh'),
    list(c('Africa/Bangui'), 'code' = 'CF', 'continent' = 'Africa', 'name' = 'Central African Republic', 'capital' = 'Bangui'),
    list(c('Africa/Ndjamena'), 'code' = 'TD', 'continent' = 'Africa', 'name' = 'Chad', 'capital' = "N'Djamena"),
    list(c('Indian/Comoro'), 'code' = 'KM', 'continent' = 'Africa', 'name' = 'Comoros', 'capital' = 'Moroni'),
    list(c('Europe/Zagreb'), 'code' = 'HR', 'continent' = 'Europe', 'name' = 'Croatia', 'capital' = 'Zagreb'),
    list(c('Asia/Dili'), 'code' = 'TL', 'continent' = 'Asia', 'name' = 'East Timor', 'capital' = 'Dili'),
    list(c('America/El_Salvador'), 'code' = 'SV', 'continent' = 'North America', 'name' = 'El Salvador', 'capital' = 'San Salvador'),
    list(c('Africa/Malabo'), 'code' = 'GQ', 'continent' = 'Africa', 'name' = 'Equatorial Guinea', 'capital' = 'Malabo'),
    list(c('America/Grenada'), 'code' = 'GD', 'continent' = 'North America', 'name' = 'Grenada', 'capital' = "St. George's"),
    list(c('Asia/Almaty', 'Asia/Qyzylorda', 'Asia/Aqtobe', 'Asia/Aqtau', 'Asia/Oral'), 'code' = 'KZ', 'continent' = 'Asia', 'name' = 'Kazakhstan', 'capital' = 'Astana'),
    list(c('Asia/Vientiane'), 'code' = 'LA', 'continent' = 'Asia', 'name' = 'Laos', 'capital' = 'Vientiane'),
    list(c('Pacific/Truk', 'Pacific/Ponape', 'Pacific/Kosrae'), 'code' = 'FM', 'continent' = 'Oceania', 'name' = 'Federated States of Micronesia', 'capital' = 'Palikir'),
    list(c('Europe/Chisinau'), 'code' = 'MD', 'continent' = 'Europe', 'name' = 'Moldova', 'capital' = 'Chi\xc5\x9fin\xc4\x83u'),
    list(c('Europe/Monaco'), 'code' = 'MC', 'continent' = 'Europe', 'name' = 'Monaco', 'capital' = 'Monaco'),
    list(c('Europe/Podgorica'), 'code' = 'ME', 'continent' = 'Europe', 'name' = 'Montenegro', 'capital' = 'Podgorica'),
    list(c('Africa/Casablanca'), 'code' = 'MA', 'continent' = 'Africa', 'name' = 'Morocco', 'capital' = 'Rabat'),
    list(c('America/St_Kitts'), 'code' = 'KN', 'continent' = 'North America', 'name' = 'Saint Kitts and Nevis', 'capital' = 'Basseterre'),
    list(c('America/St_Lucia'), 'code' = 'LC', 'continent' = 'North America', 'name' = 'Saint Lucia', 'capital' = 'Castries'),
    list(c('America/St_Vincent'), 'code' = 'VC', 'continent' = 'North America', 'name' = 'Saint Vincent and the Grenadines', 'capital' = 'Kingstown'),
    list(c('Pacific/Apia'), 'code' = 'WS', 'continent' = 'Oceania', 'name' = 'Samoa', 'capital' = 'Apia'),
    list(c('Europe/Belgrade'), 'code' = 'RS', 'continent' = 'Europe', 'name' = 'Serbia', 'capital' = 'Belgrade'),
    list(c('Africa/Johannesburg'), 'code' = 'ZA', 'continent' = 'Africa', 'name' = 'South Africa', 'capital' = 'Pretoria'),
    list(c('Europe/Madrid', 'Africa/Ceuta', 'Atlantic/Canary'), 'code' = 'ES', 'continent' = 'Europe', 'name' = 'Spain', 'capital' = 'Madrid'),
    list(c('Asia/Colombo'), 'code' = 'LK', 'continent' = 'Asia', 'name' = 'Sri Lanka', 'capital' = 'Sri Jayewardenepura Kotte'),
    list(c('Africa/Mbabane'), 'code' = 'SZ', 'continent' = 'Africa', 'name' = 'Swaziland', 'capital' = 'Mbabane'),
    list(c('Europe/Zurich'), 'code' = 'CH', 'continent' = 'Europe', 'name' = 'Switzerland', 'capital' = 'Bern'),
    list(c('Asia/Dubai'), 'code' = 'AE', 'continent' = 'Asia', 'name' = 'United Arab Emirates', 'capital' = 'Abu Dhabi'),
    list(c('Europe/London'), 'code' = 'GB', 'continent' = 'Europe', 'name' = 'United Kingdom', 'capital' = 'London')
)

# def datetime_to_timestamp(dt):
#     if getattr(dt, 'tzinfo', None) is not None:
#         dt = dt.astimezone(tzlocal())
#     return mktime(dt.timetuple())
#
#
# timedelta_pattern = r''
# for name, sym in [('years', 'y'), ('weeks', 'w'), ('days', 'd'), ('hours', 'h'), ('minutes', 'm'), ('seconds', 's')]:
#     timedelta_pattern += r'((?P<{0}>(?:\+|-)\d+?){1})?'.format(name, sym)


# class Provider(BaseProvider):
#     regex = re.compile(timedelta_pattern)

#     @classmethod
#     def unix_time(cls):
#         """
#         Get a timestamp between January 1, 1970 and now
#         :example 1061306726
#         """
#         return random.randint(0, int(time()))

#     @classmethod
#     def time_delta(cls):
#         """
#         Get a timedelta object
#         """
#         ts = random.randint(0, int(time()))
#         return timedelta(seconds=ts)

#     @classmethod
#     def date_time(cls, tzinfo=None):
#         """
#         Get a datetime object for a date between January 1, 1970 and now
#         :param tzinfo: timezone, instance of datetime.tzinfo subclass
#         :example DateTime('2005-08-16 20:39:21')
#         :return datetime
#         """
#         return datetime.fromtimestamp(cls.unix_time(), tzinfo)

#     @classmethod
#     def date_time_ad(cls, tzinfo=None):
#         """
#         Get a datetime object for a date between January 1, 001 and now
#         :param tzinfo: timezone, instance of datetime.tzinfo subclass
#         :example DateTime('1265-03-22 21:15:52')
#         :return datetime
#         """
#         ts = random.randint(-62135600400, int(time()))
#         # NOTE: using datetime.fromtimestamp(ts) directly will raise
#         #       a "ValueError: timestamp out of range for platform time_t"
#         #       on some platforms due to system C functions;
#         #       see http://stackoverflow.com/a/10588133/2315612
#         return datetime.fromtimestamp(0, tzinfo) + timedelta(seconds=ts)

#     @classmethod
#     def iso8601(cls, tzinfo=None):
#         """
#         :param tzinfo: timezone, instance of datetime.tzinfo subclass
#         :example '2003-10-21T16:05:52+0000'
#         """
#         return cls.date_time(tzinfo).isoformat()

#     @classmethod
#     def date(cls, pattern='%Y-%m-%d'):
#         """
#         Get a date string between January 1, 1970 and now
#         :param pattern format
#         :example '2008-11-27'
#         """
#         return cls.date_time().strftime(pattern)

#     @classmethod
#     def date_object(cls):
#         """
#         Get a date object between January 1, 1970 and now
#         :example datetime.date(2016, 9, 20)
#         """
#         return cls.date_time().date()

#     @classmethod
#     def time(cls, pattern='%H:%M:%S'):
#         """
#         Get a time string (24h format by default)
#         :param pattern format
#         :example '15:02:34'
#         """
#         return cls.date_time().time().strftime(pattern)

#     @classmethod
#     def time_object(cls):
#         """
#         Get a time object
#         :example datetime.time(15, 56, 56, 772876)
#         """
#         return cls.date_time().time()

#     @classmethod
#     def _parse_date_time(cls, text, tzinfo=None):
#         if isinstance(text, (datetime, date, real_datetime, real_date)):
#             return datetime_to_timestamp(text)
#         now = datetime.now(tzinfo)
#         if isinstance(text, timedelta):
#             return datetime_to_timestamp(now - text)
#         if is_string(text):
#             if text == 'now':
#                 return datetime_to_timestamp(datetime.now(tzinfo))
#             parts = cls.regex.match(text)
#             if not parts:
#                 return
#             parts = parts.groupdict()
#             time_params = {}
#             for (name, param) in parts.items():
#                 if param:
#                     time_params[name] = int(param)

#             if 'years' in time_params:
#                 if 'days' not in time_params:
#                     time_params['days'] = 0
#                 time_params['days'] += 365.24 * time_params.pop('years')

#             return datetime_to_timestamp(now + timedelta(**time_params))
#         if isinstance(text, int):
#             return datetime_to_timestamp(now + timedelta(text))
#         raise ValueError("Invalid format for date '{0}'".format(text))

#     @classmethod
#     def date_time_between(cls, start_date='-30y', end_date='now', tzinfo=None):
#         """
#         Get a DateTime object based on a random date between two given dates.
#         Accepts date strings that can be recognized by strtotime().

#         :param start_date Defaults to 30 years ago
#         :param end_date Defaults to "now"
#         :param tzinfo: timezone, instance of datetime.tzinfo subclass
#         :example DateTime('1999-02-02 11:42:52')
#         :return DateTime
#         """
#         start_date = cls._parse_date_time(start_date)
#         end_date = cls._parse_date_time(end_date)
#         timestamp = random.randint(start_date, end_date)
#         return datetime.fromtimestamp(timestamp, tzinfo)

#     @classmethod
#     def date_time_between_dates(cls, datetime_start=None, datetime_end=None, tzinfo=None):
#         """
#         Takes two DateTime objects and returns a random date between the two given dates.
#         Accepts DateTime objects.

#         :param datetime_start DateTime
#         :param datetime_end DateTime
#         :param tzinfo: timezone, instance of datetime.tzinfo subclass
#         :example DateTime('1999-02-02 11:42:52')
#         :return DateTime
#         """
#         if datetime_start is None:
#             datetime_start = datetime.now(tzinfo)

#         if datetime_end is None:
#             datetime_end = datetime.now(tzinfo)

#         timestamp = random.randint(
#             datetime_to_timestamp(datetime_start),
#             datetime_to_timestamp(datetime_end),
#         )
#         return datetime.fromtimestamp(timestamp, tzinfo)

#     @classmethod
#     def date_time_this_century(cls, before_now=True, after_now=False, tzinfo=None):
#         """
#         Gets a DateTime object for the current century.

#         :param before_now: include days in current century before today
#         :param after_now: include days in current century after today
#         :param tzinfo: timezone, instance of datetime.tzinfo subclass
#         :example DateTime('2012-04-04 11:02:02')
#         :return DateTime
#         """
#         now = datetime.now(tzinfo)
#         this_century_start = datetime(now.year - (now.year % 100), 1, 1, tzinfo=tzinfo)
#         next_century_start = datetime(this_century_start.year + 100, 1, 1, tzinfo=tzinfo)

#         if before_now and after_now:
#             return cls.date_time_between_dates(this_century_start, next_century_start, tzinfo)
#         elif not before_now and after_now:
#             return cls.date_time_between_dates(now, next_century_start, tzinfo)
#         elif not after_now and before_now:
#             return cls.date_time_between_dates(this_century_start, now, tzinfo)
#         else:
#             return now

#     @classmethod
#     def date_time_this_decade(cls, before_now=True, after_now=False, tzinfo=None):
#         """
#         Gets a DateTime object for the decade year.

#         :param before_now: include days in current decade before today
#         :param after_now: include days in current decade after today
#         :param tzinfo: timezone, instance of datetime.tzinfo subclass
#         :example DateTime('2012-04-04 11:02:02')
#         :return DateTime
#         """
#         now = datetime.now(tzinfo)
#         this_decade_start = datetime(now.year - (now.year % 10), 1, 1, tzinfo=tzinfo)
#         next_decade_start = datetime(this_decade_start.year + 10, 1, 1, tzinfo=tzinfo)

#         if before_now and after_now:
#             return cls.date_time_between_dates(this_decade_start, next_decade_start, tzinfo)
#         elif not before_now and after_now:
#             return cls.date_time_between_dates(now, next_decade_start, tzinfo)
#         elif not after_now and before_now:
#             return cls.date_time_between_dates(this_decade_start, now, tzinfo)
#         else:
#             return now

#     @classmethod
#     def date_time_this_year(cls, before_now=True, after_now=False, tzinfo=None):
#         """
#         Gets a DateTime object for the current year.

#         :param before_now: include days in current year before today
#         :param after_now: include days in current year after today
#         :param tzinfo: timezone, instance of datetime.tzinfo subclass
#         :example DateTime('2012-04-04 11:02:02')
#         :return DateTime
#         """
#         now = datetime.now(tzinfo)
#         this_year_start = now.replace(month=1, day=1, hour=0, minute=0, second=0, microsecond=0)
#         next_year_start = datetime(now.year + 1, 1, 1, tzinfo=tzinfo)

#         if before_now and after_now:
#             return cls.date_time_between_dates(this_year_start, next_year_start, tzinfo)
#         elif not before_now and after_now:
#             return cls.date_time_between_dates(now, next_year_start, tzinfo)
#         elif not after_now and before_now:
#             return cls.date_time_between_dates(this_year_start, now, tzinfo)
#         else:
#             return now

#     @classmethod
#     def date_time_this_month(cls, before_now=True, after_now=False, tzinfo=None):
#         """
#         Gets a DateTime object for the current month.

#         :param before_now: include days in current month before today
#         :param after_now: include days in current month after today
#         :param tzinfo: timezone, instance of datetime.tzinfo subclass
#         :example DateTime('2012-04-04 11:02:02')
#         :return DateTime
#         """
#         now = datetime.now(tzinfo)
#         this_month_start = now.replace(day=1, hour=0, minute=0, second=0, microsecond=0)

#         next_month_start = this_month_start + relativedelta.relativedelta(months=1)
#         if before_now and after_now:
#             return cls.date_time_between_dates(this_month_start, next_month_start, tzinfo)
#         elif not before_now and after_now:
#             return cls.date_time_between_dates(now, next_month_start, tzinfo)
#         elif not after_now and before_now:
#             return cls.date_time_between_dates(this_month_start, now, tzinfo)
#         else:
#             return now

#     @classmethod
#     def am_pm(cls):
#         return cls.date('%p')

#     @classmethod
#     def day_of_month(cls):
#         return cls.date('%d')

#     @classmethod
#     def day_of_week(cls):
#         return cls.date('%A')

#     @classmethod
#     def month(cls):
#         return cls.date('%m')

#     @classmethod
#     def month_name(cls):
#         return cls.date('%B')

#' DateTimeProvider
#'
#' @include base-provider.R
#' @keywords internal
#' @examples \donttest{
#' z <- DateTimeProvider$new()
#' z$countries
#' z$centuries
#' z$timezone()
#' z$unix_time()
#' z$date_time()
#' z$year()
#' }
DateTimeProvider <- R6::R6Class(
  inherit = BaseProvider,
  'DateTimeProvider',
  public = list(
    centuries = dt_centuries,
    countries = dt_countries,

    unix_time = function() {
      super$random_int(0, as.integer(as.numeric(as.POSIXct(Sys.time()))))
    },

    date = function(pattern) {
      strftime(self$date_time(), pattern)
    },

    date_time = function(tzinfo = NULL) {
      as.POSIXct(self$unix_time(), origin = "1970-01-01", tz = tzinfo)
    },

    date_time_ad = function(tzinfo = NULL) {
      # Get a datetime object for a date between January 1, 001 and now
      # :param tzinfo: timezone, instance of datetime.tzinfo subclass
      # :example DateTime('1265-03-22 21:15:52')
      ts <- super$random_int(-62135600400, as.integer(as.numeric(as.POSIXct(Sys.time()))))
      as.POSIXct(0, origin = "1970-01-01", tz = tzinfo) + timedelta(seconds = ts)
    },

    iso8601 = function(tzinfo = NULL) {
      self$date_time(tzinfo)$isoformat()
    },

    year = function() {
      self$date("%Y")
    },

    century = function() {
      super$random_element(self$cenuries)
    },

    timezone = function() {
      super$random_element(self$countries)
    }
  )
)
