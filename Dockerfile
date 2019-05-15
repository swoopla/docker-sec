FROM perl:slim

LABEL MAINTAINER "Swoopla <p.vibet@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y sec nsca-client --no-install-recommends

VOLUME ["/etc/sec", "/etc/nagios", "/var/log"]

ENTRYPOINT ["/sr/bin/sec"]
