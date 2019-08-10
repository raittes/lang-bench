#!/bin/bash
start=$(date +%s)
sum=0
for i in {0..1000000}; do
  let sum=$((sum+i))
done
end=$(date +%s)
echo -e "Bash:\t$((end-start)) secs\t\t${sum}"
