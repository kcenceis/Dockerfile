FROM alpine:latest
LABEL maintainer= "kcenceis"
VOLUME ["/config","/downloads"]

ADD dockerinit /etc/rc.d/init.d/
RUN chmod 777 /etc/rc.d/init.d/dockerinit && \
    apk update && \
	mkdir -p /root/.config/ && \
	ln -s /downloads /root/Downloads && \
	ln -s /config /root/.config/transmission-daemon && \
        apk add transmission-daemon

EXPOSE 9091/tcp 51413/tcp 51413/udp
CMD /etc/rc.d/init.d/dockerinit
