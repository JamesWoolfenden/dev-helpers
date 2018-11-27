#!/bin/bash
apt-get install unzip
VERSION="0.11.10"
cd /usr/local/bin
wget "https://releases.hashicorp.com/terraform/$VERSION/terraform_${VERSION}_linux_amd64.zip"
unzip "terraform_${VERSION}_linux_amd64.zip"
rm "terraform_${VERSION}_linux_amd64.zip"
terraform -version
