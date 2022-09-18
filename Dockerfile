FROM alpine:latest

ADD run.sh /opt/run.sh
ADD starter.sh /opt/starter.sh
ADD nginx /opt/nginx

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/run.sh

run ["/opt/run.sh"]

