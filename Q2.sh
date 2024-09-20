#!/bin/bash

for i in {1..100};do
    num=`shuf -i 1-100 -n 1`
    echo $num >> numbers.txt
done

sum=0
count=0

while read line;
do
    sum=$((sum + line))
    ((count++))
done < numbers.txt

average=$(bc <<< "scale=2;$sum/$count")

echo "sum:$sum" >> results.json
echo "average:$average" >> results.json