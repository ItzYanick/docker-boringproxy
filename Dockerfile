FROM alpine 3.19.0

ENV VERSION=0.10.0

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

WORKDIR /app

RUN curl -LO https://github.com/boringproxy/boringproxy/releases/$POWERDNS_VERSION/download/boringproxy-linux-x86_64 

RUN chmod +x boringproxy-linux-x86_64

ENTRYPOINT ["/app/boringproxy-linux-x86_64"]
CMD ["version"]