#!/usr/bin/env bash
set -exo
VERSION="3.5.0"
curl -L "https://github.com/hairyhenderson/gomplate/releases/download/v${VERSION}/gomplate_linux-amd64"  > /usr/local/bin/gomplate
chmod +x /usr/local/bin/gomplate
gomplate --version
