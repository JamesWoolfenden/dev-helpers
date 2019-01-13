#!/bin/bash
set -exo
sudo apt-get -y install python
sudo apt-get -y install python-pip
sudo pip install setuptools
sudo easy_install pip
sudo pip install awscli
sudo apt-get -y install jq
aws --version
