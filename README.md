charlatan
=========



[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R-check](https://github.com/ropensci/charlatan/workflows/R-check/badge.svg)](https://github.com/ropensci/charlatan/actions?query=workflow%3AR-check)
[![cran checks](https://badges.cranchecks.info/worst/charlatan.svg)](https://cranchecks.info/pkgs/charlatan)
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
#> [1] "Engineer, drilling"
x$name()
#> [1] "Caro Lakin PhD"
x$color_name()
#> [1] "IndianRed"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Scientist, audiological"             "Waste management officer"           
#> [3] "Scientist, research (life sciences)"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Administrateur de logiciels de laboratoire"
#> [2] "Technicien en lignes haute tension"        
#> [3] "Correcteur"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Ravnatelj školske ustanove" "Nadzornik"                 
#> [3] "Tapetar"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Прокурор"    "Зоолог"      "Кінорежисер"
ch_job(locale = "zh_TW", n = 3)
#> [1] "公共衛生醫師"   "網路安全分析師" "國內業務主管"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "LavenderBlush"  "DarkKhaki"      "LightSlateGray"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Брунато-малиновий" "Чорний"            "Зелений"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>    name                  job                      phone_number        
#>    <chr>                 <chr>                    <chr>               
#>  1 Dr. Brinley Heathcote Administrator, education 344-699-2805x3272   
#>  2 Verena Kreiger        Financial adviser        728-157-7404x87561  
#>  3 Henri Orn             Retail banker            1-662-844-9810x58460
#>  4 Rosetta Crooks MD     Legal secretary          (497)643-3429       
#>  5 Jake Dietrich         Management consultant    607.084.1880x7033   
#>  6 Willow Hammes         Careers adviser          928-441-7070        
#>  7 Obe Bartell-Kilback   Hydrographic surveyor    (138)128-1410       
#>  8 Farris Adams          Educational psychologist 07757181271         
#>  9 Miss Marisela Padberg Market researcher        03759005006         
#> 10 Anissa Hessel DVM     Ecologist                (614)804-0157x94794
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>    job                              phone_number       
#>    <chr>                            <chr>              
#>  1 Training and development officer 1-072-032-0535     
#>  2 Astronomer                       427-872-9987x775   
#>  3 Waste management officer         (268)982-9405      
#>  4 Architect                        820.144.0962x199   
#>  5 Investment banker, operational   1-837-706-2937     
#>  6 Graphic designer                 1-018-356-4924x8881
#>  7 Geoscientist                     +08(1)5845526230   
#>  8 Physiotherapist                  06166119263        
#>  9 Psychologist, educational        460.519.2589x95190 
#> 10 Youth worker                     301-456-6098x4361  
#> # … with 20 more rows
#> # ℹ Use `print(n = ...)` to see more rows
```


## person name


```r
ch_name()
#> [1] "Ms. Geri Dibbert"
```


```r
ch_name(10)
#>  [1] "Elfie Lowe-Wilderman"  "Domenick Considine"    "Dr. Camren Watsica"   
#>  [4] "Latrina Murazik PhD"   "Otha Ernser I"         "Dr. Tinie Feeney DDS" 
#>  [7] "Samuel Bartoletti DDS" "Tinnie Grant"          "Gilberto Frami"       
#> [10] "Kamari Morar"
```


## phone number


```r
ch_phone_number()
#> [1] "050.338.9549"
```


```r
ch_phone_number(10)
#>  [1] "1-556-299-2875x57988" "1-562-577-6459"       "414-678-7525"        
#>  [4] "1-656-416-5550"       "+81(8)7954662531"     "880.056.4080"        
#>  [7] "043-923-3104"         "(556)294-2805"        "700-601-1117x8462"   
#> [10] "1-966-984-4847"
```

## job


```r
ch_job()
#> [1] "Environmental consultant"
```


```r
ch_job(10)
#>  [1] "Radio producer"           "Phytotherapist"          
#>  [3] "Radio producer"           "Insurance underwriter"   
#>  [5] "Engineer, petroleum"      "Manufacturing engineer"  
#>  [7] "Energy engineer"          "Sports coach"            
#>  [9] "Midwife"                  "Customer service manager"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "Mastercard"
ch_credit_card_provider(n = 4)
#> [1] "JCB 16 digit"  "VISA 13 digit" "JCB 16 digit"  "Maestro"
```


```r
ch_credit_card_number()
#> [1] "869962114316215361"
ch_credit_card_number(n = 10)
#>  [1] "6011140774572492701" "3158026216494833066" "4641715936681830"   
#>  [4] "3720669752756583"    "869928662458644072"  "4892715523163"      
#>  [7] "4683097746633"       "869990713833259962"  "3481912523677134"   
#> [10] "3052567847598857"
```


```r
ch_credit_card_security_code()
#> [1] "842"
ch_credit_card_security_code(10)
#>  [1] "386" "529" "141" "058" "015" "961" "141" "473" "444" "575"
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
