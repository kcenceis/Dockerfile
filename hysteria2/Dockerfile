FROM alpine:latest
MAINTAINER "kcenceis"

RUN apk add go \
    && wget https://codeload.github.com/apernet/hysteria/zip/refs/heads/wip-hy2 \
    && unzip wip-hy2 \
    && cd /hysteria-wip-hy2/app \
    && go build . \
    && cp -r ./app /usr/sbin/ \
    && chmod +x /usr/sbin/app \
    && apk del go gcc \
    && rm -rf /hysteria-wip-hy2 \
    && rm -rf /wip-hy2 \
    && rm -rf /root/* \
    && rm -rf /root/.cache

CMD app server -c /hysteria/config.yaml