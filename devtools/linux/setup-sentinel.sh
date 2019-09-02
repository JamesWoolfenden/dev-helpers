#!/usr/bin/env bash
set -exo
VERSION="0.10.4"
PACKAGE="sentinel_${VERSION}_linux_amd64.zip"
wget "https://releases.hashicorp.com/sentinel/${VERSION}/${PACKAGE}"
unzip ${PACKAGE}
rm ${PACKAGE}
mv sentinel /usr/local/bin/sentinel
chmod +x /usr/local/bin/sentinel
sentinel --version
