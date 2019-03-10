# Powershell profile

Main issues with Powershell will be sufficient permissions, and running signed scripts:
Error-

```powershell
somescript.ps1 cannot be loaded because the execution of scripts is disabled on this system. Please see "get- help about_signing" for more details
```

Signed scripts

- On locked down Machines no script will run without being signed. However the signing of scripts is quite an uncommon practice despite the security issues.
Choices:

- IDGAF

```powershell
  set-executionpolicy bypass
```

- sign your own scripts (a lot of faff)

``
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope currentuser
```

Did I forget to tell you that you need local admin permissions to run this command? Yes, well there you go. You might have this setting controlled by your admins, they may be reasonable.
For more info - https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-6

## Step 2

Add these lines to your ps profile:

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
