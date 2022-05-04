#!/bin/bash
filename='lines.txt'
declare -a array
timestamp=$(date +%T)
while read line ; do
        array+=("$line")
done < $filename
for i in "${array[@]}"
do
        printf "%s\n" "$timestamp" "${array[0]}" > /home/elr243/cs305_elr243/test.log
done

cd /home/elr243/cs305_elr243

git remote set-url orgin git@github.com:elr243/cs305_elr243.git

git add -A

git commit -am "update log"

git push
~             
