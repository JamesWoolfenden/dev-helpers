# Simple install

```choco install saml2aws```

and check

```saml2aws --version```

## Configuration

Add a function like this to your PSprofile.

```powershell
function loginaws {
  saml2aws --skip-prompt --username <your login email> --password <password> --role arn:aws:iam::<account_no>:role/<role> login --profile saml --force
  $env:AWS_PROFILE="saml"
}
```

At a PS console type

```powershell
notepad $profile
```

This starts every-time your start PS. Like .bashrc.
