#!/bin/bash

#PBS -N  SN_Perfect261
#PBS -o  phase0.out
#PBS -e  phase0.err
#PBS -q  nongpu
#PBS -l  walltime=24:00:00
#PBS -l  nodes=8:ppn=8

module load openmpi
module load gcc/4.8.5
module load blas
module load boost
module load fftw
module load phase0/2014.03

cd $PBS_O_WORKDIR
mpirun -np 64 phase ne=64 nk=1
