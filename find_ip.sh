#!/bin/bash

initial_ns=1.1.1.1
root_domain=$2
server=$1

#Gets the authoritative nameserver for the root_domain
nameserver=$(dig @$initial_ns $root_domain ns +short | shuf -n 1 | host -t A $(cat /dev/stdin) $initial_ns | tail -1 | cut -d " " -f4)

#Questions the authoritative nameserver for the true IP address of $server
server_IP=$(dig @$nameserver $server +short)

echo $server_IP
