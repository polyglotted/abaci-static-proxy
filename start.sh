#!/bin/sh

echo "Downloading configuration from " $RAW_URL
wget --no-check-certificate $RAW_URL -O /etc/haproxy/haproxy.cfg

echo "Loading configuration"
cat /etc/haproxy/haproxy.cfg

haproxy -f /etc/haproxy/haproxy.cfg -sf $(pidof haproxy)
