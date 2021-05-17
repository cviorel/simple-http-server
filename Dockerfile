FROM alpine:latest

MAINTAINER Viorel Ciucu <viorel.ciucu@gmail.com>

EXPOSE 8000
WORKDIR /serve

RUN apk update && apk add --no-cache python3 && rm -rf /tmp/* && rm -rf /var/cache/apk/*

ENTRYPOINT [ "python3", "-m", "http.server", "8000" ]
