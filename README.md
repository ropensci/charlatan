charlatan
=========



[![Build Status](https://travis-ci.org/ropenscilabs/charlatan.svg?branch=master)](https://travis-ci.org/ropenscilabs/charlatan)

`charlatan` makes fake data, inspired from Python's [faker](https://github.com/joke2k/faker) 
and Ruby's [faker](http://faker.rubyforge.org/)

## Installation


```r
devtools::install_github("ropenscilabs/charlatan")
```


```r
library("charlatan")
```

## person name


```r
ch_name()
#> [1] " Kreiger"
```


```r
ch_names(10)
#>  [1] "Hennie Osinski"      "Mr. Denton Hoppe"    "Luther Tremblay"    
#>  [4] " Kozey"              "Mr. Philip Moore"    "Dr. Ronny Yundt DVM"
#>  [7] "Dannie Auer II"      "Ana Bergstrom"       " Bednar"            
#> [10] " Murazik"
```


## phone number


```r
ch_phone_number()
#> [1] "(253)231-2316"
```


```r
ch_phone_numbers(10)
#>  [1] "1-799-380-7198x654"   "(047)541-9965"        "378-519-0492x0167"   
#>  [4] "04833625912"          "570.344.1284"         "249.966.4396x6085"   
#>  [7] "043.645.6887"         "1-939-464-7856x27419" "1-884-551-3194"      
#> [10] "181.028.8120"
```

## job


```r
ch_job()
#> [1] "Psychologist, occupational"
```


```r
ch_jobs(10)
#>  [1] "Water quality scientist"           
#>  [2] "Banker"                            
#>  [3] "Sport and exercise psychologist"   
#>  [4] "Communications engineer"           
#>  [5] "Journalist, magazine"              
#>  [6] "Jewellery designer"                
#>  [7] "Logistics and distribution manager"
#>  [8] "Risk manager"                      
#>  [9] "Web designer"                      
#> [10] "Call centre manager"
```


## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
