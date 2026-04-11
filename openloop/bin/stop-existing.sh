#!/usr/bin/env bash
#

if [[ "$OSTYPE" == "darwin"* ]]; then
    /usr/local/bin/docker stop owui || true
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    /usr/bin/docker stop owui || true
fi
# docker stop owui; # NEI, needs full path

echo "Stopped 'owui' docker container"
