#/bin/bash
gmp='gmp-6.1.0.tar.bz2'
mpfr='mpfr-3.1.4.tar.bz2'
mpc='mpc-1.0.3.tar.gz'
isl='isl-0.18.tar.bz2'

base_url="https://gcc.gnu.org/pub/gcc/infrastructure"

#
prerequisites=(
    $base_url/$gmp
    $base_url/$mpfr
    $base_url/$mpc
    $base_url/$isl

)

for site in "${prerequisites[@]}"; do
    wget $site
done
