#!/bin/bash
set -exo
apt-get install libgconf-2-4
curl -O https://prerelease.keybase.io/keybase_amd64.deb
# if you see an error about missing `libappindicator1`
# from the next command, you can ignore it, as the
# subsequent command corrects it
dpkg -i keybase_amd64.deb
apt-get install -f
run_keybase
