#!/bin/bash

# USE ./curl-test-user-agents.sh http://127.0.0.1/ wordlist.txt

host=$1
users=$2
for user in $(cat $users); do
        awnser=$(curl $1 -s -A $user)
        printf '\e[31m%*s\e[0m\n' "$(tput cols)" '' | tr ' ' '-'
        echo -e "\e[31mTesting User-Agent:\e[0m" $user 
        echo "$awnser"
done
