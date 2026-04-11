#!/usr/bin/env bash
#
# https://docs.openwebui.com/getting-started/advanced-topics/development
#

set +o errexit

cd open-webui

cp -RPp .env.example .env
npm install

NODE_OPTIONS="--max-old-space-size=4096" npm run build
