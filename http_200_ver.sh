#!/bin/bash
echo "1arg: domain";
echo "2arg: list to verify";
[ -z "$1" ] && echo "missing domain input" && exit
[ -z "$2" ] && echo "missing list to check" && exit
touch 200Verified.txt; cat /dev/null > 200Verified.txt;
echo "generating reference case..." && reference="$(curl -s $1)" && echo "Done.";
while read line;
do
check="$(curl -s "$1$line")"
#echo "testo $line"
if [ "$check" != "$reference" ]; 
then 
        echo $line; 
fi
done < $2
