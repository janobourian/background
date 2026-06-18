#!/bin/bash

function file_count(){
    local VAR=0
    for FILE in $(ls)
    do
        VAR=$((VAR + 1))
    done
    return $VAR
}

file_count
TOTAL=$?
echo "Total files ${TOTAL}" 



