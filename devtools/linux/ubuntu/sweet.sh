#!/bin/bash -f
 apt autoremove
 apt-get -f install
 apt-get install google-cloud-sdk
 apt-get install npm
 apt-get install python
 apt-get install shellcheck
 apt-get install unzip
 apt-get install -y apt-transport-https ca-certificates curl software-properties-common
 apt-get install -y docker-ce
 apt-get install -y nodejs
 apt-get install yum
 apt-get --purge remove --assume-yes ^grub-.*
 apt-get --purge remove --assume-yes ^linux-.* linux-base+
 apt-get upgrade
 apt-get upgrade --fix-missing
 apt install awscli
 apt install dos2unix
 apt install golang
 apt install golang-go
 apt install nodejs
 apt install python-pip
 apt upgrade
