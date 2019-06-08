gobuster

```bash
 extension=sh,pl,txt,html,php
 wordlist=/usr/share/dirb/wordlists/common.txt
 url=http://192.168.1.12
 gobuster -w $wordlist  -u $url -x $extension -s 200,204,301,302,307,403 -t 100 | tee gobuster_result
```

search for a PHP shell payload 

<http://pentestmonkey.net/tools/web-shells/php-reverse-shell>

~~~~
$ python -c "import pty;pty.spawn('/bin/bash')"
~~~~

Ctrl-Z

~~~~
$ stty raw -echo
$ fg
~~~~



