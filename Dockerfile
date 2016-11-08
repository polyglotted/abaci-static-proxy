FROM alpine:3.4
RUN apk --update add --no-cache haproxy curl ca-certificates
ADD start.sh /bin/start.sh
RUN chmod +x /bin/start.sh

ENV RAW_URL=https://github.com LOCAL_VOL=false
EXPOSE 80 1936

ENTRYPOINT ["/bin/start.sh"]
