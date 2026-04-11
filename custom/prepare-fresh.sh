#!/usr/bin/env bash
#

rm -rf .git
rm -rf open-webui
git clone https://github.com/open-webui/open-webui.git
rm -rf open-webui/.git
# (cd open-webui/backend && rm -rf data && ln -s /data data)
(cd open-webui/backend && rm -rf data)
git init .
git add -A
git commit -am '1'
