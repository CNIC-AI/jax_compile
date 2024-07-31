#!/bin/bash
clear
source ../config.sh
source ../env.sh

unset https_proxy http_proxy

sbatch run.sh
