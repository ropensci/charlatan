charlatan
=========



[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R-check](https://github.com/ropensci/charlatan/workflows/R-check/badge.svg)](https://github.com/ropensci/charlatan/actions?query=workflow%3AR-check)
[![cran checks](https://cranchecks.info/badges/worst/charlatan)](https://cranchecks.info/pkgs/charlatan)
[![codecov](https://codecov.io/gh/ropensci/charlatan/branch/master/graph/badge.svg)](https://codecov.io/gh/ropensci/charlatan)
[![cran version](https://www.r-pkg.org/badges/version/charlatan)](https://cran.r-project.org/package=charlatan)
[![rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/charlatan)](https://github.com/metacran/cranlogs.app)
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
#> [1] "Corporate investment banker"
x$name()
#> [1] "Hakeem Orn I"
x$color_name()
#> [1] "MediumPurple"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Editor, commissioning"    "Public relations officer"
#> [3] "Multimedia programmer"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Responsable biométrie"          "Chercheur en biologie du sport"
#> [3] "Pharmacien"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Knjižničar"                             
#> [2] "Prvostupnik radiološke tehnologije"     
#> [3] "Inspektor sigurnosti unutarnje plovidbe"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Прокурор" "Круп'є"   "Диригент"
ch_job(locale = "zh_TW", n = 3)
#> [1] "幼教班老師"   "秘書"         "國內業務人員"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "DarkMagenta" "Red"         "DodgerBlue"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Мандариновий"       "Фіолетово-червоний" "Рожево-лавандний"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>    name                      job                       phone_number       
#>    <chr>                     <chr>                     <chr>              
#>  1 Margarite Kshlerin-Walker Structural engineer       1-558-179-7876     
#>  2 Rishi Waelchi             Surveyor, land/geomatics  (509)709-0229x80237
#>  3 Ms. Sommer Grady          Systems developer         795.104.0595       
#>  4 Leala Hermiston           Solicitor                 1-542-031-5029x6107
#>  5 Miss Elza Schuster MD     Psychologist, counselling 04516480150        
#>  6 Rae McCullough            Counselling psychologist  126-711-8873       
#>  7 Dr. Cristin Pollich       Social researcher         1-524-184-0363     
#>  8 Miss Shannon Goodwin      Music tutor               (644)959-6240x866  
#>  9 Nicolas Hyatt Sr.         Midwife                   1-714-406-0968     
#> 10 Dr. Sandy Herman          Journalist, broadcasting  (475)877-5645
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>    job                             phone_number       
#>    <chr>                           <chr>              
#>  1 Company secretary               (720)005-7715      
#>  2 Personnel officer               1-904-804-0111     
#>  3 Commercial/residential surveyor (934)763-6809x746  
#>  4 Stage manager                   413-276-9049x14356 
#>  5 Video editor                    (789)023-4318x83102
#>  6 Structural engineer             (681)374-5521      
#>  7 Quarry manager                  (409)494-6988      
#>  8 Hydrologist                     631-150-6826x22509 
#>  9 Clothing/textile technologist   480-720-7108x50718 
#> 10 Hospital pharmacist             1-895-986-1251x1241
#> # … with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Edison Nienow"
```


```r
ch_name(10)
#>  [1] "Perla Hickle"          "Jocelyn Waelchi"       "Amasa McCullough"     
#>  [4] "Harper Hane"           "Odin McGlynn-Strosin"  "Brady DuBuque"        
#>  [7] "Dr. Sawyer Jacobi DDS" "Joslyn Stracke MD"     "Dylon Schultz"        
#> [10] "Keila VonRueden"
```


## phone number


```r
ch_phone_number()
#> [1] "838.360.8323x53437"
```


```r
ch_phone_number(10)
#>  [1] "983-736-3176"         "455.641.8419"         "1-788-321-1656x05254"
#>  [4] "588-019-4419"         "459-030-0383x509"     "1-037-990-3554"      
#>  [7] "263.954.2055x2086"    "261.894.8287x56984"   "(125)314-6441"       
#> [10] "+98(2)7818609758"
```

## job


```r
ch_job()
#> [1] "Volunteer coordinator"
```


```r
ch_job(10)
#>  [1] "Make"                              "Designer, interior/spatial"       
#>  [3] "Electronics engineer"              "Archaeologist"                    
#>  [5] "Sales executive"                   "Research officer, political party"
#>  [7] "Insurance underwriter"             "Gaffer"                           
#>  [9] "Housing manager/officer"           "Interpreter"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "JCB 16 digit"
ch_credit_card_provider(n = 4)
#> [1] "JCB 16 digit"  "VISA 16 digit" "VISA 16 digit" "VISA 16 digit"
```


```r
ch_credit_card_number()
#> [1] "55701689964843124"
ch_credit_card_number(n = 10)
#>  [1] "180035305967840440"  "3755222574539890"    "3528205275297265945"
#>  [4] "3008248963024630"    "869994438908061533"  "4189493968914630"   
#>  [7] "3337612534868493014" "3031661079497861"    "3528524615592731923"
#> [10] "6011938025615071630"
```


```r
ch_credit_card_security_code()
#> [1] "403"
ch_credit_card_security_code(10)
#>  [1] "457"  "717"  "434"  "839"  "554"  "030"  "541"  "443"  "7610" "984"
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

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
