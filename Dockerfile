FROM alpine:latest

ADD entrypoint.sh /opt/entrypoint.sh
ADD starter.sh /opt/starter.sh
ADD nginx /opt/nginx

RUN apk add --no-cache --virtual .build-deps ca-certificates curl wget nginx \
 && chmod +x /opt/entrypoint.sh

CMD /opt/entrypoint.sh

