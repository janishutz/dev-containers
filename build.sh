#!/bin/sh

set -e

echo "
Updating arch base image
"
docker pull archlinux:latest

echo "
Building node container
"
./helper.sh ghcr.io/janishutz/dev-container-node node

echo "
Building vue runner container
"
./helper.sh ghcr.io/janishutz/vue-dev-runner vue
