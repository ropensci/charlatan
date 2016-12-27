charlatan
=========



[![Build Status](https://travis-ci.org/ropenscilabs/charlatan.svg?branch=master)](https://travis-ci.org/ropenscilabs/charlatan)

`charlatan` makes fake data, inspired from and borrowing some code from Python's [faker](https://github.com/joke2k/faker) 

Make fake data for:

* person names
* jobs
* phone numbers
* colors: names, hex, rgb
* more

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
#>                     name                                           job
#>                    <chr>                                         <chr>
#> 1  Dr. Sandy Jaskolski V                        Chief Strategy Officer
#> 2          Rahn Smith MD                              Engineer, energy
#> 3           Manuel Mayer Chartered legal executive (England and Wales)
#> 4       Garold Buckridge                            Professor Emeritus
#> 5            Lanie Smith                   Engineer, building services
#> 6                Douglas                                Prison officer
#> 7             Kandi Ryan                           Engineer, petroleum
#> 8       Lorenza Hartmann                           Chemist, analytical
#> 9           Lily Monahan                                  Sports coach
#> 10           Myrle Ratke                     Higher education lecturer
#> # ... with 1 more variables: phone_number <chr>
```


```r
ch_generate('job', 'phone_number', n = 30)
#> # A tibble: 30 × 2
#>                               job        phone_number
#>                             <chr>               <chr>
#> 1              Professor Emeritus  (580)033-8371x7006
#> 2               Quantity surveyor  1-761-442-4063x272
#> 3            Pharmacist, hospital 1-833-355-0570x8697
#> 4                   Airline pilot        461.606.7965
#> 5        Environmental consultant    +02(9)4200362185
#> 6  Commercial art gallery manager  757-029-5496x11263
#> 7                Insurance broker         03285024221
#> 8  Chartered certified accountant  475.801.5730x41650
#> 9  Therapist, speech and language  (613)006-8288x5464
#> 10       Print production planner        750-282-6785
#> # ... with 20 more rows
```


## person name


```r
ch_name()
#> [1] "Koby O'Reilly"
```


```r
ch_names(10)
#>  [1] "Jerod Sauer"             "Christina Schimmel"     
#>  [3] "Harlow Wyman MD"         "Lillard Blanda"         
#>  [5] "Nova Witting MD"         "Imanol Goyette"         
#>  [7] "Brice Bernhard"          "Miles Heaney"           
#>  [9] "Delvin Tremblay"         "Dr. Darnell Gerhold Sr."
```


## phone number


```r
ch_phone_number()
#> [1] "296.206.7992x322"
```


```r
ch_phone_numbers(10)
#>  [1] "(959)263-7896"      "(815)760-2363x732"  "886.007.1677x4021" 
#>  [4] "297.484.5387x816"   "572.264.6094"       "1-172-371-4737"    
#>  [7] "(335)903-9469x4173" "321-069-5278x47798" "(611)696-9287"     
#> [10] "141.880.0744x0163"
```

## job


```r
ch_job()
#> [1] "Electrical engineer"
```


```r
ch_jobs(10)
#>  [1] "Publishing rights manager"                   
#>  [2] "Warden/ranger"                               
#>  [3] "Control and instrumentation engineer"        
#>  [4] "Lighting technician, broadcasting/film/video"
#>  [5] "Ophthalmologist"                             
#>  [6] "Visual merchandiser"                         
#>  [7] "Pensions consultant"                         
#>  [8] "Customer service manager"                    
#>  [9] "Volunteer coordinator"                       
#> [10] "Accounting technician"
```


## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/charlatan/issues).
* License: MIT
* Get citation information for `charlatan` in R doing `citation(package = 'charlatan')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
