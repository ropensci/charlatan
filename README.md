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
#> [1] "Accountant, chartered"
x$name()
#> [1] "Rosalyn Berge"
x$color_name()
#> [1] "SaddleBrown"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Energy engineer"     "Biomedical engineer" "Cabin crew"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Spécialiste des affaires réglementaires en chimie"
#> [2] "Chargé d'études naturalistes"                     
#> [3] "Ingénieur production en mécanique"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Dokumentarist"                           
#> [2] "Stručni suradnik u predškolskoj ustanovi"
#> [3] "Pregledač vagona"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Складальник" "Психолог"    "Електрик"
ch_job(locale = "zh_TW", n = 3)
#> [1] "商業設計"     "娛樂事業人員" "日式廚師"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "LightCoral" "LightGreen" "Brown"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Синій Клейна" "Червоний"     "Бурштиновий"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>    name                job                              phone_number      
#>    <chr>               <chr>                            <chr>             
#>  1 Eryn Friesen        Education officer, museum        1-112-369-7012x566
#>  2 Katie Herman-Walter Financial trader                 005.938.2589x20920
#>  3 Vicente Mertz       Recruitment consultant           04743829816       
#>  4 Florentino Kiehn    Pharmacologist                   678.897.4173x91600
#>  5 Miss Janay O'Keefe  Production assistant, television 05168743452       
#>  6 Bo Torp             Health and safety inspector      375-455-1811x437  
#>  7 Ewart Wehner        Consulting civil engineer        (032)662-4042x708…
#>  8 Mrs. Brett Torphy   Engineer, land                   218.141.0453      
#>  9 Dr. Hezzie Crist    Electrical engineer              390-729-4668x99745
#> 10 Nasir Kirlin        Health promotion specialist      903-573-8975x42413
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>    job                                   phone_number       
#>    <chr>                                 <chr>              
#>  1 TEFL teacher                          270.623.5377       
#>  2 Engineer, structural                  646.072.1164       
#>  3 Surveyor, land/geomatics              02205572110        
#>  4 Optician, dispensing                  (661)832-6241x552  
#>  5 Education administrator               398.091.8589x283   
#>  6 Health promotion specialist           1-392-380-9439     
#>  7 Medical laboratory scientific officer 533-660-7324       
#>  8 Public relations account executive    505.267.2292x8952  
#>  9 Designer, television/film set         1-687-621-5404x4993
#> 10 Broadcast presenter                   284.869.0060       
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Dr. Trace Paucek"
```


```r
ch_name(10)
#>  [1] "Ms. Savannah Hickle" "Farrah Bayer"        "Roslyn Upton"       
#>  [4] "Pearley Wisozk"      "Miss Alzina Hane"    "Stefan Runte"       
#>  [7] "Dr. Shaylee Von"     "Richie Schowalter"   "Elvin Bailey"       
#> [10] "Marissa Gerlach"
```


## phone number


```r
ch_phone_number()
#> [1] "777.064.5901"
```


```r
ch_phone_number(10)
#>  [1] "06888960467"        "(443)980-6761"      "516.753.6850x8631" 
#>  [4] "03547276672"        "870-472-2879x17047" "1-187-034-5312x104"
#>  [7] "(309)739-2098x608"  "631-587-8491"       "791.141.4061"      
#> [10] "(265)600-8703"
```

## job


```r
ch_job()
#> [1] "Higher education lecturer"
```


```r
ch_job(10)
#>  [1] "Actuary"                          "Administrator, local government" 
#>  [3] "Race relations officer"           "Adult nurse"                     
#>  [5] "Optometrist"                      "Engineer, electronics"           
#>  [7] "Immigration officer"              "Cytogeneticist"                  
#>  [9] "Exercise physiologist"            "Education officer, environmental"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "Maestro"
ch_credit_card_provider(n = 4)
#> [1] "Voyager"          "VISA 16 digit"    "VISA 16 digit"   
#> [4] "American Express"
```


```r
ch_credit_card_number()
#> [1] "3337390179998936975"
ch_credit_card_number(n = 10)
#>  [1] "4186144087035319"    "676356787920083"     "3428496399306990"   
#>  [4] "4422068536379628"    "4549679282912533"    "4366618045376"      
#>  [7] "4617373184622"       "6011518817655950980" "3088479828588119186"
#> [10] "4486361463875038"
```


```r
ch_credit_card_security_code()
#> [1] "215"
ch_credit_card_security_code(10)
#>  [1] "826"  "612"  "531"  "257"  "2063" "034"  "082"  "399"  "099"  "981"
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
