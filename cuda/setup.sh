#!/bin/bash
source env.sh
echo $CUDA_HOME

#
bash $WORKSPACE/cuda_* --toolkitpath=$CUDA_HOME
rm /tmp/cuda-installer.log
