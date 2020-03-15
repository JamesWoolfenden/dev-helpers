#!/bin/bash
set -exo
add-apt-repository ppa:cpick/hub -y
apt-get update-y
apt-get install hub -y
