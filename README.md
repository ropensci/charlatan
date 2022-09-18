charlatan
=========



[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R-check](https://github.com/ropensci/charlatan/workflows/R-check/badge.svg)](https://github.com/ropensci/charlatan/actions?query=workflow%3AR-check)
[![cran checks](https://badges.cranchecks.info/worst/charlatan.svg)](https://cloud.r-project.org/web/checks/check_results_charlatan.html)
[![cran version](https://www.r-pkg.org/badges/version/charlatan)](https://cran.r-project.org/package=charlatan)
[![rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/charlatan)](https://github.com/r-hub/cranlogs.app)
[![](https://badges.ropensci.org/94_status.svg)](https://github.com/ropensci/software-review/issues/94)

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
#> [1] "English as a foreign language teacher"
x$name()
#> [1] "Wright Mraz"
x$color_name()
#> [1] "LavenderBlush"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Trade union research officer" "Health and safety inspector" 
#> [3] "Field trials officer"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Attaché de recherche clinique" "Caissier"                     
#> [3] "Cuisinier"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Odvjetnik"                                
#> [2] "Direktor predstavništva"                  
#> [3] "Stručni radnik u ustanovi socijalne skrbi"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Музичний редактор" "Медик"             "Кінорежисер"
ch_job(locale = "zh_TW", n = 3)
#> [1] "運輸物流類主管" "氣象研究員"     "秘書"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "LawnGreen"    "Chocolate"    "DarkSeaGreen"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Бургундський"      "Пастельно-зелений" "Яскраво-рожевий"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>    name                    job                                           phone…¹
#>    <chr>                   <chr>                                         <chr>  
#>  1 Lum Ortiz IV            Aid worker                                    (936)8…
#>  2 Louie McGlynn-Runte     Chartered legal executive (England and Wales) 200.72…
#>  3 Gertha Kutch            Colour technologist                           (044)6…
#>  4 Mikala Wilkinson        Camera operator                               +84(2)…
#>  5 Remy Murazik            Financial risk analyst                        +59(7)…
#>  6 Mylee Rau               Travel agency manager                         254.20…
#>  7 Dr. Rush Rohan          Building services engineer                    1-112-…
#>  8 Demian Bernhard         Theme park manager                            010.85…
#>  9 Kirstin Waters          Radiographer, diagnostic                      +30(2)…
#> 10 Sydney Ullrich-Tremblay Surgeon                                       (646)2…
#> # … with abbreviated variable name ¹​phone_number
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>    job                              phone_number      
#>    <chr>                            <chr>             
#>  1 Mechanical engineer              153.312.5199      
#>  2 Ranger/warden                    007-330-4155      
#>  3 Civil engineer, consulting       1-543-517-7287    
#>  4 Geologist, wellsite              +91(7)5320450059  
#>  5 Designer, graphic                287-769-0864x755  
#>  6 Academic librarian               (202)577-7944     
#>  7 Town planner                     (167)455-5113     
#>  8 Health and safety adviser        (481)130-5107x9975
#>  9 Education officer, environmental 03125756278       
#> 10 Marine scientist                 253.510.8270x938  
#> # … with 20 more rows
#> # ℹ Use `print(n = ...)` to see more rows
```


## person name


```r
ch_name()
#> [1] "Kaelyn Thompson"
```


```r
ch_name(10)
#>  [1] "Casie Torphy-Farrell"  "Dr. Wynona Wuckert"    "Mikeal Gislason I"    
#>  [4] "Efrem Ziemann-Dicki"   "Ms. Tonda Feil MD"     "Cora O'Reilly DVM"    
#>  [7] "Ms. Lois Jaskolski MD" "Michelle Brekke"       "Elvira Yost"          
#> [10] "Sharlene Champlin"
```


## phone number


```r
ch_phone_number()
#> [1] "445-384-7523"
```


```r
ch_phone_number(10)
#>  [1] "765-355-2712x29141"   "424.774.6975x632"     "1-821-890-2166x03716"
#>  [4] "496.650.1631"         "943-513-0050x35632"   "1-334-543-4865"      
#>  [7] "1-537-497-5523x660"   "795-115-7447x72215"   "648-309-1983"        
#> [10] "1-224-158-5149x9159"
```

## job


```r
ch_job()
#> [1] "Psychiatric nurse"
```


```r
ch_job(10)
#>  [1] "Engineer, communications"            
#>  [2] "Technical sales engineer"            
#>  [3] "Ergonomist"                          
#>  [4] "Herpetologist"                       
#>  [5] "Commercial art gallery manager"      
#>  [6] "Medical technical officer"           
#>  [7] "Education administrator"             
#>  [8] "Equality and diversity officer"      
#>  [9] "English as a second language teacher"
#> [10] "Advertising art director"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "Diners Club / Carte Blanche"
ch_credit_card_provider(n = 4)
#> [1] "VISA 16 digit" "JCB 16 digit"  "VISA 16 digit" "VISA 13 digit"
```


```r
ch_credit_card_number()
#> [1] "51946385846521286"
ch_credit_card_number(n = 10)
#>  [1] "51047149051327591"   "561268838677695"     "3088854063643324390"
#>  [4] "3732688220645562"    "3337837069023596145" "3455425348930051"   
#>  [7] "3055978939763811"    "3479436977949447"    "55545676655174828"  
#> [10] "675906122269480"
```


```r
ch_credit_card_security_code()
#> [1] "301"
ch_credit_card_security_code(10)
#>  [1] "556" "503" "049" "853" "157" "570" "565" "255" "094" "134"
```

## Usage in the wild

- eacton/R-Utility-Belt-ggplot2 (https://github.com/eacton/R-Utility-Belt-ggplot2/blob/836a6bd303fbfde4a334d351e0d1c63f71c4ec68/furry_dataset.R)


## Contributors
* Roel M. Hogervorst (https://github.com/rmhogervorst)
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
