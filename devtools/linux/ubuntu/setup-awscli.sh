#!/bin/bash
set -exo
apt-get -y install python
apt-get -y install python-pip
pip install setuptools
easy_install pip
pip install awscli
apt-get -y install jq
aws --version
