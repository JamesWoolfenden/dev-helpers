#!/bin/bash
set -exo
apt-get install unzip
PACKER_VERSION="1.2.2"
cd /usr/local/bin
wget "https://releases.hashicorp.com/packer/$PACKER_VERSION/packer_${PACKER_VERSION}_linux_amd64.zip"
unzip "packer_${PACKER_VERSION}_linux_amd64.zip"
rm "packer_${PACKER_VERSION}_linux_amd64.zip"
