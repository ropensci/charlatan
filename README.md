charlatan
=========



[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Build Status](https://travis-ci.org/ropensci/charlatan.svg?branch=master)](https://travis-ci.org/ropensci/charlatan)
[![Build status](https://ci.appveyor.com/api/projects/status/s2r5ltp3kcmxyb49?svg=true)](https://ci.appveyor.com/project/sckott/charlatan)
[![cran checks](https://cranchecks.info/badges/worst/charlatan)](https://cranchecks.info/pkgs/charlatan)
[![codecov](https://codecov.io/gh/ropensci/charlatan/branch/master/graph/badge.svg)](https://codecov.io/gh/ropensci/charlatan)
[![cran version](https://www.r-pkg.org/badges/version/charlatan)](https://cran.r-project.org/package=charlatan)
[![rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/charlatan)](https://github.com/metacran/cranlogs.app)
[![](https://badges.ropensci.org/94_status.svg)](https://github.com/ropensci/onboarding/issues/94)

`charlatan` makes fake data, inspired from and borrowing some code from Python's [faker](https://github.com/joke2k/faker)

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
#> [1] "Teacher, early years/pre"
x$name()
#> [1] "Ms. Jewell Heller DVM"
x$color_name()
#> [1] "Sienna"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Psychologist, counselling" "Geneticist, molecular"    
#> [3] "Teacher, secondary school"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Directeur d'hôpital"                           
#> [2] "Professeur de lycée professionnel ou technique"
#> [3] "Projectionniste"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Glavni nadzornik"            "Hidrograđevinski  inspektor"
#> [3] "Čuvar prirode"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Модельєр"  "Економіст" "Медик"
ch_job(locale = "zh_TW", n = 3)
#> [1] "廣告設計"            "CNC電腦程式編排人員" "醫事放射師"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "DimGray"   "RoyalBlue" "Pink"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Лазуровий"        "Блідо-пурпуровий" "Карміновий"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>    name                       job                              phone_number     
#>    <chr>                      <chr>                            <chr>            
#>  1 Mr. Dominic Kemmer DVM     Financial trader                 052.745.9960x318 
#>  2 Dr. Ryley Mayer            Insurance account manager        580-091-9526x937 
#>  3 Rick Denesik               Hydrographic surveyor            1-242-288-2630x2…
#>  4 Miss Jacqueline Stokes PhD Surveyor, insurance              +77(8)8775339754 
#>  5 Winifred Kreiger           Research scientist (medical)     321.011.4770x0581
#>  6 Braulio Howe               Forensic psychologist            255.062.9188x707 
#>  7 Miss Michaele Jones PhD    Operations geologist             480-690-6146x308…
#>  8 Elaine Bogan               Dramatherapist                   349.476.3434     
#>  9 Sheena Abshire             Systems developer                00600016387      
#> 10 Pallie Luettgen            Higher education careers adviser 01245001642
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>    job                                   phone_number       
#>    <chr>                                 <chr>              
#>  1 Advice worker                         499.208.6850       
#>  2 Veterinary surgeon                    +30(9)9986602509   
#>  3 English as a foreign language teacher (328)611-3384x7919 
#>  4 Publishing rights manager             (876)751-5809      
#>  5 Waste management officer              239-121-5948x3127  
#>  6 Clinical research associate           433.142.4403       
#>  7 Fisheries officer                     240.932.5389x7573  
#>  8 Science writer                        1-150-055-6653x5490
#>  9 Technical author                      (541)245-2753x2542 
#> 10 Radiographer, diagnostic              08438330095        
#> # … with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Odie McGlynn PhD"
```


```r
ch_name(10)
#>  [1] "Morgan Brown"            "Bernetta Jast DDS"      
#>  [3] "Vada Wiegand"            "Caroline Erdman"        
#>  [5] "Sincere Fahey"           "Rogelio Romaguera-Yundt"
#>  [7] "Luz Gulgowski"           "Jaycie Berge"           
#>  [9] "Miss Vivien Marks PhD"   "Tameka Prosacco"
```


## phone number


```r
ch_phone_number()
#> [1] "668-981-6872"
```


```r
ch_phone_number(10)
#>  [1] "080-416-0639x81495"   "810-141-9608"         "+60(3)6095078897"    
#>  [4] "01663791328"          "+74(5)8258522901"     "1-733-818-3058x44926"
#>  [7] "+08(0)7764725852"     "01801634551"          "04515633735"         
#> [10] "(254)691-1314x322"
```

## job


```r
ch_job()
#> [1] "Surveyor, hydrographic"
```


```r
ch_job(10)
#>  [1] "Personal assistant"                "Librarian, academic"              
#>  [3] "Dentist"                           "Buyer, retail"                    
#>  [5] "Television camera operator"        "Police officer"                   
#>  [7] "Sales executive"                   "Radiation protection practitioner"
#>  [9] "Dance movement psychotherapist"    "Land"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "JCB 16 digit"
ch_credit_card_provider(n = 4)
#> [1] "Mastercard" "Maestro"    "Maestro"    "Discover"
```


```r
ch_credit_card_number()
#> [1] "4159622202993838"
ch_credit_card_number(n = 10)
#>  [1] "55605672551121085"   "3337303178520469618" "869950090941034191" 
#>  [4] "54190783678266223"   "6011932756948016472" "180031313169537800" 
#>  [7] "53046901816538941"   "3036051107840354"    "3112241687269987247"
#> [10] "3528912849653507696"
```


```r
ch_credit_card_security_code()
#> [1] "379"
ch_credit_card_security_code(10)
#>  [1] "634"  "060"  "294"  "459"  "675"  "891"  "5295" "173"  "851"  "2020"
```

## Usage in the wild

- [eacton/R-Utility-Belt-ggplot2](https://github.com/eacton/R-Utility-Belt-ggplot2/blob/836a6bd303fbfde4a334d351e0d1c63f71c4ec68/furry_dataset.R)


## Contributors

* [Scott Chamberlain](https://github.com/sckott)
* [Kyle Voytovich](https://github.com/kylevoyto)
* [Martin Pedersen](https://github.com/MartinMSPedersen)

## similar art

* [wakefield](https://github.com/trinker/wakefield)
* [ids](https://github.com/richfitz/ids)
* [rcorpora](https://github.com/gaborcsardi/rcorpora)
* [synthpop](https://cran.r-project.org/package=synthpop)

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this package is released with a [Contributor Code of Conduct](https://ropensci.org/code-of-conduct/). By contributing to this project, you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
