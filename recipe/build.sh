#!/usr/bin/env bash
set -ex

# Bundle all downstream library licenses
cd python
cargo-bundle-licenses \
  --format yaml \
  --output ${SRC_DIR}/THIRDPARTY.yml

# Install package
${PYTHON} -m pip install . -vv