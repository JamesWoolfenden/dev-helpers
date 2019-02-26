git config --global diff.tool bc3
git config --global difftool.bc3.path "c:/Program Files/Beyond Compare 4/bcomp.exe"
git config --global merge.tool bc3
git config --global mergetool.bc3.path "c:/Program Files/Beyond Compare 4/bcomp.exe"
git config --global user.email "James.Woolfenden@gmail.com"
git config --global user.name "James Woolfenden"
core.symlinks=false
core.autocrlf=true
core.fscache=true
color.diff=auto
color.status=auto
color.branch=auto
color.interactive=true
help.format=html
rebase.autosquash=true

filter.lfs.required=true
credential.helper=manager
filter.lfs.required=true

diff.tool=bc4
difftool.bc4.cmd="C:/Program Files/Beyond Compare 4/bcomp.exe" "$LOCAL" "$REMOTE"
merge.tool=bc4
mergetool.bc4.cmd="C:/Program Files/Beyond Compare 4/bcomp.exe" "$LOCAL" "$REMOTE" "$BASE" "$MERGED"
mergetool.bc4.trustexitcode=true
difftool.prompt=false
alias.unstage=reset HEAD --
alias.last=log -1 HEAD
