charlatan
=========



[![Build Status](https://travis-ci.org/ropenscilabs/charlatan.svg?branch=master)](https://travis-ci.org/ropenscilabs/charlatan)

`charlatan` makes fake data, inspired from and borrowing some code from Python's [faker](https://github.com/joke2k/faker) 

Make fake data for:

* person names
* jobs
* phone numbers
* colors: names, hex, rgb
* credit cards
* more coming ...

## Installation


```r
devtools::install_github("ropenscilabs/charlatan")
```


```r
library("charlatan")
```

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>                        name                                           job
#>                       <chr>                                         <chr>
#> 1           Zachary Stracke                                    Cabin crew
#> 2             Von Stokes IV                           Early years teacher
#> 3             Rodrick Swift Chartered legal executive (England and Wales)
#> 4  Mr. Markus Langworth DVM                          Financial controller
#> 5                     Crona                                    Air broker
#> 6            Mathews Willms                         Community arts worker
#> 7             Astrid Torphy                             Freight forwarder
#> 8            Dr. Ansel Lang                        Psychologist, clinical
#> 9        Ms. Quiana DuBuque                       Rural practice surveyor
#> 10         Miss Lila Harvey                Chartered certified accountant
#> # ... with 1 more variables: phone_number <chr>
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>                                      job       phone_number
#>                                    <chr>              <chr>
#> 1                  Glass blower/designer       006.877.6386
#> 2               Programmer, applications      (334)256-7377
#> 3             Civil engineer, consulting   037.515.6553x578
#> 4  Emergency planning/management officer   +50(7)5771277907
#> 5    Social research officer, government   +89(2)3693586579
#> 6                        Ophthalmologist  026.887.4309x9843
#> 7            Advertising account planner       671-394-4393
#> 8                          Meteorologist     1-616-232-3617
#> 9        Administrator, local government 1-422-940-6388x510
#> 10               Physiological scientist       178.195.0919
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Dr. Fernand Goyette III"
```


```r
ch_name(10)
#>  [1] "Dr. Jaron Emard DVM" "Morris Hand"         "Perla Lang"         
#>  [4] "Luda Hamill"         "Felecia Block DVM"   "Dr. Carmen Becker"  
#>  [7] "Verlin Howell"       "Izayah Kling PhD"    "Saul Metz Jr."      
#> [10] "Haven Hintz"
```


## phone number


```r
ch_phone_number()
#> [1] "08471836216"
```


```r
ch_phone_number(10)
#>  [1] "382.530.6161x92940" "805-568-4867"       "07293985430"       
#>  [4] "+64(8)7217869990"   "726-954-8800x62749" "391-108-0820x02424"
#>  [7] "1-180-047-7925"     "08080839373"        "+55(2)3999892314"  
#> [10] "425.089.2261x414"
```

## job


```r
ch_job()
#> [1] "Automotive engineer"
```


```r
ch_job(10)
#>  [1] "Government social research officer"           
#>  [2] "Programme researcher, broadcasting/film/video"
#>  [3] "Education administrator"                      
#>  [4] "Engineer, broadcasting (operations)"          
#>  [5] "Electrical engineer"                          
#>  [6] "Technical sales engineer"                     
#>  [7] "Dentist"                                      
#>  [8] "Public librarian"                             
#>  [9] "Herpetologist"                                
#> [10] "Administrator, Civil Service"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "Mastercard"
ch_credit_card_provider(n = 4)
#> [1] "Mastercard"   "JCB 16 digit" "Voyager"      "Discover"
```


```r
ch_credit_card_number()
#> [1] "4491797858096966"
ch_credit_card_number(n = 10)
#>  [1] "180076435321982446"  "3112727091460582514" "4901069377820456"   
#>  [4] "3158115280428048490" "3711247221443603"    "869969368592822166" 
#>  [7] "180007587073966813"  "51517302384177057"   "3158382384092386354"
#> [10] "501873527310418"
```


```r
ch_credit_card_security_code()
#> [1] "2259"
ch_credit_card_security_code(10)
#>  [1] "958" "967" "758" "412" "080" "277" "855" "619" "929" "667"
```



## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
