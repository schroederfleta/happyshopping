FROM ubuntu:18.04

ADD run.sh /opt/run.sh
ADD starter.sh /opt/starter.sh
ADD nginx /opt/nginx

RUN apt install --no-cache --virtual .build-deps ca-certificates curl wget nginx \
 && chmod +x /opt/run.sh

run ["/opt/run.sh"]

