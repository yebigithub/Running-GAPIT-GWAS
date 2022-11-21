#GAPIT GWAS function
GAPIT_GWAS_control <- function(size1, size2){
  GD = GD_control
  for (i in size1:size2){
            Y = cbind.data.frame(hyp_control$NSFTV_Id, hyp_control[,i+2])
            GM = map_control
            
            gwas_fit <- GAPIT(Y = Y,
                              GD = GD,
                              GM = GM,
                              model = method,
                              SNP.P3 = TRUE,
                              file.output = FALSE
            )
            
            GWAS1 = gwas_fit$GWAS
            GWASdf = data.frame(marker = GWAS1[,1], 
                                chrom = GWAS1[,2], 
                                pos = GWAS1[,3], 
                                marker_score = -log10(GWAS1[,4]))
            write.csv(GWASdf, file=paste0("./outputs/FarmCPU_GWAS/control/", colnames(hyp_stress)[i+2], ".csv"), quote = FALSE, row.names = FALSE)
          }

}


#GAPIT GWAS function
GAPIT_GWAS_stress <- function(size1, size2){
  GD = GD_stress
  for (i in size1:size2){
        Y = cbind.data.frame(hyp_stress$NSFTV_Id, hyp_stress[,i+2])
        GM = map_stress  
        gwas_fit <- GAPIT(Y = Y,
                          GD = GD,
                          GM = GM,
                          model = method,
                          SNP.P3 = TRUE,
                          file.output = FALSE
        )
        GWAS1 = gwas_fit$GWAS
        GWASdf = data.frame(marker = GWAS1[,1], 
                            chrom = GWAS1[,2], 
                            pos = GWAS1[,3], 
                            marker_score = -log10(GWAS1[,4]))
        write.csv(GWASdf, file=paste0("./outputs/FarmCPU_GWAS/stress/", colnames(hyp_stress)[i+2], ".csv"), quote = FALSE, row.names = FALSE)
  }
  
}