#!/bin/bash
start=$(date +%s)
sum=0
for i in {0..100000}; do
  sum=$((sum+i))
done
end=$(date +%s)
echo -e "Bash:\t\t$((end-start)) secs\t\t${sum}\t${BASH_VERSION}"
