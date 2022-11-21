library(qqman)
source("manhattan_CoreFunction.R")

path_control = "./FarmCPU/ARC/outputs/FarmCPU_GWAS/control/"
path_man = "./FarmCPU/manhattan_plot/control"

myfile <- list.files(path=path_control, pattern = ".csv")
for (i in 1:240){
cat("now is drawing: ", i, "\n")
data0 = read.csv(file=file.path(path_control, myfile[i]))
name = paste0(sub(".csv","",myfile[i]), "_control")
pdf(file=file.path(path_man, paste0(name, "_manhattan.pdf")))
man(data0)
dev.off()
}


path_stress = "./FarmCPU/ARC/outputs/FarmCPU_GWAS/stress/"
path_man = "./FarmCPU/manhattan_plot/stress"
# source("manhattan_function.R")
# library(qqman)
myfile <- list.files(path=path_stress, pattern = ".csv")

for (i in 1:240){
cat("now is drawing: ", i, "\n")
data0 = read.csv(file=file.path(path_stress, myfile[i]))
name = paste0(sub(".csv","",myfile[i]), "_stress")
pdf(file=file.path(path_man, paste0(name, "_manhattan.pdf")))
man(data0)
dev.off()
}
