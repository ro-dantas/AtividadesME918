library(usethis)
library(devtools)
library(purrr)

sampler <- function(dist){
  if(dist$distribution == "poisson"){
    samp = rpois(dist$obs, dist$lambda)
  }
  if(dist$distribution == "bernoulli"){
    samp = rbinom(dist$obs, 1, dist$p)
  }
  if(dist$distribution == "normal"){
    samp = rnorm(dist$obs, dist$mu, sqrt(dist$sigma2))
  }
  return(samp)
}



