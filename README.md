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
#> [1] "Agricultural consultant"
x$name()
#> [1] "Britney Pollich"
x$color_name()
#> [1] "HoneyDew"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Development worker, international aid"
#> [2] "Geoscientist"                         
#> [3] "Engineer, technical sales"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Chef de mission humanitaire" "Entraîneur de chevaux"      
#> [3] "Officier de marine"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Ovlašteni inženjer strojarstva" "Knjižničarski savjetnik"       
#> [3] "Zlatar"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Економіст"   "Модель"      "Палеонтолог"
ch_job(locale = "zh_TW", n = 3)
#> [1] "飛行機師"         "塑膠射出技術人員" "手工包裝工"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "SaddleBrown"  "LemonChiffon" "ForestGreen"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Зелений чай"   "Ніжно-рожевий" "Смарагдовий"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>    name                 job                                     phone_number    
#>    <chr>                <chr>                                   <chr>           
#>  1 Miss Kayleigh Dietr… Lighting technician, broadcasting/film… 500.521.7362x47…
#>  2 Lim O'Kon            Designer, fashion/clothing              179-726-6648    
#>  3 Tamisha Mayert PhD   Sub                                     535.439.1715x11…
#>  4 Jordy Stamm          Soil scientist                          +57(1)2448847839
#>  5 Leighton Langosh     Clinical biochemist                     673.628.3141x63…
#>  6 Bambi Fritsch        Optician, dispensing                    +05(2)9665064998
#>  7 Erlinda Welch        Database administrator                  844-661-0630    
#>  8 Mr. Myer Padberg     Education administrator                 1-961-436-8520  
#>  9 Amin Beahan          Hotel manager                           994.778.2680x64…
#> 10 Derl Kulas IV        Office manager                          237.117.2042x70…
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>    job                                phone_number       
#>    <chr>                              <chr>              
#>  1 Government social research officer 1-233-523-0412x4350
#>  2 Geophysical data processor         1-068-624-4456x3615
#>  3 Civil Service administrator        756.909.1036x6157  
#>  4 Animator                           977-515-5664       
#>  5 Production manager                 +81(8)3608969316   
#>  6 Public librarian                   (433)179-5585      
#>  7 Health visitor                     (979)259-6778x85903
#>  8 Higher education lecturer          045.270.9911x946   
#>  9 Web designer                       1-819-943-8977x8767
#> 10 Audiological scientist             411.429.8116x1221  
#> # … with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Marcellus Wintheiser"
```


```r
ch_name(10)
#>  [1] "Leia Greenholt PhD"        "Tatyana Renner-Bartoletti"
#>  [3] "Leonia Wolff DVM"          "Berneice Marvin-Zulauf"   
#>  [5] "Dr. Reggie Reichert Sr."   "Valentina Fisher"         
#>  [7] "Alena King"                "Mabelle Brakus"           
#>  [9] "Tyreke D'Amore-Klein"      "Clarine Mraz PhD"
```


## phone number


```r
ch_phone_number()
#> [1] "391.480.9016x29138"
```


```r
ch_phone_number(10)
#>  [1] "1-444-462-8908"       "1-607-225-7080"       "1-042-282-7832x489"  
#>  [4] "1-187-719-1456"       "+62(9)2775060147"     "09880850028"         
#>  [7] "477.760.3248x0189"    "100-214-2675"         "(636)600-3735x7625"  
#> [10] "1-972-824-8726x55089"
```

## job


```r
ch_job()
#> [1] "Recycling officer"
```


```r
ch_job(10)
#>  [1] "Metallurgist"                         
#>  [2] "Trade mark attorney"                  
#>  [3] "Printmaker"                           
#>  [4] "Editor, commissioning"                
#>  [5] "Product/process development scientist"
#>  [6] "Personnel officer"                    
#>  [7] "Art gallery manager"                  
#>  [8] "Nurse, mental health"                 
#>  [9] "Leisure centre manager"               
#> [10] "Biochemist, clinical"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "Maestro"
ch_credit_card_provider(n = 4)
#> [1] "JCB 15 digit"                "Voyager"                    
#> [3] "JCB 15 digit"                "Diners Club / Carte Blanche"
```


```r
ch_credit_card_number()
#> [1] "55822361446116206"
ch_credit_card_number(n = 10)
#>  [1] "3498363999948883"   "180067076908985096" "4062017321928"     
#>  [4] "4170398299942"      "4527661145377"      "51638673599454307" 
#>  [7] "4854103984796010"   "4618290138974861"   "4502776360832164"  
#> [10] "54706214706241050"
```


```r
ch_credit_card_security_code()
#> [1] "751"
ch_credit_card_security_code(10)
#>  [1] "119"  "680"  "432"  "254"  "888"  "285"  "743"  "284"  "5914" "286"
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
