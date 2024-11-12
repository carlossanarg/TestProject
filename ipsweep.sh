#!/bin/bash

echo "Doing IP Sweeping"

output_file="/home/carlossa/Documents/3results.txt"

for ip in {1..254}; do
  ping -c 1 $1.$ip | grep "64 bytes" | awk '{print $4}' >> "$output_file" &
done
echo "IP Sweep Done!"