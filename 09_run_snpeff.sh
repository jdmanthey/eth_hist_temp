#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-name=snpeff1
#SBATCH --nodes=1 --ntasks=2
#SBATCH --partition quanah
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=8G
#SBATCH --array=1-35

# define input files from helper file during genotyping
input_array=$( head -n${SLURM_ARRAY_TASK_ID} vcf_list.txt | tail -n1 )

# define main working directory
workdir=/lustre/scratch/jmanthey/07_ethiopia_historical/cos_sem/

# run snpEff for this chromosome
java -Xmx16g -jar ~/snpEff/snpEff.jar finch ${workdir}/08_snpeff/${input_array}_snpeff.recode.vcf > ${workdir}/08_snpeff/${input_array}.ann.vcf

# remove intergenic, intron, upstream, and downstream regions (i.e., only cds regions)
grep -v "intergenic" ${workdir}/08_snpeff/${input_array}.ann.vcf | grep -v "intron" | grep -v "upstream" | grep -v "downstream" | grep -v "^#" > ${workdir}/08_snpeff/${input_array}.ann2.vcf


