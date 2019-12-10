ECHO OFF
git config  diff.tool bc3
git config  difftool.bc3.path "c:\Program Files\Beyond Compare 4\bcomp.exe"
git config  merge.tool bc3
git config  mergetool.bc3.path "c:\Program Files\Beyond Compare 4\bcomp.exe"
git config  core.symlinks false
git config  core.autocrlf input
git config  core.fscache true
git config  color.diff auto
git config  color.status auto
git config  color.branch auto
git config  color.interactive true
git config  help.format html
git config  rebase.autosquash true
git config  filter.lfs.required true
git config  credential.helper manager
git config  filter.lfs.required true
git config  diff.tool bc4
git config  difftool.bc4.cmd "C:\Program Files\Beyond Compare 4\bcomp.exe" "$LOCAL" "$REMOTE"
git config  merge.tool bc4
git config  mergetool.bc4.cmd "C:\Program Files\Beyond Compare 4\bcomp.exe" "$LOCAL" "$REMOTE" "$BASE" "$MERGED"
git config  mergetool.bc4.trustexitcode true
git config  difftool.prompt false
git config  help.autocorrect 1
git config  alias.unstage "reset HEAD --"
git config  alias.last "log -1 HEAD"

git config --global diff.tool bc3
git config --global difftool.bc3.path "c://Program Files//Beyond Compare 4//bcomp.exe"
git config --global merge.tool bc3
git config --global mergetool.bc3.path "c://Program Files//Beyond Compare 4//bcomp.exe"
git config --global core.symlinks false
git config --global core.autocrlf input
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
git config --global diff.tool
git config --global difftool.bc4.cmd "C://Program Files//Beyond Compare 4//bcomp.exe" "$LOCAL" "$REMOTE"
git config --global merge.tool bc4
git config --global mergetool.bc4.cmd "C://Program Files//Beyond Compare 4//bcomp.exe" "$LOCAL" "$REMOTE" "$BASE" "$MERGED"
git config --global mergetool.bc4.trustexitcode true
git config --global difftool.prompt false
git config --global help.autocorrect 1
git config --global alias.unstage "reset HEAD --"
git config --global alias.last "log -1 HEAD"
