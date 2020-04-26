# Scriptini
Script pronti per l'uso - My personal scripts ready-to-use

About

******  - Masscan_nmap.sh - ******
- Provide list of domains. 
- In output a full scan + enumeration of service. 
- Some black magic here: quite FAST (2-3 mins per IP) but very bandwidth consuming.
- Sudo: Yes

******  - Massdns clear output - ******
- From $Home
- Requirements:
  - all.txt (in my case saved under "Vault" Path): https://gist.github.com/jhaddix/86a06c5dc309d08580a018c66354a056
  - massdns: https://github.com/blechschmidt/massdns
  - domain list (in my case it is called "domini.txt")
  - specify some directory [NOT Mandatory]
- FAST!
- Sudo : No

******  - Massdns clear output - ******
Description:
Clear falsepositive from previuous worldist web discovery: many times a specific link receive HTTP 200 and show the homepage.

- Requirements:
  - url of the target homepage;
  - list of relative paths to test;
  
Output file: 200Verified.txt




