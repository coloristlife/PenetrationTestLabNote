## install nmap 4.11

Historic versions of nmap : <https://nmap.org/dist-old/>. download [nmap-4.11.tar.bz2](https://nmap.org/dist-old/nmap-4.11.tar.bz2) 

ignore the GTK missing error when compile the nmap from the source code.

```
bzip2 -cd nmap-4.11.tar.bz2 | tar xvf -
cd nmap-7.70
./configure
make
su root
make install
```

If you encounter the issue of couldn't find GTK, you can skip it. 

