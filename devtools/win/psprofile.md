# Powershell profile

Main issues with Powershell will be sufficient permissions, and running signed scripts:
Error-

```powershell
somescript.ps1 cannot be loaded because the execution of scripts is disabled on this system. Please see "get- help about_signing" for more details
```

You can bypass it pretty easily as you can see from the cmdline used to install posh-git

```powershell
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

(You should install this btw)

## Signed scripts

- On locked down Machines no script will run without being signed. However the signing of scripts is quite an uncommon practice despite the security issues.
Choices:

- IDGAF

```powershell
  set-executionpolicy bypass
```

- sign your own scripts (a lot of faff)
  See here [link to how to sign scripts](https://devblogs.microsoft.com/scripting/hey-scripting-guy-how-can-i-sign-windows-powershell-scripts-with-an-enterprise-windows-pki-part-2-of-2/). This will take a bit off effort but is most likely the right way.

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope currentuser
```

Did I forget to tell you that you need local admin permissions to run this command? Yes, well there you go. You might have this setting controlled by your admins, they may be reasonable.
For more info - https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-6

## Step 2

Add these lines to your ps profile for terraform:

```powershell
function init {
   if (test-path .terraform/modules)
   {
      rm .terraform/modules -force -recurse
   }

   terraform init
}

function plan {
   init
   terraform plan
}

function apply {
   init
   terraform apply
}

function destroy {
   init
   terraform destroy
}

function docs {
terraform-docs md . > README.MD
}

function purge {
   rm .terraform -force -recurse
}
```

Also add functions for saml2aws if you use it:

```powershell
function loginaws {
  saml2aws --skip-prompt --username <your login email> --password <password> --role arn:aws:iam::<account_no>:role/<role> login --profile saml --force
  $env:AWS_PROFILE="saml"
}
```
