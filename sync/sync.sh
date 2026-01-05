#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) ; readonly dir
kamaji_chart_dir="./helm/kamaji/charts/kamaji"
kamajicrds_chart_dir="./helm/kamaji/charts/kamaji-crds"

cd "${dir}/.."

# Sync - intermediate to the ./vendir folder -- KAMAJI APP
set -x
vendir sync
helm dependency update helm/kamaji/charts/kamaji

# Copy overwrites
 cp -R "./sync/overwrites/kamaji/." "$kamaji_chart_dir"

# Patches for Kamaji App
 ./sync/patches/kamaji/chart/patch.sh
 ./sync/patches/kamaji/values/patch.sh
 ./sync/patches/kamaji/helpers/patch.sh

# Patches for Kamaji CRDs
 ./sync/patches/kamaji-crds/chart/patch.sh
 ./sync/patches/kamaji-crds/crd-conversion/patch.sh
 ./sync/patches/kamaji-crds/helpers/patch.sh
 ./sync/patches/kamaji-crds/values/patch.sh