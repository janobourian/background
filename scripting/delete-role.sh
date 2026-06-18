#!/bin/bash

set -a
source config.env
set +a 

LIST_ROLES=$(aws iam list-roles --query "Roles[?contains(RoleName, '${1}')].RoleName")
CLEAN_ROLES=$(echo ${LIST_ROLES} | tr -d "[]:,")

for ROLE in ${CLEAN_ROLES}
do
    CLEAN_ROLE=$(echo ${ROLE} | tr -d '"')
    CURRENT_QUERY=$(aws iam get-role --role-name ${CLEAN_ROLE} --query 'Role.RoleLastUsed')
    echo "ROLE ${CLEAN_ROLE} WITH ${CURRENT_QUERY}" 
    if [ "${CURRENT_QUERY}" ]
    then
        echo "${CLEAN_ROLE}"
        for policy_arn in $(aws iam list-attached-role-policies --role-name ${CLEAN_ROLE} --query 'AttachedPolicies[*].PolicyArn' --output text)
        do
            aws iam detach-role-policy --role-name ${CLEAN_ROLE} --policy-arn "$policy_arn"
        done
        for inline_policy_name in $(aws iam list-role-policies --role-name ${CLEAN_ROLE} --output text)
        do
            if [ "$inline_policy_name" != "POLICYNAMES" ]
            then
                aws iam delete-role-policy --role-name ${CLEAN_ROLE} --policy-name "$inline_policy_name"
            fi
        done
        aws iam delete-role --role-name ${CLEAN_ROLE}
    else
        echo "${CLEAN_ROLE} -> ${CURRENT_QUERY}"
    fi
done
