#!/bin/bash

HOST="google.com"
ping -c 10 $HOST

if [ "$?" -eq "0"  ]
then 
    echo "${HOST} reachable"
else
    echo #${HOST} unreachable"
fi

