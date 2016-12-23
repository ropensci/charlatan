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
#> [1] "Cleveland Cartwright I"
```


```r
replicate(10, ch_name())
#>  [1] "Mr. Lilburn Walsh V"      "Dr. Shaquille Wisozk Sr."
#>  [3] "Mrs. Erin Durgan MD"      "Waldemar Stamm"          
#>  [5] "Tracey Kuhic"             " Muller"                 
#>  [7] "Cael Breitenberg"         "Pricilla Berge"          
#>  [9] "Ciarra Hermiston"         "Houston Maggio"
```


## phone number


```r
ch_phone_number()
#> [1] "1-290-769-0345"
```


```r
replicate(10, ch_phone_number())
#>  [1] "296-814-0142x15128" "+93(3)0062275211"   "464.990.7488"      
#>  [4] "762.581.1775"       "601-521-0109x7522"  "378-676-5203x9491" 
#>  [7] "926.155.0777x8266"  "438-938-9799"       "1-070-841-2251x462"
#> [10] "856.646.0425x46692"
```


## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
