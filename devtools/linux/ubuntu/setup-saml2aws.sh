#!/bin/bash
set -exo
apt-get install unzip
VERSION="2.13.0"
TOOL="saml2aws"
EDITION="linux_amd64"
cd /usr/local/bin
wget http://github.com/Versent/saml2aws/releases/download/v${VERSION}/${TOOL}_${VERSION}_linux_amd64.tar.gz
tar -xzvf "${TOOL}_${VERSION}_linux_amd64.tar.gz"

"${TOOL}" --version
