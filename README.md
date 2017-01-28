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
#> [1] "Surveyor, rural practice"
x$name()
#> [1] "Marisela Zemlak"
x$job()
#> [1] "Administrator"
x$color_name()
#> [1] "Silver"
```

## locale support

Adding more locales through time, e.g., 

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Clinical cytogeneticist"            
#> [2] "Psychologist, educational"          
#> [3] "Chartered public finance accountant"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Manipulateur en électroradiologie médicale"
#> [2] "Vétérinaire"                               
#> [3] "Biologiste médical"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Viši muzejski pedagog"                                                
#> [2] "Osoblje za održavanje  zrakoplova (mehaničari, tehničari i inženjeri)"
#> [3] "Stručni suradnik ovlaštenog inženjera geodezije"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Золотар"   "Математик" "Дипломат"
ch_job(locale = "zh_TW", n = 3)
#> [1] "驗光師"         "資材主管"       "軟體設計工程師"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "HotPink"    "White"      "LightGreen"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Блідий рожево-ліловий" "Темно-аспідний сірий"  "Яскраво-зелений"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>                      name                                  job
#>                     <chr>                                <chr>
#> 1         Dempsey Windler                 Maintenance engineer
#> 2      Mrs. Signa Haag MD                      Games developer
#> 3  Miss Suzanna Blanda MD                       Phytotherapist
#> 4           Hildur Ledner               Embryologist, clinical
#> 5  Charolette Anderson MD Accountant, chartered public finance
#> 6                   Kunde                Merchant navy officer
#> 7          Barbra Reinger               Conservator, furniture
#> 8          Ammie Dietrich                   Academic librarian
#> 9                 Keebler                      Charity officer
#> 10        Kameron Stracke            Health and safety adviser
#> # ... with 1 more variables: phone_number <chr>
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>                                     job       phone_number
#>                                   <chr>              <chr>
#> 1  English as a second language teacher       899.267.2020
#> 2                 Volunteer coordinator       986.048.9935
#> 3                Psychologist, clinical 1-024-424-8379x471
#> 4    Public relations account executive  (526)080-3332x216
#> 5                 Adult guidance worker   +31(7)3479289390
#> 6                               Midwife   +62(3)8024221131
#> 7       Sport and exercise psychologist      (584)490-4327
#> 8                         Oceanographer     1-600-230-0388
#> 9                       Legal secretary       237.694.1420
#> 10               Fitness centre manager       176.506.7116
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Darrion Predovic"
```


```r
ch_name(10)
#>  [1] "Dr. Ean Rowe"           "Murl Little"           
#>  [3] "Dr. Jorden Hagenes III" "Caroline Stark MD"     
#>  [5] "Dr. Johney Douglas"     "Riya O'Reilly"         
#>  [7] "Blanca Daniel"          "Ruben Mueller"         
#>  [9] " Grant"                 "Treyton Nitzsche V"
```


## phone number


```r
ch_phone_number()
#> [1] "607.926.6465"
```


```r
ch_phone_number(10)
#>  [1] "012.588.5001"         "1-865-715-9802x519"   "1-151-516-5243x49390"
#>  [4] "07241668634"          "450-035-5344"         "(182)022-3086x36655" 
#>  [7] "250.550.8146x0119"    "083.165.5636"         "+61(0)2085749887"    
#> [10] "067.814.1679x03777"
```

## job


```r
ch_job()
#> [1] "Mechanical engineer"
```


```r
ch_job(10)
#>  [1] "Information officer"                        
#>  [2] "Chartered accountant"                       
#>  [3] "Psychologist, prison and probation services"
#>  [4] "Therapist, drama"                           
#>  [5] "Geneticist, molecular"                      
#>  [6] "Designer, jewellery"                        
#>  [7] "Insurance claims handler"                   
#>  [8] "Operations geologist"                       
#>  [9] "Development worker, community"              
#> [10] "Ranger/warden"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "Mastercard"
ch_credit_card_provider(n = 4)
#> [1] "JCB 15 digit" "JCB 16 digit" "Maestro"      "Maestro"
```


```r
ch_credit_card_number()
#> [1] "4139191403423"
ch_credit_card_number(n = 10)
#>  [1] "869937736759719111"  "3000265784751728"    "3158817892934192868"
#>  [4] "4434232531681695"    "180094119248034949"  "6011440217194063341"
#>  [7] "3337711215517268359" "210001897759873365"  "3528113611019333408"
#> [10] "52825956761873971"
```


```r
ch_credit_card_security_code()
#> [1] "883"
ch_credit_card_security_code(10)
#>  [1] "203"  "378"  "569"  "143"  "2669" "216"  "133"  "582"  "321"  "465"
```



## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
