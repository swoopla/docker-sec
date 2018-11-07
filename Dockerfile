FROM debian:buster-slim

LABEL MAINTAINER "Swoopla <p.vibet@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y sec --no-install-recommends

COPY docker-entrypoint.sh .

RUN chmod +x /docker-entrypoint.sh

VOLUME ["/etc/sec.conf", "/var/log/syslog"]

ENTRYPOINT ["/docker-entrypoint.sh"]
