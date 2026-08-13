#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

repo_dir=$(git rev-parse --show-toplevel) ; readonly repo_dir
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) ; readonly script_dir

cd "${repo_dir}"

readonly script_dir_rel=".${script_dir#"${repo_dir}"}"

set -x
git apply "${script_dir_rel}/_chart.patch"

# update the crd Chart.yaml if the CRDs have changed
CRDS_CHANGED=0
PARENT_CHART_DIR="./helm/kamaji"
CHART_DIR="./helm/kamaji/charts/kamaji-crds"
CRDS_DIR="./helm/kamaji/charts/kamaji-crds/templates"

# check for updated CRDs
if ! git diff --quiet HEAD -- "${CRDS_DIR}"; then
    CRDS_CHANGED=1
fi

# check for new CRDs
if git ls-files --others --exclude-standard -- "${CRDS_DIR}" | grep -q .; then
    CRDS_CHANGED=1
fi

if [[ $CRDS_CHANGED -eq 1 ]]; then
    # CRDs have changed in this release, set the CRD chart version to match the upstream version we're syncing against
    CRD_CHART_VERSION=$(yq .directories[0].contents[0].git.ref "${repo_dir}/vendir.yml")
else
    # no change to CRDs, ensure the CRD chart version is not bumped by setting it to the current published version
    CRD_CHART_VERSION=$(curl --silent https://raw.githubusercontent.com/giantswarm/kamaji-app/refs/heads/main/helm/kamaji/charts/kamaji-crds/Chart.yaml | yq .version -r)
fi

# update the crd chart version
sed -i -E "s/^(version: ).*/\1${CRD_CHART_VERSION}/" "${CHART_DIR}/Chart.yaml"

# replace the placeholder in the main chart's dependencies
sed -i -E "s/REPLACE_CRDVERSION/${CRD_CHART_VERSION}/" "${PARENT_CHART_DIR}/Chart.yaml"
