GD_control = cbind.data.frame(ID=rownames(geno_control), geno_control)
GD_stress = cbind.data.frame(ID=rownames(geno_stress), geno_stress)
save(G_control, file = "GD_control.RData")
save(G_stress, file = file = "GD_stress.RData")