#!/bin/bash

source config

if [ "$#" -ne 1 ]; then
    echo "Usage: "
    echo "./run,sh <command to run> <ssh key path(optional)>"
    echo "  Example: \$./run.sh uptime"
    exit 1
fi

add_key=""
[ "$1" != "" ] && cmd_to_run=$1
[ "$SSH_KEY" != "" ] && add_key="-i ${SSH_KEY}"
set +x
for ip in "${INST_IPS[@]}"
do
    echo -n $ip
    echo " "
    ssh -t -o StrictHostKeyChecking=no ${add_key} ${USER_NAME}@"${ip}" "${cmd_to_run}" $add_key 2>/dev/null
done
