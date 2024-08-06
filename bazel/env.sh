WORKSPACE=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

export PATH=$WORKSPACE/install/bazel/bin:$PATH
