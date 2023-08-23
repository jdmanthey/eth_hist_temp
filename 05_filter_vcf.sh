#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-name=filter1
#SBATCH --nodes=1 --ntasks=1
#SBATCH --partition quanah
#SBATCH --time=8:00:00
#SBATCH --mem-per-cpu=8G
#SBATCH --array=1-35

# define input files from helper file during genotyping
input_array=$( head -n${SLURM_ARRAY_TASK_ID} vcf_list.txt | tail -n1 )

# define main working directory
workdir=/lustre/scratch/jmanthey/07_ethiopia_historical/cos_sem/

# pull out header and add to filtered vcf file
grep "#" ${workdir}/03_vcf/${input_array}.g.vcf > ${workdir}/04_filtered_vcf/${input_array}.filtered.vcf

# filter out rows that have low quality filters, genotyped sites with quality less than 20, and null alleles (* in col 4)
grep -v "#" ${workdir}/03_vcf/${input_array}.g.vcf | grep -v "LowQual" | awk '$6 >= 20 || $6 ~ /^\./' | awk '$5 !~ /*/' >> ${workdir}/04_filtered_vcf/${input_array}.filtered.vcf

# biallelic SNPs, for pca (no individuals missing per snp)
# minor allele count 2 or more
# (once no thinning, once thinned to 5kbp)
vcftools --vcf ${workdir}/04_filtered_vcf/${input_array}.filtered.vcf --max-missing 1 --minGQ 20 --minDP 6 --max-meanDP 50 --min-alleles 2 --max-alleles 2 --mac 2 --max-maf 0.49 --remove-indels --recode --recode-INFO-all --out ${workdir}/05_structure/${input_array}_structure_nothin

vcftools --vcf ${workdir}/04_filtered_vcf/${input_array}.filtered.vcf --max-missing 1 --minGQ 20 --minDP 6 --max-meanDP 50 --min-alleles 2 --max-alleles 2 --mac 2 --thin 5000 --max-maf 0.49 --remove-indels --recode --recode-INFO-all --out ${workdir}/05_structure/${input_array}_structure_5kbpthin

# biallelic SNPs, for snpeff (up to 20% individuals missing per snp)
vcftools --vcf ${workdir}/04_filtered_vcf/${input_array}.filtered.vcf --max-missing 0.8 --minGQ 20 --minDP 6 --max-meanDP 50 --min-alleles 2 --max-alleles 2 --mac 2 --max-maf 0.49 --remove-indels --recode --recode-INFO-all --out ${workdir}/08_snpeff/${input_array}_snpeff


# invariant and variant sites (up to 20% individuals missing per site)
# for fst, heterozygosity
vcftools --vcf ${workdir}/04_filtered_vcf/${input_array}.filtered.vcf --max-missing 0.9 --minGQ 20 --minDP 6 --max-meanDP 50 --max-alleles 2 --max-maf 0.49 --remove-indels --recode --recode-INFO-all --out ${workdir}/06_window_stats/${input_array}


# bgzip and tabix index files that will be subdivided into windows
# directory 1
bgzip ${workdir}/06_window_stats/${input_array}.recode.vcf
#tabix
tabix -p vcf ${workdir}/06_window_stats/${input_array}.recode.vcf.gz

