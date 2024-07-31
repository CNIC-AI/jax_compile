#/bin/bash
clear
source config.sh
source env.sh

pip install dm-haiku
pip install orbax-checkpoint==0.5.16 --no-deps

#
cd $WORKSPACE/third_party/jax
mkdir -p dist && rm -rf dist/*
# bazel clean --expunge
python build/build.py \
    --enable_cuda \
    --cuda_path=$CUDA_HOME \
    --cudnn_path=$CUDNN_HOME \
    --bazel_options=--override_repository=xla="$WORKSPACE/third_party/xla"

#
pip install dist/*.whl --force-reinstall
pip install -e .
pip install numpy==1.26
