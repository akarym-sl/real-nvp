#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem 128000
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --output=output.txt

module load miniconda3
source ~/.bashrc
conda deactivate
conda activate rnvp

echo "-----------------------------------------------------------------------------------------"

echo "Job ID: " $SLURM_JOB_ID
echo "Job Name: " $SLURM_JOB_NAME

python train.py