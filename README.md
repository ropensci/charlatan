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


```r
install.packages("charlatan")
```

dev version


```r
remotes::install_github("ropensci/charlatan")
```


```r
library("charlatan")
#> Error in library("charlatan"): there is no package called 'charlatan'
set.seed(12345)
```

## high level function

... for all fake data operations


```r
x <- fraudster()
#> Error in fraudster(): could not find function "fraudster"
x$job()
#> Error in eval(expr, envir, enclos): object 'x' not found
x$name()
#> Error in eval(expr, envir, enclos): object 'x' not found
x$color_name()
#> Error in eval(expr, envir, enclos): object 'x' not found
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> Error in ch_job(locale = "en_US", n = 3): could not find function "ch_job"
ch_job(locale = "fr_FR", n = 3)
#> Error in ch_job(locale = "fr_FR", n = 3): could not find function "ch_job"
ch_job(locale = "hr_HR", n = 3)
#> Error in ch_job(locale = "hr_HR", n = 3): could not find function "ch_job"
ch_job(locale = "uk_UA", n = 3)
#> Error in ch_job(locale = "uk_UA", n = 3): could not find function "ch_job"
ch_job(locale = "zh_TW", n = 3)
#> Error in ch_job(locale = "zh_TW", n = 3): could not find function "ch_job"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> Error in ch_color_name(locale = "en_US", n = 3): could not find function "ch_color_name"
ch_color_name(locale = "uk_UA", n = 3)
#> Error in ch_color_name(locale = "uk_UA", n = 3): could not find function "ch_color_name"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> Error in ch_generate(): could not find function "ch_generate"
```


```r
ch_generate("job", "phone_number", n = 30)
#> Error in ch_generate("job", "phone_number", n = 30): could not find function "ch_generate"
```


## person name


```r
ch_name()
#> Error in ch_name(): could not find function "ch_name"
```


```r
ch_name(10)
#> Error in ch_name(10): could not find function "ch_name"
```


## phone number


```r
ch_phone_number()
#> Error in ch_phone_number(): could not find function "ch_phone_number"
```


```r
ch_phone_number(10)
#> Error in ch_phone_number(10): could not find function "ch_phone_number"
```

## job


```r
ch_job()
#> Error in ch_job(): could not find function "ch_job"
```


```r
ch_job(10)
#> Error in ch_job(10): could not find function "ch_job"
```

## credit cards


```r
ch_credit_card_provider()
#> Error in ch_credit_card_provider(): could not find function "ch_credit_card_provider"
ch_credit_card_provider(n = 4)
#> Error in ch_credit_card_provider(n = 4): could not find function "ch_credit_card_provider"
```


```r
ch_credit_card_number()
#> Error in ch_credit_card_number(): could not find function "ch_credit_card_number"
ch_credit_card_number(n = 10)
#> Error in ch_credit_card_number(n = 10): could not find function "ch_credit_card_number"
```


```r
ch_credit_card_security_code()
#> Error in ch_credit_card_security_code(): could not find function "ch_credit_card_security_code"
ch_credit_card_security_code(10)
#> Error in ch_credit_card_security_code(10): could not find function "ch_credit_card_security_code"
```

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
