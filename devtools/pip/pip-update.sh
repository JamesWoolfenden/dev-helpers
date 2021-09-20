figlet Update Python
grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -Upip list --outdated --format=freeze | g