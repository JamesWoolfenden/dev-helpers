#!/usr/bin/env bash
curl -LO https://github.com/rancher/rke/releases/download/$(curl -s https://api.github.com/repos/rancher/rke/releases/latest | grep tag_name | cut -d '"' -f 4)/rke_linux-amd64
chmod +xrke_linux-amd64
sudo mv rke_linux-amd64 /usr/local/bin/rke
terraformer --version
