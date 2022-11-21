path_control = "./ARC/outputs/rrBLUP_GWAS/control/"

myfile <- list.files(path=path_control, pattern = ".csv")
data = list()
for (i in 1:240){
  cat("now is drawing: ", i, "\n")
  data0 = read.csv(file=file.path(path_control, myfile[i]))
  colnames(data0)[4] = "marker scores"
  name = paste0(sub(".csv","", myfile[i]))
  data0$band = name
  data[[i]] = data0
  names(data)[i] = name
}

data_sig_control = lapply(data, function(x){x[which(x[,4] > -log10(4.173493e-05)), ]})
sig_control_df = do.call(rbind, data_sig_control)
rownames(sig_control_df) = 1:nrow(sig_control_df)
sig_control_df$band = gsub("hyp_","",sig_control_df$band)


write.csv(sig_control_df, file='./outputs/significant_SNP/all_control.csv', row.names = F, quote = F)


path_stress = "./ARC/outputs/rrBLUP_GWAS/stress/"

myfile <- list.files(path=path_stress, pattern = ".csv")
data = list()
for (i in 1:240){
  cat("now is drawing: ", i, "\n")
  data0 = read.csv(file=file.path(path_stress, myfile[i]))
  colnames(data0)[4] = "marker scores"
  name = paste0(sub(".csv","", myfile[i]))
  data0$band = name
  data[[i]] = data0
  names(data)[i] = name
}

data_sig_stress = lapply(data, function(x){x[which(x[,4] > -log10(4.173493e-05)), ]})
sig_stress_df = do.call(rbind, data_sig_stress)
rownames(sig_stress_df) = 1:nrow(sig_stress_df)
sig_stress_df$band = gsub("hyp_","",sig_stress_df$band)


write.csv(sig_stress_df, file='./outputs/significant_SNP/all_stress.csv', row.names = F, quote = F)