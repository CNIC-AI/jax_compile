# third-party

## conda

``` bash
conda create -n jax-compile python=3.9

pip install --upgrade pip
pip install build
pip install numpy==1.26
```

## CUDA

``` bash
wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run
bash cuda_11.8.0_520.61.05_linux.run
```

## cuDNN

``` bash
tar -xvf cudnn-linux-x86_64-8.9.7.29_cuda11-archive.tar.xz
```

## gcc

``` bash
wget https://mirror.koddos.net/gcc/releases/gcc-11.3.0/gcc-11.3.0.tar.gz
tar -zxvf gcc-11.3.0.tar.gz

./build_gcc.sh
```

## jax

``` bash
git clone https://github.com/google/jax.git
cd jax
git checkout jax-v0.4.23
```

## xla

``` bash
git clone https://github.com/openxla/xla.git
cd xla
git checkout a487d8ba5da8d0dec056972270e50de6748a1035
```
