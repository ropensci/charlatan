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
#> [1] "Building control surveyor"
x$name()
#> [1] "Dr. Elissa Kassulke"
x$color_name()
#> [1] "MediumBlue"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Purchasing manager"    "Clinical embryologist" "Product manager"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Conducteur d'engins de travaux publics"
#> [2] "Vitrailliste"                          
#> [3] "Installateur en télécoms"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Arhivski tehničar"                                
#> [2] "Član kabinske posade zrakoplova"                  
#> [3] "Diplomirana medicinska sestra/medicinski tehničar"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Зоолог" "Фермер" "Модель"
ch_job(locale = "zh_TW", n = 3)
#> [1] "發包人員"         "運輸交通專業人員" "導遊"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "NavajoWhite" "HoneyDew"    "Aquamarine"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Абрикосовий"              "Міжнародний помаранчевий"
#> [3] "Умбра"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>    name                    job                    phone_number      
#>    <chr>                   <chr>                  <chr>             
#>  1 Mr. Danial Rau          Insurance broker       322.454.0638x452  
#>  2 Ms. Augusta Flatley DDS Air traffic controller 1-412-252-8256x816
#>  3 Ahmed Tromp             Dealer                 738.618.3766      
#>  4 Elle Parker-Pagac       Engineer, petroleum    1-563-823-9417    
#>  5 Nelie Bogisich          Audiological scientist (657)263-8451x928 
#>  6 Dr. Venita Bartoletti   Gaffer                 (701)117-8665x092 
#>  7 Clarke Halvorson        Futures trader         (587)244-0897x4646
#>  8 Keith Marvin            Cytogeneticist         (505)188-7137     
#>  9 Kellan Swift            Primary school teacher 642-015-6852x72341
#> 10 Dr. Shanell Braun       Warden/ranger          586-673-4593x4166
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>    job                                      phone_number       
#>    <chr>                                    <chr>              
#>  1 Geographical information systems officer 00023575617        
#>  2 Industrial/product designer              251.018.7002       
#>  3 Special effects artist                   04931219014        
#>  4 Solicitor                                097.433.7373x183   
#>  5 Research scientist (maths)               1-540-787-9748x7124
#>  6 Retail buyer                             878.896.3368x58978 
#>  7 Engineer, technical sales                09564477842        
#>  8 Volunteer coordinator                    722-926-5502       
#>  9 Museum/gallery exhibitions officer       708.958.6259x3348  
#> 10 Probation officer                        +10(4)9172449874   
#> # … with 20 more rows
#> # ℹ Use `print(n = ...)` to see more rows
```


## person name


```r
ch_name()
#> [1] "Fenton Ryan"
```


```r
ch_name(10)
#>  [1] "Sylva Klein"             "Kanye Muller PhD"       
#>  [3] "Phoebe Altenwerth"       "Alvie McClure"          
#>  [5] "Nils Mann"               "Santiago Koepp"         
#>  [7] "Jeanmarie Graham-Larkin" "Mr. Humberto Davis PhD" 
#>  [9] "Georgine Zulauf"         "Pascal Schaefer-Feest"
```


## phone number


```r
ch_phone_number()
#> [1] "+57(2)2951130202"
```


```r
ch_phone_number(10)
#>  [1] "946.325.0782"         "1-121-631-0553"       "669.979.2952x566"    
#>  [4] "(145)481-9199x487"    "594.225.2171x504"     "(910)235-3893x289"   
#>  [7] "1-660-490-0565x59870" "1-340-087-1768x51605" "554-891-7210x6337"   
#> [10] "750.606.3428"
```

## job


```r
ch_job()
#> [1] "Restaurant manager"
```


```r
ch_job(10)
#>  [1] "Lighting technician, broadcasting/film/video"     
#>  [2] "Chiropodist"                                      
#>  [3] "Wellsite geologist"                               
#>  [4] "Animal nutritionist"                              
#>  [5] "Biomedical scientist"                             
#>  [6] "Risk analyst"                                     
#>  [7] "Historic buildings inspector/conservation officer"
#>  [8] "Intelligence analyst"                             
#>  [9] "Advertising account planner"                      
#> [10] "Engineer, chemical"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "JCB 16 digit"
ch_credit_card_provider(n = 4)
#> [1] "VISA 13 digit" "Voyager"       "JCB 15 digit"  "VISA 13 digit"
```


```r
ch_credit_card_number()
#> [1] "4888106530181587"
ch_credit_card_number(n = 10)
#>  [1] "3528539455946294754" "4206980387974"       "561220125494227"    
#>  [4] "4746311035020536"    "4054993945433911"    "869982827809211136" 
#>  [7] "4280701571800733"    "4068247476037565"    "4085741624331754"   
#> [10] "4714129292203"
```


```r
ch_credit_card_security_code()
#> [1] "599"
ch_credit_card_security_code(10)
#>  [1] "694"  "083"  "7532" "074"  "245"  "354"  "683"  "763"  "998"  "410"
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
