#!/bin/bash
export TF_CPP_MIN_LOG_LEVEL=0
export TF_CPP_MAX_VLOG_LEVEL=5

echo "ip_address"=$ip_address

which python
python -u main.py \
    --server_addr=$ip_address \
    --num_hosts=$SLURM_JOB_NUM_NODES \
    --host_idx=$SLURM_PROCID
