# Running-rrBLUP-GWAS
Some efficient Rscript and shfile to run rrBLUP GWAS in VT arc.

### Step1: preprocess
[Preprocess.Rmd](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/Preprocess.Rmd) 
- Preprocess phenotype and genotype data files.
- Remove duplicated id.
- Match order of id in geno and pheno data.

### Step2: build gwas function
[Gwas_CoreFunction.R](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/Gwas_CoreFunction.R)
- Be careful, rrBLUP requires pheno and geno in data.frame format.

### Step3: using function in control and stress group
[rrBLUP_GWAS_control.R](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/rrBLUP_GWAS_control.R)

[rrBLUP_GWAS_stress.R](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/rrBLUP_GWAS_stress.R)

- Load corrected phenotype and genotype files.
- Using commandArgs to set range of traits.

### Step4: run sh file in vt arc.
[con_1-10.sh](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/con_1-10.sh)
