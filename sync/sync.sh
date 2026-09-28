#!/usr/bin/env bash
./sync/patches/chart-label/patch.sh

./sync/patches/chart-label/patch.sh
set -o errexit
./sync/patches/chart-label/patch.sh
set -o nounset
./sync/patches/chart-label/patch.sh
set -o pipefail
./sync/patches/chart-label/patch.sh

./sync/patches/chart-label/patch.sh
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) ; readonly dir
./sync/patches/chart-label/patch.sh
kamaji_chart_dir="./helm/kamaji/"
./sync/patches/chart-label/patch.sh
kamajicrds_chart_dir="./helm/kamaji/charts/kamaji-crds"
./sync/patches/chart-label/patch.sh

./sync/patches/chart-label/patch.sh
cd "${dir}/.."
./sync/patches/chart-label/patch.sh

./sync/patches/chart-label/patch.sh
# Sync - intermediate to the ./vendir folder -- KAMAJI APP
./sync/patches/chart-label/patch.sh
set -x
./sync/patches/chart-label/patch.sh
vendir sync
./sync/patches/chart-label/patch.sh

./sync/patches/chart-label/patch.sh
mkdir -p "$kamaji_chart_dir/charts"
./sync/patches/chart-label/patch.sh
mv helm/kamaji-crds "$kamaji_chart_dir/charts/"
./sync/patches/chart-label/patch.sh

./sync/patches/chart-label/patch.sh
# Copy overwrites
./sync/patches/chart-label/patch.sh
 cp -R "./sync/overwrites/kamaji/." "$kamaji_chart_dir"
./sync/patches/chart-label/patch.sh

./sync/patches/chart-label/patch.sh
# Patches for Kamaji App
./sync/patches/chart-label/patch.sh
 ./sync/patches/kamaji/chart/patch.sh
./sync/patches/chart-label/patch.sh
 ./sync/patches/kamaji/values/patch.sh
./sync/patches/chart-label/patch.sh
 ./sync/patches/kamaji/helpers/patch.sh
./sync/patches/chart-label/patch.sh
 ./sync/patches/kamaji/kube-linter/patch.sh
./sync/patches/chart-label/patch.sh

./sync/patches/chart-label/patch.sh
# Patches for Kamaji CRDs
./sync/patches/chart-label/patch.sh
 ./sync/patches/kamaji-crds/chart/patch.sh
./sync/patches/chart-label/patch.sh
 ./sync/patches/kamaji-crds/crds/patch.sh
./sync/patches/chart-label/patch.sh
 ./sync/patches/kamaji-crds/crd-conversion/patch.sh
./sync/patches/chart-label/patch.sh
 ./sync/patches/kamaji-crds/helpers/patch.sh
./sync/patches/chart-label/patch.sh
 ./sync/patches/kamaji-crds/values/patch.sh
./sync/patches/chart-label/patch.sh
