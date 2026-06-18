#!/bin/bash
MY_SHELL="bash"
SERVER_NAME=$(hostname)
echo "Scripting is fun!"
echo "This is a ${MY_SHELL}."
echo "This is my hostname: ${SERVER_NAME}."
echo "I am trying to put an operation ${1+2}."


FILES=$(ls)

for FILE in ${FILES}
do
    echo "File is: ${FILE}."
done




