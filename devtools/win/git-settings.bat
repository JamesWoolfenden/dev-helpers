git config --global diff.tool bc3
git config --global difftool.bc3.path "c:/Program Files/Beyond Compare 4/bcomp.exe"
git config --global merge.tool bc3
git config --global mergetool.bc3.path "c:/Program Files/Beyond Compare 4/bcomp.exe"
git config --global user.email "James.Woolfenden@gmail.com"
git config --global user.name "James Woolfenden"

git config --global core.symlinks false
git config --global core.autocrlf true
git config --global core.fscache true
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.interactive true
git config --global help.format html
git config --global rebase.autosquash true
git config --global filter.lfs.required true
git config --global credential.helper manager
git config --global filter.lfs.required true
git config --global diff.tool bc4
git config --global difftool.bc4.cmd "C:/Program Files/Beyond Compare 4/bcomp.exe" "$LOCAL" "$REMOTE"
git config --global merge.tool bc4
git config --global mergetool.bc4.cmd "C:/Program Files/Beyond Compare 4/bcomp.exe" "$LOCAL" "$REMOTE" "$BASE" "$MERGED"
git config --global mergetool.bc4.trustexitcode true
git config --global difftool.prompt false
git config --global help.autocorrect 1
git config --global alias.unstage "reset HEAD --"
git config --global alias.last "log -1 HEAD"
