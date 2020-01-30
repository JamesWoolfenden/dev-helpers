#!/bin/bash
set -exo
apt install -y python3
apt install -y python-pip
pip install pre-commit
curl https://bootstrap.pypa.io/get-pip.py | sudo python - pre-commit
