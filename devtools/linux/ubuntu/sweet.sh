#!/bin/bash -f
 apt autoremove
 apt-get -f install
 apt-get install -y python
 apt-get install -y shellcheck
 apt-get install -y unzip
 apt-get install -y apt-transport-https ca-certificates curl software-properties-common
 apt-get install -y docker-ce
 apt-get install -y nodejs
 apt-get install -y yum
 apt-get --purge remove --assume-yes ^grub-.*
 apt-get --purge remove --assume-yes ^linux-.* linux-base+
 apt install awscli
 apt install dos2unix
 apt install golang
 apt install golang-go
 apt install nodejs
 apt install python-pip
 apt-get upgrade --fix-missing
