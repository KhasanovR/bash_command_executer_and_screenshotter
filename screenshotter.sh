#!/bin/bash

eval "clear"

declare -a myarray

# Load file into array.
let i=0
while IFS=$'\n' read -r line_data; do
    myarray[i]="${line_data}"
    ((++i))
done < ./commands.txt

# Explicitly report array content.
let i=0
while (( ${#myarray[@]} > i )); do
	PS1="\\u@\\h:\\w$"
	echo ${PS1@P} "${myarray[i++]}"
    eval ${myarray[i++]}
    gnome-screenshot -w -B 
    clear
done