#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks-per-node=16
#SBATCH --time=168:00:00
#SBATCH --partition=cpup
#SBATCH --job-name=siesta_test
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out

echo "Starting at `date`"
echo "Running on hosts: $SLURM_NODELIST"
echo "Running on $SLURM_NNODES nodes."
echo "Running $SLURM_NTASKS tasks."
echo "Job submission directory is :$SLURM_SUBMIT_DIR"

cd $SLURM_SUBMIT_DIR

export I_MPI_FABRICS="shm:ofi"

export FI_PROVIDER=sockets

# Load the HPC SDK environment
source /opt/intel/env.sh

# Running program
mpirun -np 8 ../siesta-5.0.1-installation/bin/siesta/bin/siesta < *.fdf > relax.out
# give full loaction of the siesta 
