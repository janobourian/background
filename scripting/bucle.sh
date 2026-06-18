#!/bin/bash
read -p "Enter a positive number: " NUMBER
INDEX=0
while [ $INDEX -lt $NUMBER ]
do
    echo "Creating project-${INDEX}"
    PWD=$(pwd)
    mkdir "${PWD}/project-${INDEX}"
    ((INDEX++))
done

INDEX=0
while [ $INDEX -lt $NUMBER ]
do
    echo "Deleting project-${INDEX}"
    PWD=$(pwd)
    rmdir "${PWD}/project-${INDEX}"
    ((INDEX++))
done