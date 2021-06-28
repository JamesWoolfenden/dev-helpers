#!/usr/bin/env bash
set -exo
version=$(lastversion Skyscanner/turbolift)
url="https://github.com/Skyscanner/turbolift/releases/download/${version}/turbolift_${version}_Darwin_x86_64.tar.gz"
wget $url -O - | tar -xzvf -

mv turbolift /usr/local/bin/turbolift
chmod +x /usr/local/bin/turbolift
turbolift --version
