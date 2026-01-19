#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

repo_dir=$(git rev-parse --show-toplevel) ; readonly repo_dir
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) ; readonly script_dir
CHART_DIR="${repo_dir}/helm/kamaji" ; readonly CHART_DIR

cd "${repo_dir}"

readonly script_dir_rel=".${script_dir#"${repo_dir}"}"

set -x

git apply "${script_dir_rel}/_values.patch"

cp -av "${script_dir_rel}/manifests/values.schema.json" "${CHART_DIR}/values.schema.json"

{ set +x; } 2>/dev/null
