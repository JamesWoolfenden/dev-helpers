#!/bin/sh

echo "Installing basic dev stack"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source ~/.zshrc

brew install adoptopenjdk
brew install slack
brew install iterm2
brew install git
brew install google-chrome
brew install zoomus
brew install tfenv
brew install python
brew install pipenv
brew install wget
brew install postman
brew install pycharm-ce
brew install docker
brew install macpass
brew install packer
brew install graphviz 
brew install jq
brew install google-cloud-sdk
brew install kubernetes-helm
brew install awscli
brew install checkov			
brew install hub
brew install dos2unix
brew install shellcheck
brew install terraform-docs
brew install terraformer
brew install powershell

tfenv install 14.4
tfenv use 0.14.4 
echo "export PATH=~/Library/Python/3.7/bin:\$PATH" >> ~/.bash_profile
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
source ~/.zshrc
nvm install 15.5.1
npm install -g serverless
pip3 install detect-secrets
mkdir ~/development