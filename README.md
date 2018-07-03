charlatan
=========



[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![Build Status](https://travis-ci.org/ropensci/charlatan.svg?branch=master)](https://travis-ci.org/ropensci/charlatan)
[![Build status](https://ci.appveyor.com/api/projects/status/s2r5ltp3kcmxyb49?svg=true)](https://ci.appveyor.com/project/sckott/charlatan)
[![cran checks](https://cranchecks.info/badges/worst/charlatan)](https://cranchecks.info/pkgs/charlatan)
[![codecov](https://codecov.io/gh/ropensci/charlatan/branch/master/graph/badge.svg)](https://codecov.io/gh/ropensci/charlatan)
[![cran version](https://www.r-pkg.org/badges/version/charlatan)](https://cran.r-project.org/package=charlatan)
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
#> [1] "Copywriter, advertising"
x$name()
#> [1] "Saniyah Oberbrunner"
x$color_name()
#> [1] "DeepSkyBlue"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Editor, magazine features" "Special effects artist"   
#> [3] "Landscape architect"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Scénariste"          "Collecteur de fonds" "Maroquinier"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Čuvar"                                             
#> [2] "Dokumentarist"                                     
#> [3] "Upravitelj prijevoza (osoba odgovorna za prijevoz)"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Бізнесмен"  "Антрополог" "Кіноактор"
ch_job(locale = "zh_TW", n = 3)
#> [1] "服裝／皮包／鞋類設計" "排版人員"             "照顧指導員"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "MediumVioletRed" "Red"             "PeachPuff"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Кукурудзяний"   "Синя пил"       "Ясно-лазуровий"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>    name                 job                           phone_number       
#>    <chr>                <chr>                         <chr>              
#>  1 Sigurd Bashirian Sr. Soil scientist                (353)600-7909x3810 
#>  2 Dante Weissnat       Media planner                 (954)791-8975x45814
#>  3 Mira Graham MD       Designer, textile             968.058.0015       
#>  4 Wong Corkery         Herpetologist                 06628694790        
#>  5 Harlan Kautzer       Lawyer                        111.582.7123       
#>  6 Ramiro Mohr-Mann     Telecommunications researcher (047)016-5147x80731
#>  7 Matilda Marks DVM    Farm manager                  1-622-482-5872x5917
#>  8 Duard Herman         Education administrator       1-349-536-7256x051 
#>  9 Nim Ziemann-King     Conservator, museum/gallery   (975)441-3408      
#> 10 Oral Moen            Doctor, hospital              (112)766-2230
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>    job                      phone_number       
#>    <chr>                    <chr>              
#>  1 Surveyor, rural practice 146.492.6772x9344  
#>  2 Engineer, manufacturing  707-158-2445       
#>  3 Games developer          (044)462-2331x40960
#>  4 Phytotherapist           804.113.8131x13872 
#>  5 Therapist, music         05074848503        
#>  6 Theme park manager       (658)815-7056x8683 
#>  7 Secretary, company       00788952880        
#>  8 Facilities manager       176.571.5865       
#>  9 Camera operator          918-220-0620x02664 
#> 10 Learning mentor          1-463-793-9705x4358
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Dustan Welch"
```


```r
ch_name(10)
#>  [1] "Else Hodkiewicz"     "Drema Douglas"       "Dr. Kamilah Roberts"
#>  [4] "Lesley Cronin"       "Violet Hermann DDS"  "Dr. Harold Pouros V"
#>  [7] "Harlow Johns"        "Bynum Jaskolski"     "Philo Tromp"        
#> [10] "Jarad Grady-Crooks"
```


## phone number


```r
ch_phone_number()
#> [1] "+24(0)6622290284"
```


```r
ch_phone_number(10)
#>  [1] "949.165.3100x8947"  "513-360-1681x1101"  "1-008-153-5409"    
#>  [4] "01642315316"        "01638176585"        "(111)328-4365x3830"
#>  [7] "+83(9)5001132878"   "(404)149-4301"      "1-138-847-7304x193"
#> [10] "(395)415-6171x1206"
```

## job


```r
ch_job()
#> [1] "Publishing copy"
```


```r
ch_job(10)
#>  [1] "Charity officer"                  
#>  [2] "Arts development officer"         
#>  [3] "Agricultural engineer"            
#>  [4] "Structural engineer"              
#>  [5] "Radiographer, diagnostic"         
#>  [6] "Quantity surveyor"                
#>  [7] "Planning and development surveyor"
#>  [8] "Music tutor"                      
#>  [9] "Psychologist, occupational"       
#> [10] "Farm manager"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "VISA 16 digit"
ch_credit_card_provider(n = 4)
#> [1] "JCB 16 digit"                "VISA 13 digit"              
#> [3] "Diners Club / Carte Blanche" "JCB 16 digit"
```


```r
ch_credit_card_number()
#> [1] "4346049017313636"
ch_credit_card_number(n = 10)
#>  [1] "639053354268343"     "53319468699106980"   "3112683942940146787"
#>  [4] "210021139657488566"  "676320345856585"     "3158516238933856356"
#>  [7] "675954203207482"     "3337829395422815699" "3337638252657030208"
#> [10] "502038645873902"
```


```r
ch_credit_card_security_code()
#> [1] "594"
ch_credit_card_security_code(10)
#>  [1] "253"  "008"  "699"  "817"  "924"  "888"  "5281" "422"  "328"  "904"
```

## Usage in the wild

- [eacton/R-Utility-Belt-ggplot2](https://github.com/eacton/R-Utility-Belt-ggplot2/blob/836a6bd303fbfde4a334d351e0d1c63f71c4ec68/furry_dataset.R)


## Contributors

* [Scott Chamberlain](https://github.com/sckott)
* [Kyle Voytovich](https://github.com/kylevoyto)

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
