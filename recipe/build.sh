#!/usr/bin/env bash
set -ex
export OPENSSL_DIR=$PREFIX

# Install package
cd python
${PYTHON} -m pip install . -vv

# Bundle all downstream library licenses
cargo-bundle-licenses \
  --format yaml \
  --output ../THIRDPARTY.yml