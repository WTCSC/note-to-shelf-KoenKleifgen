#!/bin/bash

DEATH_NOTE="notes.txt"

if  [[ $1 == "add" ]]; then
    echo $(date +"%F %T") - $2 >> $DEATH_NOTE
    echo Note added successfully
elif [[ $1 == "list" ]]; then
    cat $DEATH_NOTE 
elif [[ $1 == "search" ]]; then
    grep -i $2 $DEATH_NOTE
else 
    exit 69
fi
