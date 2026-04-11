#!/usr/bin/env bash
#

chmod +x custom/*.sh

if [[ "$OSTYPE" == "darwin"* ]]; then
    DOCKER=/usr/local/bin/docker
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    DOCKER=/usr/bin/docker
fi

$DOCKER stop owui || true
sleep 2
$DOCKER rm owui || true
sleep 2

$DOCKER run -d --restart=unless-stopped \
    --user $(id -u):$(id -g) \
    -p 3000:8080 \
    -v "$PWD/data:/data" \
    -v "$PWD/custom:/custom" \
    -w /custom \
    --name owui node:20 bash -c "$1"
