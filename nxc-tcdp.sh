#!/bin/bash

# USE:
# chmod +x nxc-tcdp.sh
# ./nxc-tcdp.sh <IP> <USER> <PASS>

for protocol in "smb" "mssql" "vnc" "ldap" "rdp" "ftp" "ssh" "wmi" "nfs" "winrm"
do
    echo '---'$protocol'---'
    netexec $protocol $1 -u $2 -p $3
done
