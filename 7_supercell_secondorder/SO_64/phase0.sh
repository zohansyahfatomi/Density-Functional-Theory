#!/bin/bash
#
#SBATCH --job-name="SO_64"
#SBATCH --mail-type=END
#   TIPE: BEGIN, END, FAIL, REQUEUE
#SBATCH --mail-user=expeliarnus@gmail.com
#SBATCH --nodes=4
#SBATCH --ntasks=4
#SBATCH --output=testingphase0.out
module load mpi/openmpi-x86_64
module load apps/phase0
#! cd testrun3
mpirun phase 
