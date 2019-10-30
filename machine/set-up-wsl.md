# wsl config

```config
[automount]
root = /
options = "metadata"
```

## remount c as c not m nt/c

```bash

## created as su to match /mnt/c
sudo mkdir -p /c
# update /etc/fstab; requires su
sudo sh -c "echo '/mnt/c /c none bind' >> /etc/fstab"
# reload fstab; requires su
sudo mount -a
```

## Ubuntu 18.08

```cli
sudo apt upgrade
sudo apt update
sudo apt install -y awscli/c/
```

cp -r /c/Users/james.woolfenden/.ssh/ ~/.ssh/

cp -r /c/Users/james.woolfenden/.aws/ ~/.aws/

cp /c/Users/james.woolfenden/.gitconfig ~/

cp /c/Users/james.woolfenden/.saml2aws ~/

git config --global user.email "James.Woolfenden@gmail.com"
git config --global user.name "James Woolfenden"

### add .ssh/key

### install git bash prompt

<https://github.com/magicmonty/bash-git-prompt>

### pre-commit

### profile

function loginaws {
  saml2aws --skip-prompt --username james.woolfenden@examplea.com --password <password> --role arn:aws:iam::<account_no>:role/DevTest-DevOps login --profile saml --force
export AWS_PROFILE="saml"
}

<https://sts.examplea.com/adfs/ls/idpinitiatedsignon>
