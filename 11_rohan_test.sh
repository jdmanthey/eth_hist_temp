#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-name=rohan
#SBATCH --nodes=1 --ntasks=6
#SBATCH --partition quanah
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=8G
#SBATCH --array=1-14

# define input files from helper file during genotyping
input_array=$( head -n${SLURM_ARRAY_TASK_ID} ind_list.txt | tail -n1 )

# define main working directory
workdir=/lustre/scratch/jmanthey/07_ethiopia_historical/zos_pol

source activate rohan

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/jmanthey/anaconda3/envs/rohan/lib/

/lustre/work/jmanthey/rohan/src/rohan --tstv 1.820 --size 50000 --rohmu 1e-04 --cov 6,200 --auto chromosomes.txt -t 6 \
-o ${workdir}/07_roh/${input_array}_roh \
/home/jmanthey/hist_references/Tae_gut/GCF_003957565.2_bTaeGut1.4.pri_genomic.fna \
${workdir}/01_bam_files/${input_array}_final.bam



