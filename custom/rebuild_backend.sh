#!/usr/bin/env bash
#
# https://docs.openwebui.com/getting-started/advanced-topics/development
#

cd open-webui/backend

python -m venv venv
. venv/bin/activate

pip install -r requirements.txt -U

exec ./start.sh
