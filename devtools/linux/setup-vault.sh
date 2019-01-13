#!/bin/bash
curl https://keybase.io/hashicorp/pgp_keys.asc | gpg --import
apt-get install unzip
VERSION="1.0.0"
TOOL="vault"
cd /usr/local/bin
# Download the binary and signature files.
curl -Os "https://releases.hashicorp.com/$TOOL/$VERSION/${TOOL}_${VERSION}_linux_amd64.zip"
curl -Os "https://releases.hashicorp.com/$TOOL/$VERSION/${TOOL}_${VERSION}_SHA256SUMS"
curl -Os "https://releases.hashicorp.com/$TOOL/$VERSION/${TOOL}_${VERSION}_SHA256SUMS.sig"

# Verify the signature file is untampered.
gpg --verify "${TOOL}_${VERSION}_SHA256SUMS.sig" "${TOOL}_${VERSION}_SHA256SUMS"

# Verify the SHASUM matches the binary.
shasum -a 256 -c "${TOOL}_${VERSION}_SHA256SUMS"

unzip "${TOOL}_${VERSION}_linux_amd64.zip"
rm "${TOOL}_${VERSION}_linux_amd64.zip"
rm "${TOOL}_${VERSION}_SHA256SUMS"
rm "${TOOL}_${VERSION}_SHA256SUMS.sig"
"${TOOL}" -version
