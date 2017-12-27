FROM lsiobase/alpine.nginx.arm64:3.6

ENV HTUSER='abc'

RUN apk --no-cache add aria2 sudo 

COPY root/ /
RUN chmod a+x /aria2c.sh

EXPOSE 80 443
VOLUME /data
VOLUME /aria2
VOLUME /config/keys

