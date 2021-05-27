#!/usr/bin/env bash
set -exo
curl https://keybase.io/hashicorp/pgp_keys.asc | gpg --import
apt-get install unzip
VERSION=$(lastversion terraform)
TOOL="terraform"
EDITION="linux_amd64"
cd /usr/local/bin
# Download the binary and signature files.
wget "https://releases.hashicorp.com/$TOOL/$VERSION/${TOOL}_${VERSION}_${EDITION}.zip"




unzip -o "${TOOL}_${VERSION}_linux_amd64.zip"
rm "${TOOL}_${VERSION}_linux_amd64.zip"

"${TOOL}" --version
