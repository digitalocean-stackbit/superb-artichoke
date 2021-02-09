#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://develop.widget.stackbit.com/init.js 602280362d7fcc0016d3f130

echo "stackbit-build.sh: finished build"
