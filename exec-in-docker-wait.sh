#!/usr/bin/env bash
#

chmod +x custom/*.sh

if [[ "$OSTYPE" == "darwin"* ]]; then
    DOCKER=/usr/local/bin/docker
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    DOCKER=/usr/bin/docker
fi

$DOCKER stop owui || true

$DOCKER run --rm \
    --user $(id -u):$(id -g) \
    -p 3000:8080 \
    -v "$PWD/data:/data" \
    -v "$PWD/custom:/custom" \
    -w /custom \
    --name owui node:20 bash -c "$1"
    # --name owui node:20 "$@"
