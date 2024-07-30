# gcc
export PATH=$GCC_HOME/bin:$PATH
export LD_LIBRARY_PATH=$GCC_HOME/lib:$GCC_HOME/lib64:$LD_LIBRARY_PATH

# export FC=
export CC=$GCC_HOME/bin/gcc
export CXX=$GCC_HOME/bin/g++

# CUDA
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64:$LD_LIBRARY_PATH

# conda
source ~/anaconda3/etc/profile.d/conda.sh
conda activate jax-compile
