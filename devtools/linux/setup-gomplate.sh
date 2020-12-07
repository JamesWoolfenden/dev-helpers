#!/usr/bin/env bash
set -exo
VERSION=$(lastversion gomplate)
url="https://github.com/hairyhenderson/gomplate/releases/download/v${VERSION}/gomplate_linux-amd64"
echo "Getting $url"
curl -L  "$url" > /usr/local/bin/gomplate
chmod +x /usr/local/bin/gomplate
gomplate --version
