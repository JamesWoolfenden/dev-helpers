#!/usr/bin/env bash
set -exo
lastversion infracost -d --assets
tar -xzf infracost-linux-amd64.tar.gz
mv infracost-linux-amd64 /usr/local/bin/infracost
rm infracost-linux-amd64.tar.gz
chmod +x /usr/local/bin/infracost
infracost --version
