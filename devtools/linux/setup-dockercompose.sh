#!/usr/bin/env bash
set -exo
# Install Python and PIP.
sudo apt-get install -y python python-pip

# Install Docker Compose into your user's home directory.
pip install --user docker-compose
