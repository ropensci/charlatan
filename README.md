charlatan
=========


<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R-check](https://github.com/ropensci/charlatan/workflows/R-check/badge.svg)](https://github.com/ropensci/charlatan/actions?query=workflow%3AR-check)
[![cran checks](https://badges.cranchecks.info/worst/charlatan.svg)](https://cloud.r-project.org/web/checks/check_results_charlatan.html)
[![cran status](https://www.r-pkg.org/badges/version/charlatan)](https://cran.r-project.org/package=charlatan)
[![rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/charlatan)](https://github.com/r-hub/cranlogs.app)
[![](https://badges.ropensci.org/94_status.svg)](https://github.com/ropensci/software-review/issues/94)
[![R-CMD-check](https://github.com/ropensci/charlatan/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ropensci/charlatan/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->


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

* Light weight, few dependencies
* Relatively comprehensive types of data, and more being added
* Comprehensive set of languages supported, more being added
* Useful R features such as creating entire fake data.frame's

## Installation

cran version


``` r
install.packages("charlatan")
```

dev version


``` r
remotes::install_github("ropensci/charlatan")
```


``` r
library("charlatan")
set.seed(12345)
```

## high level function

... for all fake data operations


``` r
x <- fraudster()
x$job()
#> [1] "Corporate investment banker"
x$name()
#> [1] "Dr. Garey Hamill"
x$color_name()
#> [1] "Ivory"
```

## locale support


``` r
ch_job(locale = "fr_FR", n = 3)
#> [1] "Tailleur de pierre" "Soigneur"           "Ingénieur"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Stalni sudski vještak" "Viši muzejski pedagog" "Kozmetičar"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Льотчик"  "Дипломат" "Педагог"
ch_job(locale = "zh_TW", n = 3)
#> [1] "行政人員"     "珠心算老師"   "飯店工作人員"
```

## generate a dataset


``` r
ch_generate()
#> # A tibble: 10 × 3
#>    name                    job                                      phone_number
#>    <chr>                   <chr>                                    <chr>       
#>  1 Deana Mraz DDS          Printmaker                               +25(2)69696…
#>  2 Delina Kilback          Administrator, charities/voluntary orga… 04380296996 
#>  3 Mandi Bailey PhD        Systems analyst                          09381790856 
#>  4 Ms. Trista Jacobson DVM Pharmacist, hospital                     214-956-893…
#>  5 King Bartoletti         Teacher, music                           1-312-788-3…
#>  6 Dr. Ike Gerhold         Audiological scientist                   743.877.3448
#>  7 Dr. Tatyanna Blanda DVM Manufacturing systems engineer           09691101846 
#>  8 Antione Grant           Regulatory affairs officer               (406)994-27…
#>  9 Michal Gutmann          Chartered management accountant          (576)667-99…
#> 10 Ross Cartwright PhD     Video editor                             07913227887
```


``` r
ch_generate("job", "phone_number", n = 30)
#> # A tibble: 30 × 2
#>    job                               phone_number        
#>    <chr>                             <chr>               
#>  1 Scientist, research (medical)     +63(0)0054265468    
#>  2 Contracting civil engineer        +97(1)8445952277    
#>  3 Geneticist, molecular             167-865-4109x84457  
#>  4 Equities trader                   737.695.1498x1212   
#>  5 Interior and spatial designer     +49(7)9909862225    
#>  6 Geophysical data processor        1-884-863-2289x58137
#>  7 Ophthalmologist                   060-919-7672x6069   
#>  8 Engineer, agricultural            180-370-0811x1948   
#>  9 Dealer                            1-838-787-0534      
#> 10 Environmental health practitioner 884.224.4881        
#> # ℹ 20 more rows
```

## job


``` r
ch_job()
#> [1] "Set designer"
```


``` r
ch_job(10)
#>  [1] "Actuary"                                    
#>  [2] "Public house manager"                       
#>  [3] "Orthoptist"                                 
#>  [4] "Broadcast engineer"                         
#>  [5] "Scientist, research (physical sciences)"    
#>  [6] "Nature conservation officer"                
#>  [7] "Camera operator"                            
#>  [8] "Psychologist, prison and probation services"
#>  [9] "Engineer, communications"                   
#> [10] "IT sales professional"
```

## credit cards


``` r
ch_credit_card_provider()
#> [1] "JCB 15 digit"
ch_credit_card_provider(n = 4)
#> [1] "VISA 16 digit"               "Voyager"                    
#> [3] "JCB 15 digit"                "Diners Club / Carte Blanche"
```


``` r
ch_credit_card_number(n = 10)
#>  [1] "3009338214996378"    "4713530558707"       "3158362208111956356"
#>  [4] "53355347405525029"   "3720351812179086"    "3044619385256147"   
#>  [7] "3789072424345968"    "4208219491023"       "3096893682997724534"
#> [10] "4419344554874021"
```


``` r
ch_credit_card_security_code()
#> [1] "866"
ch_credit_card_security_code(10)
#>  [1] "351"  "462"  "439"  "1922" "497"  "879"  "998"  "368"  "280"  "337"
```

## Documentation

All providers have documentation available through the help functions.
All providers of the same locales, are linked together, and for every language
we have a generic page, for example```?`dutch-language` ```.

There are three vignettes, about contributing to this project, what {charlatan}
does and a more in depth vignette about creating realistic data.

## Usage in the wild

- eacton/R-Utility-Belt-ggplot2 (https://github.com/eacton/R-Utility-Belt-ggplot2/blob/836a6bd303fbfde4a334d351e0d1c63f71c4ec68/furry_dataset.R)


## Contributors
* Roel M. Hogervorst (https://github.com/rmhogervorst)
* Scott Chamberlain (https://github.com/sckott)
* Kyle Voytovich (https://github.com/kylevoyto)
* Martin Pedersen (https://github.com/MartinMSPedersen)

If you would like to contribute, see [CONTRIBUTING (on github)](.github/CONTRIBUTING.md)

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
