FROM  alpine:latest
LABEL maintainer="kcenceis"

ENV tunnel_id=""
ENV tunnel_secret=""
ARG tunnel_ver="1.1.2"
ARG tunnel_cpu="amd64v3"

RUN apk update \
    && apk add wget \
    && wget https://gitlab.com/ProjectPF/PortForwardGo/-/releases/v1.1.2/downloads/SecureTunnel_${tunnel_ver}_linux_${tunnel_cpu}.tar.gz \
    && tar xvf SecureTunnel_${tunnel_ver}_linux_${tunnel_cpu}.tar.gz \
    && mv SecureTunnel /usr/bin \
    && rm -rf LICENSE systemd README.md \
    && chmod +x /usr/bin/SecureTunnel

CMD SecureTunnel --api https://pfgo.xfltd.xyz/sync/tunnel_device --id $tunnel_id --secret $tunnel_secret