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
set.seed(12345)
```

## high level function

... for all fake data operations


```r
x <- fraudster()
x$job()
#> [1] "Corporate investment banker"
x$name()
#> [1] "Dr. Garey Hamill"
x$color_name()
#> [1] "Ivory"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Therapeutic radiographer" "Teacher, primary school" 
#> [3] "Lobbyist"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Contrôleur de gestion"    "Bactériologiste"         
#> [3] "Attaché d'administration"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Dokumentarist savjetnik" "Maser – kupeljar"       
#> [3] "Voditelj projekta"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Доцент"              "Дипломат"            "Головний меркшейдер"
ch_job(locale = "zh_TW", n = 3)
#> [1] "牙醫師"           "飛安人員"         "機電技師／工程師"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "LightSeaGreen" "Brown"         "Aqua"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Сиваво-зелений"      "Берлінська лазур"    "Сині яйця малинівки"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>    name                    job                              phone_number    
#>    <chr>                   <chr>                            <chr>           
#>  1 King Bartoletti         Trading standards officer        972.438.0296    
#>  2 Dr. Ike Gerhold         Surgeon                          (963)938-1790   
#>  3 Dr. Tatyanna Blanda DVM Estate agent                     856.021.4956x893
#>  4 Antione Grant           Fish farm manager                132.576.3127    
#>  5 Michal Gutmann          Scientist, research (maths)      837.134.4726x743
#>  6 Ross Cartwright PhD     Dealer                           773-448-3969    
#>  7 Michal Balistreri       Phytotherapist                   110-184-6140x699
#>  8 Mabelle Crist           Neurosurgeon                     275-104-0595    
#>  9 Infant Dicki            Armed forces operational officer 766-679-9103x791
#> 10 Karri Heaney            Psychiatric nurse                02278877787
```


```r
ch_generate("job", "phone_number", n = 30)
#> # A tibble: 30 × 2
#>    job                                 phone_number      
#>    <chr>                               <chr>             
#>  1 Interior and spatial designer       005-426-5468x0971 
#>  2 Geophysical data processor          459-522-7741      
#>  3 Ophthalmologist                     678.654.1098x445  
#>  4 Engineer, agricultural              373.769.5149      
#>  5 Dealer                              121.204.9799x098  
#>  6 Environmental health practitioner   1-222-568-8486    
#>  7 Surveyor, hydrographic              228.958.1370x0609 
#>  8 Lobbyist                            (976)726-0690x1803
#>  9 Cytogeneticist                      008.111.9486      
#> 10 Designer, blown glass/stained glass 387-870-5348      
#> # … with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Susannah Batz-Mraz"
```


```r
ch_name(10)
#>  [1] "Deondre Jerde"           "Harriett Goodwin"       
#>  [3] "Kaitlynn Dooley"         "Dr. Alannah Botsford"   
#>  [5] "Koby O'Hara-Goldner"     "Carlene Osinski"        
#>  [7] "Miss Alyson Ankunding"   "Dr. Sommer Schroeder MD"
#>  [9] "Sienna Cummerata"        "Ms. Celena Hermiston"
```


## phone number


```r
ch_phone_number()
#> [1] "872-976-6093x382"
```


```r
ch_phone_number(10)
#>  [1] "+49(9)6373771353"   "1-055-870-8362x208" "+11(9)5635135534"  
#>  [4] "405.525.0245x20351" "(217)908-6461x9385" "(256)144-8907x242" 
#>  [7] "345-963-8208"       "01949102189"        "368.299.7724x532"  
#> [10] "193-445-5487x40228"
```

## job


```r
ch_job()
#> [1] "Warden/ranger"
```


```r
ch_job(10)
#>  [1] "Engineer, biomedical"          "Librarian, public"            
#>  [3] "Designer, television/film set" "Orthoptist"                   
#>  [5] "Actuary"                       "Television floor manager"     
#>  [7] "Surgeon"                       "Programmer, applications"     
#>  [9] "Social researcher"             "Engineer, electrical"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "Voyager"
ch_credit_card_provider(n = 4)
#> [1] "American Express" "Mastercard"       "Voyager"          "VISA 16 digit"
```


```r
ch_credit_card_number()
#> [1] "4149758795998363"
ch_credit_card_number(n = 10)
#>  [1] "3096280733755669659" "3528862994544207088" "55375315925243502"  
#>  [4] "675963691601916"     "4387854850341820"    "6011460885189949222"
#>  [7] "4755578842679336"    "210015419106563146"  "55222480023215177"  
#> [10] "4247284207922"
```


```r
ch_credit_card_security_code()
#> [1] "301"
ch_credit_card_security_code(10)
#>  [1] "386" "978" "998" "267" "238" "036" "965" "356" "502" "786"
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
