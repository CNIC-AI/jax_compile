#!/bin/bash
clear
source env.sh
WORKSPACE=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

# examples:
# $ ./build_jax.sh
# $ ./build_jax.sh clean
for arg in "$@"; do
    if [ "$arg" == "clean" ]; then
        cd $WORKSPACE/jax
        bazel clean --expunge
    fi
done

# env
source ~/anaconda3/etc/profile.d/conda.sh
conda activate jax_compile
# pip install --upgrade pip
# pip install build
# pip install numpy==1.26
# pip install setuptools==65.7.0
numpy_version=$(python -c "import numpy as np; print(np.__version__)")

# build
cd $WORKSPACE/jax
mkdir -p dist && rm -rf dist/*
# bazel clean --expunge
python -u build/build.py \
    --enable_cuda \
    --cuda_path=$CUDA_HOME \
    --cudnn_path=$CUDNN_HOME \
    --bazel_options=--override_repository=xla="$WORKSPACE/xla"

(
    exec >"$WORKSPACE/$(date '+%Y%m%d_%H%M%S').log" 2>&1
    python setup.py bdist_wheel

    pip install dist/jaxlib-*.whl --force-reinstall
    pip install dist/jax-*.whl --force-reinstall
    # pip install -e .
    pip install numpy==$numpy_version
)

pip list
