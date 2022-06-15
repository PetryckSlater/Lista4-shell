#!/bin/bash
One=$(cat names.txt | tr -s ' ')
Two=$(echo "$One" | tr '8' ' ')
echo "$Two" | cut -d ' ' -f 4,5
