# .libPaths()
# .libPaths(.libPaths()[3:1])
# 
# install.packages("devtools", repos = "http://cran.us.r-project.org")
# devtools::install_github("jiabowang/GAPIT3",force=TRUE)
library(GAPIT3)

args = commandArgs(trailingOnly=TRUE)

load("./hyp.rr.Rdata")
load("./GD_control.RData")
load("./map.rr.Rdata")

source("./GWAS_GAPIT_CoreFunc.R")
method = "FarmCPU"
GAPIT_GWAS_control(size1=args[1], size2=args[2])
