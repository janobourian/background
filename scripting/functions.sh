#!/bin/bash

function now(){
    echo $(date +%r)
}

function hello(){
    echo "Hello ${1}, this is your function"
    now
}

hello $1

