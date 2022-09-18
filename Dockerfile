FROM alpine:latest

ADD run.sh /opt/entrypoint.sh
ADD starter.sh /opt/entrypoint.sh
ADD nginx /opt/nginx

RUN apk add --no-cache --virtual .build-deps ca-certificates curl wget nginx \
 && chmod +x /opt/entrypoint.sh

run ["/opt/entrypoint.sh"]

