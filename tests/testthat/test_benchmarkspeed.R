library(microbenchmark)
mb_summary <- function(x) {
    res <- summary(x, unit="us")
    data.frame(name = res$expr, median = res$median)
}
benchmarktime = c(1,10,100,1000,10000)
results<- microbenchmark(
                    # median
    ch_job(n=1),    # 761.1   = 761.1
    ch_job(n=10),   # 998.2   = 99.82
    ch_job(n=100),  # 2748.9  = 27.49
    ch_job(n=1000), # 20558.3 = 20.56
    times = 100L
)
jp<-JobProvider_en_US$new()

result2=microbenchmark(           # median
    replicate(1, jp$render()),    # 58.08    = 58.08
    replicate(10, jp$render()),   # 222.11   = 22.21
    replicate(100, jp$render()),  # 1910.45  = 19.10
    replicate(1000, jp$render()), # 19050.15 = 19.05
    times = 100L
)

result3=microbenchmark(           # median
    fraudster(locale = "en_US"),  # 40771.0
    JobProvider_en_US$new(),      #   493.4
    times = 100L
)

result4 = microbenchmark(
    ch_norm(n = 1),   # 288.806
    rnorm(1),         #   4.544
    ch_norm(n = 100), # 270.063
    rnorm(100),       #   7.156 (optimized functions)
    times = 100L
)

# Yes we pay a performance penalty for using R6. 
#
# other notes https://r6.r-lib.org/articles/Performance.html
# instantiation speed 
# R6$new()  53.05
# R6 with private fields 75.85
# 
# Instantiating the classes takes a median time of 75.85 ms
# Instantiating JobProvider_en_US$new(),   takes 493.4 ms
# 
# but instantiating fraudster(locale = "en_US"), takes 40771.0 almost 83 times longer.
# That is a massive class with all sorts of functions. 
# 
# creating multiple of a thing is always faster. the relative speedup is especially
# noticable after 100 repititions.
# 
# This package will never be as fast as the optimized functions like rnorm. (while using it)
# 
# maybe add a test for all ch_ functions with 100 reps to be within 30 microseconds?
