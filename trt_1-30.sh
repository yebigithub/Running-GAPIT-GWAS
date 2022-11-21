#!/bin/bash

###########################################################################
## environment & variable setup
####### job customization
#SBATCH --job-name="gwas"
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 3:00:00
#SBATCH -p normal_q
#SBATCH --mem-per-cpu=8G
#SBATCH -A multiomicquantgen    #### <------- change me
####### end of job customization
# end of environment & variable setup
###########################################################################
#### add modules on TC/Infer
module load containers/singularity/3.8.5
### from DT/CA, use module load singularity
module list
#end of add modules
###########################################################################
###print script to keep a record of what is done
cat trt_1-30.sh
###########################################################################
echo start running R
## note, on DT/CA, you should replace projects with groups

singularity exec --bind=/work,/projects \
    /projects/arcsingularity/ood-rstudio141717-bio_4.1.0.sif Rscript GAPIT_GWAS_stress.R 1 1

exit;
