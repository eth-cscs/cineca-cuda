#!/bin/bash
#PBS -j oe
#PBS -A train_scA2016
#PBS -l select=1:ncpus=1:ngpus=1
#PBS -q parallel
#PBS -W group_list=train_scA2016

module load gnu cuda

nvidia-smi

for n in `seq 8 2 24`
do
    echo ========= RUNNING WITH 2**$n
    ./newton.cuda $n
done

