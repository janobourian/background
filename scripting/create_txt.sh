#!/bin/bash

read -p "Enter your username: " USERNAME
FILE="dynamix.txt"

if [[ -f "$FILE" ]]
then
    cat << EOF >> "$FILE"
Hello $USERNAME!
EOF
else
    cat << EOF > "$FILE"
Hello $USERNAME!
EOF
fi
