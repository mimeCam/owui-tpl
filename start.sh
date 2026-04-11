#!/usr/bin/env bash
#

chmod +x custom/*.sh

rm -rf .git
rm start.sh

docker build -t owui .

openloop &
