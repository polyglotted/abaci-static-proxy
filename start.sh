#!/bin/sh

echo "Downloading configuration from " $RAW_URL
curl -L $RAW_URL > /etc/haproxy/haproxy.cfg

echo "Loading configuration"
cat /etc/haproxy/haproxy.cfg

haproxy -d -q -f /etc/haproxy/haproxy.cfg -sf $(pidof haproxy)
