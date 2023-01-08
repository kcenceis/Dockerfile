FROM alpine:latest
MAINTAINER "kcenceis"

ADD tuic-server /usr/bin/
RUN chmod +x /usr/bin/tuic-server

CMD tuic-server -c /tuic/config.json