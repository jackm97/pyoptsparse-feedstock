#!/bin/bash

set -eo pipefail

cd "${SRC_DIR}"
export IPOPT_DIR="$PREFIX"
export NP_INC="${SP_DIR}/numpy/core/include/"
echo "PYTHON TARGET=${PYTHON}"
meson setup build --prefix="${PREFIX}" -Dipopt_dir="${IPOPT_DIR}" -Dincdir_numpy="${NP_INC}" -Dpython_target="${PYTHON}" "${MESON_ARGS}"
meson install -C build
