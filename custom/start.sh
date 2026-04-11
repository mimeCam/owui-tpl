#!/usr/bin/env bash
#

(cd open-webui/backend && rm -rf data && ln -s /data data)

./rebuild_frontend.sh
./rebuild_backend.sh
