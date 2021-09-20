#!/bin/sh

function install_or_upgrade {
    figlet $1
    if brew ls --versions "$1" >/dev/null; then
        HOMEBREW_NO_AUTO_UPDATE=1 brew upgrade "$1"
    else
        HOMEBREW_NO_AUTO_UPDATE=1 brew install "$1"
    fi
}

brew install figlet --quiet
install_or_upgrade adoptopenjdk
install_or_upgrade awscli
install_or_upgrade azure-cli
install_or_upgrade checkov
install_or_upgrade docker
install_or_upgrade dos2unix
install_or_upgrade git
install_or_upgrade gimme-aws-creds
install_or_upgrade google-chrome
install_or_upgrade google-cloud-sdk
install_or_upgrade graphviz
install_or_upgradehelm
install_or_upgrade hub
install_or_upgradeinfracost
install_or_upgrade iterm2
install_or_upgrade jq
install_or_upgrade kubernetes-helm
install_or_upgrade macpass
install_or_upgrade packer
install_or_upgrade pipenv
install_or_upgrade postman
install_or_upgrade powershell
install_or_upgrade pycharm-ce
install_or_upgrade python
install_or_upgrade shellcheck
install_or_upgrade slack
install_or_upgrade terraform
install_or_upgrade terraform-docs
install_or_upgrade terraformer
install_or_upgrade tfenv
install_or_upgrade wget
install_or_upgrade zoomus


