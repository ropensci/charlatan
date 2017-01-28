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

Possible use cases for `charlatan`:

* Students in a classroom setting learning any task that needs a dataset.
* People doing simulations/modeling that need some fake data

Reasons to use `charlatan`:

* Lite weight, very few dependencies, all deps lite weight
* Relatively comprehensive types of data, and more being added
* Useful R features such as creating entire fake data.frame's 

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
#> [1] "Health promotion specialist"
x$name()
#> [1] "Author Lynch"
x$job()
#> [1] "Optician, dispensing"
x$color_name()
#> [1] "Cornsilk"
```

## locale support

Adding more locales through time, e.g., 

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Health and safety inspector" "Land/geomatics surveyor"    
#> [3] "Field seismologist"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Chef de projet démantèlement nucléaire"
#> [2] "Animateur 2D et 3D"                    
#> [3] "Accompagnateur de tourisme équestre"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Lovočuvar"                              
#> [2] "Klesar"                                 
#> [3] "Voditelj poslovnice turističke agencije"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Мінералог" "Ботанік"   "Історик"
ch_job(locale = "zh_TW", n = 3)
#> [1] "發包人員"             "社會／人類學研究人員" "都市／交通規劃人員"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "PeachPuff" "Yellow"    "Indigo"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Блакитно-зелений" "Хакі"             "Блідо-брунатний"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>                  name                                job
#>                 <chr>                              <chr>
#> 1        Betsey Moore                      Archaeologist
#> 2   Mr. Kareen Beahan Teacher, special educational needs
#> 3    Aida Corkery DVM               Community pharmacist
#> 4  Ms. Krysta Lebsack                  Personnel officer
#> 5   Dr. Ramon Stracke                Engineer, materials
#> 6  Dr. Carson Wiegand           Arts development officer
#> 7        Pam Gislason                        Comptroller
#> 8      Severo Schuppe                Exhibition designer
#> 9            Schaefer                Corporate treasurer
#> 10        Ason Kuphal                   Surveyor, mining
#> # ... with 1 more variables: phone_number <chr>
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>                             job         phone_number
#>                           <chr>                <chr>
#> 1      Television floor manager   403-611-8773x08168
#> 2         Theatre stage manager          02978702880
#> 3               Publishing copy          07004618545
#> 4   Civil Service administrator          02189697048
#> 5          Intelligence analyst 1-060-925-3914x16400
#> 6           Immigration officer  1-213-961-4996x5911
#> 7             Barrister's clerk 1-197-997-7912x20485
#> 8                  Retail buyer         457.549.3182
#> 9             Buyer, industrial    (227)023-5492x233
#> 10 Research officer, government          02755979148
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Rico Cole V"
```


```r
ch_name(10)
#>  [1] "Benton Feil DVM"      "Dr. Janel Armstrong"  "Mr. Russ Mitchell"   
#>  [4] "Louie Zieme"          "Vick Christiansen"    "Dr. Emmit Kuphal"    
#>  [7] "Gavin Simonis"        "Mr. Olan Veum PhD"    "Esco Parisian"       
#> [10] "Chrystal Kilback PhD"
```


## phone number


```r
ch_phone_number()
#> [1] "(789)498-4167"
```


```r
ch_phone_number(10)
#>  [1] "1-269-153-3206"       "04708228366"          "1-991-323-1582"      
#>  [4] "383.777.4928"         "985.226.7346"         "(477)205-9161x7027"  
#>  [7] "582-875-9763x5038"    "1-290-666-3782x04318" "649-207-0082"        
#> [10] "870.439.9042x46110"
```

## job


```r
ch_job()
#> [1] "Adult nurse"
```


```r
ch_job(10)
#>  [1] "Biochemist, clinical"             "Land/geomatics surveyor"         
#>  [3] "Contracting civil engineer"       "Textile designer"                
#>  [5] "Training and development officer" "Engineer, aeronautical"          
#>  [7] "Farm manager"                     "Technical author"                
#>  [9] "Scientist, forensic"              "Customer service manager"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "JCB 15 digit"
ch_credit_card_provider(n = 4)
#> [1] "VISA 16 digit" "Mastercard"    "VISA 16 digit" "Discover"
```


```r
ch_credit_card_number()
#> [1] "4248101152713"
ch_credit_card_number(n = 10)
#>  [1] "3799958216377276"    "4035539156808"       "52123644273182763"  
#>  [4] "4291648387038"       "210039296797182895"  "3528345408790902109"
#>  [7] "3025299586013032"    "51110798616441982"   "503840517188823"    
#> [10] "6011130771438745969"
```


```r
ch_credit_card_security_code()
#> [1] "160"
ch_credit_card_security_code(10)
#>  [1] "466"  "2717" "826"  "853"  "823"  "2486" "596"  "763"  "901"  "638"
```



## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
