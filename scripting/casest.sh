#!/bin/bash

read -p "Enter y or n: " ANSWER
case "$ANSWER" in [y]*)
    echo "You answered yes."
    ;;
    [n]*)
    echo "You answered no."
    ;;
    *)
    echo "Invalid input."
    ;;
esac