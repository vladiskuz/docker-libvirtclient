FROM alpine:3.12.3

RUN apk update \
    && apk add libvirt-client \
    &&  rm -rf /var/cache/apk/*

COPY scripts/*.sh /usr/bin/local/
RUN chmod +x /usr/bin/local/*
CMD tail -f /dev/null
