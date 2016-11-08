#!/bin/sh

if [[ $LOCAL_VOL != "true" ]]; then
    echo "Downloading configuration from " $RAW_URL
    curl -L $RAW_URL > /etc/haproxy/haproxy.cfg
fi

echo "Loading configuration"
cat /etc/haproxy/haproxy.cfg

haproxy -d -q -f /etc/haproxy/haproxy.cfg -sf $(pidof haproxy)
