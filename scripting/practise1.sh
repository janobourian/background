#!/bin/bash

FILE="config.env"

if [ -e "${FILE}" ]
then
    set -a
    source ${FILE}
    set +a
    aws iam list-roles --query 'Roles[?RoleName==`AMX-PPL-EC2-TEST-DEL-IAMRoleSSM-BDJA3yhzMKYT`]'
    aws iam get-role --role-name 'AMX-PPL-EC2-TEST-DEL-IAMRoleSSM-BDJA3yhzMKYT'
    echo "The config file is there."
else
    echo "Something was wrong!"
fi

