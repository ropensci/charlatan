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
#> [1] "Journalist, broadcasting"
x$name()
#> [1] "Manson Bahringer"
x$color_name()
#> [1] "SlateGray"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Production assistant, television" "Manufacturing engineer"
#> [3] "Geoscientist"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Ingénieur en R et D en énergies renouvelables"
#> [2] "Technicien en optique de précision"
#> [3] "Chargé des relations publiques"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Restaurator majstor"               "Predavač"
#> [3] "Ovlašteni inženjer građevinarstva"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Юрист"     "Футболіст" "Нотаріус"
ch_job(locale = "zh_TW", n = 3)
#> [1] "泥水小工"     "汽車美容人員" "照顧指導員"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "OrangeRed" "RoyalBlue" "Tomato"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Світло-синій" "Світло-синій" "Бурштиновий"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>    name                 job                                     phone_number
#>    <chr>                <chr>                                   <chr>
#>  1 Bryson Collier       Psychiatric nurse                       02848575811
#>  2 Auther Bauch-Mann    Sports development officer              1-928-629-1098
#>  3 Yee Mann             Administrator, charities/voluntary org… 00055747789
#>  4 Flavia Senger DDS    Engineer, petroleum                     764.123.8829
#>  5 Timmie Funk          Pharmacologist                          +91(1)4463595412
#>  6 Olympia Prosacco     Estate agent                            08121255708
#>  7 Dr. Ruffin Altenwer… Technical author                        00830260460
#>  8 Kaden Schulist PhD   Catering manager                        578.686.1463x11…
#>  9 Kyree Morissette     Programmer, applications                919.757.5013x47…
#> 10 Dr. Cassie Funk      Recruitment consultant                  1-229-251-6641x…
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>    job                                                   phone_number
#>    <chr>                                                 <chr>
#>  1 Nutritional therapist                                 (806)063-1483
#>  2 Secondary school teacher                              260-842-0791
#>  3 Adult guidance worker                                 (950)335-9695
#>  4 Trading standards officer                             (789)724-0122x54521
#>  5 Arboriculturist                                       1-457-393-0622x360
#>  6 Teacher, adult education                              606.906.1542x199
#>  7 Telecommunications researcher                         1-293-002-5448x8188
#>  8 Armed forces logistics/support/administrative officer 423-714-8765x533
#>  9 Telecommunications researcher                         891.582.9799x03590
#> 10 Production designer, theatre/television/film          829.571.5195x953
#> # … with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Deena Walter MD"
```


```r
ch_name(10)
#>  [1] "Leandra Olson DVM"          "Iva Stokes"
#>  [3] "Mrs. Heather Schroeder PhD" "Miss Merry Quigley"
#>  [5] "Isaak Bauch MD"             "Mr. Parley O'Reilly V"
#>  [7] "Cris Torp"                  "Mistie Herman"
#>  [9] "Kori Davis"                 "Dr. Kendall Jones"
```


## phone number


```r
ch_phone_number()
#> [1] "+03(0)6570590151"
```


```r
ch_phone_number(10)
#>  [1] "(012)517-0700x67838"  "1-272-827-4278x1104"  "1-167-876-5950x40367"
#>  [4] "981-637-8155x437"     "270.789.9528"         "815-853-0651x77152"
#>  [7] "144-907-7632x7302"    "03557740196"          "1-393-088-9907"
#> [10] "(729)302-5720"
```

## job


```r
ch_job()
#> [1] "Pilot, airline"
```


```r
ch_job(10)
#>  [1] "Presenter, broadcasting"            "Teacher, music"
#>  [3] "Psychiatrist"                       "Conservator, museum/gallery"
#>  [5] "Illustrator"                        "Public relations account executive"
#>  [7] "Volunteer coordinator"              "Designer, furniture"
#>  [9] "Research scientist (life sciences)" "Doctor, hospital"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "VISA 16 digit"
ch_credit_card_provider(n = 4)
#> [1] "JCB 15 digit"  "VISA 16 digit" "Mastercard"    "Maestro"
```


```r
ch_credit_card_number()
#> [1] "4238224975631474"
ch_credit_card_number(n = 10)
#>  [1] "3413363198114305"    "6011989791405364547" "3044477013710542"
#>  [4] "4485129086911139"    "4911032598227"       "4802432792153632"
#>  [7] "3088162315422127635" "54746971197462691"   "55973572068232546"
#> [10] "3787398080129707"
```


```r
ch_credit_card_security_code()
#> [1] "776"
ch_credit_card_security_code(10)
#>  [1] "989" "820" "240" "124" "266" "516" "642" "473" "140" "682"
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
* Please note that this project is released with a [Contributor Code of Conduct][coc].
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)

[coc]: https://github.com/ropensci/charlatan/blob/master/CODE_OF_CONDUCT.md
