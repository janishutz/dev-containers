#!/bin/sh

docker run -it --rm -p 8081:8081 -v .:/mnt ghcr.io/janishutz/dev-container-node
