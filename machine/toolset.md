# developer set-up

|language| version|ubuntu|windows|
|--------|--------|------|-------|
ruby||sudo apt install ruby-full|cinst ruby
gem|||see below
terraforming||sudo gem install terraforming|gem install terraforming
landscape||sudo gem install terraform_landscape|gem install terraform_landscape
python|||cinst python
terraform|0.11.11||cinst terraform
packer|||cinst packer
awscli|||cinst awscli
azure-cli|||cinst azure-cli
git|||
golang | 1.11.5 ||
make|
nodejs|||
nvm|1.1.7||cinst nvm
python| 3.7.2||cinst python
vscode| 1.31.1||cinst vscode
saml2aws|2.13||cinst saml2aws
jq|1.5||cinst jq
dos2unix|-|sudo apt install dos2unix|n/a
poshgit|n/a||cinst poshgit
beyondcompare|4.2.9||cinst beyondcompare
git-remote-codecommit||sudo pip install git-remote-codecommit|pip install git-remote-codecommit
bash-git-prompt||https://github.com/magicmonty/bash-git-prompt|n/a

## linux

## ruby on windows
git clone git@github.com:rubygems/rubygems.git
cd rubygems|git submodule update --init
ruby setup.rb

## npm
Get a list of installed global packages
```npm list -g --depth 0```
I've put the output from my machine at /machine/npm-global

## 18.08

upgrade
update
awscli
cp -r /c/Users/james.woolfenden/.ssh/ ~/.ssh/
cp -r /c/Users/james.woolfenden/.aws/ ~/.aws/
cp /c/Users/james.woolfenden/.gitconfig ~/
cp /c/Users/james.woolfenden/.saml2aws ~/
git config --global user.email "James.Woolfenden@gmail.com"
git config --global user.name "James Woolfenden"

### add .ssh/key

### install git bash prompt

https://github.com/magicmonty/bash-git-prompt

## pre-commit

### profile

function loginaws {
  saml2aws --skip-prompt --username james.woolfenden@centrica.com --password password --role arn:aws:iam::553700203877:role/DevTest-DevOps login --profile saml --force
export AWS_PROFILE="saml"
}
https://sts.centricaplc.com/adfs/ls/idpinitiatedsignon
