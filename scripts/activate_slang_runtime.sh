#!/usr/bin/env bash

# Keep the wrapper ahead of the upstream slangc binary. Only slangc receives
# the glibc 2.34 loader; Python and CUDA extensions keep their normal runtime.
artifixer_repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export PATH="${artifixer_repo_dir}/scripts/slang-runtime-bin:${PATH}"
unset artifixer_repo_dir
