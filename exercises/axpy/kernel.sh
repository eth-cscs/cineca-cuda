#!/bin/bash
#PBS -j oe
#PBS -o job.out
#PBS -A train_scA2016
#PBS -l select=1:ncpus=1:ngpus=1
#PBS -q parallel
#PBS -W group_list=train_scA2016

module load gnu cuda

nvidia-smi

~/cineca-cuda/exercises/axpy/axpy_kernel.cuda 8

