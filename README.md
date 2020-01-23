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
devtools::install_github("ropensci/charlatan")
```


```r
library("charlatan")
```

## high level function

... for all fake data operations


```r
x <- fraudster()
x$job()
#> [1] "Counsellor"
x$name()
#> [1] "Darvin Cremin"
x$color_name()
#> [1] "MediumBlue"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Oceanographer"       "Editorial assistant" "Doctor, hospital"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Ingénieur technico-commercial en chimie"
#> [2] "Électricien"
#> [3] "Costumier"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Knjižničarski savjetnik" "Ljekarnik"
#> [3] "Viši dokumentarist"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Будник"      "Ді-джей"     "Стропальник"
ch_job(locale = "zh_TW", n = 3)
#> [1] "升學補習班老師" "電機裝修工"     "工廠主管"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "MediumTurquoise" "Gold"            "MediumSeaGreen"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Бурштиновий"        "Темний зелений чай" "Лавандний"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>    name                      job                             phone_number
#>    <chr>                     <chr>                           <chr>
#>  1 Benjaman Larkin-Armstrong Counsellor                      923-983-4940x91574
#>  2 Racheal Dach DVM          Occupational therapist          1-925-772-2256x8069
#>  3 Akira King                Risk analyst                    (142)237-9628
#>  4 Reinaldo Schultz          Psychotherapist, child          785.204.7067
#>  5 Lindsay Lynch             Environmental education officer 1-288-078-4848
#>  6 Dr. Erasmo Skiles MD      Web designer                    (082)854-8750x029
#>  7 Ashanti Larson            Copywriter, advertising         +80(6)8991398486
#>  8 Ivor Mitchell             TEFL teacher                    030.693.8133x6747
#>  9 Carson Glover I           Barrister's clerk               (831)374-2196x514
#> 10 Miss Vernelle Bogan MD    Analytical chemist              724.121.8530x96966
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>    job                                  phone_number
#>    <chr>                                <chr>
#>  1 Designer, television/film set        488.475.3596x4243
#>  2 Accountant, chartered public finance (424)384-7442
#>  3 Journalist, newspaper                294-560-5473
#>  4 Energy engineer                      1-725-704-8053
#>  5 Equities trader                      096-614-9218
#>  6 Academic librarian                   772.345.9636x260
#>  7 Therapist, occupational              451.934.8034
#>  8 Control and instrumentation engineer (853)001-5088x73262
#>  9 Theatre manager                      097-704-7666
#> 10 Futures trader                       008.893.6805x60223
#> # … with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Oral Shanahan MD"
```


```r
ch_name(10)
#>  [1] "Isham Green-Lueilwitz" "Mr. Lyle Ratke I"      "Erna Corwin"
#>  [4] "Mr. Cliff Watsica MD"  "Miss Hailey Miller"    "Shanice Mitchell"
#>  [7] "Ms. Destany Ernser"    "Marchello Durgan"      "Kinte Hahn II"
#> [10] "Mr. Darius Toy"
```


## phone number


```r
ch_phone_number()
#> [1] "1-422-313-3448"
```


```r
ch_phone_number(10)
#>  [1] "841.506.8166x1987"   "434-583-1853x14412"  "1-382-124-1980x5623"
#>  [4] "+10(7)1902508245"    "1-120-081-4812x2728" "301-207-5865x5637"
#>  [7] "(433)322-0450x2387"  "985.849.9875x207"    "611.503.6235x36120"
#> [10] "051-230-6983"
```

## job


```r
ch_job()
#> [1] "Therapist, nutritional"
```


```r
ch_job(10)
#>  [1] "Metallurgist"
#>  [2] "Armed forces logistics/support/administrative officer"
#>  [3] "Accountant, chartered management"
#>  [4] "Engineer, building services"
#>  [5] "Therapist, occupational"
#>  [6] "Airline pilot"
#>  [7] "Production assistant, television"
#>  [8] "Claims inspector/assessor"
#>  [9] "Buyer, industrial"
#> [10] "Ambulance person"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "VISA 16 digit"
ch_credit_card_provider(n = 4)
#> [1] "VISA 13 digit" "Maestro"       "Voyager"       "VISA 16 digit"
```


```r
ch_credit_card_number()
#> [1] "4133304246308"
ch_credit_card_number(n = 10)
#>  [1] "3047627260530715"    "4929999984859"       "3088456769198827114"
#>  [4] "180075994482286097"  "210036116598661504"  "3706698827642104"
#>  [7] "869913042862902712"  "3030430498221513"    "54276578926456874"
#> [10] "4577275880763322"
```


```r
ch_credit_card_security_code()
#> [1] "5902"
ch_credit_card_security_code(10)
#>  [1] "082"  "6093" "9366" "949"  "414"  "649"  "844"  "146"  "560"  "674"
```

## Usage in the wild

- [eacton/R-Utility-Belt-ggplot2](https://github.com/eacton/R-Utility-Belt-ggplot2/blob/836a6bd303fbfde4a334d351e0d1c63f71c4ec68/furry_dataset.R)


## Contributors

* [Scott Chamberlain](https://github.com/sckott)
* [Kyle Voytovich](https://github.com/kylevoyto)

## similar art

* [wakefield](https://github.com/trinker/wakefield)
* [ids](https://github.com/richfitz/ids)
* [rcorpora](https://github.com/gaborcsardi/rcorpora)
* [synthpop](https://cran.r-project.org/package=synthpop)

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
