charlatan
=========


[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![Build Status](https://travis-ci.org/ropensci/charlatan.svg?branch=master)](https://travis-ci.org/ropensci/charlatan)
[![Build status](https://ci.appveyor.com/api/projects/status/s2r5ltp3kcmxyb49?svg=true)](https://ci.appveyor.com/project/sckott/charlatan)
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
* more coming ...

Possible use cases for `charlatan`:

* Students in a classroom setting learning any task that needs a dataset.
* People doing simulations/modeling that need some fake data
* Generate fake dataset of users for a database before actual users exist
* Complete missing spots in a dataset
* Generate fake data to replace sensitive real data with before public release
* Create a random set of colors for visualization
* Generate random coordinates for a map
* Get a set of randomly generated DOIs (Digial Object Identifiers) to
assign to fake scholarly artifacts
* Generate fake taxonomic names for a biological dataset
* Get a set of fake sequences to use to test code/software that uses
sequence data

Reasons to use `charlatan`:

* Lite weight, very few dependencies, all deps lite weight
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
#> [1] "Best boy"
x$name()
#> [1] "Dr. Adelard Ullrich III"
x$color_name()
#> [1] "PaleGreen"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Psychologist, counselling" "Operations geologist"
#> [3] "Engineer, agricultural"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Expert bilan carbone" "Maréchal"             "Déclarant en douane"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Djelatnik koji obavlja poslove miniranja"
#> [2] "Prvostupnik sanitarnog inženjerstva"
#> [3] "Radnik zaposlen na rukovodećim poslovima"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Слідчий"    "Письменник" "Дерун"
ch_job(locale = "zh_TW", n = 3)
#> [1] "工程研發主管" "生命禮儀師"   "資訊專業人員"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "LightGoldenRodYellow" "Maroon"               "MintCream"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Помаранчево-рожевий" "Синій Клейна"        "Зелено-сірий чай"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>                       name                               job
#>                      <chr>                             <chr>
#>  1 Dr. Francies Stracke MD                  Technical brewer
#>  2      Dr. Darl O'Connell                     Site engineer
#>  3       Deeann Cartwright                      Photographer
#>  4            Jameson Will                      Risk analyst
#>  5   Mr. Nolan Johnston MD                Secretary, company
#>  6             Lori Cassin     Engineer, civil (contracting)
#>  7      Cole Heathcote Jr. Radiation protection practitioner
#>  8            Maud Bradtke                         Homeopath
#>  9      Dr. Aarav Schmeler  Higher education careers adviser
#> 10     Encarnacion Johnson           Diagnostic radiographer
#> # ... with 1 more variables: phone_number <chr>
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>                               job       phone_number
#>                             <chr>              <chr>
#>  1           Engineer, electrical       712.899.2585
#>  2      Public affairs consultant      (778)814-7867
#>  3                  Acupuncturist       228.349.2737
#>  4               Industrial buyer      (877)893-5585
#>  5  Engineer, civil (contracting)       736-920-6001
#>  6                    Adult nurse     1-158-403-4683
#>  7                    Optometrist   +10(3)5619999908
#>  8 Equality and diversity officer     1-103-042-2579
#>  9                    Music tutor     1-434-296-1629
#> 10       Chief Technology Officer 1-866-990-2513x096
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Karri Nolan"
```


```r
ch_name(10)
#>  [1] "Coral Bernier DDS"         "Miss Cleola Wyman MD"
#>  [3] "Eliga Roberts"             "Ellery Toy-Mosciski"
#>  [5] "Ms. Noretta Krajcik"       "Delton Cartwright"
#>  [7] "Leander Cartwright-Cremin" "Andre Fritsch"
#>  [9] "Trudy Osinski"             "Ozell Harber"
```


## phone number


```r
ch_phone_number()
#> [1] "846.677.8207"
```


```r
ch_phone_number(10)
#>  [1] "(041)140-1861x299" "(714)986-0321"     "+14(2)9383900035"
#>  [4] "792-024-7630"      "+98(9)4934404941"  "05682486341"
#>  [7] "311-816-8497"      "158-272-6961"      "09412768076"
#> [10] "925-770-8357x9548"
```

## job


```r
ch_job()
#> [1] "Toxicologist"
```


```r
ch_job(10)
#>  [1] "Radiographer, therapeutic"
#>  [2] "Sports development officer"
#>  [3] "Site engineer"
#>  [4] "Archivist"
#>  [5] "Media planner"
#>  [6] "Armed forces training and education officer"
#>  [7] "Teacher, secondary school"
#>  [8] "Legal secretary"
#>  [9] "Sports administrator"
#> [10] "Biomedical engineer"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "Diners Club / Carte Blanche"
ch_credit_card_provider(n = 4)
#> [1] "JCB 16 digit" "Discover"     "Mastercard"   "JCB 16 digit"
```


```r
ch_credit_card_number()
#> [1] "4393236964879"
ch_credit_card_number(n = 10)
#>  [1] "180092387684893340"  "51512743884706116"   "676205140541326"
#>  [4] "3052225761814848"    "3337762150079667193" "639084767378585"
#>  [7] "3337168650130468408" "52586108990026422"   "51556384483864878"
#> [10] "869950882615296431"
```


```r
ch_credit_card_security_code()
#> [1] "938"
ch_credit_card_security_code(10)
#>  [1] "946"  "994"  "634"  "794"  "682"  "581"  "270"  "697"  "3179" "483"
```



## Meta

* Please [report any issues or bugs](https://github.com/ropensci/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md).
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
