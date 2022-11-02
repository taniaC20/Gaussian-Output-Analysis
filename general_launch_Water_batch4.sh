#!/bin/bash
#SBATCH --mem=8G               # memory amount, roughly 2 times %mem  
#SBATCH --time=00-06:00        # time (DD-HH:MM)
#SBATCH --cpus-per-task=16     # No. of cpus as defined by %nprocs
#SBATCH --array=71-100
#SBATCH --mail-user=tnchevez@mun.ca
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mail-type=REQUEUE
#SBATCH --mail-type=ALL
#SBATCH --job-name=Gaussian_-%j

module load gaussian/g16.c01
g16 < Compound${SLURM_ARRAY_TASK_ID}_Water.com >& Compound${SLURM_ARRAY_TASK_ID}_Water.log   # direct g16 command