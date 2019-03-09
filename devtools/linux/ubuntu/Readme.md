# Install Golang

```cli
apt install golang
```

## build the tools

```cli
go get github.com/99designs/aws-vault
go get github.com/hashicorp/terraform
go get github.com/hashicorp/packer
go get github.com/segmentio/terraform-docs
go get github.com/hairyhenderson/gomplate/cmd/gomplate
```

## Questions

### I have this sweet setup at home but i need to replicate the packages I installed?

I'm glad you asked Grasshopper. Ill be need all those apt commands you used first:

```bash
(zcat $(ls -tr /var/log/apt/history.log*.gz); cat /var/log/apt/history.log) 2>/dev/null |
  egrep '^(Start-Date:|Commandline:)' |
  grep -v aptdaemon |
  egrep '^Commandline:'
```

Great, Now if you pipe that shizzle out to a file like so:

```bash
(zcat $(ls -tr /var/log/apt/history.log*.gz); cat /var/log/apt/history.log) 2>/dev/null |
  egrep '^(Start-Date:|Commandline:)' |
  grep -v aptdaemon |
  egrep '^Commandline:'>mysweetapts.txt
```

mmm so that nearly there but...

Yeah, I gonna need you to dedupe that for me....

```bash
sort mysweetapts.txt | uniq > dedupe-apts.txt
```

Ok now how about those strings i don't need?

```bash
sed -i -e 's/Commandline://g'  dedupe-apts.txt
```

Will it run?

```bash
awk 'BEGIN{print "#!/bin/bash -f"} {print}' dedupe-apts.txt > sweet.sh
```

SWEET!

ok if you're lazy just run export-apt.sh, this makes sweet.sh which you run on your target.
