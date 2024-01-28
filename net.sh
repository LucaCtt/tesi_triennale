#!/bin/bash

ip_pubblico=$(curl -s ipinfo.io/ip)
ip_privato=$(ip addr show | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
ip_gateway=$(ip route | grep ^default'\s'via | head -1 | awk '{print$3}')
dns=$(cat /etc/resolv.conf | grep -i ^nameserver | cut -d ' ' -f2)

echo "IP pubblico:   ${ip_pubblico}"
echo "IP privato:    ${ip_privato}"
echo "IP gateway:    ${ip_gateway}"
echo "DNS:           ${dns}"

