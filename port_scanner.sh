#!/bin/bash

echo -e -n "Enter target IP: "
read host
for port in {20..100}; do
  (echo > /dev/tcp/$host/$port) >/dev/null 2>&1 && \
  echo "Port $port is OPEN"
done
