#!/usr/bin/env bash
#
# https://docs.openwebui.com/getting-started/advanced-topics/development
#

cd open-webui/backend

apt update && apt install -y python3.11-venv

python3 -m venv venv
. venv/bin/activate

pip install -r requirements.txt -U
# pip install -r requirements-min.txt -U

# # sh dev.sh
# ./start.sh
exec ./start.sh
