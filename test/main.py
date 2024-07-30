import argparse
import jax

import numpy as np
import jax.numpy as jnp

# 输出jax的log信息
import logging
logging.basicConfig(level=logging.INFO)

parser = argparse.ArgumentParser()
parser.add_argument("--server_addr", type=str)
parser.add_argument("--num_hosts", type=int, default=1, help="num of hosts")
parser.add_argument("--host_idx", type=int, default=0)

args = parser.parse_args()
print(args)


if __name__ == "__main__":
    jax.distributed.initialize(
        coordinator_address=args.server_addr,
        num_processes=args.num_hosts,
        process_id=args.host_idx,
    )

    # success
    print(jax.devices())
    jax.print_environment_info()
