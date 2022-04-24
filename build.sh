#!/bin/bash
set -e

IMAGE=cairo-cli
VERSIONS_FILE=versions.txt
version=0.8.1

REQUIREMENTS_URL="https://raw.githubusercontent.com/starkware-libs/cairo-lang/v$version/scripts/requirements.txt"
curl "$REQUIREMENTS_URL" > requirements.txt

docker build -t $IMAGE --build-arg CAIRO_VERSION=$version .
