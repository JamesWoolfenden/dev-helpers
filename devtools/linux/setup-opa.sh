#!/usr/bin/env bash
set -exo
curl -L https://openpolicyagent.org/downloads/latest/opa_linux_amd64  > /usr/local/bin/opa
chmod +x /usr/local/bin/opa
opa version
