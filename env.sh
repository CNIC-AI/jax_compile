source bazel/env.sh

source cuda/env.sh
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64:$LD_LIBRARY_PATH
nvcc -V

#
source gcc/env.sh
export PATH=$GCC_HOME/bin:$PATH
export LD_LIBRARY_PATH=$GCC_HOME/lib:$GCC_HOME/lib64:$LD_LIBRARY_PATH

export CC=$GCC_HOME/bin/gcc
export CXX=$GCC_HOME/bin/g++
gcc -v
