#!/usr/bin/env bash 

source $PWD/.bashrc

coreos-installer download -p qemu -f qcow2.xz --decompress

butane --pretty --strict --files-dir=./ testing-fcos.bu --output testing-fcos.ign
