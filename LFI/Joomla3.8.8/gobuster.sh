 #!/bin/bash

 extension=sh,pl,txt,html,php
 wordlist=/usr/share/dirb/wordlists/common.txt
 url=$1
 gobuster -w $wordlist  -u $url -x $extension -s 200,204,301,302,307,403 -t 100 | tee gobuster_result

