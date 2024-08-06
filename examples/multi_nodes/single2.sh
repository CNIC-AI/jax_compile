#!/bin/bash
if [[ $SLURM_PROCID -eq 0 ]]; then
    node=$master
fi

if [[ $SLURM_PROCID -eq 1 ]]; then
    node=$slaves
fi

echo $node
echo $ip_address
echo $SLURM_PROCID

#
ssh -q $node "
unset https_proxy http_proxy
module load singularity/3.8.0

cd /work1/wangjh/chenwc
singularity exec -B /opt/hyhal:/opt/hyhal -w workspace/ /bin/bash -c '
cd /public/home/wangjh/jax/distribute/hydrogen
python main.py \
    --server_addr=$ip_address \
    --num_hosts=$SLURM_JOB_NUM_NODES \
    --host_idx=$SLURM_PROCID'
"
