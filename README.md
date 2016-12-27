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

## generate a dataset


```r
ch_generate()
#> # A tibble: 10 × 3
#>                      name
#>                     <chr>
#> 1      Mr. Howell Nicolas
#> 2  Dr. Debbie Simonis DDS
#> 3                 Schmidt
#> 4           Scot Champlin
#> 5        Shane Rutherford
#> 6              Toby Jerde
#> 7           Abel Nikolaus
#> 8         Laverne Roberts
#> 9              Maxie Veum
#> 10          Rutha Bradtke
#> # ... with 2 more variables: job <chr>, phone_number <chr>
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>                                     job       phone_number
#>                                   <chr>              <chr>
#> 1             Health and safety adviser  586.956.6822x0445
#> 2                  Engineer, structural 1-792-389-0742x675
#> 3                   Animal nutritionist     1-072-692-7653
#> 4             Learning disability nurse     1-654-054-3798
#> 5                             Architect 502.994.0332x16014
#> 6                        Teacher, music       920-508-5382
#> 7            Further education lecturer       056-884-0605
#> 8  International aid/development worker      (748)408-2853
#> 9                          Chiropractor   326-286-2644x877
#> 10                              Midwife       494-586-7223
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Mr. Welton Jakubowski MD"
```


```r
ch_names(10)
#>  [1] "Mrs. Carlota Kuhn MD"  "Felicitas Marvin"     
#>  [3] "Mr. Mervyn Trantow MD" "Henry Fay"            
#>  [5] " Towne"                "Mrs. Renae Koch DVM"  
#>  [7] "Ms. Deidre Hills"      "Mrs. Bena Kuhlman"    
#>  [9] " Olson"                "Marcell Schuster"
```


## phone number


```r
ch_phone_number()
#> [1] "675-065-2455x68667"
```


```r
ch_phone_numbers(10)
#>  [1] "+36(7)6861083975"    "(236)196-3941x53668" "(852)472-7134x40299"
#>  [4] "199.741.1096"        "1-469-367-5227"      "(096)130-7354"      
#>  [7] "06618040111"         "1-373-502-5060"      "770.420.6110x60783" 
#> [10] "923-953-3640"
```

## job


```r
ch_job()
#> [1] "Company secretary"
```


```r
ch_jobs(10)
#>  [1] "Recruitment consultant"      "Financial risk analyst"     
#>  [3] "Multimedia specialist"       "Conservator, museum/gallery"
#>  [5] "Theatre director"            "Facilities manager"         
#>  [7] "Water quality scientist"     "Oceanographer"              
#>  [9] "Health visitor"              "Clinical biochemist"
```


## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
