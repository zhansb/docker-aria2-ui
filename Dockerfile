FROM lsiobase/alpine.nginx:3.6

ENV HTUSER='abc'

COPY root/ /

RUN apk --no-cache add aria2 sudo \
        && chmod a+x /aria2c.sh

EXPOSE 80 443
VOLUME /data
VOLUME /aria2
VOLUME /config/keys

