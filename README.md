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

## high level function 

... for all fake data operations


```r
x <- fraudster()
x$job()
#> [1] "Museum/gallery curator"
x$name()
#> [1] "Mr. Anders Greenholt"
x$job()
#> [1] "Firefighter"
x$color_name()
#> [1] "Lavender"
```

## locale support

Adding more locales through time, e.g., 

Locale support for job data


```r
ch_job(locale = "en_US", n = 3)
#> [1] "Editor, commissioning"      "Chief Technology Officer"  
#> [3] "Surveyor, building control"
ch_job(locale = "fr_FR", n = 3)
#> [1] "Orthophoniste"                                     
#> [2] "Monteur en installations thermiques et climatiques"
#> [3] "Boucher"
ch_job(locale = "hr_HR", n = 3)
#> [1] "Pirotehnički nadzornik"    "Suradnik u nastavi"       
#> [3] "Brodostrojarski inspektor"
ch_job(locale = "uk_UA", n = 3)
#> [1] "Кіноактор" "Актор"     "Кушнір"
ch_job(locale = "zh_TW", n = 3)
#> [1] "鐵路車輛駕駛員" "查帳／審計人員" "人力資源人員"
```

For colors:


```r
ch_color_name(locale = "en_US", n = 3)
#> [1] "Pink"      "LightCyan" "Plum"
ch_color_name(locale = "uk_UA", n = 3)
#> [1] "Бронзовий"        "Зелений папороть" "Сангрія"
```

More coming soon ...

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>                    name                                      job
#>                   <chr>                                    <chr>
#> 1      Florrie Turcotte                       Academic librarian
#> 2          Gifford Yost            Advertising account executive
#> 3               Krajcik                            Acupuncturist
#> 4            Verda Huel                                   Gaffer
#> 5  Dr. Esco Stoltenberg           Therapist, speech and language
#> 6       Carlie Hartmann                            Oceanographer
#> 7           Lettie Cole                            Haematologist
#> 8       Shea Rutherford Geographical information systems officer
#> 9          Chantel Ryan                         Engineer, energy
#> 10           Che Little                      Electrical engineer
#> # ... with 1 more variables: phone_number <chr>
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>                                       job       phone_number
#>                                     <chr>              <chr>
#> 1                Secondary school teacher 114-168-7468x64400
#> 2                       Psychiatric nurse      (323)213-7429
#> 3                             Illustrator       495-241-9020
#> 4                                  Banker (610)105-8735x9485
#> 5             Civil Service administrator 1-472-397-7996x490
#> 6                Horticultural consultant     1-522-132-6026
#> 7              Geophysical data processor  584.320.9534x2603
#> 8  Teacher, English as a foreign language  549.880.2911x0738
#> 9                        Technical author  548-630-0280x6858
#> 10                  Administrator, sports   389-995-5331x477
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Nelda Kuhlman"
```


```r
ch_name(10)
#>  [1] "Luka Schmitt V"          "Mr. Tristian Walsh III" 
#>  [3] "Ola Rodriguez"           "Mr. Fredrick Corwin Jr."
#>  [5] "Mercedes Gerhold DVM"    "Fleda Daugherty"        
#>  [7] "Lena Weissnat"           "Gardner Strosin"        
#>  [9] "Moe Swaniawski"          "Ms. Ashlea O'Kon"
```


## phone number


```r
ch_phone_number()
#> [1] "1-710-779-2179x528"
```


```r
ch_phone_number(10)
#>  [1] "+89(4)8972695671"    "561-863-1592x99431"  "(240)291-8942"      
#>  [4] "340.283.9196x1790"   "1-008-498-8235x8078" "867-955-3588"       
#>  [7] "512-601-6820x505"    "(243)162-7736"       "(024)046-3559"      
#> [10] "910-896-0264x76496"
```

## job


```r
ch_job()
#> [1] "Equality and diversity officer"
```


```r
ch_job(10)
#>  [1] "TEFL teacher"                       
#>  [2] "Scientist, research (life sciences)"
#>  [3] "Nurse, mental health"               
#>  [4] "Cytogeneticist"                     
#>  [5] "Designer, industrial/product"       
#>  [6] "Toxicologist"                       
#>  [7] "Surveyor, land/geomatics"           
#>  [8] "Regulatory affairs officer"         
#>  [9] "Surveyor, minerals"                 
#> [10] "Orthoptist"
```

## credit cards


```r
ch_credit_card_provider()
#> [1] "Voyager"
ch_credit_card_provider(n = 4)
#> [1] "American Express" "VISA 16 digit"    "VISA 13 digit"   
#> [4] "JCB 16 digit"
```


```r
ch_credit_card_number()
#> [1] "54475589287548976"
ch_credit_card_number(n = 10)
#>  [1] "3009546087969138"    "6011542305080105677" "4729668926837448"   
#>  [4] "6011590080204722209" "3014349466076269"    "3443023228498524"   
#>  [7] "4000205665324682"    "3096931321873861045" "3419857669338982"   
#> [10] "3158803317501205279"
```


```r
ch_credit_card_security_code()
#> [1] "3396"
ch_credit_card_security_code(10)
#>  [1] "289" "481" "071" "961" "477" "378" "683" "940" "838" "579"
```



## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
