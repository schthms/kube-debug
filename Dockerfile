FROM alpine:3.16

RUN apk add vim \
    jq \
    curl \
    wget \
    && rm -rf /var/cache/apt/*

CMD ["/bin/sh"]