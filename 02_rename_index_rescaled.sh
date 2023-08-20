# interactive
for i in $( ls *rescaled.bam ); do
mv $i ${i%rescaled.bam}final.bam;
done


#!/bin/bash
#SBATCH --chdir=./
#SBATCH --job-name=bam
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=1
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=8G
#SBATCH --array=1-20

module load intel java bwa samtools singularity

export SINGULARITY_CACHEDIR="/lustre/work/jmanthey/singularity-cachedir"

# define main working directory
workdir=/lustre/scratch/jmanthey/07_ethiopia_historical

basename_array=$( head -n${SLURM_ARRAY_TASK_ID} ${workdir}/01_rescaled/basenames_rescaled.txt | tail -n1 )

# define the reference genome
refgenome=/home/jmanthey/hist_references/Tae_gut/GCF_003957565.2_bTaeGut1.4.pri_genomic.fna

samtools index ${workdir}/01_rescaled/${basename_array}_final.bam
