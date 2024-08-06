# Install third-party dependencies

## CUDA

``` bash
wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run
```

## cuDNN

``` bash
tar -xvf cudnn-linux-x86_64-8.9.7.29_cuda11-archive.tar.xz
```

## jax

``` bash
git clone https://github.com/google/jax.git
cd jax

git checkout jax-v0.4.23
```

## conda

``` bash
conda create -n jax_compile python=3.9

pip install --upgrade pip
pip install build
pip install numpy==1.26
```
