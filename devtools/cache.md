# Speeding up your Terraform builds and development

If you work with terraform you might be familar with having to wait for your providers executables to download.
With multiple terraform projects and environments thats a lot of copying and downloading, even if you dont **terraform init** that often.

## Windows
```powershell
ni $env:APPDATA\terraform.rc
Add-Content $env:APPDATA\terraform.rc "plugin_cache_dir   = `"$HOME\\.terraform.d\\plugin-cache`""
mkdir "$HOME/.terraform.d/plugin-cache"
```

## *nix/ubuntu
```
touch ~/.terraformrc
echo plugin_cache_dir = \"$HOME/.terraform.d/plugin-cache\" >> ~/.terraformrc
mkdir "$HOME/.terraform.d/plugin-cache"
```
