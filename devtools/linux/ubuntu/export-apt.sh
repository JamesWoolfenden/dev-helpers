#!/bin/bash
(zcat $(ls -tr /var/log/apt/history.log*.gz); cat /var/log/apt/history.log) 2>/dev/null |
  egrep '^(Start-Date:|Commandline:)' |
  grep -v aptdaemon |
  egrep '^Commandline:'| sort | uniq > dedupe-apts.txt

sed -i -e 's/Commandline://g'  dedupe-apts.txt
awk 'BEGIN{print "#!/bin/bash -f"} {print}' dedupe-apts.txt > sweet.sh
rm dedupe-apts.txt
