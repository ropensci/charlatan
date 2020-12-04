charlatan
=========



[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R-check](https://github.com/ropensci/charlatan/workflows/R-check/badge.svg)](https://github.com/ropensci/charlatan/actions?query=workflow%3AR-check)
[![cran checks](https://cranchecks.info/badges/worst/charlatan)](https://cranchecks.info/pkgs/charlatan)
[![codecov](https://codecov.io/gh/ropensci/charlatan/branch/master/graph/badge.svg)](https://codecov.io/gh/ropensci/charlatan)
[![cran version](https://www.r-pkg.org/badges/version/charlatan)](https://cran.r-project.org/package=charlatan)
[![rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/charlatan)](https://github.com/r-hub/cranlogs.app)
[![](https://badges.ropensci.org/94_status.svg)](https://github.com/ropensci/onboarding/issues/94)

`charlatan` makes fake data, inspired from and borrowing some code from Python's faker (https://github.com/joke2k/faker)

Make fake data for:

* person names
* jobs
* phone numbers
* colors: names, hex, rgb
* credit cards
* DOIs
* numbers in range and from distributions
* gene sequences
* geographic coordinates
* emails
* URIs, URLs, and their parts
* IP addresses
* more coming ...

Possible use cases for `charlatan`:

* Students in a classroom setting learning any task that needs a dataset.
* People doing simulations/modeling that need some fake data
* Generate fake dataset of users for a database before actual users exist
* Complete missing spots in a dataset
* Generate fake data to replace sensitive real data with before public release
* Create a random set of colors for visualization
* Generate random coordinates for a map
* Get a set of randomly generated DOIs (Digital Object Identifiers) to
assign to fake scholarly artifacts
* Generate fake taxonomic names for a biological dataset
* Get a set of fake sequences to use to test code/software that uses
sequence data

Reasons to use `charlatan`:

* Lite weight, few dependencies
* Relatively comprehensive types of data, and more being added
* Comprehensive set of languages supported, more being added
* Useful R features such as creating entire fake data.frame's

## Installation

cran version


```r
install.packages("charlatan")
```

dev version


```r
remotes::install_github("ropensci/charlatan")
```


```r
library("charlatan")
```

## high level function

... for all fake data operations


```r
x <- fraudster()
x$job()
#> [1] "Toxicologist"
x$name()
#> [1] "Bart Franecki"
x$color_name()
#> [1] "IndianRed"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Ranger/warden"       "Psychotherapist"     "Immigration officer"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Géotechnicien"                               
#> [2] "Professeur documentaliste"                   
#> [3] "Ingénieur efficacité énergétique du bâtiment"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Policajac"                           "Voditelj projekta"                  
#> [3] "Zdravstveno laboratorijski tehničar"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Фотограф" "Зоолог"   "Мірошник"
ch_job(locale = "zh_TW", n = 3)
#> [1] "CNC電腦程式編排人員" "特用化學工程師"      "財務或會計主管"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "DarkSlateGray" "Indigo"        "NavajoWhite"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Червоно-буро-помаранчевий" "Темно-лососевий"          
#> [3] "Блідо-брунатний"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>    name                     job                        phone_number      
#>    <chr>                    <chr>                      <chr>             
#>  1 Mr. Posey Stehr III      Immigration officer        +61(2)7879379341  
#>  2 Ms. Henriette Wiegand    Catering manager           1-580-580-8638x830
#>  3 Irena Russel             Retail banker              +04(7)9699546042  
#>  4 Dr. Daniel Bechtelar DDS Architectural technologist 1-834-397-4529x863
#>  5 Dr. Kasey Davis          Designer, jewellery        351.022.9534x24105
#>  6 London Hansen-Hackett    Graphic designer           +06(5)1147537086  
#>  7 Lilyana Runte            Counsellor                 01692508550       
#>  8 Shaquana Herzog          Theme park manager         667.617.8036x99553
#>  9 Maybell Raynor-Hartmann  Writer                     (616)978-2091     
#> 10 Averie Murphy            Community pharmacist       1-111-441-1704
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>    job                                         phone_number      
#>    <chr>                                       <chr>             
#>  1 Armed forces training and education officer 1-673-556-2393x997
#>  2 Soil scientist                              1-296-630-3970    
#>  3 Optician, dispensing                        1-678-990-8871    
#>  4 Learning disability nurse                   461.171.6544      
#>  5 Editor, commissioning                       05011328685       
#>  6 Designer, exhibition/display                +26(6)2762788230  
#>  7 Financial risk analyst                      1-636-012-0957x508
#>  8 Scientist, biomedical                       719.524.4489      
#>  9 Teacher, English as a foreign language      +54(0)1232453568  
#> 10 Lecturer, higher education                  (853)580-9291x3186
#> # … with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Kara Boehm"
```


```r
ch_name(10)
#>  [1] "Rebecca Monahan"        "Suzann Franecki"        "Debby Nikolaus"        
#>  [4] "Ama Ullrich"            "Arba Volkman"           "Antony Mueller"        
#>  [7] "Ms. Cinnamon Anderson"  "Iver Hermann"           "Shirleen Mills-Schmidt"
#> [10] "Hadley Little"
```


## phone number


```r
ch_phone_number()
#> [1] "+36(0)2342842531"
```


```r
ch_phone_number(10)
#>  [1] "08296463291"        "970.366.6818"       "01055866557"       
#>  [4] "01717878683"        "785-103-9978"       "1-079-787-2377x619"
#>  [7] "323.362.8212"       "1-303-274-5722"     "493.066.7885x8181" 
#> [10] "610.791.1645x3705"
```

## job


```r
ch_job()
#> [1] "Therapeutic radiographer"
```


```r
ch_job(10)
#>  [1] "Environmental manager"               "Designer, blown glass/stained glass"
#>  [3] "Conservator, furniture"              "Copy"                               
#>  [5] "Administrator, local government"     "Investment analyst"                 
#>  [7] "Public librarian"                    "Engineer, materials"                
#>  [9] "Mechanical engineer"                 "Forest/woodland manager"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "VISA 16 digit"
ch_credit_card_provider(n = 4)
#> [1] "VISA 16 digit"    "JCB 15 digit"     "JCB 15 digit"     "American Express"
```


```r
ch_credit_card_number()
#> [1] "561223593016571"
ch_credit_card_number(n = 10)
#>  [1] "54998053024724596"   "869968125239286630"  "210063772612064392" 
#>  [4] "4060155369087233"    "501898051709842"     "3712676203745602"   
#>  [7] "3461064670166497"    "3096517555374787348" "3158434698000233509"
#> [10] "3037311974396594"
```


```r
ch_credit_card_security_code()
#> [1] "811"
ch_credit_card_security_code(10)
#>  [1] "598"  "164"  "0297" "083"  "741"  "519"  "948"  "452"  "6641" "286"
```

## Usage in the wild

- eacton/R-Utility-Belt-ggplot2 (https://github.com/eacton/R-Utility-Belt-ggplot2/blob/836a6bd303fbfde4a334d351e0d1c63f71c4ec68/furry_dataset.R)


## Contributors

* Scott Chamberlain (https://github.com/sckott)
* Kyle Voytovich (https://github.com/kylevoyto)
* Martin Pedersen (https://github.com/MartinMSPedersen)

## similar art

* wakefield (https://github.com/trinker/wakefield)
* ids (https://github.com/richfitz/ids)
* rcorpora (https://github.com/gaborcsardi/rcorpora)
* synthpop (https://cran.r-project.org/package=synthpop)

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this package is released with a [Contributor Code of Conduct](https://ropensci.org/code-of-conduct/). By contributing to this project, you agree to abide by its terms.
