#********************with golang docker image & direct run command*************
FROM alpine

RUN set -x \
      && apk add --update --no-cache ca-certificates curl gzip libc6 procps tar wget
RUN wget -q0 /usr/local/bin/wal-g  https://github.com/wal-g/wal-g/releases/download/v2.0.0/wal-g-pg-ubuntu-20.04-amd64
RUN chmod 0777 /usr/local/bin/wal-g



USER 1001
ENTRYPOINT [ "wal-g" ]
CMD [ "--help" ]

# https://github.com/wal-g/wal-g/releases/download/v2.0.0/wal-g-pg-ubuntu-20.04-amd64.tar.gz