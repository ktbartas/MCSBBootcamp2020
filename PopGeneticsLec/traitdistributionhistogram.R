genos <- matrix(rbinom(5000,2,runif(5,0,1)), nrow=1000, byrow=T)
geno.value <- apply(genos,1,sum)
pheno.value <-geno.value + rnorm(1000,0,(1/3)*sd(geno.value))
hist(pheno.value,breaks=25,xlab='value of character',ylab='frequency',main='ADDITIVE genetic model, 5 loci, 75% heritability')
