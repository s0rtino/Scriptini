#!/bin/bash
echo "devi passare il file domini"
touch support_file_script.txt; cat /dev/null > support_file_script.txt;
while read line;
do
dig +short $line|grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" >> support_file_script.txt;
echo "$line";
done < $1
echo "##################################################"
masscan -p1-65535 $(awk '!x[$0]++' support_file_script.txt) --max-rate 10000 -oG masscan_out
echo "##################################################"
echo "parte il check versioning"
nmap -Pn -sV $(cat masscan_out | grep Host | cut -d " " -f 2) -p $(cat masscan_out | grep Host | cut -d " " -f 4 | cut -d "/" -f 1) --open -oG versioning.txt
