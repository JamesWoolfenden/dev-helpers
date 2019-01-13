#!/bin/bash
set -exo
pip install pre-commit
curl https://bootstrap.pypa.io/get-pip.py | sudo python - pre-commit
