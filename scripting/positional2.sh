#!/bin/bash

SCRIPT_NAME=$0
echo "This is the script name: ${SCRIPT_NAME}."


for USER in $@
do
    echo "USER: ${USER}."
done


