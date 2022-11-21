# Running-GAPIT-GWAS
Some efficient Rscript and shfile to run GAPIT GWAS in VT arc.

### Step1: preprocess
[Preprocess.Rmd](https://github.com/yebigithub/Running-GAPIT-GWAS/blob/main/Preprocess.Rmd) 
- Preprocess phenotype and genotype data files.
- Remove duplicated id.
- Match order of id in geno and pheno data.

### Step2: build gwas function
[GWAS_GAPIT_CoreFunc.R](https://github.com/yebigithub/Running-GAPIT-GWAS/blob/main/GWAS_GAPIT_CoreFunc.R)
- Be careful, GAPIT requires pheno and geno in data.frame format.

### Step3: using function in control and stress group
[GAPIT_GWAS_control.R](https://github.com/yebigithub/Running-GAPIT-GWAS/blob/main/GAPIT_GWAS_control.R)

[GAPIT_GWAS_stress.R](https://github.com/yebigithub/Running-GAPIT-GWAS/blob/main/GAPIT_GWAS_stress.R)

- Load corrected phenotype and genotype files.
- Using commandArgs to set range of traits.

### Step4: run sh file in vt arc.
[trt_1-10.sh](https://github.com/yebigithub/Running-GAPIT-GWAS/blob/main/trt_1-10.sh)
