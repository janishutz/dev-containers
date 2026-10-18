#!/bin/sh

set -e

old_pwd=$(pwd)
cd $2

echo "Build will be tagged with $1"
echo "Build directory is $(pwd)"

OLD_IMG=$(docker image ls -q "$1")
docker buildx build . -t "$1"

echo "Build complete, starting upload..."
docker push "$1"

if [ -n "$OLD_IMG" ]; then
    if [ "$OLD_IMG" != "$(docker image ls -q "$1")" ]; then
        echo "New build uploaded, removing old image, id: $OLD_IMG"
        docker image rmi -f "$OLD_IMG" || true
        echo "Exit status: $?"
    fi
fi

cd $old_pwd
