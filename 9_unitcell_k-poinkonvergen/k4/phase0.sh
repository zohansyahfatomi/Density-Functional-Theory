#!/bin/bash
#
#SBATCH --job-name="k4"
#SBATCH --mail-type=END
#   TIPE: BEGIN, END, FAIL, REQUEUE
#SBATCH --mail-user=zohan.syah.f@mail.UGM.AC.ID
#SBATCH --nodes=4
#SBATCH --ntasks=4
#SBATCH --ntasks-per-core=1
#SBATCH --output=testingphase0.out
module load mpi/openmpi-x86_64
module load apps/phase0
#!cd testrun
mpirun phase 
