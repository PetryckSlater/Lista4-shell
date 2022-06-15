#!/bin/bash
for users in $(cat $1 | cut -d " " -f 1 | sort | uniq);do
        
        total=0
        for data in $(cat $1 |grep "$users" | cut -d " " -f 3);do
                total=$((total+data))
        done
        echo "$users baixou $total"
        
done
