charlatan
=========



[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
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
#> [1] "Engineer, communications"
x$name()
#> [1] "Ms. Fleeta Bashirian"
x$color_name()
#> [1] "Aquamarine"
```

## locale support

Adding more locales through time, e.g.,

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Investment banker, operational" "Psychologist, forensic"        
#> [3] "Magazine features editor"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Diététicien"                       
#> [2] "Auteur interprète"                 
#> [3] "Ingénieur maintenance aéronautique"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Voditelj skele u nacionalnoj plovidbi"
#> [2] "Čuvar prirode"                        
#> [3] "Viši arhivist"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Режисер"   "Математик" "Ріелтор"
ch_job(locale = "zh_TW", n = 3)
#> [1] "多媒體開發主管"   "公共衛生醫師"     "產品企劃開發人員"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "MediumSlateBlue" "Chocolate"       "HotPink"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Морквяний"          "Яскраво-фіолетовий" "Брунато-малиновий"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 x 3
#>    name                    job                        phone_number        
#>    <chr>                   <chr>                      <chr>               
#>  1 Hervey Luettgen         Consulting civil engineer  (135)742-8104x9887  
#>  2 Mr. Deontae Herzog      Further education lecturer 426.369.0824        
#>  3 Vicki Denesik           Solicitor, Scotland        1-535-887-8338x39579
#>  4 Mrs. Elvera Heidenreich Secretary/administrator    577.988.6970x0455   
#>  5 Bambi Sanford           Equities trader            1-861-301-3087x38656
#>  6 Garrison Jones          Field seismologist         824-865-3964        
#>  7 Alia Grant              Occupational hygienist     08896842450         
#>  8 Kyree Koss              Equities trader            (086)781-0334       
#>  9 Bama Christiansen DDS   Forensic scientist         582-048-8116        
#> 10 Alfie Koepp             Police officer             (645)984-3611x1223
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 x 2
#>    job                         phone_number       
#>    <chr>                       <chr>              
#>  1 Youth worker                615-108-9165       
#>  2 Charity officer             1-917-206-3061x001 
#>  3 Museum/gallery curator      08799787859        
#>  4 Social researcher           (436)081-1417x20183
#>  5 Ship broker                 840-520-7103       
#>  6 Electrical engineer         1-166-486-7102     
#>  7 Games developer             240-503-6455x54793 
#>  8 Multimedia programmer       +78(5)8476399438   
#>  9 Engineer, maintenance (IT)  03183289534        
#> 10 Conservator, museum/gallery +32(0)2448780352   
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Pauline Renner"
```


```r
ch_name(10)
#>  [1] "Jon Anderson PhD"        "Dirk Hagenes"           
#>  [3] "Iola Hills"              "Ms. Merna Kilback PhD"  
#>  [5] "May Hermann"             "Dr. Zavier Kassulke III"
#>  [7] "Mr. Yancy Stiedemann"    "Ms. Melina Dach"        
#>  [9] "Ms. Janine Kunde"        "Lovett Greenfelder"
```


## phone number


```r
ch_phone_number()
#> [1] "799.053.8298x03215"
```


```r
ch_phone_number(10)
#>  [1] "1-795-047-3421"       "01683058041"          "(199)253-2025"       
#>  [4] "442-608-7772x39728"   "006.994.5557"         "566.052.5676x69403"  
#>  [7] "+93(5)4894763387"     "1-067-264-4141x90001" "1-891-855-7961"      
#> [10] "334.562.6526"
```

## job


```r
ch_job()
#> [1] "Careers adviser"
```


```r
ch_job(10)
#>  [1] "Midwife"                                
#>  [2] "Solicitor"                              
#>  [3] "Engineer, maintenance (IT)"             
#>  [4] "Lecturer, higher education"             
#>  [5] "Scientist, research (physical sciences)"
#>  [6] "Hydrogeologist"                         
#>  [7] "Editor, commissioning"                  
#>  [8] "Research officer, political party"      
#>  [9] "Estate manager/land agent"              
#> [10] "Brewing technologist"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "JCB 15 digit"
ch_credit_card_provider(n = 4)
#> [1] "JCB 15 digit" "Voyager"      "Discover"     "JCB 16 digit"
```


```r
ch_credit_card_number()
#> [1] "3766356690332082"
ch_credit_card_number(n = 10)
#>  [1] "55520251460378052"   "561252701122526"     "3337396755300677029"
#>  [4] "4321262613647302"    "4500978817193750"    "869995174334936019" 
#>  [7] "869976711099048283"  "54335568117639643"   "210023110046558888" 
#> [10] "6011082845864142715"
```


```r
ch_credit_card_security_code()
#> [1] "546"
ch_credit_card_security_code(10)
#>  [1] "772"  "273"  "192"  "316"  "769"  "536"  "041"  "3830" "133"  "991"
```

## Usage in the wild

- [eacton/R-Utility-Belt-ggplot2](https://github.com/eacton/R-Utility-Belt-ggplot2/blob/836a6bd303fbfde4a334d351e0d1c63f71c4ec68/furry_dataset.R)


## Contributors

* [Scott Chamberlain](https://github.com/sckott)
* [Kyle Voytovich](https://github.com/kylevoyto)

## similar art

* [wakefield](https://github.com/trinker/wakefield)
* [ids](https://github.com/richfitz/ids)
* [rcorpora](https://github.com/gaborcsardi/rcorpora)
* [synthpop](https://cran.r-project.org/package=synthpop)

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
