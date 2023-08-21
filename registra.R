source("executa.R")

nome = "resultados/simulacaoXX.RData"
for(i in 1:length(planos)){
  if(i < 10){
    nomes = sub('XX', paste(c(0,i), collapse = ""), nome)
  }
  else{
    nomes = sub('XX', i, nome)
  }
  if(planos[[i]]$distribution == "poisson"){
    distribution = planos[[i]]$distribution
    lambda = planos[[i]]$lambda
    obs = planos[[i]]$obs
    result = x[[i]]
    save(distribution,
         lambda,
         obs,
         result,
         file = nomes)
  }
  if(planos[[i]]$distribution == "bernoulli"){
    distribution = planos[[i]]$distribution
    p = planos[[i]]$p
    obs = planos[[i]]$obs
    result = x[[i]]
    save(distribution,
         p,
         obs,
         result,
         file = nomes)
  }
  if(planos[[i]]$distribution == "normal"){
    distribution = planos[[i]]$distribution
    mu = planos[[i]]$mu
    sigma2 = planos[[i]]$sigma2
    obs = planos[[i]]$obs
    result = x[[i]]
    save(distribution,
         mu,
         sigma2,
         obs,
         result,
         file = nomes)
  }
}
