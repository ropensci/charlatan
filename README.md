charlatan
=========



[![Build Status](https://travis-ci.org/ropenscilabs/charlatan.svg?branch=master)](https://travis-ci.org/ropenscilabs/charlatan)
[![codecov](https://codecov.io/gh/ropenscilabs/charlatan/branch/master/graph/badge.svg)](https://codecov.io/gh/ropenscilabs/charlatan)

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

## Installation


```r
devtools::install_github("ropenscilabs/charlatan")
```


```r
library("charlatan")
```

## high level function 

... for all fake data operations


```r
x <- fraudster()
x$job()
#> [1] "Professor Emeritus"
x$name()
#> [1] "Zakary Metz"
x$job()
#> [1] "Copy"
x$color_name()
#> [1] "LightSlateGray"
```

## locale support

Adding more locales through time, e.g., 

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Secondary school teacher"      "Manufacturing engineer"       
#> [3] "Scientist, research (medical)"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Conducteur d'engins de travaux publics"
#> [2] "Vendeur en fournitures automobiles"    
#> [3] "Technicien"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Prvostupnik medicinske radiologije"
#> [2] "Tokar"                             
#> [3] "Tapetar"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Дизайнер"  "Кіноактор" "Пілот"
ch_job(locale = "zh_TW", n = 3)
#> [1] "安心服務員"         "採購主管"           "市場調查／市場分析"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "Ivory"      "DarkOrchid" "SkyBlue"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Паросток папаї"  "Блідо-пісочний"  "Темно-оливковий"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>                     name                                         job
#>                    <chr>                                       <chr>
#> 1             Tonya Batz                      Programmer, multimedia
#> 2       Jethro Herzog MD           Sales promotion account executive
#> 3         Malvin Cormier                Education officer, community
#> 4     Josephine Hyatt MD                                      Artist
#> 5         Sabrina Zemlak           Special educational needs teacher
#> 6       Annabella Kirlin Armed forces training and education officer
#> 7  Ms. Angelita Rice DDS                                Risk analyst
#> 8       Angie Kemmer DVM                  Designer, interior/spatial
#> 9        Harlan Shanahan                         Early years teacher
#> 10      Faustino Smitham                          Facilities manager
#> # ... with 1 more variables: phone_number <chr>
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>                                   job       phone_number
#>                                 <chr>              <chr>
#> 1                         Ship broker       166-831-6462
#> 2                    Paediatric nurse       820-087-7614
#> 3        Research officer, government       200-962-9217
#> 4                             Barista        07396637074
#> 5                       Ranger/warden   +99(5)2419563330
#> 6                          Orthoptist  (651)891-6845x446
#> 7  Surveyor, planning and development      (347)048-9535
#> 8                     Arboriculturist       812.251.4898
#> 9     Environmental education officer       451-128-6060
#> 10             Health service manager 273.634.3093x93840
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] " Rosenbaum"
```


```r
ch_name(10)
#>  [1] "Miss Lorri Bartell DVM"    "Bernita Jakubowski"       
#>  [3] "Redden Miller MD"          "Lucetta Rogahn"           
#>  [5] " Goodwin"                  "Dr. Candida Kemmer"       
#>  [7] "Donavan Bode"              "Marlene Kuhlman"          
#>  [9] "Ms. Sherita Langworth PhD" "Baker Labadie"
```


## phone number


```r
ch_phone_number()
#> [1] "(315)972-8326x000"
```


```r
ch_phone_number(10)
#>  [1] "745.750.3740x1145"   "09695909022"         "1-513-104-7668"     
#>  [4] "736-307-3470"        "629-358-6160x3756"   "(110)617-2553x79503"
#>  [7] "1-822-654-6816"      "(092)081-8548x924"   "499-038-5814"       
#> [10] "(686)096-9413x17552"
```

## job


```r
ch_job()
#> [1] "Solicitor, Scotland"
```


```r
ch_job(10)
#>  [1] "Jewellery designer"                      
#>  [2] "Advertising copywriter"                  
#>  [3] "Secondary school teacher"                
#>  [4] "Neurosurgeon"                            
#>  [5] "Psychologist, clinical"                  
#>  [6] "Race relations officer"                  
#>  [7] "Surveyor, land/geomatics"                
#>  [8] "Geographical information systems officer"
#>  [9] "Investment analyst"                      
#> [10] "Research officer, government"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "American Express"
ch_credit_card_provider(n = 4)
#> [1] "Discover"      "JCB 16 digit"  "VISA 16 digit" "JCB 16 digit"
```


```r
ch_credit_card_number()
#> [1] "4594543103018041"
ch_credit_card_number(n = 10)
#>  [1] "869976397435821706"  "4204539413769531"    "3701959758184481"   
#>  [4] "3096430466031602579" "6011097635089957697" "4041672520291979"   
#>  [7] "3005222131360369"    "869942617220021019"  "3714409156552637"   
#> [10] "869923512492075459"
```


```r
ch_credit_card_security_code()
#> [1] "850"
ch_credit_card_security_code(10)
#>  [1] "461"  "975"  "197"  "337"  "6454" "272"  "855"  "366"  "085"  "143"
```



## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
