#!/bin/bash
#SBATCH -p normal
#SBATCH -N 2
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=10:00
#SBATCH -J jax-dist
#SBATCH -e logs/%j.err.log
#SBATCH -o logs/%j.log

nodes=$(scontrol show hostnames $SLURM_JOB_NODELIST)
nodes_array=($nodes)
master=${nodes_array[0]}
ip=$(srun --nodes=1 --ntasks=1 -w $master hostname --ip-address)

export ip_address=$ip:7000

#
echo "START TIME: $(date)"

srun single.sh

echo "END TIME: $(date)"
