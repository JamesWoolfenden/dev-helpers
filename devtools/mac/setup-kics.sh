#!/usr/bin/env bash
curl -sfL 'https://raw.githubusercontent.com/Checkmarx/kics/master/install.sh' | bash -s -- -b /usr/local/bin
kics version
